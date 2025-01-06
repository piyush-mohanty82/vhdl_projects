
--FOUR BIT PARALLEL ADDER
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_bit_adder is
    Port ( A,B : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Co : out STD_LOGIC);
end four_bit_adder;

architecture Structural of four_bit_adder is
component full_adder is
    Port ( a,b,c : in STD_LOGIC;
           sum,carry : out STD_LOGIC);
end component;
signal C :STD_LOGIC_VECTOR (2 downto 0);
begin
FA0 : full_adder port map(a => A(0),b => B(0),c => Cin,sum => S(0),carry => C(0));
FA1 : full_adder port map(a => A(1),b => B(1),c => C(0),sum => S(1),carry => C(1));
FA2 : full_adder port map(a => A(2),b => B(2),c => C(1),sum => S(2),carry => C(2));
FA3 : full_adder port map(a => A(3),b => B(3),c => C(2),sum => S(3),carry => Co);




end Structural;
