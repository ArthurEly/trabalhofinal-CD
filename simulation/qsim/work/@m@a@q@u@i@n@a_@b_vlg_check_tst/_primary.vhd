library verilog;
use verilog.vl_types.all;
entity MAQUINA_B_vlg_check_tst is
    port(
        B_VISOR_MSG     : in     vl_logic;
        B_VISOR_OK      : in     vl_logic;
        estado          : in     vl_logic;
        habilita_count  : in     vl_logic;
        LOAD_REG        : in     vl_logic;
        READ_MEM        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MAQUINA_B_vlg_check_tst;
