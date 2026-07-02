library ieee;
use ieee.std_logic_1164.all;

entity led_timer is
    generic(
        TEMPO_ACESO : positive := 150000000
    );
    port(
        relogio   : in  std_logic;
        reiniciar : in  std_logic;
        pulso     : in  std_logic;
        led_saida : out std_logic
    );
end led_timer;

architecture comportamento of led_timer is
    signal contador : integer range 0 to TEMPO_ACESO := 0;
begin
    process(relogio, reiniciar)
    begin
        if reiniciar = '1' then
            contador <= 0;
            led_saida <= '0';
        elsif rising_edge(relogio) then
            if pulso = '1' then
                contador <= TEMPO_ACESO;
                led_saida <= '1';
            elsif contador > 1 then
                contador <= contador - 1;
                led_saida <= '1';
            else
                contador <= 0;
                led_saida <= '0';
            end if;
        end if;
    end process;
end comportamento;
