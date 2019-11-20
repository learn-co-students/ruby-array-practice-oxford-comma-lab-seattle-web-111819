require 'pry'
def oxford_comma(array)
    index = 0
    new_array = array.map do |element|
        #binding.pry
        #if array.length > 1
        #    if index = array.length - 2
        #        if array.length == 2
        #            element += " and "
        #        else
        #            element += ", and "
        #        end
        #    else
        #        element += ", "
        #    end
        #end
        #index += 1
        #element
        element += " and " if array.length == 2 && index == 0
        element += ", and " if array.length > 2 && index == array.length - 2
        element += ", " if index < array.length - 2
        index += 1
        element
    end
    new_array.join("")
end