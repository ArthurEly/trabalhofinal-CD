library verilog;
use verilog.vl_types.all;
entity UC_vlg_check_tst is
    port(
        A_ESTADO        : in     vl_logic_vector(1 downto 0);
        A_LOAD_REGS     : in     vl_logic;
        A_mostraDA      : in     vl_logic;
        B_done          : in     vl_logic;
        B_ESTADO8       : in     vl_logic;
        B_LOAD_END      : in     vl_logic;
        B_mostraD       : in     vl_logic;
        C_ESTADO        : in     vl_logic_vector(1 downto 0);
        count           : in     vl_logic_vector(1 downto 0);
        LOAD_READ       : in     vl_logic;
        LOAD_SWAP_ADDRESS: in     vl_logic;
        LOAD_SWAP_DATA  : in     vl_logic;
        msg_done        : in     vl_logic;
        S_mostraE       : in     vl_logic;
        write           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end UC_vlg_check_tst;
