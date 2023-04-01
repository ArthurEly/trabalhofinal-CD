library verilog;
use verilog.vl_types.all;
entity trabalhofinal is
    port(
        address_reg_out : out    vl_logic_vector(7 downto 0);
        sw9             : in     vl_logic;
        sw8             : in     vl_logic;
        confirm_sw      : in     vl_logic;
        clk             : in     vl_logic;
        sw0             : in     vl_logic;
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sw3             : in     vl_logic;
        sw4             : in     vl_logic;
        sw5             : in     vl_logic;
        sw6             : in     vl_logic;
        sw7             : in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0);
        read            : in     vl_logic;
        write           : in     vl_logic;
        data_reg_out    : out    vl_logic_vector(7 downto 0);
        morte           : out    vl_logic_vector(7 downto 0)
    );
end trabalhofinal;
