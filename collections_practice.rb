def begins_with_r(arr)
  arr.each do |x|
    unless x[0] == "r"
      return false
    end
  end
  return true
end

def contain_a(arr)
arr.select { |word| word.include?("a")}
end

def first_wa(arr)
  arr.find { |word| word[0..1] == "wa"}
end

def remove_non_strings(arr)
    arr.delete_if {|word|  word.class != String}
end

def count_elements(arr)

  count_hash = Hash.new(0)
  arr.each {|name| count_hash[name] += 1}

  outp = []

  count_hash.keys.each do |k|
    temp = k

    temp[:count] = count_hash[k]

    outp << temp
  end
outp
end


def merge_data(arr1, arr2)

  outp = []

  arr1.each do |element|
    element.each do |k1, v1|
      temp = Hash.new(0)
      temp[:first_name] = v1

      arr2.each do |ele|
        ele.each do |k2, v2|
        if v1 == k2
          v2.each do |k3, v3|
            temp[k3] = v3
          end
        end
      end
    end
    outp << temp
  end
end
outp
end

def find_cool(arr)
outp = []
  arr.each do |element|
    element.each do |k,v|
      if v == "cool"
        outp << element
    end
  end
end
outp
end

def organize_schools(schools)

  cities = Hash.new(0)

  schools.each do |key, values|
    values.each do |school,location|
      cities[location] = []
    end
  end

  cities.keys.each do |city|
    schools.each do |key, value|
      value.each do |school, location|
        if city == location
          cities[city] << key
        end
      end
    end
  end
cities
end
