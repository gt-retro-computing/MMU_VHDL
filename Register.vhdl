library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity F2 is
port(fi: in std_logic;
	out1,out2, rOUT, gOUT, bOUT, dbg1, dbg2 : out std_logic);
end F2;

architecture behav of F2 is
signal clk, hdisplay, vdisplay, display_pixel, hsync, vclk, vsync : std_logic;
signal counter : std_logic_vector(2 downto 0) := (others => '0');
signal hcounter : std_logic_vector(8 downto 0) := (others => '0');
signal vcounter : std_logic_vector(9 downto 0) := (others => '0');
begin
out1 <= hsync;
display_pixel <= hdisplay and vdisplay;
out2 <= vsync;
rOUT <= hcounter(2) and display_pixel;
gOUT <= vcounter(2) and display_pixel;
bOUT <= '0';
dbg1 <= hdisplay;
dbg2 <= clk;
--gOUT <= hcounter(0) and display_pixel;
--bOUT <= hcounter(0) and display_pixel;
process(fi)
begin
-- Increment Counter (10MHz)
if (rising_edge(fi)) then
	if (counter = "100" ) then
	clk <= '0';
	counter <= "000";
else
	counter <= counter + '1';
	if (counter = "011") then
		clk <= '1';
	end if;
end if;
end if;
end process;

process(clk) begin
if (rising_edge(clk)) then
	-- Horizontal Sync Magic
	if (hcounter = "100000111") then
		hcounter <= "000000000";
	else
		hcounter <= hcounter + '1';
	end if;
	-- Check HCounter Values
	if (hcounter = "000000000") then 
		hdisplay <= '1';
		vclk <= '0';
	elsif (hcounter = "011001000") then
		hdisplay <= '0';
	elsif (hcounter = "011010010") then
		hsync <= '1';
	elsif (hcounter = "011110010") then
		hsync <= '0';
	elsif (hcounter = "100000111") then
		vclk <= '1';
	end if;
end if;
end process;

process(vclk) begin
-- Vertical Sync Magic
if (rising_edge(vclk)) then
	if (vcounter = "1001110100") then 
		vcounter <= "0000000000";
	else
		vcounter <= vcounter + '1';
	end if;
	-- Check VCounter Values
	if (vcounter = "0000000000") then
		vdisplay <= '1';
	elsif (vcounter = "1001011000") then -- 600
		vdisplay <= '0';
	elsif (vcounter = "1001011001") then -- 601
		vsync <= '1';
	elsif (vcounter = "1001011101") then -- 605
		vsync <= '0';
	end if;
end if;
end process;

end behav;