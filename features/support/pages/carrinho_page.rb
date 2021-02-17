class Carrinho
  include Capybara::DSL

  def open
    visit "/"
  end

  def pag_busca
    find("input[id=inpHeaderSearch]").set "notebook gamer acer"
    find("span[id=btnHeaderSearch]").click
  end

  def selec_produto
    find("li[id=product_2261924]").click
  end

  def adicionar_produto
    click_button "Adicionar à sacola"
  end

  def click_continuar
    find("a[class*='price-warranty']").click
  end

  def buscar_em_informatica
    find("li[data-hover='seven']").click
    click_link "Notebook e Macbook"
    find(:css, "li[data-filter-value='acer']").set(true)
  end

  def select
    find("h3[title*='AN515-54-58CL']").click
  end
end
