library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display_7seg is
    port(
        valor        : in  integer range 0 to 1000;
        hex_centenas : out std_logic_vector(6 downto 0);
        hex_dezenas  : out std_logic_vector(6 downto 0);
        hex_unidades : out std_logic_vector(6 downto 0)
    );
end display_7seg;

architecture comportamento of display_7seg is
    function decodificar_7seg(digito : integer) return std_logic_vector is
    begin
        case digito is
            when 0 => return "1000000";
            when 1 => return "1111001";
            when 2 => return "0100100";
            when 3 => return "0110000";
            when 4 => return "0011001";
            when 5 => return "0010010";
            when 6 => return "0000010";
            when 7 => return "1111000";
            when 8 => return "0000000";
            when 9 => return "0010000";
            when others => return "1111111";
        end case;
    end function;
begin
    process(valor)
        variable centenas, dezenas, unidades : integer;
        variable valor_temporario : integer;
    begin
        valor_temporario := valor;
        centenas := valor_temporario / 100;
        valor_temporario := valor_temporario mod 100;
        dezenas  := valor_temporario / 10;
        unidades := valor_temporario mod 10;
        
        hex_centenas <= decodificar_7seg(centenas);
        hex_dezenas  <= decodificar_7seg(dezenas);
        hex_unidades <= decodificar_7seg(unidades);
    end process;
end comportamento;