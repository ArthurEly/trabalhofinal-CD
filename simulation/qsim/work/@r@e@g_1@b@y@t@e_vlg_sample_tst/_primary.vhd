library verilog;
use verilog.vl_types.all;
entity REG_1BYTE_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector(7 downto 0);
        write           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end REG_1BYTE_vlg_sample_tst;
