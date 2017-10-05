stock_dict = { 'NM' => 'Nora Moser',
'CAT' => 'Caterpillar', 'EK' => "Eastman Kodak" }
puts stock_dict

purchases = [ [ 'NM', 100, '10-sep-2001', 48 ],
[ 'CAT', 100, '1-apr-1999', 24 ],
[ 'EK', 200, '1-jul-1998', 56 ] ]

purchase_history = Array.new
puts purchase_history
# puts "#{purchases.key()}"
puts stock_dict["NM"]
puts stock_dict["CAT"]
puts stock_dict["EK"]


# for numbers in purchases
#     # puts numbers
# index1 = numbers[1]
# index2 = numbers[3]
# indexTimes = index1 * index2
# indexSum = []
# indexSum << indexTimes

# puts indexSum

# if numbers == "Nora Moser"
#     number = 4800
# elsif numbers == "Caterpillar"
#     number = 2400
# else
#     number = 11200
# end 

# puts "#{name}'s number is a #{number}"
# end 
for array in purchases
    index0 = array[0]
    company = stock_dict[index0]
    index1= array[1]
    index3= array[3]
    indexTimes = index1 * index3
    indexSum = []
    indexSum << company
    indexSum << indexTimes
    p indexSum
end

# puts purchases[0]

part_two = Hash.new

for answer in purchases
    if part_two.has_key?(answer[0])
        part_two[answer[0]].push(answer[1]* answer[3])
    else part_two[answer[0]] = [answer[1]* answer[3]]
    end
end

puts part_two