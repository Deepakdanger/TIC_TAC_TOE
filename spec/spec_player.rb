require ./lib/player.rb


describe Player do
    describe "name_check method " do
        it "should accept player length > 0" do
            player=Player.new
            expect {(player.name_check(person)) && (person.length = 0)}.to eql (false)
        end
    end
    describe "name_check method " do
        it "should accept player length > 0" do
            player=Player.new
            expect {player.name_check(person) && person.length > 0}.to eql (true)
        end
    end
end