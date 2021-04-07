require_relative '../lib/logic'
require 'rspec'
include RSpec

describe "Logic" do
  let(:arr5){ [] }
    checklist = Logic.new
    describe "get_param1 method" do
        let(:arr){ [1, 9, 2, 8] }
        let(:arr1){ [1, 2, 5, 8] }
        it "should return empty array" do
        expect(checklist.get_param1(arr)).to eql( [] )
      end
  
      it "Should return winning array by mapping" do
        expect(checklist.get_param1(arr1)).to eql([[2, 5, 8]])
      end
    end

    describe "get_param2 method" do
        let(:arr){ [2, 4, 7, 8]}
        let(:arr1){ [1, 2, 5, 8] }
        it "should return empty array" do
          expect(checklist.get_param2(arr)).to eql( [] )
        end
    
        it "Should return winning array by mapping" do
          expect(checklist.get_param2(arr1)).to eql([[2, 5, 8]])
        end
    end
    
    describe "check_win method"do
    let(:arr3){ [1, 5, 9] }
    let(:per){ 'DEEP' }
      it "Should return true if combination matches to win" do
        expect(checklist.check_win(arr5, arr5, per)).to be true
      end
    end

    describe "check_win method"do
        let(:per){ 'DEEP' }
      it "Should return false if combination  did nit matches to win" do
        expect(checklist.check_win(arr5, arr5, per)).not_to be true
      end
    end
end