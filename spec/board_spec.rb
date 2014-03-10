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

	it "should convert coordinates" do
		expect(board.register_shot("A6")).to eq([1][6])	
	end	

	it "should show water hit" do
		board.register_shot("A6")
		expect(board.rows[1][6]).to eq("o")
	end	

	# it "should show ship hit" do
	# 	board
	# 	@array[3][5] = "s"
	# 	board.register_shot("C5")
	# 	expect(board.rows[3][5]).to eq("x")
	# end

end	