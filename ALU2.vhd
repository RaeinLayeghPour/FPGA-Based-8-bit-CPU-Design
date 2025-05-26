library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU2 is
    port(
        Clk : in std_logic;
        A, B : in unsigned(7 downto 0);
        OP : in unsigned(15 downto 0);
        Neg : out std_logic;
        R1 : out unsigned(3 downto 0);
        R2 : out unsigned(3 downto 0)
    );
end ALU2;

architecture calculation of ALU2 is
    signal Reg1, Reg2, Result : unsigned(7 downto 0);
begin
    Reg1 <= A;
    Reg2 <= B;

    process(Clk, OP)
    begin
        if rising_edge(Clk) then
            case OP is

                -- 1. Swap upper and lower 4 bits of A
                when "0000000000000001" =>
                    Neg <= '0';
                    Result <= Reg1(3 downto 0) & Reg1(7 downto 4);

                -- 2. A OR B
                when "0000000000000010" =>
                    Neg <= '0';
                    Result <= Reg1 or Reg2;

                -- 3. Decrement B by 5
                when "0000000000000100" =>
                    Neg <= '0';
                    Result <= Reg2 - 5;

                -- 4. Invert all bits of A
                when "0000000000001000" =>
                    Neg <= '0';
                    Result <= not Reg1;

                -- 5. Bit-reverse A
                when "0000000000010000" =>
                    Neg <= '0';
                    Result <= Reg1(0) & Reg1(1) & Reg1(2) & Reg1(3) &
                              Reg1(4) & Reg1(5) & Reg1(6) & Reg1(7);  -- reversed

                -- 6. Max(A, B)
                when "0000000000100000" =>
                    Neg <= '0';
                    if Reg1 > Reg2 then
                        Result <= Reg1;
                    else
                        Result <= Reg2;
                    end if;

                -- 7. Difference A - B (with neg flag)
                when "0000000001000000" =>
                    if Reg1 < Reg2 then
                        Neg <= '1';
                        Result <= Reg2 - Reg1;
                    else
                        Neg <= '0';
                        Result <= Reg1 - Reg2;
                    end if;

                -- 8. XNOR A and B
                when "0000000010000000" =>
                    Neg <= '0';
                    Result <= Reg1 xnor Reg2;

                -- Default: do nothing
                when others =>
                    Result <= (others => '0');
                    Neg <= '0';

            end case;
        end if;
    end process;

    -- Output result in two 4-bit parts for 7-segment
    R1 <= Result(3 downto 0);
    R2 <= Result(7 downto 4);
end calculation;
