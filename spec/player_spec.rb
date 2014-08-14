require 'player'

describe Player do
	
	it "should be able to add a player" do
		player = Player.new("Ross")
		expect(player.player_name).to eq("Ross")
	end	


end