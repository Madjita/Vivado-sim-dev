----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.06.2018 09:49:21
-- Design Name: 
-- Module Name: testbench - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is

component ads_ddr_lvds_input is
    Port (
        inp : in STD_LOGIC_VECTOR (6 downto 0);
        inm : in STD_LOGIC_VECTOR (6 downto 0);
        clkp : in STD_LOGIC;
        clkm : in STD_LOGIC;
        
        outd : out STD_LOGIC_VECTOR (13 downto 0);
        clk : out STD_LOGIC
    );
end component ads_ddr_lvds_input;

signal clockp      : std_logic := '0';
signal clockm      : std_logic := '0';
signal inputp      : std_logic_vector (6 downto 0) := "0000000";
signal inputm      : std_logic_vector (6 downto 0) := "0000000";
signal output      : std_logic_vector (13 downto 0) := "00000000000000";
signal outclk      : std_logic := '0';

begin

ADS : ads_ddr_lvds_input
    port map (
        inp => inputp,
        inm => inputm,
        clkp => clockp,
        clkm => clockm,
        outd => output,
        clk => outclk
    );

timing : process
begin
    clockm <= clockp;
    clockp <= not clockp;
    wait for 10ns;
end process timing;

counter : process
begin
    inputm <= "0111111";
    inputp <= "1000000";
    wait for 20ns;
    inputm <= "1011111";
    inputp <= "0100000";
    wait for 20ns;
end process counter;


end Behavioral;
