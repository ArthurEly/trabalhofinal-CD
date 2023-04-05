library verilog;
use verilog.vl_types.all;
entity controlevisor is
    port(
        VISOR_REG       : out    vl_logic_vector(7 downto 0);
        sw9             : in     vl_logic;
        sw8             : in     vl_logic;
        ADRESS_REG      : in     vl_logic_vector(7 downto 0);
        DATA_REG        : in     vl_logic_vector(7 downto 0)
    );
end controlevisor;
