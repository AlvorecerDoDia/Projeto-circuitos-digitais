library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debounce is
    generic(
        LIMITE_FILTRO : integer := 250000
    );
    port(
        relogio     : in  std_logic;
        reset       : in  std_logic;
        botao_in    : in  std_logic;
        botao_pulso : out std_logic
    );
end debounce;

architecture comportamento of debounce is
    signal botao_estavel : std_logic := '1';
    signal botao_ant     : std_logic := '1';
    signal contador      : integer range 0 to 250000 := 0;
begin
    process(relogio, reset)
    begin
        if reset = '1' then
            contador <= 0;
            botao_estavel <= '1';
            botao_ant <= '1';
            botao_pulso <= '1';
        elsif rising_edge(relogio) then
            if botao_in /= botao_estavel then
                if contador = LIMITE_FILTRO then
                    botao_estavel <= botao_in;
                    contador <= 0;
                else
                    contador <= contador + 1;
                end if;
            else
                contador <= 0;
            end if;

            botao_ant <= botao_estavel;
            if botao_estavel = '0' and botao_ant = '1' then
                botao_pulso <= '0';
            else
                botao_pulso <= '1';
            end if;
        end if;
    end process;
end comportamento;
