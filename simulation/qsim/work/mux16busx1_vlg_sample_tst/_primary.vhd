library verilog;
use verilog.vl_types.all;
entity mux16busx1_vlg_sample_tst is
    port(
        address0        : in     vl_logic;
        address1        : in     vl_logic;
        address2        : in     vl_logic;
        address3        : in     vl_logic;
        GN              : in     vl_logic;
        mem0            : in     vl_logic_vector(7 downto 0);
        mem1            : in     vl_logic_vector(7 downto 0);
        mem2            : in     vl_logic_vector(7 downto 0);
        mem3            : in     vl_logic_vector(7 downto 0);
        mem4            : in     vl_logic_vector(7 downto 0);
        mem5            : in     vl_logic_vector(7 downto 0);
        mem6            : in     vl_logic_vector(7 downto 0);
        mem7            : in     vl_logic_vector(7 downto 0);
        mem8            : in     vl_logic_vector(7 downto 0);
        mem9            : in     vl_logic_vector(7 downto 0);
        memA            : in     vl_logic_vector(7 downto 0);
        memB            : in     vl_logic_vector(7 downto 0);
        memC            : in     vl_logic_vector(7 downto 0);
        memD            : in     vl_logic_vector(7 downto 0);
        memE            : in     vl_logic_vector(7 downto 0);
        memF            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux16busx1_vlg_sample_tst;
