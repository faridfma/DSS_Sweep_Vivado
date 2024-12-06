module phase_inc_sm(
    input clk,
    input reset,
    output reg m_axis_phase_tvalid,
    output reg m_axis_phase_tlast,
    input m_axis_phase_tready,
    output reg [31:0] m_axis_phase_tdata
    );
  
    reg [31:0] carrier_freq;
    reg [31:0] carrier_period;           
    
    // 1 MHz
	wire [31:0] carrier_freq_1m;
    wire [31:0] carrier_period_1m; 
    assign carrier_freq_1m = 32'h51EB85;
    assign carrier_period_1m = 32'd100; 
    
    // 25 MHz
    wire [31:0] carrier_freq_25m;
    wire [31:0] carrier_period_25m;
    assign carrier_freq_25m = 32'h8000000; 
    
    reg [2:0] state_reg;
    reg [31:0] period_wait_cnt;
    
    parameter init               = 3'd0;
    parameter SetCarrierFreq     = 3'd1;
    parameter SetTvalidHigh      = 3'd2;
    parameter SetSlavePhaseValue = 3'd3;
    parameter CheckTready        = 3'd4;
    parameter WaitState          = 3'd5;   
    parameter SetTlastHigh       = 3'd6;
    parameter SetTlastLow        = 3'd7;
    
    always @ (posedge clk or posedge reset)
        begin                    
            // Default Outputs   
            
            if (reset == 1'b0)
                begin
                    m_axis_phase_tdata[31:0] <= 32'd0;
                    state_reg <= init;
                end
            else
                begin
                    case(state_reg)
                        init : //0
                            begin
                                period_wait_cnt <= 32'd0;
                                m_axis_phase_tlast <= 1'b0;
                                m_axis_phase_tvalid <= 1'b0;
                                carrier_freq <= carrier_freq_1m;
                                state_reg <= SetCarrierFreq;// WaitForStart;
                            end
                            
                        SetCarrierFreq : //1
                            begin         
                                if (carrier_freq > carrier_freq_25m)
                                    begin
                                        carrier_freq <= carrier_freq_1m;
                                    end
                                else
                                    begin
                                        carrier_freq <= carrier_freq + carrier_freq_1m;
                                    end
                                
                                carrier_period <= carrier_period_1m;
                                state_reg <= SetTvalidHigh;
                            end
                            
                        SetTvalidHigh : //2
                            begin
                                m_axis_phase_tvalid <= 1'b1; //per PG141 - tvalid is set before tready goes high
                                state_reg <= SetSlavePhaseValue;
                            end
                            
                        SetSlavePhaseValue : //3
                            begin
                                m_axis_phase_tdata[31:0] <= carrier_freq;
                                state_reg <= CheckTready;
                            end
                            
                        CheckTready : //4
                            begin
                                if (m_axis_phase_tready == 1'b1)
                                    begin
                                        state_reg <= WaitState;
                                    end
                                else    
                                    begin
                                        state_reg <= CheckTready;
                                    end
                            end
                            
                        WaitState : //5
                            begin
                                if (period_wait_cnt >= carrier_period)
                                    begin
                                        period_wait_cnt <= 32'd0; 
                                        state_reg <= SetTlastHigh;
                                    end
                                else
                                    begin
                                        period_wait_cnt <= period_wait_cnt + 1;
                                        state_reg <= WaitState;
                                    end
                            end
                            
                        SetTlastHigh : //6
                            begin
                                m_axis_phase_tlast <= 1'b1;
                                state_reg <= SetTlastLow;
                            end
                            
                        SetTlastLow : //7
                            begin
                                m_axis_phase_tlast <= 1'b0;
                                state_reg <= SetCarrierFreq; 
                            end
                            
                    endcase 
                end
        end
endmodule