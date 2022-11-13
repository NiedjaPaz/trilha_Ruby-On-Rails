#PROJETO 01 TRILHA ROR INOVA AFRO CESAR
#DUPLA:LARISSA SANTOS OLIVEIRA E NIEDJA PAZ

#Frase que será exibida na tela para o usuário 
puts".:HELLO WELCOME TO HAPPY DOG – PET SHOP:."
#Menu Inicial e de Produtos
menus= {"start_menu"=>["Selecione a opção desejada:", "[1] COMPRAR ", "[2] SAIR"],
  "product_menu"=>["Conheça nossos produtos!","[1]Ração:R$257,50","[2]Brinquedos:R$60,50","[3]Acessório:R$34,25", "Informe qual o produto desejado:"]
}
#Frases de comandos para o usuário  
frases= {"quantidade"=>["Informe a quantidade desejada:"], 
    "start_menu1"=>["Para retornar ao menu inicial, digite [0]"]
}
# Váriavel que armazenará o valor do subtotal sendo inicializada com 0.0
subtotal=0.0

#Array hash Contendo os produtos e os repectivos valores
product={"racao" => 257.50 , "brinquedos" =>60.50, "acessorio"=>34.25}

#Função sair 
   def sair 
    puts "A opção  selecionada foi SAIR!"
    puts ".:Obrigada pela visita até breve!:."
   end
  
# Início do programa!
  puts menus["start_menu"]
  option=gets.chomp.to_i
# Estrutura de repetição caso a opção selecionada for comprar
    while option==1
          puts menus["product_menu"]
          option=gets.chomp.to_i
#Condição para verificar qual o produto escolhido
            case option 
              when 1
                puts frases["quantidade"]
                quantidade=gets.chomp.to_i
                subtotal+=product["racao"]*quantidade
              when 2
                puts frases["quantidade"]
                quantidade=gets.chomp.to_i
                subtotal+= product["brinquedos"]*quantidade
              when 3
                puts frases["quantidade"]
                quantidade=gets.chomp.to_i
                subtotal+= product["acessorio"]*quantidade
            end 
#Calcular subtotal
        puts "Subtotal:#{subtotal}"
        puts frases["start_menu1"]
        menu=1
        menu=gets.chomp.to_i
              if menu==0
                puts menus["start_menu"]
                option=gets.chomp.to_i
              end
    end 
#Fim do Laço 
  puts sair
