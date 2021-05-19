

class Amazingbot
  attr_reader :text

  def initialize
    Telegram::Bot::Client.run(TOKEN_KEY) do |bot|
      bot.listen do |message|
        case message.text
        when '/info'
          bot.api.send_message(chat_id: message.chat.id, text: "This bot is designed to interract,
        #{message.from.first_name} and provide ineteresting and amazing quotes with rib cracking jokes to ease your mood enter /start to see how you can get the bot working as based on your preference.
        Designed by DanSam a Microverse project on Ruby")
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello,I'm JUST a bot, Welcome,
        #{message.from.first_name} press /normaljoke to get chuckling jokes to ease you and /quotes
        for inspirational and success quotes and for programmers I also have some amazing jokes for type /programmersjoke and you can enter /quit to end")
        when '/quit'
          bot.api.send_message(chat_id: message.chat.id, text: "#{message.from.first_name},
        i wish you did not press that,you can reconsider!!,bye anyways")
        when '/programmersjoke'
          joke = Jokes.new
          bot.api.send_message(chat_id: message.chat.id, text: joke.random_jokes)
        when '/quotes'
          quote = Quotes.new
          bot.api.send_message(chat_id: message.chat.id, text: quote.random_quotes)
        when '/normaljoke'
          normal= Jokes.new
          bot.api.send_message(chat_id: message.chat.id, text: normal.random_jokes)
        else message.text != '/programmingjoke' || '/inspirationalquotes' || '/normaljoke'
             alert = "sorry,we have only '/quotes', '/programmingjoke','/normaljoke' at the moment"
             bot.api.send_message(chat_id: message.chat.id, text: alert)
        end
      end
    end
  end
end