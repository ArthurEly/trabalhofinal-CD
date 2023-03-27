library verilog;
use verilog.vl_types.all;
entity mux16busx1 is
    port(
        data_out        : out    vl_logic_vector(7 downto 0);
        address3        : in     vl_logic;
        GN              : in     vl_logic;
        mem0            : in     vl_logic_vector(7 downto 0);
        address0        : in     vl_logic;
        address1        : in     vl_logic;
        address2        : in     vl_logic;
        mem3            : in     vl_logic_vector(7 downto 0);
        mem2            : in     vl_logic_vector(7 downto 0);
        mem1            : in     vl_logic_vector(7 downto 0);
        mem6            : in     vl_logic_vector(7 downto 0);
        mem5            : in     vl_logic_vector(7 downto 0);
        mem4            : in     vl_logic_vector(7 downto 0);
        mem9            : in     vl_logic_vector(7 downto 0);
        mem8            : in     vl_logic_vector(7 downto 0);
        mem7            : in     vl_logic_vector(7 downto 0);
        memB            : in     vl_logic_vector(7 downto 0);
        memC            : in     vl_logic_vector(7 downto 0);
        memA            : in     vl_logic_vector(7 downto 0);
        memF            : in     vl_logic_vector(7 downto 0);
        memE            : in     vl_logic_vector(7 downto 0);
        memD            : in     vl_logic_vector(7 downto 0)
    );
end mux16busx1;
