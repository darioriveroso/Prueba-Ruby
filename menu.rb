require_relative 'promedios'
require_relative 'inasistencias'
require_relative 'aprobado'

menu_txt = <<BLA

     '**********Desafío Pasar**********'
     'Selecciona una Opción'
     'Opción 1 : Promedios alumnos'
     'Opción 2 : Inasistencias de alumnos'
     'Opción 3 : Alumnos que aprueban y reprueban'
     'Opción 4 : Salir'
BLA

option = -1

while option != 4
    print menu_txt
    option = gets.to_i
    case option
    when 1
        promedio
    when 2
        inasist
    when 3
        aprob
    when 4 
        print "Nos vemos el próximo semestre\n\n"
    else
        print "Opcion errónea\n\n"
    end
end