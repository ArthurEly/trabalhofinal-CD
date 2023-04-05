library verilog;
use verilog.vl_types.all;
entity count is
    port(
        count           : out    vl_logic_vector(1 downto 0);
        button          : in     vl_logic
    );
end count;
