library verilog;
use verilog.vl_types.all;
entity REG_1BYTE_SWAP is
    port(
        pin_name1       : out    vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0);
        write_up        : in     vl_logic;
        in_up           : in     vl_logic_vector(7 downto 0);
        write_down      : in     vl_logic;
        in_down         : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic
    );
end REG_1BYTE_SWAP;
