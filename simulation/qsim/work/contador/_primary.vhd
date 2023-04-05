library verilog;
use verilog.vl_types.all;
entity contador is
    port(
        count           : out    vl_logic_vector(1 downto 0);
        habilita        : in     vl_logic;
        button          : in     vl_logic;
        clk             : in     vl_logic
    );
end contador;
