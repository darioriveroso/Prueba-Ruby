def aprob
  alumnos = File.readlines('notas.csv',)
    
  alumnos.each do |alu|
    alumno = alu.split(', ')
    final = 0
    alumno.each do |alus|
      final += alus.to_f
    end
    prome = final / (alumno.length - 1)
    if prome >= 5
      puts " El Alumn@ #{alumno[0]} aprobó con promedio #{prome}"
    else
      puts " El Alumn@ #{alumno[0]} reprobó con promedio #{prome}"
  end
  end
end
