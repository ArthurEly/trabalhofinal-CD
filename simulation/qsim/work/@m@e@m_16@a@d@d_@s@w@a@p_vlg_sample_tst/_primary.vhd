library verilog;
use verilog.vl_types.all;
entity MEM_16ADD_SWAP_vlg_sample_tst is
    port(
        address_down0   : in     vl_logic;
        address_down1   : in     vl_logic;
        address_down2   : in     vl_logic;
        address_down3   : in     vl_logic;
        address_up0     : in     vl_logic;
        address_up1     : in     vl_logic;
        address_up2     : in     vl_logic;
        address_up3     : in     vl_logic;
        clk             : in     vl_logic;
        data_down       : in     vl_logic_vector(7 downto 0);
        data_up         : in     vl_logic_vector(7 downto 0);
        write_address_down: in     vl_logic;
        write_address_up: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MEM_16ADD_SWAP_vlg_sample_tst;
