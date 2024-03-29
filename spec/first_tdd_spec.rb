require 'first_tdd'

describe Array do
    describe "#my_uniq" do
        context 'removes duplicates from an array' do
            it 'should return a unique array' do
                expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
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

describe "#my_transpose" do
    it 'should accept a matrix as args' do
        expect {my_transpose([[0, 1, 2], [3, 4, 5], [6, 7, 8]])}.to_not raise_error
    end
    context 'convert between row-oriented and column-oriented representations' do
        it 'should return a converted matrix' do
            expect(my_transpose([[0, 1, 2], [3, 4, 5], [6, 7, 8]])).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end
end

# [ 4, 5, 6, 3, 7, 2 ] -> [3, 4]
describe "#stock_picker" do
    it 'should accept an array as args' do
        expect {stock_picker([4, 5, 6, 3, 7, 2])}.to_not raise_error
    end
    context 'outputs the most profitable pair of days on which to first buy the stock and then sell the stock' do
        it 'should return a array of the pair of indices' do
            expect(stock_picker([4, 5, 6, 3, 7, 2])).to eq([3, 4])
        end
    end
end

# [[1, 2, 3, 4], [], []] -> [[], [], [1, 2, 3, 4]]
describe TowerGame do
    subject(:game) { TowerGame.new }
    describe "#initialize" do
        context "create a new matrix grid" do
            it "initializes a grid correctly" do
                expect(game.grid).to eq([[1, 2, 3, 4], [], []])
            end
        end
    end

    describe '#move' do
        it 'should take in a start and end arg' do
            expect {game.move(0, 2)}.to_not raise_error
        end

        context 'should mutate the grid when you use #move' do
            it 'should mutate and return new grid' do
                game_2 = TowerGame.new
                game_2.move(0, 2)
                expect(game_2.grid).to eq([[2, 3, 4], [], [1]])
            end
        end
    end
end
