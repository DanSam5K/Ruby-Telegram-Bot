class Normal
  attr_reader :jokes

  def initialize
    @jokes = [
      'Men marry women with the hope they will never change. Women marry men with the hope they will change. Invariably they are both disappointed..πππππ --Albert Einstein', 'The difference between stupidity and genius is that genius has its limits...ππ --Albert Einstein', 'At every party there are two kinds of people β those who want to go home and those who donβt. The trouble is, they are usually married to each other...ππ  --Ann Landers', 'To be sure of hitting the target, shoot first, and call whatever you hit the target...π --Ashleigh Brilliant', 'Have you noticed that all the people in favor of birth control are already born?...ππ --Benny Hill', 'If youβre going to tell people the truth, be funny or theyβll kill you...ππ  --Billy Wilder', 'Don\'t grow up its a set-up..ππ -- DanSam', 'When growing up, I knew money use to grow on trees, what have change now I can\'t explain..π -- DanSam'
    ]
  end

  def random_jokes
    Normal.rand_string(@jokes)
  end

  def self.rand_string(array)
    array[rand(array.size)]
  end
end
