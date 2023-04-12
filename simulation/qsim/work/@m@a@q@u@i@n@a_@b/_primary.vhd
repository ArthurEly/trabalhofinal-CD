library verilog;
use verilog.vl_types.all;
entity MAQUINA_B is
    port(
        habilita_count  : out    vl_logic;
        habilita        : in     vl_logic;
        confirmaFuncao  : in     vl_logic;
        clk             : in     vl_logic;
        B_VISOR_OK      : out    vl_logic;
        B_VISOR_MSG     : out    vl_logic;
        estado          : out    vl_logic;
        B_LOAD_REG      : out    vl_logic;
        confirmaDA      : in     vl_logic;
        READ_MEM        : out    vl_logic
    );
end MAQUINA_B;
