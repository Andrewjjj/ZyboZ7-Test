----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Andrew Juwon Park
-- 
-- Create Date: 12/05/2020 06:33:42 PM
-- Design Name: 
-- Module Name: main_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Code to Test ECE 410 Lab Kit Returns
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main_test is
  Port (  clk : in std_logic;
          switch_in       : in std_logic_vector( 3 downto 0);
          btn_in          : in std_logic_vector( 3 downto 0);
          
          led_out         : out std_logic_vector( 3 downto 0);
          led6_out_r      : out std_logic;
          led6_out_g      : out std_logic;
          led6_out_b      : out std_logic;
          segment_display : out std_logic_vector( 6 downto 0 );
          segment_display_select : inout std_logic
   );
end main_test;

architecture Behavioral of main_test is
signal count : integer := 1;
signal segment_speed : integer := 62500000;

begin

process(clk)
begin
    for I in 0 to 3 loop
        led_out(I) <= switch_in(I);
    end loop;
    led6_out_r <= btn_in(0);
    led6_out_g <= btn_in(1);
    led6_out_b <= btn_in(2);
end process;

process(clk)
variable current_segment : integer := 0;
begin
    if clk='1' and clk'event then
        current_segment := count / segment_speed;
        segment_display_select <= NOT segment_display_select;
        count <= count + 1;
        if(count = segment_speed*7) then
            count <= 1;
        end if;
        
        if btn_in(3) = '1' then
            segment_display <= "1111111";
        else
            case current_segment is
                when 0 => segment_display <= "0000001";
                when 1 => segment_display <= "0000010";
                when 2 => segment_display <= "0000100";
                when 3 => segment_display <= "0001000";
                when 4 => segment_display <= "0010000";
                when 5 => segment_display <= "0100000";
                when others => segment_display <= "1000000";
            end case;
        end if;
    end if;
    
end process;
end Behavioral;
