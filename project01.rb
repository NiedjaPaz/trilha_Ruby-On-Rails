#Frase que será exibida na tela para o usuário 
puts".:HELLO WELCOME TO HAPPY DOG – PET SHOP:."
#Frases que serão exibidas para o usuário 
menus= {"start_menu"=>["Selecione a opção desejada:", "[1] COMPRAR ", "[2] SAIR"],
  "product_menu"=>["Conheça nossos produtos!","[1]Ração:R$257,50","[2]Brinquedos:R$60,50","[3]Acessório:R$34,25", "Informe qual o produto desejado:"]}
<<<<<<< HEAD

frases= {"quantidade"=>["Informe a quantidade desejada:"], "start_menu1"=>["Para retornar ao menu inicial, digite [0]"]}
  #Input para o usário informar o que deseja fazer se comprar ou sair!
    puts menus["start_menu"]
    opcao=gets.chomp.to_i
#Função sair 
   def sair 
    puts "A opção  selecionada foi SAIR!"
    puts ".:Obrigada pela visita até breve!:."
   end
#Declaração das variaveis subtotal
=======
#Input para o usário informar o que deseja fazer se comprar ou sair!
    puts menus["start_menu"]
    opcao=gets.chomp.to_i
<<<<<<< HEAD
#Função sair 
   def sair 
    puts "A opção  selecionada foi SAIR!"
    puts ".:Obrigada pela visita até breve!:."
   end
#Declaração das variaveis subtotal
=======

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
>>>>>>> 377c4cf129eca9b8842227bca710c2d20bcfdc67
>>>>>>> cabdab3385e1b02185bcc33919a0d1ffe7705095
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
        puts frases ["quantidade"]
        quantidade=gets.chomp.to_i
#Calcular o subtotal do produto informado mutiplicando o valor pela quantidade
        subtotal=valor*quantidade
        puts "Subtotal:#{subtotal}"
        menu=1
        puts frases ["start_menu1"]
        menu=gets.chomp.to_i
#Condição para retornar ao menu inicial caso a quantidade informada seja 0 
        puts menus["start_menu"]    
            if menu==0
<<<<<<< HEAD
              opcao=gets.chomp.to_i
                    if opcao==2
                        break
=======
                puts menus["start_menu"]
                opcao=gets.chomp.to_i
                    if opcao==2
<<<<<<< HEAD
                        break
=======
                        puts sair
>>>>>>> 377c4cf129eca9b8842227bca710c2d20bcfdc67
>>>>>>> cabdab3385e1b02185bcc33919a0d1ffe7705095
                    else
                      puts menus["product_menu"]
                      produto=gets.chomp.to_i
                      puts "Qual a quantidade desejada?"
                      quantidade=gets.chomp.to_i
                      subtotal=subtotal+(valor*quantidade)
                      puts "Subtotal:#{subtotal}"
                    end 
            end
<<<<<<< HEAD
    end
    puts sair
=======
<<<<<<< HEAD
    end
    puts sair
=======
else
  puts sair
end
>>>>>>> 377c4cf129eca9b8842227bca710c2d20bcfdc67
>>>>>>> cabdab3385e1b02185bcc33919a0d1ffe7705095
