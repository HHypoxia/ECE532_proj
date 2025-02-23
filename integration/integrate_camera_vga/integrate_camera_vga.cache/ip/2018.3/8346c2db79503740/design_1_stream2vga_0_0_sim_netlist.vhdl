-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 16 17:44:25 2025
-- Host        : gougou running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_stream2vga_0_0_sim_netlist.vhdl
-- Design      : design_1_stream2vga_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_out is
  port (
    pix_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    clk : in STD_LOGIC;
    tdata : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_out;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_out is
  signal \hcount[10]_i_3_n_0\ : STD_LOGIC;
  signal \hcount[10]_i_4_n_0\ : STD_LOGIC;
  signal \hcount[10]_i_5_n_0\ : STD_LOGIC;
  signal \hcount[10]_i_6_n_0\ : STD_LOGIC;
  signal \hcount[7]_i_2_n_0\ : STD_LOGIC;
  signal \hcount_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal hsync_INST_0_i_1_n_0 : STD_LOGIC;
  signal line_end : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pix_r[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pix_r[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal vcount : STD_LOGIC;
  signal \vcount[6]_i_2_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_3_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_4_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_5_n_0\ : STD_LOGIC;
  signal \vcount[9]_i_6_n_0\ : STD_LOGIC;
  signal \vcount_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hcount[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hcount[10]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hcount[10]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hcount[10]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hcount[10]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hcount[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hcount[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hcount[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hcount[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hcount[7]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hcount[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of hsync_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pix_r[3]_INST_0_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \vcount[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vcount[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vcount[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \vcount[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vcount[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vcount[6]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vcount[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vcount[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vcount[9]_i_5\ : label is "soft_lutpair5";
begin
\hcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hcount_reg__0\(0),
      O => p_0_in(0)
    );
\hcount[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \hcount_reg__0\(4),
      I1 => \hcount[10]_i_3_n_0\,
      I2 => \hcount_reg__0\(7),
      I3 => \hcount_reg__0\(6),
      I4 => \hcount_reg__0\(5),
      I5 => \hcount[10]_i_4_n_0\,
      O => line_end
    );
\hcount[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \hcount_reg__0\(10),
      I1 => \hcount_reg__0\(5),
      I2 => \hcount_reg__0\(6),
      I3 => \hcount[10]_i_5_n_0\,
      I4 => \hcount[10]_i_6_n_0\,
      I5 => \hcount_reg__0\(9),
      O => p_0_in(10)
    );
\hcount[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \hcount_reg__0\(3),
      I1 => \hcount_reg__0\(2),
      I2 => \hcount_reg__0\(0),
      I3 => \hcount_reg__0\(1),
      O => \hcount[10]_i_3_n_0\
    );
\hcount[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \hcount_reg__0\(10),
      I1 => \hcount_reg__0\(9),
      I2 => \hcount_reg__0\(8),
      O => \hcount[10]_i_4_n_0\
    );
\hcount[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \hcount_reg__0\(2),
      I1 => \hcount_reg__0\(0),
      I2 => \hcount_reg__0\(1),
      I3 => \hcount_reg__0\(4),
      I4 => \hcount_reg__0\(3),
      O => \hcount[10]_i_5_n_0\
    );
\hcount[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \hcount_reg__0\(7),
      I1 => \hcount_reg__0\(8),
      O => \hcount[10]_i_6_n_0\
    );
\hcount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hcount_reg__0\(0),
      I1 => \hcount_reg__0\(1),
      O => p_0_in(1)
    );
\hcount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \hcount_reg__0\(2),
      I1 => \hcount_reg__0\(0),
      I2 => \hcount_reg__0\(1),
      O => p_0_in(2)
    );
\hcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \hcount_reg__0\(1),
      I1 => \hcount_reg__0\(0),
      I2 => \hcount_reg__0\(2),
      I3 => \hcount_reg__0\(3),
      O => p_0_in(3)
    );
\hcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \hcount_reg__0\(4),
      I1 => \hcount_reg__0\(1),
      I2 => \hcount_reg__0\(0),
      I3 => \hcount_reg__0\(2),
      I4 => \hcount_reg__0\(3),
      O => p_0_in(4)
    );
\hcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hcount_reg__0\(5),
      I1 => \hcount_reg__0\(3),
      I2 => \hcount_reg__0\(4),
      I3 => \hcount_reg__0\(1),
      I4 => \hcount_reg__0\(0),
      I5 => \hcount_reg__0\(2),
      O => p_0_in(5)
    );
\hcount[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \hcount_reg__0\(6),
      I1 => \hcount[7]_i_2_n_0\,
      I2 => \hcount_reg__0\(4),
      I3 => \hcount_reg__0\(3),
      I4 => \hcount_reg__0\(5),
      O => p_0_in(6)
    );
\hcount[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \hcount_reg__0\(7),
      I1 => \hcount_reg__0\(5),
      I2 => \hcount_reg__0\(6),
      I3 => \hcount[7]_i_2_n_0\,
      I4 => \hcount_reg__0\(4),
      I5 => \hcount_reg__0\(3),
      O => p_0_in(7)
    );
\hcount[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \hcount_reg__0\(1),
      I1 => \hcount_reg__0\(0),
      I2 => \hcount_reg__0\(2),
      O => \hcount[7]_i_2_n_0\
    );
\hcount[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \hcount_reg__0\(8),
      I1 => \hcount_reg__0\(7),
      I2 => \hcount[10]_i_5_n_0\,
      I3 => \hcount_reg__0\(6),
      I4 => \hcount_reg__0\(5),
      O => p_0_in(8)
    );
\hcount[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \hcount_reg__0\(9),
      I1 => \hcount_reg__0\(7),
      I2 => \hcount_reg__0\(8),
      I3 => \hcount[10]_i_5_n_0\,
      I4 => \hcount_reg__0\(6),
      I5 => \hcount_reg__0\(5),
      O => p_0_in(9)
    );
\hcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \hcount_reg__0\(0),
      R => line_end
    );
\hcount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(10),
      Q => \hcount_reg__0\(10),
      R => line_end
    );
\hcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \hcount_reg__0\(1),
      R => line_end
    );
\hcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \hcount_reg__0\(2),
      R => line_end
    );
\hcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \hcount_reg__0\(3),
      R => line_end
    );
\hcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \hcount_reg__0\(4),
      R => line_end
    );
\hcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => \hcount_reg__0\(5),
      R => line_end
    );
\hcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => \hcount_reg__0\(6),
      R => line_end
    );
\hcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => \hcount_reg__0\(7),
      R => line_end
    );
\hcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => \hcount_reg__0\(8),
      R => line_end
    );
\hcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => \hcount_reg__0\(9),
      R => line_end
    );
hsync_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => hsync_INST_0_i_1_n_0,
      I1 => \hcount_reg__0\(9),
      I2 => \hcount_reg__0\(10),
      I3 => \hcount_reg__0\(8),
      O => hsync
    );
hsync_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FFFF"
    )
        port map (
      I0 => \hcount_reg__0\(5),
      I1 => \hcount_reg__0\(6),
      I2 => \hcount_reg__0\(3),
      I3 => \hcount_reg__0\(4),
      I4 => \hcount_reg__0\(7),
      O => hsync_INST_0_i_1_n_0
    );
\pix_b[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(0),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_b(0)
    );
\pix_b[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(1),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_b(1)
    );
\pix_b[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(2),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_b(2)
    );
\pix_b[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(3),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_b(3)
    );
\pix_g[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(4),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_g(0)
    );
\pix_g[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(5),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_g(1)
    );
\pix_g[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(6),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_g(2)
    );
\pix_g[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(7),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_g(3)
    );
\pix_r[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(8),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_r(0)
    );
\pix_r[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(9),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_r(1)
    );
\pix_r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(10),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_r(2)
    );
\pix_r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A008A0000008A"
    )
        port map (
      I0 => tdata(11),
      I1 => \pix_r[3]_INST_0_i_1_n_0\,
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \pix_r[3]_INST_0_i_3_n_0\,
      I4 => \pix_r[3]_INST_0_i_4_n_0\,
      I5 => \pix_r[3]_INST_0_i_5_n_0\,
      O => pix_r(3)
    );
\pix_r[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \vcount_reg__0\(6),
      I1 => \vcount_reg__0\(5),
      I2 => \vcount_reg__0\(7),
      I3 => \vcount_reg__0\(9),
      I4 => \vcount_reg__0\(8),
      O => \pix_r[3]_INST_0_i_1_n_0\
    );
\pix_r[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \vcount_reg__0\(0),
      I1 => \vcount_reg__0\(1),
      I2 => \vcount_reg__0\(2),
      I3 => \vcount_reg__0\(3),
      I4 => \vcount_reg__0\(4),
      O => \pix_r[3]_INST_0_i_2_n_0\
    );
\pix_r[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000E00F000F000F"
    )
        port map (
      I0 => \hcount_reg__0\(6),
      I1 => \hcount_reg__0\(5),
      I2 => \hcount_reg__0\(9),
      I3 => \hcount_reg__0\(10),
      I4 => \hcount_reg__0\(7),
      I5 => \hcount_reg__0\(8),
      O => \pix_r[3]_INST_0_i_3_n_0\
    );
\pix_r[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \vcount_reg__0\(6),
      I1 => \vcount_reg__0\(4),
      I2 => \vcount_reg__0\(3),
      I3 => \vcount_reg__0\(2),
      I4 => \vcount_reg__0\(0),
      I5 => \vcount_reg__0\(1),
      O => \pix_r[3]_INST_0_i_4_n_0\
    );
\pix_r[3]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F7FFF"
    )
        port map (
      I0 => \vcount_reg__0\(7),
      I1 => \vcount_reg__0\(8),
      I2 => \vcount_reg__0\(9),
      I3 => \vcount_reg__0\(6),
      I4 => \vcount_reg__0\(5),
      O => \pix_r[3]_INST_0_i_5_n_0\
    );
\vcount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vcount_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\vcount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \vcount_reg__0\(0),
      I1 => \vcount_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\vcount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \vcount_reg__0\(0),
      I1 => \vcount_reg__0\(1),
      I2 => \vcount_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\vcount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \vcount_reg__0\(3),
      I1 => \vcount_reg__0\(0),
      I2 => \vcount_reg__0\(1),
      I3 => \vcount_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\vcount[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \vcount_reg__0\(4),
      I1 => \vcount_reg__0\(3),
      I2 => \vcount_reg__0\(2),
      I3 => \vcount_reg__0\(1),
      I4 => \vcount_reg__0\(0),
      O => \p_0_in__0\(4)
    );
\vcount[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \vcount_reg__0\(5),
      I1 => \vcount_reg__0\(0),
      I2 => \vcount_reg__0\(1),
      I3 => \vcount_reg__0\(2),
      I4 => \vcount_reg__0\(3),
      I5 => \vcount_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\vcount[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \vcount_reg__0\(6),
      I1 => \vcount[6]_i_2_n_0\,
      I2 => \vcount_reg__0\(2),
      I3 => \vcount_reg__0\(3),
      I4 => \vcount_reg__0\(4),
      I5 => \vcount_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\vcount[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \vcount_reg__0\(0),
      I1 => \vcount_reg__0\(1),
      O => \vcount[6]_i_2_n_0\
    );
\vcount[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \vcount_reg__0\(7),
      I1 => \vcount_reg__0\(5),
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \vcount_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\vcount[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => \vcount_reg__0\(8),
      I1 => \vcount_reg__0\(6),
      I2 => \pix_r[3]_INST_0_i_2_n_0\,
      I3 => \vcount_reg__0\(5),
      I4 => \vcount_reg__0\(7),
      O => \p_0_in__0\(8)
    );
\vcount[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \vcount[9]_i_3_n_0\,
      I1 => \hcount[10]_i_3_n_0\,
      I2 => \hcount_reg__0\(4),
      I3 => \vcount[9]_i_4_n_0\,
      I4 => \vcount[9]_i_5_n_0\,
      I5 => \vcount[9]_i_6_n_0\,
      O => vcount
    );
\vcount[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \vcount_reg__0\(9),
      I1 => \vcount_reg__0\(7),
      I2 => \vcount_reg__0\(5),
      I3 => \pix_r[3]_INST_0_i_2_n_0\,
      I4 => \vcount_reg__0\(6),
      I5 => \vcount_reg__0\(8),
      O => \p_0_in__0\(9)
    );
\vcount[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => \hcount_reg__0\(8),
      I1 => \hcount_reg__0\(9),
      I2 => \hcount_reg__0\(10),
      I3 => \hcount_reg__0\(5),
      I4 => \hcount_reg__0\(6),
      I5 => \hcount_reg__0\(7),
      O => \vcount[9]_i_3_n_0\
    );
\vcount[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \vcount_reg__0\(4),
      I1 => \vcount_reg__0\(3),
      I2 => \vcount_reg__0\(2),
      O => \vcount[9]_i_4_n_0\
    );
\vcount[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \vcount_reg__0\(1),
      I1 => \vcount_reg__0\(0),
      I2 => \vcount_reg__0\(5),
      I3 => \vcount_reg__0\(6),
      O => \vcount[9]_i_5_n_0\
    );
\vcount[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \vcount_reg__0\(9),
      I1 => \vcount_reg__0\(8),
      I2 => \vcount_reg__0\(7),
      O => \vcount[9]_i_6_n_0\
    );
\vcount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(0),
      Q => \vcount_reg__0\(0),
      R => vcount
    );
\vcount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(1),
      Q => \vcount_reg__0\(1),
      R => vcount
    );
\vcount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(2),
      Q => \vcount_reg__0\(2),
      R => vcount
    );
\vcount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(3),
      Q => \vcount_reg__0\(3),
      R => vcount
    );
\vcount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(4),
      Q => \vcount_reg__0\(4),
      R => vcount
    );
\vcount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(5),
      Q => \vcount_reg__0\(5),
      R => vcount
    );
\vcount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(6),
      Q => \vcount_reg__0\(6),
      R => vcount
    );
\vcount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(7),
      Q => \vcount_reg__0\(7),
      R => vcount
    );
\vcount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(8),
      Q => \vcount_reg__0\(8),
      R => vcount
    );
\vcount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => line_end,
      D => \p_0_in__0\(9),
      Q => \vcount_reg__0\(9),
      R => vcount
    );
vsync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010101"
    )
        port map (
      I0 => \vcount_reg__0\(4),
      I1 => \vcount_reg__0\(3),
      I2 => \vcount_reg__0\(2),
      I3 => \vcount_reg__0\(0),
      I4 => \vcount_reg__0\(1),
      I5 => \pix_r[3]_INST_0_i_1_n_0\,
      O => vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_stream_to_vga_12bit is
  port (
    pix_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    clk : in STD_LOGIC;
    tdata : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_stream_to_vga_12bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_stream_to_vga_12bit is
begin
vga_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_out
     port map (
      clk => clk,
      hsync => hsync,
      pix_b(3 downto 0) => pix_b(3 downto 0),
      pix_g(3 downto 0) => pix_g(3 downto 0),
      pix_r(3 downto 0) => pix_r(3 downto 0),
      tdata(11 downto 0) => tdata(11 downto 0),
      vsync => vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    tdata : in STD_LOGIC_VECTOR ( 16 downto 0 );
    tvalid : in STD_LOGIC;
    tready : out STD_LOGIC;
    pix_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pix_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_stream2vga_0_0,axi_stream_to_vga_12bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_stream_to_vga_12bit,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S00_SLV, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tready : signal is "xilinx.com:interface:axis:1.0 S00_SLV TREADY";
  attribute X_INTERFACE_PARAMETER of tready : signal is "XIL_INTERFACENAME S00_SLV, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tvalid : signal is "xilinx.com:interface:axis:1.0 S00_SLV TVALID";
  attribute X_INTERFACE_INFO of tdata : signal is "xilinx.com:interface:axis:1.0 S00_SLV TDATA";
begin
  tready <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_stream_to_vga_12bit
     port map (
      clk => clk,
      hsync => hsync,
      pix_b(3 downto 0) => pix_b(3 downto 0),
      pix_g(3 downto 0) => pix_g(3 downto 0),
      pix_r(3 downto 0) => pix_r(3 downto 0),
      tdata(11 downto 0) => tdata(11 downto 0),
      vsync => vsync
    );
end STRUCTURE;
