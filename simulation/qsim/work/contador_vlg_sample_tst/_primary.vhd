library verilog;
use verilog.vl_types.all;
entity contador_vlg_sample_tst is
    port(
        button          : in     vl_logic;
        clk             : in     vl_logic;
        habilita        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador_vlg_sample_tst;
