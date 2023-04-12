library verilog;
use verilog.vl_types.all;
entity UC is
    port(
        S_mostraE       : out    vl_logic;
        clk             : in     vl_logic;
        confirmaDA      : in     vl_logic;
        confirmaFuncao  : in     vl_logic;
        count           : out    vl_logic_vector(1 downto 0);
        trocaFuncao     : in     vl_logic;
        B_mostraD       : out    vl_logic;
        msg_done        : out    vl_logic;
        B_ESTADO8       : out    vl_logic;
        B_done          : out    vl_logic;
        write           : out    vl_logic;
        LOAD_READ       : out    vl_logic;
        B_LOAD_END      : out    vl_logic;
        LOAD_SWAP_ADDRESS: out    vl_logic;
        LOAD_SWAP_DATA  : out    vl_logic;
        A_LOAD_REGS     : out    vl_logic;
        A_mostraDA      : out    vl_logic;
        A_ESTADO        : out    vl_logic_vector(1 downto 0);
        C_ESTADO        : out    vl_logic_vector(1 downto 0)
    );
end UC;
