require_relative '../lib/player'
describe Player do
    describe "name" do
        it "check that a player can be created with a name and a symbol" do
            player = Player.new("David","X")
            expect(player.name).to eql("David")
            expect(player.symbol).to eql("X")
        end    
    end
end