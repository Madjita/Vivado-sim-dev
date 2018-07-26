----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.06.2018 14:21:16
-- Design Name: 
-- Module Name: DifferentialOutBuffer - Behavioral
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
Library UNISIM;
use UNISIM.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DifferentialOutBuffer is
    Port ( ins : in STD_LOGIC;
           outp : out STD_LOGIC;
           outm : out STD_LOGIC);
end DifferentialOutBuffer;

architecture Behavioral of DifferentialOutBuffer is

begin
   
   OBUFDS_inst : OBUFDS
   generic map (
      IOSTANDARD => "DEFAULT", -- Specify the output I/O standard
      SLEW => "SLOW")          -- Specify the output slew rate
   port map (
      O => outp,     -- Diff_p output (connect directly to top-level port)
      OB => outm,   -- Diff_n output (connect directly to top-level port)
      I => ins      -- Buffer input 
   );

end Behavioral;
