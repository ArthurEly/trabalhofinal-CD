library verilog;
use verilog.vl_types.all;
entity REG_1BIT is
    port(
        \out\           : out    vl_logic;
        clk             : in     vl_logic;
        write           : in     vl_logic;
        \in\            : in     vl_logic
    );
end REG_1BIT;
