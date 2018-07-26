library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.vcomponents.all;

entity tribuffer is
	port (
	   data_out    :   out std_logic;
	   data_io     :   inout std_logic;
	   data_in     :   in std_logic;
	   data_cnt    :   in std_logic
	);
end tribuffer;

architecture arch_imp of tribuffer is

begin
    
IOBUF_inst : IOBUF
    generic map (
        DRIVE => 12,
        IOSTANDARD => "DEFAULT",
        SLEW => "SLOW")
    port map (
        O => data_out,     -- Buffer output
        IO => data_io,     -- Buffer inout port (connect directly to top-level port)
        I => data_in,      -- Buffer input
        T => data_cnt      -- 3-state enable input, high=input, low=output 
    );

end arch_imp;
