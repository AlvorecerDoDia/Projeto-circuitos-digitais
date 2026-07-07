library ieee;
use ieee.std_logic_1164.all;

entity mef is
    port(
        relogio         : in  std_logic;
        reiniciar       : in  std_logic;
        btn_confirmar   : in  std_logic;
        btn_desistir    : in  std_logic;
        inserir_moeda   : in  std_logic;
        estoque_ok      : in  std_logic;
        soma_ok         : in  std_logic;
        tem_troco       : in  std_logic;
        limpar_soma     : out std_logic;
        habilitar_moeda : out std_logic;
        baixar_estoque  : out std_logic;
        liberar_produto : out std_logic;
        liberar_troco   : out std_logic;
        devolver_moedas : out std_logic;
        sem_estoque     : out std_logic;
        estado_out      : out std_logic_vector(4 downto 0)
    );
end mef;

architecture comportamento of mef is
    type tipo_estado is (ESPERA, AVALIA_COMPRA, ENTREGA_PRODUTO, DEVOLUCAO, ERRO_ESTOQUE);
    signal estado_atual, proximo_estado : tipo_estado;
begin
    process(relogio, reiniciar)
    begin
        if reiniciar = '1' then
            estado_atual <= ESPERA;
        elsif rising_edge(relogio) then
            estado_atual <= proximo_estado;
        end if;
    end process;

    process(estado_atual, btn_confirmar, btn_desistir, estoque_ok, soma_ok)
    begin
        proximo_estado <= estado_atual;
        case estado_atual is
            when ESPERA =>
                if btn_desistir = '0' then
                    proximo_estado <= DEVOLUCAO;
                elsif btn_confirmar = '0' then
                    proximo_estado <= AVALIA_COMPRA;
                end if;
                
            when AVALIA_COMPRA =>
                if estoque_ok = '0' then
                    proximo_estado <= ERRO_ESTOQUE;
                elsif soma_ok = '1' then
                    proximo_estado <= ENTREGA_PRODUTO;
                else
                    proximo_estado <= ESPERA;
                end if;
                
            when ENTREGA_PRODUTO =>
                 proximo_estado <= ESPERA;
            when DEVOLUCAO =>
                proximo_estado <= ESPERA;
                
            when ERRO_ESTOQUE =>
                proximo_estado <= ESPERA;
        end case;
    end process;

    process(estado_atual, inserir_moeda, tem_troco)
    begin
        limpar_soma <= '0';
        habilitar_moeda <= '0';
        baixar_estoque <= '0';
        liberar_produto <= '0';
        liberar_troco <= '0';
        devolver_moedas <= '0';
        sem_estoque <= '0';
        estado_out <= (others => '0');
        
        case estado_atual is
            when ESPERA =>
                habilitar_moeda <= not inserir_moeda;
                estado_out(0) <= '1';
                
            when AVALIA_COMPRA =>
                estado_out(1) <= '1';
                
            when ENTREGA_PRODUTO =>
                liberar_produto <= '1';
                liberar_troco <= tem_troco;
                 baixar_estoque <= '1';
                limpar_soma <= '1';
                estado_out(2) <= '1';
                
            when DEVOLUCAO =>
                devolver_moedas <= '1';
                limpar_soma <= '1';
                estado_out(3) <= '1';
                
            when ERRO_ESTOQUE =>
                sem_estoque <= '1';
					 devolver_moedas <= '1';
                limpar_soma <= '1';
                estado_out(4) <= '1';
        end case;
    end process;
end comportamento;