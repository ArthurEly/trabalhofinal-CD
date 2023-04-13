library verilog;
use verilog.vl_types.all;
entity \trabalhofinalfinal_\ is
    port(
        q               : out    vl_logic;
        clock           : in     vl_logic;
        a_load_regs     : out    vl_logic;
        troca_funcao    : in     vl_logic;
        confirma_funcao : in     vl_logic;
        confirma_DA     : in     vl_logic;
        adress_on       : out    vl_logic;
        sw9             : in     vl_logic;
        sw8             : in     vl_logic;
        funcao_1        : out    vl_logic;
        habilita_count  : out    vl_logic;
        habilita_count2 : out    vl_logic;
        address_down_reg_out: out    vl_logic_vector(7 downto 0);
        sw_down         : out    vl_logic_vector(7 downto 0);
        sw0             : in     vl_logic;
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sw3             : in     vl_logic;
        sw4             : in     vl_logic;
        sw5             : in     vl_logic;
        sw6             : in     vl_logic;
        sw7             : in     vl_logic;
        address_up_reg_out: out    vl_logic_vector(7 downto 0);
        sw_up           : out    vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        data_reg_out    : out    vl_logic_vector(7 downto 0);
        estados_c       : out    vl_logic_vector(1 downto 0);
        funcao          : out    vl_logic_vector(1 downto 0)
    );
end \trabalhofinalfinal_\;
