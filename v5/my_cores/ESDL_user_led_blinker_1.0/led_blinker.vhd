library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity led_blinker is
    generic (
        CLK_divider_width: integer range 2 to 32 := 32
    );
    port (
        clk, reset: in std_logic;
        square: out std_logic
    );
end led_blinker;

architecture RTL of led_blinker is
    signal clk_divider: std_logic_vector(CLK_divider_width-1 downto 0);
    signal reset_sync: std_logic;

begin
    -- Sync input signals
    process (clk) is
    begin
        if rising_edge(clk) then
            reset_sync <= reset;
        end if;
    end process;
    
    -- Counter
    process (clk) is
    begin
        if rising_edge(clk) then
            if reset_sync = '1' then
                clk_divider <= (others => '0');  -- sets all bits to 0
            else
                clk_divider <= clk_divider + 1;
            end if;
        end if;
    end process;
    
    -- Square wave from highest bit of counter
    square <= clk_divider(CLK_divider_width - 1);
end RTL;
