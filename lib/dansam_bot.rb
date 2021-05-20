require 'telegram/bot'
require_relative './amazing_quotes'
require_relative './normal_jokes'
require_relative './programmer_jokes'
# require_relative '../config'

class Amazingbot
  attr_reader :text

  def initialize # rubocop:disable Metrics/CyclomaticComplexity
    Telegram::Bot::Client.run(TELEGRAM_TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "This 🤖Bot is designed specially to serve you Mr. #{message.from.first_name} and provide you with interesting and amazing quotes with rib cracking jokes to ease your mood enter /info to see how you can get the bot working as based on your preference.")
        when '/info'
          bot.api.send_message(chat_id: message.chat.id, text: "Hello, I'm 🤖Amazingbot, Welcome, #{message.from.first_name} press /normaljoke to get chuckling jokes to ease your day and /quotes for inspirational and success quotes and if you are a programmer? I also have some amazing jokes for you Mr #{message.from.first_name} enter /programmingjoke to suit yourself and you can enter /quit to end")
        when '/quit'
          bot.api.send_message(chat_id: message.chat.id, text: "Mr #{message.from.first_name},😢 🤖Amazingbot wish you did not press that, you can reconsider!!😍, bye anyways🎉")
        when '/programmingjoke'
          joke = Programmer.new
          bot.api.send_message(chat_id: message.chat.id, text: joke.random_jokes)
        when '/quotes'
          quote = Quotes.new
          bot.api.send_message(chat_id: message.chat.id, text: quote.random_quotes)
        when '/normaljoke'
          normal = Normal.new
          bot.api.send_message(chat_id: message.chat.id, text: normal.random_jokes)
        else message.text != '/programmingjoke' || '/quotes' || '/normaljoke'
             alert = "Sorry Mr.#{message.from.first_name}, this 🤖Bot have only (/quotes) |==| (/programmingjoke) |==| and (/normaljoke) at the moment. But currently working on interesting features and will be made available soon!🎉 😍 "
             bot.api.send_message(chat_id: message.chat.id, text: alert)
        end
      end
    end
  end
end
