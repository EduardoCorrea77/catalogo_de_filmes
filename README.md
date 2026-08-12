#  Projeto Catalogo de Filmes
**Nome do projeto**:Catalogo de filmes
**Equipe de desenvolvimento**:Eduardo Corrêa
## 1.Visão Geral do Sistema
O **Catalogo de filmes** tem como objetivo permitir que o cliente organize e gerencie sua coleção pessoal de filmes, substituindo sua atual planilha do Excel por um sistema mais organizado e visual. O sistema deverá permitir que o usuário realize seu **login**, cadastre filmes informando seus principais dados e uma imagem da capa, visualize sua coleção em formato de galeria, além de editar ou excluir filmes cadastrados. O sistema será de uso **pessoal e privado**, não contemplando, nesta primeira versão, funcionalidades como compartilhamento da coleção com amigos.
## 2. Requisitos Funcionais (RF)

**RF01:** O sistema deve permitir o **cadastro e gerenciamento do usuário**, utilizando as seguintes informações:

-   Nome
-   E-mail ou usuário
-   Senha

**RF02:** O sistema deve permitir que o usuário **realize login** utilizando suas credenciais cadastradas.

**RF03:** O sistema deve permitir que o usuário **cadastre um filme**, contendo as seguintes informações:

-   Título
-   Ano de lançamento
-   Gênero
-   Nota de 0 a 10
-   Imagem da capa

**RF04:** O sistema deve permitir que o usuário **visualize sua coleção de filmes** cadastrados, apresentando as capas dos filmes de forma visual e organizada.

**RF05:** O sistema deve permitir que o usuário **edite as informações de um filme** já cadastrado, podendo alterar:

-   Título
-   Ano de lançamento
-   Gênero
-   Nota
-   Imagem da capa

**RF06:** O sistema deve permitir que o usuário **exclua um filme** de sua coleção.

**RF07:** O sistema deve permitir que o usuário **encerre sua sessão (logout)**.

**RF08:** O sistema deve garantir que o usuário consiga **visualizar e gerenciar somente sua própria coleção de filmes**.

## 3. Requisitos Não Funcionais (RNF)

**RNF01:** O sistema deve possuir **autenticação segura**, permitindo o acesso à coleção somente mediante login e senha.

**RNF02:** As senhas dos usuários devem ser **armazenadas de forma segura**, não sendo mantidas em texto puro no banco de dados.

**RNF03:** O sistema deve possuir uma **interface simples, intuitiva e organizada**, facilitando o cadastro e gerenciamento dos filmes.

**RNF04:** As capas dos filmes devem ser apresentadas de forma **visual e organizada**, proporcionando uma experiência semelhante a uma estante ou galeria de filmes.

**RNF05:** O sistema deve apresentar **bom desempenho**, proporcionando respostas rápidas nas operações de login, cadastro, edição, visualização e exclusão.

**RNF06:** Os dados dos filmes cadastrados devem possuir **persistência**, garantindo que as informações não sejam perdidas após o encerramento da sessão.

**RNF07:** O sistema deve garantir a **integridade e segurança dos dados** armazenados.

**RNF08:** O sistema deve ser desenvolvido de forma **manutenível**, permitindo a inclusão de novas funcionalidades futuramente.
