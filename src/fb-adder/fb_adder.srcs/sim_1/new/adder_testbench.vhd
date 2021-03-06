----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2017 08:59:08 PM
-- Design Name: 
-- Module Name: AdderTB - Behavioral
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
USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AdderTB is

end AdderTB;

architecture Behavioral of AdderTB is
    component ADD4 is 
    port(
        a: in std_logic_vector(3 downto 0);
        b: in std_logic_vector(3 downto 0);
        sum: out std_logic_vector(4 downto 0)
    );
    end component ADD4;
    
    signal A_S: std_logic_vector(3 downto 0) := (others => '0');
    signal B_S: std_logic_vector(3 downto 0) := (others => '0');
    signal SUM_S: std_logic_vector(4 downto 0);
begin
    ADDER: ADD4 port map(A_S, B_S, SUM_S);  
    process
    begin 
        for i in 0 to 15 loop   
                for j in 0 to 15 loop
                        A_S <= std_logic_vector(to_unsigned(i, 4));
                        B_S <= std_logic_vector(to_unsigned(j, 4));
                        wait for 50 ns;
                end loop;
        end loop;
    end process;
end Behavioral;
