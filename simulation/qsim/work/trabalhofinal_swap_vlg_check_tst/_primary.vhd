library verilog;
use verilog.vl_types.all;
entity trabalhofinal_swap_vlg_check_tst is
    port(
        address_reg_out : in     vl_logic_vector(7 downto 0);
        data_out        : in     vl_logic_vector(7 downto 0);
        data_reg_out    : in     vl_logic_vector(7 downto 0);
        morte           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end trabalhofinal_swap_vlg_check_tst;
