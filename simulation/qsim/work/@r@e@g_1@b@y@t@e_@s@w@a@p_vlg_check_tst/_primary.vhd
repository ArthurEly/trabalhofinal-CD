library verilog;
use verilog.vl_types.all;
entity REG_1BYTE_SWAP_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(7 downto 0);
        pin_name1       : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end REG_1BYTE_SWAP_vlg_check_tst;
