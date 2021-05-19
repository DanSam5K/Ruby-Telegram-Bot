

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
        
      end
    end
  end
end