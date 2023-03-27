library verilog;
use verilog.vl_types.all;
entity REG_1BYTE is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0);
        write           : in     vl_logic;
        clk             : in     vl_logic
    );
end REG_1BYTE;
