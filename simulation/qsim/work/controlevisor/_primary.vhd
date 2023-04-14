library verilog;
use verilog.vl_types.all;
entity controlevisor is
    port(
        a1teste         : out    vl_logic;
        count           : in     vl_logic_vector(1 downto 0);
        up_on           : in     vl_logic;
        S_mostraE       : in     vl_logic;
        msg_done        : in     vl_logic;
        down_on         : in     vl_logic;
        g1teste         : out    vl_logic;
        VISOR0_REG      : out    vl_logic_vector(6 downto 0);
        B_mostra_E      : in     vl_logic;
        B_done          : in     vl_logic;
        data_user       : in     vl_logic_vector(7 downto 0);
        address_up      : in     vl_logic_vector(7 downto 0);
        address_down    : in     vl_logic_vector(7 downto 0);
        read_reg        : in     vl_logic_vector(7 downto 0);
        VISOR1_REG      : out    vl_logic_vector(6 downto 0);
        VISOR2_REG      : out    vl_logic_vector(6 downto 0);
        VISOR3_REG      : out    vl_logic_vector(6 downto 0)
    );
end controlevisor;
