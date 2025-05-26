library verilog;
use verilog.vl_types.all;
entity sseg_vlg_check_tst is
    port(
        leds            : in     vl_logic_vector(0 to 6);
        ledss           : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end sseg_vlg_check_tst;
