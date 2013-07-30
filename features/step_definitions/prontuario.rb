Dado(/^que eu esteja na pesquisa de alunos$/) do
  visit '/'
  expect(page).to have_content("teste")
end

Dado(/^que existem os alunos "(.*?)", "(.*?)" e "(.*?)"$/) do |arg1, arg2, arg3|
  
end

Quando(/^eu pesquiso por "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Então(/^eu devo ver na lista "(.*?)", "(.*?)" e "(.*?)"$/) do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

Dado(/^que exista o aluno com os seguintes dados:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Quando(/^seleciono "(.*?)" na lista$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Então(/^eu devo ver o aluno com as seguintes infomações:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Quando(/^altero o diagnóstico para "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Quando(/^salvo as informações do aluno$/) do
  pending # express the regexp above with the code you wish you had
end

Então(/^eu devo ver o aluno com as seguintes informações:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end
