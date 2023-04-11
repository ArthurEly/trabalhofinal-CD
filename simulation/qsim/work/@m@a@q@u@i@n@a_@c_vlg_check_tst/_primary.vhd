library verilog;
use verilog.vl_types.all;
entity MAQUINA_C_vlg_check_tst is
    port(
        C_VISOR_MSG     : in     vl_logic;
        ESTADO          : in     vl_logic_vector(1 downto 0);
        habilita_counter: in     vl_logic;
        LOAD_REG_SWAP_ADDRESS: in     vl_logic;
        LOAD_REG_SWAP_DATA: in     vl_logic;
        SWAP_BLZ        : in     vl_logic;
        WRITE_MEM       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MAQUINA_C_vlg_check_tst;
