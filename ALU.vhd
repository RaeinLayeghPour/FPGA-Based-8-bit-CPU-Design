library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
port(Clk:in std_logic;
A,B : in unsigned(7 downto 0);
OP : in unsigned(15 downto 0);
Neg : out std_logic;
R1: out unsigned(3 downto 0);
R2: out unsigned(3 downto 0));
end ALU;
architecture calculation of ALU is
signal Reg1,Reg2,Result : unsigned(7 downto 0);
begin	
Reg1 <= A;
Reg2 <= B;
process(Clk,OP)
	begin	
	if(rising_edge(Clk)) THEN 
		case OP is
		   
			WHEN "0000000000000001" => -- Addition for Reg1 and Reg2 
			Result <= Reg1 + Reg2;

			WHEN "0000000000000010" => -- Subtraction, neg bit if required
					if (Reg1 < Reg2) then
					neg <= '1';
					Result <= (Reg2 - Reg1);
					else
					neg <= '0';
					Result <= (Reg1 - Reg2);
					end if;
			WHEN "0000000000000100" => -- Inverse of A
			neg <= '0';
				Result <= NOT(Reg1);
										

			WHEN "0000000000001000" => -- Boolean NAND gate
			neg <= '0';
				Result <= (Reg1 NAND Reg2);

			WHEN "0000000000010000" => -- Boolean NOR gate
			neg <= '0';
				Result <= (Reg1 NOR Reg2);
	
			WHEN "0000000000100000" => -- Boolean AND gate
			neg <= '0';
				Result <= (Reg1 AND Reg2);
											

			WHEN "0000000001000000" => -- Boolean XOR gate
			neg <= '0';
				Result <= (Reg1 XOR Reg2);

			WHEN "0000000010000000" => -- Boolean OR gate
			Result <= Reg1 OR Reg2;
			
			WHEN "0000000100000000" => -- Boolean XNOR gate
			neg <= '0';
				Result <= (Reg1 XNOR Reg2);
				
			WHEN OTHERS => 				-- Don't care, do nothing			
			end case;
		end if;
	end process;
	
R1 <= Result(3 downto 0); -- Since the output is 7 segments, but the result is 8-bits
R2 <= Result(7 downto 4); -- Split two of the output into two 4-bits 
end calculation;