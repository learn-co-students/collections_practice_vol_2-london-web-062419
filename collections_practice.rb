# your code goes here
require 'pry'
#return true if every element of the tools array starts with r false otherwise.

def begins_with_r(array)
    array.all? do |string| #.all? passes each element in the array and gives true if there is no false.
        string[0] == "r" #index 0 the firs letter
        # could potential use the .first method. 
    end
end

#
#return all elements that contain the letter 'a'
def contain_a(array)
    array.select do |string|
        string.include?("a") # searches through all the 
    end
end


#Return the first element that begins with the letters 'wa'

    # array.select do |k, v| 
    #     v.start_with('wa')
    def first_wa(array)
        array.find do |string|
        string[0..1] == "wa"
      end
      end

# binding.pry


#remove anything that's not a string from an array
def remove_non_strings(array)
    array.grep(String)
end

#count how many nested data structures into one
def count_elements(array)
    # count = 0
    # array.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    # counts = Hash.new(0)
    # array.inject(Hash.new(0)) {|total, e| total[e] += 1 ;total}
    # count.push(total)
    array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
end



#merge combine two nested data structures into one
def merge_data(key, data)
    merged = []
    key.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
    merged

end

#find all cool hashes
def find_cool(hash)

    cool.select {|i| i.any? {|k,v| v == "cool"}}

end

#sort school by location
def organize_schools(schools)
        locations_hash = {}
        schools.collect {|k,v| locations_hash[v[:location]] = []}
        locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
        
        end



