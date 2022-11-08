library ieee;
use ieee.std_logic_1164.all;

entity all_design_tb is
end all_design_tb;

architecture behavioral of all_design_tb is
    -- 100 MHz clock
    constant Tclk: time := 10 ns;
    
    component all_design is
        port (
            clk, reset: in std_logic;
            led0, led1: out std_logic
        );
    end component;
    
    signal clk: std_logic := '0';
    signal reset, led0, led1: std_logic;

begin
    clk <= not clk after Tclk/2;
    reset <= '1', '0' after 5.25 * Tclk;
    
    -- Unit under test
    uut: component all_design
        port map (
            clk => clk,
            reset => reset,
            led0 => led0,
            led1 => led1
        );
end behavioral;
