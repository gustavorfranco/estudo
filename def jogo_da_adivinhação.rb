def jogo_da_adivinhação
    pust "bem vindo a o jogo da adivinhação"
    puts "qual e o seu nome"
    nome1 = gets
    puts "\n\n\n"
    puts " vamos comecar o jogo, " + nome1 
end

def escolhendo_o_numero 
    puts "escolhendo um numero de 0 a 10..."
    numero_secreto = 8
    puts "numero esculhido, que tal acertar o numero hoje "
end

jogo_da_adivinhação
escolhendo_o_numero

limite_de_tentativa = 3

for tentativa in 1..limite_de_tentativa
    puts "\n\n\n"
    puts "tentativa" + tentativa.to_s + "de" + limite_de_tentativa.to_s
    puts "escolha um numero"
    chute = gets
    puts "sera que voce acertou ? voce chutou " + chute

 hit = numero_secreto == chute.to_i

 if hit 
    puts "voce acertou"
    puts "parabens!"
    break
 else 
      numero_maior == numero_secreto > chute.to_i
      if numero_maior
         puts " o numero secreto é maior"
      else 
          puts "o numero secreto é menor"
       end
    end
    
end



