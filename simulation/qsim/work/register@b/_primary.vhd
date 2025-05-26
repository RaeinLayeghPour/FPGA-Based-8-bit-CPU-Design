library verilog;
use verilog.vl_types.all;
entity registerB is
    port(
        B               : in     vl_logic_vector(7 downto 0);
        Resetn          : in     vl_logic;
        Clock           : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end registerB;
