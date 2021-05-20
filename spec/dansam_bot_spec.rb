require_relative '../lib/dansam_bot'

describe Amazingbot do
  describe Quotes do
    let(:quote) { Quotes.new }
    describe '#initialize' do
      it 'makes an instance of quotes' do
        expect(quote).to be_a Quotes
      end

      it 'makes and instance of Quotes not Programmer joke' do
        expect(quote).not_to be_a Programmer
      end
      it 'makes and instance of Quotes not Normal joke' do
        expect(quote).not_to be_a Normal
      end

    end
    describe '#random_quotes' do
      it 'it gives back a random joke as a String' do
        expect(quote.random_quotes).to be_a String
      end

      it 'it gives back a random quotes as a String not Numeric' do
        expect(quote.random_quotes).not_to be_a Numeric
      end
    end
  end

  describe Programmer do
    let(:joke) { Programmer.new }
    describe '#initialize' do
      it 'makes an instance of Programmers Jokes' do
        expect(joke).to be_a Programmer
      end

      it 'makes an instance of Programmers Jokes not Quotes' do
        expect(joke).not_to be_a Quotes
      end

      it 'makes an instance of Programmers Jokes not Normal Jokes' do
        expect(joke).not_to be_a Normal
      end
    end

    describe '#random_jokes' do
      it 'it gives back a random joke as a String' do
        expect(joke.random_jokes).to be_a String
      end

      it 'it gives back a random joke as a String not Numeric' do
        expect(joke.random_jokes).not_to be_a Numeric
      end
    end
  end

  describe Normal do
    let(:joke) { Normal.new }
    describe '#initialize' do
      it 'makes an instance of Normal Jokes' do
        expect(joke).to be_a Normal
      end

      it 'makes an instance of Normal Jokes not Quotes' do
        expect(joke).not_to be_a Quotes
      end

      it 'makes an instance of Normal Jokes not Programmer Jokes' do
        expect(joke).not_to be_a Programmer
      end
    end

    describe '#random_jokes' do
      it 'it gives back a random Normal joke as a String' do
        expect(joke.random_jokes).to be_a String
      end

      it 'it gives back a random Normal joke as a String not Numeric' do
        expect(joke.random_jokes).not_to be_a Numeric
      end
    end
  end
end
