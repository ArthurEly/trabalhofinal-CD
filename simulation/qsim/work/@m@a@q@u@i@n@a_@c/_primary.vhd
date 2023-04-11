library verilog;
use verilog.vl_types.all;
entity MAQUINA_C is
    port(
        LOAD_REG_SWAP_ADDRESS: out    vl_logic;
        ESTADO          : out    vl_logic_vector(1 downto 0);
        confirmaFuncao  : in     vl_logic;
        clk             : in     vl_logic;
        confirmaDA      : in     vl_logic;
        LOAD_REG_SWAP_DATA: out    vl_logic;
        habilita_counter: out    vl_logic;
        C_VISOR_MSG     : out    vl_logic;
        WRITE_MEM       : out    vl_logic;
        SWAP_BLZ        : out    vl_logic
    );
end MAQUINA_C;
