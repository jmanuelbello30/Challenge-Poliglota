# Ejercicio 1
# Crear una función que tome dos matrices y devuelva una matriz de intersección y una matriz de unión.
# El orden de salida debe ser: [Intersección], [Unión].

def intersection_union(array_1,array_2)
    # numbers_repeated con & se compara cuales números del arreglo 1 y del arreglo 2 se están repitiendo 
    # con esta se crea la Matriz de intersección
    numbers_repeated = array_1 & array_2
    # union_array con | se hace la unión de las matrices sin los elemento repetidos 
    # con esta se crea la Matriz de unión
    union_array = array_1 | array_2
    # con sort se orden las matrices de numbers_repeated y union_array de forma ascendente
    numbers_repeated.sort()
    union_array.sort()

    [numbers_repeated,union_array]
end

# Para mostrar el resultado igual al documento de Challenge se coloca .to_s sin cambiar el formato de lo solicitado "array"
puts intersection_union([4, 4, 6, 7, 8],[4, 5, 9]).to_s

# Ejercicio 2 
# Escriba una función que busque en una matriz de nombres (sin clasificar) el nombre "Bob" y devuelva la
# ubicación en la matriz. Si Bob no está en la matriz, devuelve -1.

def find_bob(array_name)
    # Con el método index() se busca la posición de bob en los arrays
    # Con el condicional if se indica que si no se cumple "where_is_bob" entonces se imprima -1
    where_is_bob = array_name.index("Bob")      
   if !where_is_bob
       puts "-1" 
   else
       puts "#{where_is_bob}"  
   end
end

puts find_bob(["Jimmy", "Layla", "Bob"])
puts find_bob(["Bob", "Layla", "Kaitlyn", "Patricia"])
puts find_bob(["Jimmy", "Layla", "James"])

# Ejercicio 3
# Cree una función que tome una matriz de números y devuelva el número que es único junto a su ubicación en
# la matriz, en caso de no existir retornar una matriz vacía.

def unique(array_number)
    # Se setea una variable de un array vacío para guardar el resultado
    result = []
    # primero se recorre el array por cada número
    array_number.each do |number|
        # Con select se hace una nueva comparación del array para encontrar cual no se repite
        repeated_numbers = array_number.select{|compare_number| compare_number != number }
        # Con este condicional if se esta contando los números para verificar los que se repiten
        if repeated_numbers.size > 1
            # Con index se busca la posición del número que no se repite
            postion_number = array_number.index(number)
            # Con push se agrega al array vacío result, el número que no se repite y su posición
            result.push([number,postion_number])
        end
    end
    #Se imprime el resultado
    puts result
end

unique([3, 3, 1, 3, 3, 3])
unique([0, 0, 0, 0.93, 0])
unique([1, 1, 1, 1, 1, 0, 1, 1])