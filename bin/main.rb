#!/usr/bin/env ruby
require "telegram/bot"
require_relative "../config.rb"

Telegram::Bot::Client.run(TELEGRAM_TOKEN) do |bot|
    bot.listen do |message|
        text = ["😏 ", "👍 ", "🥰"].sample
        bot.api.send_message(chat_id: message.chat.id, text: text)
    end
end


puts "Hello!"