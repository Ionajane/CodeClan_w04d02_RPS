class Game

  attr_reader :user1, :user2

  def initialize(user1, user2)
    @user1 = user1
    @user2 = user2
  end

  def compare()
    # array.each do |thing|
      return_string = "It's a draw!"
      if @user1 == "rock" && @user2 == "paper"
        return_string = "player 2 wins"
      elsif @user1 == "rock" && @user2 == "scissors"
        return_string = "player 1 wins"
      elsif @user1 == "paper" && @user2 == "scissors"
          return_string = "player 2 wins"
      elsif @user1 == "paper" && @user2 == "rock"
          return_string = "player 1 wins"
      elsif @user1 == "scissors" && @user2 == "rock"
            return_string = "player 1 wins"
      elsif @user1 == "scissors" && @user2 == "paper"
              return_string = "player 1 wins"
      end
    # end
    return return_string

 end

end
