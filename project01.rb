#Frase que será exibida na tela para o usuário 
puts".:Olá Seja Bem-Vindo:."
#Função menu principal
    def menuprincipal
    puts "Selecione a opção desejada:"
    puts " [1] COMPRAR "
    puts " [2] SAIR "
    end 
#Input para o usário informar o que deseja fazer se comprar ou sair!
    puts menuprincipal
    opcao=gets.chomp.to_i

#Função que é para exbir um menu com os produtos
    def produtos 
      puts "A opção  selecionada foi COMPRAR!"
      puts "Conheça nossos produtos!"
      puts"-----------------------"
      puts "[1]Ração:R$257,25"
      puts "[2]Brinquedos:R$60,25"
      puts "[3]Acessórios:R$34,25"
      puts"-----------------------"
    end
     
# Função Sair
    def sair
      puts "A opção  selecionada foi SAIR!"
      puts ".:Obrigada pela visita até breve!:."
    end

  #Declaração das variaveis subtotal
  subtotal=0.00
  valor=0.00
#Condição para verificar se o usuário deseja Comprar ou Sair 
    if opcao==1
        puts produtos
          puts " Qual o produto desejado?"
          produto=gets.chomp.to_i
#Condição para verificar qual o produto escolhido
          case produto 
            when 1
              puts "Ração"
              valor= 257.25
            when 2
              puts " Brinquedos"
              valor= 60.25
            when 3
              puts "Acessórios"
              valor= 34.25
          end 
#Informar a quntidade desejada do produto selecionado
        puts "Qual a quantidade desejada?"
        quantidade=gets.chomp.to_i
#Calcular o subtotal do produto informado mutiplicando o valor pela quantidade
        subtotal=valor*quantidade
        puts "Subtotal:#{subtotal}"
        menu=1
        puts "Para retornar ao menu principal digite [0]"
        menu=gets.chomp.to_i
#Condição para retornar ao menu inicial caso a quantidade informada seja 0 
            if menu==0
                puts menuprincipal
                opcao=gets.chomp.to_i
                    if opcao==2
                        puts sair
                    else
                      puts produtos
                      opcao=gets.chomp.to_i
                      puts "Qual a quantidade desejada?"
                      quantidade=gets.chomp.to_i
                      subtotal=subtotal+(valor*quantidade)
                      puts "Subtotal:#{subtotal}"
                    end 
            end
else
  puts sair
end
