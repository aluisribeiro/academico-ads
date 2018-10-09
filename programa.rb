require_relative "data_builder"

builder = DataBuilder.new.build_data

unifeob = builder.unifeob
ads = builder.ads
modulo_quatro = builder.modulo_quatro
ltp = builder.ltp
agil = builder.agil
redes = builder.redes
felipe = builder.felipe
jair = builder.jair

builder.add_matricula felipe, ads, modulo_quatro, ltp
builder.add_matricula felipe, ads, modulo_quatro, agil
builder.add_matricula felipe, ads, modulo_quatro, redes
builder.add_matricula jair, ads, modulo_quatro, ltp
builder.add_matricula jair, ads, modulo_quatro, agil
builder.add_matricula jair, ads, modulo_quatro, redes

builder.add_media felipe, ads, modulo_quatro, ltp, 7.5
builder.add_media felipe, ads, modulo_quatro, agil, 6.3
builder.add_media felipe, ads, modulo_quatro, redes, 9.0
builder.add_media jair, ads, modulo_quatro, ltp, 10.0
builder.add_media jair, ads, modulo_quatro, agil, 10.0
builder.add_media jair, ads, modulo_quatro, redes, 3.0

puts unifeob.media_do_curso ads
puts unifeob.media_da_disciplina ltp
puts unifeob.media_do_modulo_e_disciplina modulo_quatro, ltp
