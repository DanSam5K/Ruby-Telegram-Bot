class Programmer
  attr_reader :jokes

  def initialize
    @jokes = ['We have 4 kinds of Developers:
            1. Front-end developer
            2. Back-end developer
            3. Full-stack developer
            4. Ctrl+c and Ctrl+v Developer..😂😂😂😜😜', 'Programmers are like God. We create defects and also kill them too.We spend the whole day fixing a defect, and the patch itself gives birth to a few more defects of its own. (Anonymous)', 'The mythical creatures who solve all the problems of lesser mortals without having to move from their desks.', 'Without google, most of us will not survive for six months in the profession of software development.', 'why do programmers wear glasses? because they cannot c#', 'When i wrote this code ,only God and i understood what i wrote,now ,only God knows', 'The mythical creatures who solve all the problems of lesser mortals without having to move from their desks.',
              'Without a compiler, most of us will not be a programmer. Ok,now don’t bring up the interpreter story.', 'A computer program does what you tell it to do, not what you want it to do.', 'How can we complete any article for programmers without referring to stack overflow? After all, it is the brain behind every developer.']
  end
  def random_jokes
    Normal.rand_string(@jokes)
  end 
  private
  def self.rand_string(array)
    array[rand(array.size)]
  end
end
