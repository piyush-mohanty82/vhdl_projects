----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.12.2024 10:33:30
-- Design Name: 
-- Module Name: barrel_shifter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity barrel_shifter is
    Port ( din : in bit_VECTOR (7 downto 0);
           dout : out bit_VECTOR (7 downto 0);
           R,C : in STD_LOGIC;
           s : in STD_LOGIC_VECTOR (2 downto 0));
end barrel_shifter;

architecture Behavioral of barrel_shifter is

begin
process(din,C,R,s)
begin
if(R='1')then
    dout<="00000000";
elsif(rising_edge(C))then
    case (s) is
    when "000" =>dout<= din;
    when "001" =>dout<= din ror 1;
    when "010" =>dout<= din ror 2;
    when "011" =>dout<= din ror 3;
    when "100" =>dout<= din ror 4;
    when "101" =>dout<= din ror 5;
    when "110" =>dout<= din ror 6;
    when others =>dout<= din ror 7;
    end case;
    end if;
    end process;
    

end Behavioral;
