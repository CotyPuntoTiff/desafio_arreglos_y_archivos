def data()
    main_data = open('./notas.data').readlines
    n = main_data.count
    array = []
    n.times do |i|
        array.push(main_data[i])
    end
    return array
end

array = data()
new_array = []

def nota_mas_alta(array)
    a = []
    for i in 1..(array.length)
        a.push(array[i].to_i) 
    end    
    return a.max
 end

 (array.length).times do |i|
     new_array.push(nota_mas_alta(array[i]))
 end

 puts new_array