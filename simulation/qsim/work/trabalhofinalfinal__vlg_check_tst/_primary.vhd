library verilog;
use verilog.vl_types.all;
entity \trabalhofinalfinal__vlg_check_tst\ is
    port(
        a_load_regs     : in     vl_logic;
        address_down_reg_out: in     vl_logic_vector(7 downto 0);
        address_up_reg_out: in     vl_logic_vector(7 downto 0);
        adress_on       : in     vl_logic;
        data_out        : in     vl_logic_vector(7 downto 0);
        data_reg_out    : in     vl_logic_vector(7 downto 0);
        estados_c       : in     vl_logic_vector(1 downto 0);
        funcao          : in     vl_logic_vector(1 downto 0);
        funcao_1        : in     vl_logic;
        habilita_count  : in     vl_logic;
        habilita_count2 : in     vl_logic;
        q               : in     vl_logic;
        sw_down         : in     vl_logic_vector(7 downto 0);
        sw_up           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end \trabalhofinalfinal__vlg_check_tst\;
