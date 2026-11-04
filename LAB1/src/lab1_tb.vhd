library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab1_tb is
end entity lab1_tb;

architecture sim of lab1_tb is
    signal i_sw1 : STD_LOGIC := '0';
    signal i_sw2 : STD_LOGIC := '0';
    signal i_sw3 : STD_LOGIC := '0';
    signal o_led1: STD_LOGIC;
    signal o_led2: STD_LOGIC;
    signal o_led3: STD_LOGIC;
begin
    -- Gọi module lab1 vào để test
    dut : entity work.lab1
        port map (
            i_sw1 => i_sw1,
            i_sw2 => i_sw2,
            i_sw3 => i_sw3,
            o_led1 => o_led1,
            o_led2 => o_led2,
            o_led3 => o_led3
        );

    -- Tạo kích thích (bấm nút)
    stimulus : process
    begin
        -- 000
        i_sw1 <= '0'; i_sw2 <= '0'; i_sw3 <= '0'; wait for 10 ns;
        -- 001
        i_sw1 <= '0'; i_sw2 <= '0'; i_sw3 <= '1'; wait for 10 ns;
        -- 010
        i_sw1 <= '0'; i_sw2 <= '1'; i_sw3 <= '0'; wait for 10 ns;
        -- 011
        i_sw1 <= '0'; i_sw2 <= '1'; i_sw3 <= '1'; wait for 10 ns;
        -- 100
        i_sw1 <= '1'; i_sw2 <= '0'; i_sw3 <= '0'; wait for 10 ns;
        -- 101
        i_sw1 <= '1'; i_sw2 <= '0'; i_sw3 <= '1'; wait for 10 ns;
        -- 110
        i_sw1 <= '1'; i_sw2 <= '1'; i_sw3 <= '0'; wait for 10 ns;
        -- 111
        i_sw1 <= '1'; i_sw2 <= '1'; i_sw3 <= '1'; wait for 10 ns;
        
        wait; -- Kết thúc mô phỏng
    end process;
end architecture sim;