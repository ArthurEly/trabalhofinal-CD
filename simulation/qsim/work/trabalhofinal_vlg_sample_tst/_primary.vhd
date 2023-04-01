library verilog;
use verilog.vl_types.all;
entity trabalhofinal_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        confirm_address : in     vl_logic;
        confirm_data    : in     vl_logic;
        read            : in     vl_logic;
        sw0             : in     vl_logic;
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sw3             : in     vl_logic;
        sw4             : in     vl_logic;
        sw5             : in     vl_logic;
        sw6             : in     vl_logic;
        sw7             : in     vl_logic;
        sw8             : in     vl_logic;
        sw9             : in     vl_logic;
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end trabalhofinal_vlg_sample_tst;
