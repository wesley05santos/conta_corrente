cabecalho = <<EOS
-------------------BEM VINDO AO BANCO WS-------------------
EOS
puts cabecalho
separador = "=" * 60
saldo = 0
nova_operacao = "S" 
while nova_operacao == "S"
    puts "Selecione abaixo a operação desejada: "
    operacoes = ["1 - SALDO", "2 - DEPOSITO", "3 - SAQUE", "9 - SAIR"]
    puts operacoes
    puts separador
    operacao = gets.to_i
    puts separador       
        if operacao == 1
            puts "Seu saldo atual é de R$#{'%.2f' %saldo}!"
        elsif operacao == 2
            puts "Digite o valor do deposito: "
            deposito = gets.gsub(",",".").to_f 
            saldo = saldo.to_f + deposito.to_f
            puts "Saldo atualizado após deposito = R$#{'%.2f' %saldo}!"
        elsif operacao == 3
            puts "Digite o valor do saque: "
            saque = gets.gsub(",",".").to_f 
            if (saldo - saque) < 0
                puts "Seu saldo de R$#{'%.2f' %saldo} é insuficiente para realizar um saque de R$#{'%.2f' %saque}!"
            else
                saldo = saldo - saque
                puts "Saldo atualizado após saque = R$#{'%.2f' %saldo}!"
            end 
        elsif operacao == 9
            break
        else
            puts "Operação digitada inválida. Tente novamente!"   
        end    
    puts "Deseja realizar uma nova operação? Sim[S] / Não[Qualquer outra tecla]"
    nova_operacao = gets.chomp.to_s.upcase 
    system ("clear")      
end

puts "FINALIZANDO SISTEMA..." 