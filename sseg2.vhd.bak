LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg2 IS
	PORT ( bcd : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		   leds, nleds : OUT STD_LOGIC_VECTOR(1 TO 7) );
END sseg2;

ARCHITECTURE Behavior OF sseg2 IS
BEGIN
	PROCESS (bcd)
	BEGIN
		CASE bcd IS             -- abcdefg
			WHEN "000" => leds <= "1001111";
			WHEN "001" => leds <= "0010010";
			WHEN "010" => leds <= "0000110";
			WHEN "011" => leds <= "1001100";
			WHEN "100" => leds <= "0100100";
			WHEN "101" => leds <= "0100000";
			WHEN "110" => leds <= "0001111";
			WHEN "111" => leds <= "0000000";
			WHEN OTHERS => leds <= "-------";
		END CASE;
END PROCESS;
END Behavior;