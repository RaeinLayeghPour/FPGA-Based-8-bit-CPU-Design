library verilog;
use verilog.vl_types.all;
entity dec4to16 is
    port(
        w               : in     vl_logic_vector(3 downto 0);
        En              : in     vl_logic;
        Y               : out    vl_logic_vector(15 downto 0)
    );
end dec4to16;
