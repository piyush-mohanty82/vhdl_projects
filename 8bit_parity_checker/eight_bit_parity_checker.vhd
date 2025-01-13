----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2024 09:55:46
-- Design Name: 
-- Module Name: eight_bit_parity_checker - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eight_bit_parity_checker is
    generic(k:integer:=8);
    Port ( din : in STD_LOGIC_VECTOR (7 downto 0);
           peven,podd : out STD_LOGIC);
end eight_bit_parity_checker;

architecture Behavioral of eight_bit_parity_checker is

begin
process(din)
variable y:std_logic:='0';
begin
y:='0';
for i in k-1 downto 0 loop
y := din(i) xor y;
end loop;
peven <= not y;
podd <= y;
end process;
end Behavioral;
