library IEEE;
use IEEE.std_logic_1164.all;

entity FancyRegister is
	port (en, clk, clr : in std_logic;
			data : in std_logic_vector(7 downto 0);
				q : out std_logic_vector(7 downto 0));
end FancyRegister;


architecture behavior of FancyRegister is
	begin

	process(clk, clr) begin
		
	if (clr = '1') then
		q <= x"00";
	elsif(rising_edge(clk) and en = '1') then
		q <= data;
	end if;
	end process;

end architecture behavior;