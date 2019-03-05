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

tools = ["arouter", "aruler", "rtape measure"]

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

def count_elements(array)
  new_array = []
  array.each do |item|
    if new_array.include?(item) == false
      puts "#{item} not found in #{new_array}"
      new_array << {:name => item[:name], :count => 1}
      puts "new_array = #{new_array}"
    else
      new_array.each do |element|
        if element[:name] == item[:name]
          element[:count] += 1
        end
      end
    end
  end
  new_array
end

def merge_data(array1, array2)
  array1.concat(array2)
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
    
