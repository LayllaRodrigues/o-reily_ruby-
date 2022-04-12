puts "Me diga seu nome"
input = gets 
name = input.chomp
puts "Bem vindo ao jogo de adivinhação #{name}"

puts "Tenho um número aleatório entre 1 e 100."
puts "Você consegue adivinhar?"

target = rand(100)+1
numero_tentativas = 0 
user_adivinhou = false

until numero_tentativas == 10 || user_adivinhou
    puts "Você tem #{10 - numero_tentativas} palpites restantes"
    print "Dê um palpite:"
    adivinhação = gets.to_i

    numero_tentativas +=1

    if adivinhação < target
        puts "Oops. seu chute foi muito baixo"
    elsif adivinhação > target
        puts "Oops. seu chute foi muito alto"
    elsif adivinhação == target
        puts "Bom trabalho, #{name}!"
        puts "Você adivinhou meu número em #{num_guesses} palpites!"
        user_adivinhou = true
    end
end
