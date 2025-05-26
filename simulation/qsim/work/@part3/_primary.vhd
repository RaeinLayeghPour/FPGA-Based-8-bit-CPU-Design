library verilog;
use verilog.vl_types.all;
entity Part3 is
    port(
        R_last_four     : out    vl_logic_vector(0 to 6);
        Clock           : in     vl_logic;
        decoder_enabler : in     vl_logic;
        data_in         : in     vl_logic;
        Reset           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        student_id_leds : out    vl_logic_vector(0 to 6);
        Student_Num     : out    vl_logic_vector(3 downto 0)
    );
end Part3;
