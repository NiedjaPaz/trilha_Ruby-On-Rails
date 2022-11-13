#Frase que será exibida na tela para o usuário 
puts".:HELLO WELCOME TO HAPPY DOG – PET SHOP:."
#Frases que serão exibidas para o usuário 
menus= {"start_menu"=>["Selecione a opção desejada:", "[1] COMPRAR ", "[2] SAIR"],
  "product_menu"=>["Conheça nossos produtos!","[1]Ração:R$257,50","[2]Brinquedos:R$60,50","[3]Acessório:R$34,25", "Informe qual o produto desejado:"]}
#Input para o usário informar o que deseja fazer se comprar ou sair!
    puts menus["start_menu"]
    opcao=gets.chomp.to_i
#Função sair 
   def sair 
    puts "A opção  selecionada foi SAIR!"
    puts ".:Obrigada pela visita até breve!:."
   end
#Declaração das variaveis subtotal
  subtotal=0.00
  valor=0.00
#Condição para verificar se o usuário deseja Comprar ou Sair 
    while opcao==1
          puts menus["product_menu"]
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
                puts menus["start_menu"]
                opcao=gets.chomp.to_i
                    if opcao==2
                        break
                    else
                      puts menus["product_menu"]
                      produto=gets.chomp.to_i
                      puts "Qual a quantidade desejada?"
                      quantidade=gets.chomp.to_i
                      subtotal=subtotal+(valor*quantidade)
                      puts "Subtotal:#{subtotal}"
                    end 
            end
    end
    puts sair
