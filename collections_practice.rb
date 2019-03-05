def begins_with_r(tools)
  they_r_all_r = true
  counter = 0
  tools.each do |tool|
    puts tool
    if tool.start_with?('r') == false
      they_r_all_r = false
    end
  end
  they_r_all_r
end

def contain_a(string)
  a_list = []
  string.each do |word|
    a_list << word if word.downcase.include?('a') == true
  end
  a_list
end

def first_wa(array)
  array.each do |item|
    if item == item.to_s
      if item.start_with?('wa') == true
        return item
      end
    end
  end
  nil
end

def remove_non_strings(array)
  new_array = []
  array.each do |item|
    new_array << item if item == item.to_s
  end
  new_array
end

input_array = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def count_elements(array)
  new_array = []
  array.each do |item_in|
    included = false
    if new_array != []
      new_array.each do |item_out| 
        if item_in[:name] == item_out[:name]
          item_out[:count] += 1
          included = true
        end
      end
    end
    if included == false
      new_array << {:name => item_in[:name], :count => 1}
    end
  end
  new_array
end

count_elements(input_array)

def merge_data(array1, array2)
  array1.each
end

def find_cool(hash)
  cool_hashes = []
  hash.each do |hash|
    cool_hashes << hash if hash.include?('cool')
  end
end

def organize_schools(schools)
  schools.sort{|a, b| a <=> b}
end
    
