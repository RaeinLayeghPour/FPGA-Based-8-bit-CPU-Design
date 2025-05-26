library verilog;
use verilog.vl_types.all;
entity Part3_vlg_check_tst is
    port(
        R_last_four     : in     vl_logic_vector(0 to 6);
        student_id_leds : in     vl_logic_vector(0 to 6);
        Student_Num     : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Part3_vlg_check_tst;
