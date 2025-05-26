LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU3 is  -- ALU unit includes Reg. 3
    port (
        clk, res      : in std_logic;
        Reg1, Reg2    : in std_logic_vector(7 downto 0); -- Inputs A & B (unused here)
        student_id    : in std_logic_vector(3 downto 0); -- From FSM
        opcode        : in std_logic_vector(15 downto 0); -- From Decoder
        Result        : out std_logic_vector(2 downto 0)  -- 3-bit BCD to pass to sseg2
    );
end ALU3;

architecture calculation of ALU3 is
begin
    process (clk, res)
    begin
        if res = '1' then
            Result <= "000"; -- default value
        elsif rising_edge(clk) then
            if student_id(0) = '0' then  -- even
                Result <= "100";  -- value for 'y'
            else
                Result <= "111";  -- value for 'n'
            end if;
        end if;
    end process;
end calculation;
