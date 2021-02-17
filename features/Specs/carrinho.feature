#language: pt

Funcionalidade: Adicionar item ao carrinho de compras
    Sendo eu um visitante do site Casas Bahia
    Desejo colocar um produto no carrinho

    Cenario: Adicionando produto ao carrinho pela barra de pesquisa

        Dado que acesso o site das Casas Bahia
            E faço a pesquisa desejada na página de busca
        Quando seleciono o produto desejado
        Então adiciono ao carrinho de compras

    @temp
    Cenario: Adicionando produto pelas opções em informática
        Dado que acesso o site das Casas Bahia
            E faço a busca do produto desejado através da opção informática
        Quando seleciono o produto desejado para compra
        Então adiciono ao carrinho de compras