


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity bin_to_gray is
    Port ( b : in STD_LOGIC_VECTOR (3 downto 0);
           g : out STD_LOGIC_VECTOR (3 downto 0));
end bin_to_gray;

architecture Behavioral of bin_to_gray is

begin
process(b)
begin
g(3) <= b(3);
g(2) <= b(2) xor b(3);
g(1) <= b(1) xor b(2);
g(0) <= b(0) xor b(1);
end process;

end Behavioral;
