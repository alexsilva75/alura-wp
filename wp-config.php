<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'alura_wp' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'U,evs7xFm1@lG]OIXka3O@F]}(dDU9&%^hpt(vj9I)Zw3O8i>%,Q)HJi8iM;nb,u' );
define( 'SECURE_AUTH_KEY',  'G=vAj&}MUcdzbuP*]G|`kv}v_%7nX6T|IU(2ICL6z|CV.QQC#D?cAk0e^4^2:4cp' );
define( 'LOGGED_IN_KEY',    ':f4yE]qIj-gLOAK3v!bb)M6/%_YQBbn,iU8~(EPi8uS,/M{W@d-++d $huxlEyA9' );
define( 'NONCE_KEY',        'SH.On0Ut%iY+?L}ZV%S0.#NIxs[28fLt#=Q=NnPuul2f?E7;xh{1gVifI_y(29?`' );
define( 'AUTH_SALT',        '$KweOtJ;;;I1)rcS 7}tsM [WB =hd<!jFUiz=9>3i:4k^do/Tqlr2?;^rG|.MfI' );
define( 'SECURE_AUTH_SALT', '.H%t,KCe0Sk+e D^PhaS**_HOIeW$PNGvb67oq$8av[?6rk&`S7]U@[j,&:VyJ9q' );
define( 'LOGGED_IN_SALT',   'wKSQ,?s6aR4hKvbf{_}VB</4WF,OGXX1cUy)gTxvjsQHHm~qb~!E4562jqB8UB$f' );
define( 'NONCE_SALT',       '`?.^tuF#a1I~!(`V@@tZf}&+Q05;x6Yz3QbAM9;XS){m ?v}yM|p*^!sIzF8B/1e' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
