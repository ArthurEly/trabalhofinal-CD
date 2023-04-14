library verilog;
use verilog.vl_types.all;
entity controlevisor_vlg_check_tst is
    port(
        a1teste         : in     vl_logic;
        ad0             : in     vl_logic;
        ad1             : in     vl_logic;
        address_up_teste: in     vl_logic;
        adress_down_teste: in     vl_logic;
        decod0          : in     vl_logic_vector(6 downto 0);
        decod1          : in     vl_logic_vector(6 downto 0);
        g1teste         : in     vl_logic;
        led00           : in     vl_logic;
        led01           : in     vl_logic;
        led10           : in     vl_logic;
        led11           : in     vl_logic;
        problema        : in     vl_logic_vector(7 downto 0);
        read_reg_teste  : in     vl_logic;
        VISOR0_REG      : in     vl_logic_vector(6 downto 0);
        VISOR1_REG      : in     vl_logic_vector(6 downto 0);
        VISOR2_REG      : in     vl_logic_vector(6 downto 0);
        VISOR3_REG      : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end controlevisor_vlg_check_tst;
