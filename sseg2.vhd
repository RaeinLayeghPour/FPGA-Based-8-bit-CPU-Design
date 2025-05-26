LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg2 IS
    PORT (
        bcd  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        leds : OUT STD_LOGIC_VECTOR(0 TO 6)
    );
END sseg2;

ARCHITECTURE Behavior OF sseg2 IS
BEGIN
    PROCESS (bcd)
    BEGIN
        CASE bcd IS
            WHEN "000" => leds <= "1111110"; -- 0
            WHEN "001" => leds <= "0110000"; -- 1
            WHEN "010" => leds <= "1101101"; -- 2
            WHEN "011" => leds <= "1111001"; -- 3
            WHEN "100" => leds <= "0111011"; -- 'y'
            WHEN "101" => leds <= "1011011"; -- 5
            WHEN "110" => leds <= "1011111"; -- 6
            WHEN "111" => leds <= "0001011"; -- 'n'
            WHEN OTHERS => leds <= "0000000"; -- blank
        END CASE;
    END PROCESS;
END Behavior;
