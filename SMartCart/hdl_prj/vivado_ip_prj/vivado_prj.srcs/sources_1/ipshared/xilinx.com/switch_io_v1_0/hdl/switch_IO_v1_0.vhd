library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library unisim;
use unisim.vcomponents.all;

entity switch_IO_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		DATA_IN:    in std_logic;
		DIR  :out std_logic;
		DETECT  : IN std_logic;
		IRQ_DETECT: OUT std_logic;
		DATA_OUT :   out std_logic;
		SWITCH_SIG: in std_logic;
		SWITCH_SIG_1: in std_logic;
		IO: INOUT std_logic;
		s00_axi_rready	: in std_logic
	);
end switch_IO_v1_0;

architecture arch_imp of switch_IO_v1_0 is

	-- component declaration
	component switch_IO_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		DataIN: OUT std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		DataIN2:OUT std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		DATAOUT:IN std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component switch_IO_v1_0_S00_AXI;
signal s:std_logic;
signal sig:std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
signal STATUS: std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
signal RST_IRQ: std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
signal s1:std_logic:='0';

begin
s <= SWITCH_SIG or SWITCH_SIG_1; 
DIR<= not (SWITCH_SIG or SWITCH_SIG_1);
-- Instantiation of Axi Bus Interface S00_AXI
switch_IO_v1_0_S00_AXI_inst : switch_IO_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		DataIN=>sig,
		DataIN2=>RST_IRQ,
		DATAOUT=>STATUS,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);
OBUFT_inst : OBUFT
PORT MAP
    (
       O => IO,
       I => DATA_IN,
       T => s
    );

IBUF_inst: IBUF
PORT MAP
(
    O => DATA_OUT,
    I => IO
);
	-- Add user logic here
	-- User logic ends
PROCESS(s00_axi_aclk,DETECT)
BEGIN
      IF s00_axi_aclk'EVENT AND s00_axi_aclk='1' THEN
     
        if DETECT='1' and s1='0' then
                s1<='1';
                IRQ_DETECT<='1';
                STATUS(0)<='1';
                STATUS(1)<='0';
        end if;
        
        if DETECT='0' and s1='1' then
            s1<='0';
            IRQ_DETECT<='1';
            STATUS(1)<='1';
            STATUS(0)<='0';
        end if;
        
        IF RST_IRQ(0)='1' THEN
           IRQ_DETECT<='0';
        END IF;
      END IF; 
END PROCESS;

end arch_imp;
