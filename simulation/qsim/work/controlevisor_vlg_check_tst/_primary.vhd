library verilog;
use verilog.vl_types.all;
entity controlevisor_vlg_check_tst is
    port(
        a1teste         : in     vl_logic;
        g1teste         : in     vl_logic;
        VISOR0_REG      : in     vl_logic_vector(6 downto 0);
        VISOR1_REG      : in     vl_logic_vector(6 downto 0);
        VISOR2_REG      : in     vl_logic_vector(6 downto 0);
        VISOR3_REG      : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end controlevisor_vlg_check_tst;
