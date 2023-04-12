library verilog;
use verilog.vl_types.all;
entity MAQUINA_A_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        confirmaDA      : in     vl_logic;
        confirmaFuncao  : in     vl_logic;
        habilita        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MAQUINA_A_vlg_sample_tst;
