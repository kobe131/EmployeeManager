class CoffeeError < StandardError; end
# PHASE 2
def convert_to_int(str)
    begin
      Integer(str)
    rescue ArgumentError => e
      puts "Cannot convert#{str} into integer"
      puts "Error was: #{e.message}"
      return nil
    end


    # begin
    #   num = Integer(str)
    # rescue ArgumentError
    #   puts "cannot convert#{num} into integer"
    #   # return nil
    # ensure
    #   num ||= nil
    # end
    # num
end



# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError #returns to rescue CoffeeError
  else
    raise StandardError
  end
end

def feed_me_a_fruit
    begin
    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
    rescue CoffeeError
      retry
    end
    rescue StandardError
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new("Too soon to be friends") if yrs_known < 5
    raise ArgumentError.new("What's your name?") if name.length <= 0
    raise ArgumentError.new("Whats your favorite pastime?") if fav_pastime.length <= 0

    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
