library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port(
        clk_50            : in  std_logic;
        ch_reset          : in  std_logic;
        btn_confirmar     : in  std_logic;
        btn_desistir      : in  std_logic;
        btn_inserir_moeda : in  std_logic;
        ch_valor_moeda    : in  std_logic_vector(2 downto 0);
        ch_produto        : in  std_logic_vector(2 downto 0);
        led_liberar       : out std_logic;
        led_troco         : out std_logic;
        led_devolver      : out std_logic;
        led_sem_estoque   : out std_logic;
        led_estados       : out std_logic_vector(4 downto 0);
        hex_centenas      : out std_logic_vector(6 downto 0);
        hex_dezenas       : out std_logic_vector(6 downto 0);
        hex_unidades      : out std_logic_vector(6 downto 0)
    );
end top_level;

architecture comportamento of top_level is
    signal confirmar_filtrado   : std_logic;
    signal desistir_filtrado    : std_logic;
    signal moeda_filtrada       : std_logic;
    signal sinal_limpar_soma    : std_logic;
    signal sinal_habilitar_moeda: std_logic;
    signal sinal_baixar_estoque : std_logic;
    signal sinal_estoque_ok     : std_logic;
    signal sinal_soma_ok        : std_logic;
    signal sinal_tem_troco      : std_logic;
    signal sinal_somatorio      : integer range 0 to 1000;
    
    
    signal reset_int            : std_logic;
    signal btn_confirmar_int    : std_logic;
    signal btn_desistir_int     : std_logic;
    signal btn_inserir_moeda_int: std_logic;
    signal led_liberar_int      : std_logic;
    signal led_troco_int        : std_logic;
    signal led_devolver_int     : std_logic;
    signal led_sem_estoque_int  : std_logic;
    signal led_liberar_temp     : std_logic;
    signal led_troco_temp       : std_logic;
    signal led_devolver_temp    : std_logic;
    signal led_sem_estoque_temp : std_logic;
    
    signal led_estados_int      : std_logic_vector(4 downto 0);
    signal led_estados_temp     : std_logic_vector(4 downto 0);
begin

   
    reset_int <= ch_reset;
    btn_confirmar_int <= btn_confirmar;
    btn_desistir_int <= btn_desistir;
    btn_inserir_moeda_int <= btn_inserir_moeda;
    
   
    led_liberar <= led_liberar_temp;
    led_troco <= led_troco_temp;
    led_devolver <= led_devolver_temp;
    led_sem_estoque <= led_sem_estoque_temp;
    led_estados <= led_estados_temp;

    U_FILTRO1: entity work.debounce
        port map (
            relogio     => clk_50,
            reset       => reset_int,
            botao_in    => btn_confirmar_int,
            botao_pulso => confirmar_filtrado
        );

    U_FILTRO2: entity work.debounce
        port map (
            relogio     => clk_50,
            reset       => reset_int,
            botao_in    => btn_desistir_int,
            botao_pulso => desistir_filtrado
        );

    U_FILTRO3: entity work.debounce
        port map (
            relogio     => clk_50,
            reset       => reset_int,
            botao_in    => btn_inserir_moeda_int,
            botao_pulso => moeda_filtrada
        );

    U_BLOCO_DADOS: entity work.datapath port map(
        relogio         => clk_50,
        reiniciar       => reset_int,
        valor_moeda     => ch_valor_moeda,
        tipo_produto    => ch_produto,
        limpar_soma     => sinal_limpar_soma,
        receber_moeda   => sinal_habilitar_moeda,
        baixar_estoque  => sinal_baixar_estoque,
        estoque_ok      => sinal_estoque_ok,
        soma_ok         => sinal_soma_ok,
        tem_troco       => sinal_tem_troco,
        somatorio_saida => sinal_somatorio,
        troco_saida     => open
    );

    U_CONTROLE: entity work.mef port map(
        relogio         => clk_50,
        reiniciar       => reset_int,
        btn_confirmar   => confirmar_filtrado,
        btn_desistir    => desistir_filtrado,
        inserir_moeda   => moeda_filtrada,
        estoque_ok      => sinal_estoque_ok,
        soma_ok         => sinal_soma_ok,
        tem_troco       => sinal_tem_troco,
        limpar_soma     => sinal_limpar_soma,
        habilitar_moeda => sinal_habilitar_moeda,
        baixar_estoque  => sinal_baixar_estoque,
        liberar_produto => led_liberar_int,
        liberar_troco   => led_troco_int,
        devolver_moedas => led_devolver_int,
        sem_estoque     => led_sem_estoque_int,
        estado_out      => led_estados_int
    );

    U_LED_LIBERAR: entity work.led_timer
        port map(
            relogio   => clk_50,
            reiniciar => reset_int,
            pulso     => led_liberar_int,
            led_saida => led_liberar_temp
        );

    U_LED_TROCO: entity work.led_timer
        port map(
            relogio   => clk_50,
            reiniciar => reset_int,
            pulso     => led_troco_int,
            led_saida => led_troco_temp
        );

    U_LED_DEVOLVER: entity work.led_timer
        port map(
            relogio   => clk_50,
            reiniciar => reset_int,
            pulso     => led_devolver_int,
            led_saida => led_devolver_temp
        );

    U_LED_SEM_ESTOQUE: entity work.led_timer
        port map(
            relogio   => clk_50,
            reiniciar => reset_int,
            pulso     => led_sem_estoque_int,
            led_saida => led_sem_estoque_temp
        );

    led_estados_temp(0) <= led_estados_int(0);

    U_LED_EST1: entity work.led_timer port map(
        relogio   => clk_50, reiniciar => reset_int,
        pulso     => led_estados_int(1), led_saida => led_estados_temp(1)
    );
    U_LED_EST2: entity work.led_timer port map(
        relogio   => clk_50, reiniciar => reset_int,
        pulso     => led_estados_int(2), led_saida => led_estados_temp(2)
    );
    U_LED_EST3: entity work.led_timer port map(
        relogio   => clk_50, reiniciar => reset_int,
        pulso     => led_estados_int(3), led_saida => led_estados_temp(3)
    );
    U_LED_EST4: entity work.led_timer port map(
        relogio   => clk_50, reiniciar => reset_int,
        pulso     => led_estados_int(4), led_saida => led_estados_temp(4)
    );

    U_DISP: entity work.display_7seg port map(
        valor        => sinal_somatorio,
        hex_centenas => hex_centenas,
        hex_dezenas  => hex_dezenas,
        hex_unidades => hex_unidades
    );

end comportamento;
