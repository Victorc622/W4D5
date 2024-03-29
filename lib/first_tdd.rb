class Array
    def my_uniq
        res = []
        self.each do |ele|
            res << ele unless res.include?(ele)
        end
        return res
    end

    def two_sum
        pairs = []
        res = {}

        self.each_with_index do |ele, idx|
            pairs << [res[0 - ele], idx] if res.include?(0 - ele)
            res[ele] = idx
        end
        pairs.sort
    end
end

def my_transpose(matrix)
    size = matrix.length
    res = Array.new(size) { Array.new() }

    (0...size).each do |i|
        matrix.each do |sub_arr|
            res[i] << sub_arr[i]
        end
    end
    res
end


# [ 4, 5, 6, 3, 7, 2 ] -> [3, 4]

def stock_picker(arr)
    highest_pair = [0, 0]

    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            highest_pair = [arr[i], arr[j]] if arr[j] - arr[i] > highest_pair[1] - highest_pair[0]
        end
    end

    return [arr.find_index(highest_pair[0]), arr.find_index(highest_pair[1])]
end
