# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"



module P5_T_34
   # Define un tipo de LList específico para la creación de exámenes
   # y los métodos necesarios para su manejo
   class Exam < LList
     attr_accessor :title # Título que se le va a asignar a un exámen
     # Crea una lista vacía con un título para el exámen
     def initialize(nameI="")
       super()
       @title = nameI
     end
     
     # Devuelve un examen entero, comvertido a string
     def to_s
       aux = "Titulo del examen: " + @title + "\n"
       aux += "------------------------------------------------- \n"
       act = @top
       cont = 0
       
       while (act != nil)
	        aux += cont.to_s + ") " + act.value.to_s
	        aux += " \n ++++++++++++++++++++++++++++++++++ \n"
	        act = act.next
	        cont += 1
       end
       return aux
     end
   end
end