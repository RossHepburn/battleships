require 'board'

describe Board do

		let(:player) {double :player}
		let(:board) {Board.new(player)}


	it "should initialize with an owner" do
		player.stub(:name => "ross") 
		expect(board.owner).to eq("ross")
	end	

	it "should initialize with an empty array" do
		expect(board.rows.count).to eq(10)
		expect(board.rows[0].count("")).to eq(10)
	end	

	it "should show water hit" do
		board.register_shot([1,6])
		expect(board.rows[1][6]).to eq("o")
	end

	it 'places X ships' do
		# do stuff and add expectation
	end

	# it "should have ships size 2" do
	# 	board.add_ships	
	# 	expect(board.rows.flatten.count("s")).to eq(24)
	# end

	# it "should not overlap ships" do
	# 	board.add_ships
	# 	expect(board.rows.flatten.count("s")).to eq(31)
	# end

end	