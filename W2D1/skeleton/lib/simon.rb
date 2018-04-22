class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
    play
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
    play
  end

  def take_turn
      system('clear')
      show_sequence
      require_sequence
      unless game_over
        round_success_message
        @sequence_length += 1
      end
  end

  def show_sequence
    add_random_color
    seq.each_with_index do |color, idx|
      print color
      sleep(0.75)
      system('clear')
    end
  end

  def require_sequence
    puts "Enter the color combination (ex: red blue green yellow): "
    colors = gets.chomp.downcase.split(" ").map(&:to_s)
    @game_over = true unless colors == seq
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Success! Current sequence length: #{sequence_length}"
    sleep(1.5)
  end

  def game_over_message
    puts "Incorrect sequence. Starting over."
    sleep(1.5)
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

game = Simon.new
