library verilog;
use verilog.vl_types.all;
entity trabalhofinal_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        confirm_address : in     vl_logic;
        confirm_data    : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        read            : in     vl_logic;
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end trabalhofinal_vlg_sample_tst;
