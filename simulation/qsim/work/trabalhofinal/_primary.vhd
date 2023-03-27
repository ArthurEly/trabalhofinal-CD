library verilog;
use verilog.vl_types.all;
entity trabalhofinal is
    port(
        address_reg_out : out    vl_logic_vector(7 downto 0);
        confirm_address : in     vl_logic;
        clk             : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        read            : in     vl_logic;
        write           : in     vl_logic;
        confirm_data    : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        data_reg_out    : out    vl_logic_vector(7 downto 0);
        morte           : out    vl_logic_vector(7 downto 0)
    );
end trabalhofinal;
