library verilog;
use verilog.vl_types.all;
entity controlevisor_vlg_sample_tst is
    port(
        ADRESS_REG      : in     vl_logic_vector(7 downto 0);
        DATA_REG        : in     vl_logic_vector(7 downto 0);
        sw8             : in     vl_logic;
        sw9             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controlevisor_vlg_sample_tst;
