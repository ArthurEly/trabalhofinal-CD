library verilog;
use verilog.vl_types.all;
entity controlevisor_vlg_sample_tst is
    port(
        address_down    : in     vl_logic_vector(7 downto 0);
        address_up      : in     vl_logic_vector(7 downto 0);
        B_done          : in     vl_logic;
        B_mostra_E      : in     vl_logic;
        count           : in     vl_logic_vector(1 downto 0);
        data_user       : in     vl_logic_vector(7 downto 0);
        down_on         : in     vl_logic;
        msg_done        : in     vl_logic;
        read_reg        : in     vl_logic_vector(7 downto 0);
        S_mostraE       : in     vl_logic;
        up_on           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controlevisor_vlg_sample_tst;
