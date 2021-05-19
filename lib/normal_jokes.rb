require_relative './helper_method'

class Normal
  include Methods
  attr_reader :jokes

  def initialize
    @jokes = [
      'Men marry women with the hope they will never change. Women marry men with the hope they will change. Invariably they are both disappointed..😂😂😂😜😜 --Albert Einstein', 'The difference between stupidity and genius is that genius has its limits...😂😜 --Albert Einstein', 'At every party there are two kinds of people – those who want to go home and those who don’t. The trouble is, they are usually married to each other...😂😜  --Ann Landers', 'To be sure of hitting the target, shoot first, and call whatever you hit the target...😜 --Ashleigh Brilliant', 'Have you noticed that all the people in favor of birth control are already born?...😂😂 --Benny Hill', 'If you’re going to tell people the truth, be funny or they’ll kill you...😂😂  --Billy Wilder', 'Don\'t grow up its a set-up..😂😂 -- DanSam', 'When growing up, I knew money use to grow on trees, what have change now I can\'t explain..😜 -- DanSam'
    ]
  end

  def random_jokes
    Methods.rand_string(@jokes)
  end
end
