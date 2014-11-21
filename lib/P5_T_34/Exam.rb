require "P5_T_34/version"



module P5_T_34
   # Define un tipo de LList específico para la creación de exámenes
   # y los métodos necesarios para su manejo
   class Exam < LList
     attr_reader :correct, :incorrect, :calification
     # Crea una lista cuyo primer nodo es el nombre ó
     # identificador del examen
     def initialize(nameI)
         @correct = 0
         @incorrect = 0
       super
     end
     
     #Devuelve un examen entero, comvertido a string
     def to_s
       aux = "Titulo del examen: " + @top.value + "\n"
       aux += "------------------------------------------------- \n"
       act = @top.next
       cont = 1
       while (act != nil)
	        aux += cont.to_s + ") " + act.value.to_s
	        aux += " \n ++++++++++++++++++++++++++++++++++ \n"
	        act = act.next
	        cont += 1
       end
       return aux
     end
     
     #Muestra el examen pregunta a pregunta, recibe una respuesta y retorna la calificacion obtenida
     def solve (answers)
         #Inicializamos variables
         act = @top.next
         @correct = 0
         @incorrect = 0
         @calification = 0
         cont = 0
         #Comenzamos el examen
         puts "Titulo del examen: " + @top.value + "\n ---------------------------------------------------------------------- \n"
         while (act != nil)
            puts cont + ")  " + act.value.to_s + "\n ------------------------ \n Respuesta: " + answers[cont]
            if (answers[cont] == act.correct) then
                @correct += 1
                puts " \t ---> Respuesta Correcta"
            else
                @incorrect += 1
                puts " \t ---> Respuesta Incorrecta"
            end
            act = act.next
         end
         @calification = (correct / self.size) * 10
         return @calification
     end
   end
end