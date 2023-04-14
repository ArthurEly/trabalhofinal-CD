library verilog;
use verilog.vl_types.all;
entity display_utils_vlg_sample_tst is
    port(
        d0              : in     vl_logic;
        in_1            : in     vl_logic;
        in_2            : in     vl_logic;
        in_d            : in     vl_logic;
        in_e            : in     vl_logic;
        in_n            : in     vl_logic;
        in_o            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end display_utils_vlg_sample_tst;
