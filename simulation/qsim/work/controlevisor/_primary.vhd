library verilog;
use verilog.vl_types.all;
entity controlevisor is
    port(
        a1teste         : out    vl_logic;
        VISOR3_REG      : out    vl_logic_vector(6 downto 0);
        count           : in     vl_logic_vector(1 downto 0);
        up_on           : in     vl_logic;
        S_mostraE       : in     vl_logic;
        msg_done        : in     vl_logic;
        down_on         : in     vl_logic;
        g1teste         : out    vl_logic;
        led00           : out    vl_logic;
        led01           : out    vl_logic;
        led10           : out    vl_logic;
        led11           : out    vl_logic;
        ad0             : out    vl_logic;
        B_mostra_E      : in     vl_logic;
        B_done          : in     vl_logic;
        ad1             : out    vl_logic;
        decod0          : out    vl_logic_vector(6 downto 0);
        data_user       : in     vl_logic_vector(7 downto 0);
        address_up      : in     vl_logic_vector(7 downto 0);
        address_down    : in     vl_logic_vector(7 downto 0);
        read_reg        : in     vl_logic_vector(7 downto 0);
        decod1          : out    vl_logic_vector(6 downto 0);
        problema        : out    vl_logic_vector(7 downto 0);
        VISOR0_REG      : out    vl_logic_vector(6 downto 0);
        VISOR1_REG      : out    vl_logic_vector(6 downto 0);
        VISOR2_REG      : out    vl_logic_vector(6 downto 0)
    );
end controlevisor;
