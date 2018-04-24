class Board
  attr_reader :name1, :name2
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14).map.with_index do |cup, i|
      i == 6 || i == 13 ? [] : Array.new(4, :stone)
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(0,12)
    raise "Invalid starting cup" if cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    num_stones = cups[start_pos].length
    cups[start_pos] = []
    curr_pos = start_pos
    num_stones.times do |i|
      curr_pos += 1
      curr_pos += 1 if current_player_name == name1 && curr_pos == 13
      curr_pos += 1 if current_player_name == name2 && curr_pos == 6
      curr_pos = curr_pos % 14
      cups[curr_pos] << :stone
    end
    render
    next_turn(curr_pos)
    if (current_player_name == name1 && curr_pos == 6) || (current_player_name == name2 && curr_pos == 13)
      :prompt
    else
      next_turn(curr_pos)
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].all?(&:empty?) || cups[7..12].all?(&:empty?)
  end

  def winner
    return :draw if cups[6].length == cups[13].length
    cups[6].length > cups[13].length ? @name1 : @name2
  end
end
