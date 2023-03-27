library verilog;
use verilog.vl_types.all;
entity MEM_16ADD is
    port(
        data_out        : out    vl_logic_vector(7 downto 0);
        read            : in     vl_logic;
        a0              : in     vl_logic;
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        write           : in     vl_logic;
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0)
    );
end MEM_16ADD;
