library verilog;
use verilog.vl_types.all;
entity MAQUINA_A is
    port(
        habilita_count  : out    vl_logic;
        ESTADO          : out    vl_logic_vector(1 downto 0);
        confirmaFuncao  : in     vl_logic;
        clk             : in     vl_logic;
        habilita        : in     vl_logic;
        A_MSG_D_A       : out    vl_logic;
        LOAD_REG        : out    vl_logic;
        confirmaDA      : in     vl_logic;
        A_WRITE_IN_ADDRESS: out    vl_logic;
        A_VISOR_OK      : out    vl_logic;
        flagzinha       : out    vl_logic
    );
end MAQUINA_A;
