#Inicio
puts".:Olá Seja Bem-Vindo:."

#Menu Inicial
    def menuprincipal
    puts "Selecione a opção desejada:"
    puts " [1] COMPRAR "
    puts " [2] SAIR "
    #Opção
    end 
    puts menuprincipal
    opcao=gets.chomp.to_i
#Condição  para  para comprar ou sair
  def produtos 
    puts "A opção  selecionada foi COMPRAR!"
    puts "Conheça nossos produtos!"
    puts"-----------------------"
    puts "[1]Ração:R$257,00"
    puts "[2]Brinquedos:R$60,00"
    puts "[3]Acessório:R$34,00"
    puts"-----------------------"
  end 

if opcao==1
    puts produtos
      puts " Qual o produto desejado?"
      produto=gets.chomp.to_i
      subtotal=0.00
      valor=0.00
     #Condição para atribuição do valor do produto selecionado
      case produto 
        when 1
          puts "Ração"
          valor= 257.25
        when 2
          puts " Brinquedos"
          valor= 60.25
        when 3
          puts "Acessório"
          valor= 34.25
      end 
    #Informar a quntidade desejada do produto selecionado
    puts "Qual a quantidade desejada?"
    quantidade=gets.chomp.to_i
    #Calcular o subtotal do produto informado mutiplicando o valor pela quantidade
    subtotal=valor*quantidade
    puts "Subtotal:#{subtotal}"
    #Retornar ao menu inicial caso a quantidade informada seja 0 
  if subtotal==0
       puts menuprincipal
       opcao=gets.chomp.to_i
     if opcao==2
        puts ".:Obrigada pela visita até breve!:."
     else
       puts produtos   
     end 
  end
else
  puts "A opção  selecionada foi SAIR!"
  puts ".:Obrigada pela visita até breve!:."
end