puts modulo.curso.nome

ads.modulos.each do |modulo|
    puts modulo.nome
    
    modulo.disciplinas.each do |disciplina|
        puts disciplina.nome
        
        disciplina.modulos.each do |modulo|
            puts modulo.nome
        end
        
    end
    
end

leo.disciplinas.each do |disciplina|
    puts disciplina.nome
end

anderson.disciplinas.each do |disciplina|
    puts disciplina.nome
end

ltp_quatro.professores.each do |professor|
    puts professor.nome
end

redes.professores.each do |professor|
    puts professor.nome
end
