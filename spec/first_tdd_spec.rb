require 'first_tdd'

describe Array do
    describe "#my_uniq" do 
        context 'removes duplicates from an array' do 
            it 'should return a unique array' do
                expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
            end
        end
    end
end

    describe "#two_sum" do
        context 'should return all pairs of positions where the elements at those positions sum to zero' do
            it 'should return 2d array of pairs' do
                expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
            end
        end
    end
end