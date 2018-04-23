Dado(/^que estou na url "([^"]*)"$/) do |site|
 visit(URL[site])
end


Entao(/^valido a presença do elemento "([^"]*)"$/) do |campo|
   Assercoes.new.valida_existencia_elemento(campo)
end

Entao(/^valido a legenda "([^"]*)"$/) do |texto|
  Assercoes.new.valida_existencia_texto(texto)
  end

Dado(/^seleciono "([^"]*)"$/) do |campo|
    Common.new.clica_elemento(campo)
end

Dado(/^clico no botao "([^"]*)"$/) do |campo|
    Common.new.clica_elemento(campo)
end

Dado(/^seleciono o campo "([^"]*)" com "([^"]*)"$/) do |campo, valor|
    Common.new.seleciona_elemento(campo,valor)
end


Dado(/^preencho todos os campos do "([^"]*)"$/) do |cadastro_pessoa|
  PaginaCadastro.new.send("preecherCadastro_#{cadastro_pessoa}")
end

Entao(/^devo visualizar o resultado da busca$/) do
  Assercoes.new.valida_primeiro_item_vitrine($produto)
end
