@jogador = ['','']
@jogadas = []

system "clear"
puts "Nome do jogador 1:"
@jogador[0] = gets.chomp
puts "Nome do jogador 2:"
@jogador[1] = gets.chomp	

vez = 0
while vez < 2
	system "clear"
	puts "Vez do jogador: #{ @jogador[vez] }"	
	jogada = gets.chomp.split().to_a
	
	vez = vez == 0 ? 1 : 0;
	if (@jogadas.include?(jogada.last) || @jogadas != jogada.reject{ |x| x == jogada.last })
		puts "ARROW!!!"

		puts "#{ @jogador[vez] } venceu!"
		vez = 3
	else
		@jogadas.push(jogada.last.to_s)
		puts "OK, jogadas: #{ @jogadas }"
		puts "Pressione ENTER parar iniciar jogada do outro jogador"
		gets.chomp
	end

end


