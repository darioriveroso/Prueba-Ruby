def inasist
  alumnos = File.readlines('notas.csv')

  alumnos.map do |alumni|
    alumno = alumni.split(', ')
    suma = 0
    alumno.each do |alumni2|
      suma += 1 if alumni2.chomp == 'A'
    end
    puts "el alumn@ #{alumno[0]} tiene  #{suma} inasistencias"
  end
end