Dado("que acesso o site das Casas Bahia") do
  @carrinho_page.open
end

Dado("faço a pesquisa desejada na página de busca") do
  @carrinho_page.pag_busca
end

Quando("seleciono o produto desejado") do
  expect(page).to have_text "notebook gamer acer"
  @carrinho_page.selec_produto
end

Então("adiciono ao carrinho de compras") do
  @carrinho_page.adicionar_produto
  expect(page).to have_text "Saiba como proteger o seu produto por muito mais tempo!"
  @carrinho_page.click_continuar
  expect(page).to have_css "div[class='BasketPage-title']"
end

Dado("faço a busca do produto desejado através da opção informática") do
  @carrinho_page.buscar_em_informatica
end

Quando("seleciono o produto desejado para compra") do
  @carrinho_page.select
end
