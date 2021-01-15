numeros = [5, 3 , 2, 5 ,10]

def char(num)
    espace = ''
    asteriscos ='**'
    lineas = '--'
    linea = ''
    numero = ''

    (num.length).times do |i|
        espace += "|#{asteriscos * num[i].to_i}\n"
    end
    (num.max.to_i).times do |i|
       linea =">#{lineas * (i+1)}\n"
       numero += " #{i+1}"
    end
    espace += linea
    espace += numero
    return espace
end

 puts char(numeros)