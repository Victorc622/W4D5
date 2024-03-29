class Array
    def my_uniq
        res = []
        self.each do |ele|
            res << ele unless res.include?(ele)
        end
        return res
    end

    def two_sum
        i = self[0]
        j = self[-1]

        
    end
end