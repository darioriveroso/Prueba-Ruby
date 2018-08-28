def promedio

  alumnos = File.read('notas.csv')
  suma = 0
  final = ''

  alumnos.split("\n").each do |alu|
    alumno = alu.split(', ')
    suma = 0
    alumno.each do |alus|
      suma += alus.to_f
    end
    prome = suma / (alumno.length - 1)
    final += "#{alumno[0]} #{prome}\n"
  end
  puts 'Los promedios de los alumn@s son los siguientes:'
  puts final
  puts 'Además se ha generado un archivo llamado  "promedios"'
  file = File.write('promedios.csv', final)
end