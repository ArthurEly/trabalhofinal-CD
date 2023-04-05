library verilog;
use verilog.vl_types.all;
entity MEM_16ADD_SWAP_vlg_check_tst is
    port(
        data_out_down   : in     vl_logic_vector(7 downto 0);
        data_out_up     : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end MEM_16ADD_SWAP_vlg_check_tst;
