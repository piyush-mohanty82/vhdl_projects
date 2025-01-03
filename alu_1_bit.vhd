library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_1_bit is
    Port (
        A1, B1 : in STD_LOGIC;
        sel1 : in STD_LOGIC_VECTOR(2 downto 0); 
        output1 : out STD_LOGIC                  -- Renamed output port to avoid conflict
    );
end alu_1_bit;

architecture Structural of alu_1_bit is

    -- Component declarations
    component half_adder is
        Port (
            a, b : in STD_LOGIC;
            sum, carry : out STD_LOGIC
        );
    end component;

    component half_substractor is
        Port (
            p, q : in STD_LOGIC;
            diff, Carry1 : out STD_LOGIC
        );
    end component;

    component comparator_1_bit is
        Port (
            r, s : in STD_LOGIC;
            a_greater_b, a_eq_b, a_less_b : out STD_LOGIC
        );
    end component;

    component and_gate is
        Port (
            A, B : in STD_LOGIC;
            y : out STD_LOGIC
        );
    end component;

    component mux_8to1 is
        Port (
            D0, D1, D2, D3, D4, D5, D6, D7 : in STD_LOGIC;
            sel : in STD_LOGIC_VECTOR(2 downto 0);
            op : out STD_LOGIC
        );
    end component;

    -- Internal signals
    signal Sum1, C1, Diff1, C2, a_G_b, a_E_b, a_L_b, and1 : STD_LOGIC;

begin

    -- Instantiate half adder
    adder : half_adder
        port map(A1,B1,Sum1,C1);

    -- Instantiate half subtractor
    substractor : half_substractor
        port map(A1,B1,Diff1,C2);

    -- Instantiate comparator
    comparator : comparator_1_bit
        port map(A1,B1,a_G_b,a_E_b,a_L_b);

    -- Instantiate AND gate
    andgt : and_gate
        port map(A1,B1,and1 );

    -- Instantiate 8:1 MUX
    mux : mux_8to1
        port map( Sum1,C1,Diff1, C2,a_G_b,a_E_b,a_L_b,and1,sel1,output1);

end Structural;
