require_relative '../lib/board'
require 'rspec'
# To Run "rspec spec/spec_board.rb"
describe 'Board' do
  check1 = Check.new
  describe 'cell_check method' do
    let(:arr) { [1, 2] }
    let(:arr1) { [3, 5] }
    let(:person) { 'DEEP' }
    let(:cell) { 4 }
    it 'return true if cell lie between 1 and 9' do
      expect(check1.cell_check(cell, person, arr, arr1)).to be true
    end

    let(:cell1) { 11 }
    it 'return false if selection is greater than 9' do
      expect(check1.cell_check(cell1, person, arr, arr1)).not_to be true
    end

    let(:cell2) { 0 }
    it 'return false if selection is lesser than 1' do
      expect(check1.cell_check(cell2, person, arr, arr1)).not_to be true
    end

    let(:cell3) { 'man' }
    it 'return false if cell selection is not an integer' do
      expect(check1.cell_check(cell3, person, arr, arr1)).not_to be true
    end

    let(:cell4) { 2 }
    let(:arr2) { [6, 5] }
    it 'return false if cell selection has been previously taken' do
      expect(check1.cell_check(cell4, person, arr, arr2)).not_to be true
    end

    let(:cell5) { 6 }
    let(:arr3) { [7, 5] }
    it 'return true if cell selection has not been previously taken' do
      expect(check1.cell_check(cell5, person, arr, arr3)).to be true
    end
  end
end
