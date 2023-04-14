library verilog;
use verilog.vl_types.all;
entity decoddisplay is
    port(
        \OUT\           : out    vl_logic_vector(6 downto 0);
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic
    );
end decoddisplay;
