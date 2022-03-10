# Portal WP

## Iniciando

Faça o clone do projeto:

`git clone git@gitlab.com:sdk12/portais/portal-wp.git`

ou

`git clone https://gitlab.com/sdk12/portais/portal-wp.git`


### Pré requisitos

**Servidor WEB (Nginx/Apache) + PHP + MySQL**

[Instalação Ubuntu - Nginx + PHP-FPM + MySQL](https://www.digitalocean.com/community/tutorials/como-instalar-linux-nginx-mysql-php-pilha-lemp-no-ubuntu-16-04-pt)

[Instalação Ubuntu - Apache2 + PHP + MySQL](https://www.digitalocean.com/community/tutorials/como-instalar-a-pilha-linux-apache-mysql-php-lamp-no-ubuntu-18-04-pt)

[Instalação OSX - Nginx + PHP-FPM + MySQL](https://medium.com/operacionalti/ambiente-de-desenvolvimento-php-no-mac-os-x-60faac03d065)

[Instalação OSX - Apache2 + PHP + MySQL](https://ramiresnascimento.wordpress.com/2015/10/25/instalando-e-configurando-php-mysql-e-apache-no-mac-os-x/)



**Composer**

[Instalação Ubuntu - Composer](https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-composer-no-ubuntu-18-04-pt)

[Instalação OSX - Composer](https://www.maiconschmitz.com.br/blog/2015/03/04/instalando-composer-no-mac-os-x/)


**YARN**

[Instalação Ubuntu - Yarn](https://yarnpkg.com/pt-BR/docs/install#debian-stable)

[Instalação OSX - Yarn](https://yarnpkg.com/pt-BR/docs/install#mac-stable)

**Node JS > v10.x**

[Instalação Ubuntu - Node JS] (https://linuxize.com/post/how-to-install-node-js-on-ubuntu-18.04/)

[Instalação OSX - Node JS] (https://www.webucator.com/how-to/how-install-nodejs-on-mac.cfm)


### Instalação

No diretório raiz do projeto execute o comando

```
make install
```

## Executando a aplicação localmente

A aplicação roda localmente utillizando-se de dois recursos: uma aplicação web PHP (Wordpress) e um frontend React

Para fins de desenvolvimento a aplicação frontend (tema) pode ser executada de dentro do diretório do tema com o seguinte comando:

```
cd wp-content/themes/somos-portais/
yarn install
yarn dev
```

## Executando os testes

Não há testes configurados

## Deploy

O processo de deploy é automatizado utilizando o Gitlab CI

* make
* build_react
* build
* deploy

## Tecnologias

* [MySQL](https://www.mysql.com/) - Banco de dados
* [PHP](https://www.php.net/) - Linguagem de programação do portal
* [Wordpress](https://developer.wordpress.org/) - Base do portal
* [YARN](https://yarnpkg.com/pt-BR/) - Gerenciador de dependências

## Contribuição

Leia o [CONTRIBUTING.md](./CONTRIBUTING.md) para detalhes do nosso código de conduta e procedimentos para enviar *Pull Requests*

## Versionamento

Usamos o modelo [SemVer](http://semver.org/) para versionamento. Para a lista de versões disponíveis confira no [repositório](https://gitlab.com/sdk12/portais/portal-anglo/tags).

## Contribuidores

* **Luis Gustavo Nogara** - [Nogara](https://gitlab.com/nogara)
* **Carlos Shirasawa** - [Shiro](https://gitlab.com/gigashiro)

Veja a lista atualizada de [contribuidores](https://gitlab.com/sdk12/portais/portal-anglo/graphs/master) que participaram deste projeto.
