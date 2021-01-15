def data()
    main_data = open('./ventas_base.db').read
    numero = main_data.split(",")

    return numero
end

numero_final = data()

def semestre1(numero)
    x = 0
    for i in 0..((numero.length)/2) do
        x += numero[i].to_i
    end
    x = ((x/(numero.length/2))*1.1).round(2)
    return x
end

def semestre2(numero)
    x = 0
    for i in ((numero.length)/2)..(numero.length) do
        x += numero[i].to_i
    end
    x = ((x/(numero.length/2))*1.2).round(2)
    return x
end

data_result = "#{semestre1(numero_final)}\n#{semestre2(numero_final)}"

File.write('./resultados.data', data_result)