library verilog;
use verilog.vl_types.all;
entity MAQUINA_A is
    port(
        LOAD_REG        : out    vl_logic;
        confirmaFuncao  : in     vl_logic;
        clk             : in     vl_logic;
        confirmaDA      : in     vl_logic;
        habilita_count  : out    vl_logic;
        A_VISOR_OK      : out    vl_logic;
        A_WRITE_IN_ADDRESS: out    vl_logic;
        A_MSG_D_A       : out    vl_logic;
        estado          : out    vl_logic
    );
end MAQUINA_A;
