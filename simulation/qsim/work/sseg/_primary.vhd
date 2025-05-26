library verilog;
use verilog.vl_types.all;
entity sseg is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        neg             : in     vl_logic;
        leds            : out    vl_logic_vector(0 to 6);
        ledss           : out    vl_logic_vector(0 to 6)
    );
end sseg;
