library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath is
    port(
        relogio         : in  std_logic;
        reiniciar       : in  std_logic;
        valor_moeda     : in  std_logic_vector(2 downto 0);
        tipo_produto    : in  std_logic_vector(2 downto 0);
        limpar_soma     : in  std_logic;
        receber_moeda   : in  std_logic;
        baixar_estoque  : in  std_logic;
        estoque_ok      : out std_logic;
        soma_ok         : out std_logic;
        tem_troco       : out std_logic;
        somatorio_saida : out integer range 0 to 1000;
        troco_saida     : out integer range 0 to 1000
    );
end datapath;

architecture comportamento of datapath is
    signal soma_atual  : integer range 0 to 1000 := 0;
    signal preco_atual : integer range 0 to 1000 := 0;
    
    signal estq_sonho_valsa : integer range 0 to 15 := 5;
    signal estq_ouro_branco : integer range 0 to 15 := 3;
    signal estq_trident     : integer range 0 to 15 := 8;
    signal estq_kitkat      : integer range 0 to 15 := 2;
    signal estq_bis_extra   : integer range 0 to 15 := 1;
    signal estq_snickers    : integer range 0 to 15 := 10;
    signal estq_mms         : integer range 0 to 15 := 4;
    signal estq_bis_caixa   : integer range 0 to 15 := 6;
begin
    process(tipo_produto, estq_sonho_valsa, estq_ouro_branco, estq_trident, estq_kitkat, estq_bis_extra, estq_snickers, estq_mms, estq_bis_caixa)
    begin
        preco_atual <= 0;
        estoque_ok <= '0';

        case tipo_produto is
            when "000" =>
                preco_atual <= 75; 
                if estq_sonho_valsa > 0 then estoque_ok <= '1'; end if;
            when "001" =>
                preco_atual <= 100; 
                if estq_ouro_branco > 0 then estoque_ok <= '1'; end if;
            when "010" =>
                preco_atual <= 150; 
                if estq_trident > 0 then estoque_ok <= '1'; end if;
            when "011" =>
                preco_atual <= 250; 
                if estq_kitkat > 0 then estoque_ok <= '1'; end if;
            when "100" =>
                preco_atual <= 300;
                if estq_bis_extra > 0 then estoque_ok <= '1'; end if;
            when "101" =>
                preco_atual <= 350; 
                if estq_snickers > 0 then estoque_ok <= '1'; end if;
            when "110" =>
                preco_atual <= 400; 
                if estq_mms > 0 then estoque_ok <= '1'; end if;
            when "111" =>
                preco_atual <= 700; 
                if estq_bis_caixa > 0 then estoque_ok <= '1'; end if;
            when others =>
                preco_atual <= 0;
                estoque_ok <= '0';
        end case;
    end process;

    troco_saida <= soma_atual - preco_atual when (soma_atual >= preco_atual) else 0;
    soma_ok <= '1' when soma_atual >= preco_atual else '0';
    tem_troco <= '1' when soma_atual > preco_atual else '0';
    somatorio_saida <= soma_atual;

    process(relogio, reiniciar)
        variable incremento : integer;
    begin
        if reiniciar = '1' then
            soma_atual <= 0;
            estq_sonho_valsa <= 5; estq_ouro_branco <= 3; estq_trident <= 8; estq_kitkat <= 2;
            estq_bis_extra <= 1; estq_snickers <= 10; estq_mms <= 4; estq_bis_caixa <= 6;
        elsif rising_edge(relogio) then
            incremento := 0;
            if limpar_soma = '1' then
                soma_atual <= 0;
            elsif receber_moeda = '0' then
                if valor_moeda = "000" then incremento := 5;    
                elsif valor_moeda = "001" then incremento := 10;   
                elsif valor_moeda = "010" then incremento := 25;  
                elsif valor_moeda = "011" then incremento := 50;   
                elsif valor_moeda = "100" then incremento := 100;  
                end if;
                soma_atual <= soma_atual + incremento;
            end if;
            
            if baixar_estoque = '1' then
                if tipo_produto = "000" and estq_sonho_valsa > 0 then estq_sonho_valsa <= estq_sonho_valsa - 1; end if;
                if tipo_produto = "001" and estq_ouro_branco > 0 then estq_ouro_branco <= estq_ouro_branco - 1; end if;
                if tipo_produto = "010" and estq_trident > 0 then estq_trident <= estq_trident - 1; end if;
                if tipo_produto = "011" and estq_kitkat > 0 then estq_kitkat <= estq_kitkat - 1; end if;
                if tipo_produto = "100" and estq_bis_extra > 0 then estq_bis_extra <= estq_bis_extra - 1; end if;
                if tipo_produto = "101" and estq_snickers > 0 then estq_snickers <= estq_snickers - 1; end if;
                if tipo_produto = "110" and estq_mms > 0 then estq_mms <= estq_mms - 1; end if;
                if tipo_produto = "111" and estq_bis_caixa > 0 then estq_bis_caixa <= estq_bis_caixa - 1; end if;
            end if;
        end if;
    end process;
end comportamento;
