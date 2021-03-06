# DataInfo JSF

Desenvolvimento do desafio SEFAZ, onde a aplicação deve permitir um cadastro, login, consulta, remoção e alteração de um usuario.

A ideia da aplicação era utilizar das tecnologias da JavaServer Faces, que permite construir interfaces de usuario
baseado em componentes para aplicações WEB.

A aplicação foi desenvolvida utilizando Java EE 6, MySQL 8.0.27, WildFly 26.0.0, Tomcat 9,  Eclipse IDE, IntelliJ IDEA e 
muita frustração, porque aparentemente nada dessa lista é 100% compatível com nada, e em nenhum material de consulta
consegui ter um ambiente equivalente, e em dado momento, o improviso não foi suficiente para alcançar a excelencia 
do que foi pedido.

Porém antes de iniciar o aprendizado em JSF, eu havia planejado um protótipo daquilo que eu tentei replicar
nesta tecnologia, utilizando apenas Java, driver para o MySQL e JFrame, desenvolvi uma interface GUI simples,
orientada a eventos e levemente a objetos. Ela foi capaz de alcançar diversas funcionalidades como:

Logar;  <br>
Cadastrar;  <br>
Alterar;  <br>
Listar; <br>
Deletar;  <br>

Utilizando como DBA o MySQL.

Como me foi solicitado via e-mail, eu deveria enviar o que fosse desenvolvido e ainda sim seria avaliado,
pensando nisso, a unica ideia que tive, foi a de unir meu prótotipo na qual estava me baseando para
desenvolver esta interface web nesta tecnologia, que sinceramente, ainda não tinha experiencia prévia.

Irei direcionar os passos para conseguir utilizar devidamente este repositório após clona-lo,
durante o direcionamento irei utilizar a IDE IntelliJ.

Atenção, o banco de dados deve ser criado/configurado previamente para atender a 4 propriedades: email, 
usuario, senha e telefone, todos são do tipo String.
Recomendo seguir os comandos:

create db_senhas;  <br>
use db_senhas; <br>
CREATE TABLE 'db_senhas'.'dados_senhas' ( <br>
  'id' INT NOT NULL AUTO_INCREMENT, <br>
  'email' VARCHAR(100) NULL,  <br>
  'nome' VARCHAR(50) NULL,  <br>
  'senha' VARCHAR(50) NULL, <br>
  'telefone' VARCHAR(50) NULL,  <br>
  PRIMARY KEY ('id'));  <br>
  
  Baixe o Wildfly 26.0.0 Final, será ele que iremos usar para rodar nosso projeto, ele será incluido no passo a passo. <br>
  https://www.wildfly.org
  
  Você pode também aproveitar para inserir o primeiro valor na tabela antecipadamente, mas não
  é realmente necessário, já que existe sistema de cadastro na aplicação com JFrame.

Passo 1: Clique em File > Open  <br>
<img src="https://cdn.discordapp.com/attachments/887792356223508541/924080602741870613/Screenshot_47.png" >

Passo 2: Selecione o diretório clonado  <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080602188234833/Screenshot_49.png">

Passo 3: Configure o wildFly no lado superior direito <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080601995292722/Screenshot_50.png?width=1279&height=676">

Passo 4: Adicione o JBOSS/WildFly, você pode simplesmente digitar JBOSS, para pesquisa-lo <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080601777201172/Screenshot_51.png?width=1030&height=676">

Passo 5: Selecione sua JDK  <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080601546489916/Screenshot_52.png?width=997&height=676">

Passo 6: Selecione o Artefato que será hospedado, clicando na aba Deployment e posteriormente no "+" > artifact <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080601340989440/Screenshot_53.png?width=973&height=676">

Passo 7: Dentre as 3 opções, selecione o Sefaz: exploded, ele está configurado como hotplug (auto update) <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080601122893894/Screenshot_54.png?width=981&height=676">

Passo 8: Apenas clique em OK  <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080600913174558/Screenshot_55.png?width=991&height=676">

Passo 9: Confira se o WildFly foi adicionado adequadamente, ele deve aparecer como WildFly 26.0.0, caso contrario, adicione 
seu diretório manualmente:  <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080631347040306/Screenshot_57.png?width=1166&height=676">

Passo 10: Execute o servidor localmente :)  <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924080600657305631/Screenshot_56.png?width=1245&height=676">

A JSF irá abrir automaticamente em seu navegador default: <br>
<img src="https://cdn.discordapp.com/attachments/887792356223508541/924080630659170324/Screenshot_59.png">

<br><br><br><br><br><br><br><br><br>




Para averiguar a aplicação feita em JFrame, o processo é muito simples,  <br>
Passo 1: Vamos adicionar o MySQL Connector. clique no projeto e aperte F4:  <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924086995955879976/Screenshot_62.png?width=1114&height=676">

Passo 2: Em modules > Sefaz > Dependencies, clique no "+" e library:    <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924086995645530153/Screenshot_63.png?width=815&height=676">

Passo 3: Selecione o modulo MySQL Connector 8.0.27 e o adicione.  <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924086995414810695/Screenshot_64.png">

Passo 4: Configure para autenticação do seu MySql:      <br>
<img src="https://cdn.discordapp.com/attachments/887792356223508541/924091590132260874/Screenshot_66.png">

Passo 5: Navegue entre os diretórios src>main>java>com.example.sefaz>Executavel>RunableApplication: <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924084989874815016/Screenshot_60.png">
    
Passo 6: Aí é só executar :D    <br>
<img src="https://media.discordapp.net/attachments/887792356223508541/924086996194979870/Screenshot_61.png?width=461&height=676">
<br>
<br>
<br>
<br>
<br>
<br>
<br>

Para logar, você irá precisar registrar um novo usuario, ele utiliza o nome e senha para autenticar.


Imagem para instruir caso tenha problemas:  <br>
<img src="https://cdn.discordapp.com/attachments/887792356223508541/924090233799200818/Screenshot_65.png">



Material de consulta:   <br>

Documentação:          <br>
https://docs.oracle.com/javaee/5/tutorial/doc/bnarf.html#bnarr  <br>
https://docs.oracle.com/cd/E17802_01/j2ee/j2ee/1.4/docs/tutorial-update2/doc/JSPIntro7.html  <br>

Repositórios de exemplo:      <br>
https://github.com/in28minutes/JavaWebApplicationStepByStep/blob/master/Step27.md  <br>
https://github.com/devdojobr/maratona-jsf/blob/master/web/comunicacao.xhtml  <br>

Aplicações em JSF/JSP     <br>
https://www.youtube.com/watch?v=V16abKUY8Ao&list=PLXbKgo5jPQE_onw_8jAgEUXLP7jHgcP2-  <br>
https://www.youtube.com/playlist?list=PL62G310vn6nHSNpACkELWiPlM8J8z8t5J  <br>
https://www.youtube.com/watch?v=egjAIheBFDY&t  <br>


