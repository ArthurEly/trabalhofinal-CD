library verilog;
use verilog.vl_types.all;
entity controlevisor_vlg_check_tst is
    port(
        VISOR_REG       : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end controlevisor_vlg_check_tst;
