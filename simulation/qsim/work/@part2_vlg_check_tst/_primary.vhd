library verilog;
use verilog.vl_types.all;
entity Part2_vlg_check_tst is
    port(
        Neg             : in     vl_logic;
        R1              : in     vl_logic_vector(3 downto 0);
        R2              : in     vl_logic_vector(3 downto 0);
        R_first_four    : in     vl_logic_vector(0 to 6);
        R_first_sign    : in     vl_logic_vector(0 to 6);
        R_last_four     : in     vl_logic_vector(0 to 6);
        student_id_leds : in     vl_logic_vector(0 to 6);
        Student_Num     : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Part2_vlg_check_tst;
