library verilog;
use verilog.vl_types.all;
entity MAQUINA_A_vlg_check_tst is
    port(
        A_MSG_D_A       : in     vl_logic;
        A_VISOR_OK      : in     vl_logic;
        A_WRITE_IN_ADDRESS: in     vl_logic;
        estado          : in     vl_logic;
        habilita_count  : in     vl_logic;
        LOAD_REG        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MAQUINA_A_vlg_check_tst;
