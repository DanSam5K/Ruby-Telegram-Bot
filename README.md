![](https://img.shields.io/badge/Microverse-blueviolet)

# Microverse Ruby Capstone Project

## Telegram Bot (Amazingbot)

- This Telegram 🤖 Bot is built with Ruby And [Telegram bot API](https://core.telegram.org/bots/api)
- Simply search for 'Amazingbot' or @ds_joker_bot or @Amazingjoker_bot. Depending on the API version running
- This 🤖 Bot accepts some basic commands and respond with a joke, quote or programming joke and mood concerning programming at random, depending on the User selection and command input.

 ![screenshot](./images/botscreenshot.png)

## Built With

- Ruby
- Telegram-bot-ruby & Telegram API
- Rspec
- VsCode

## Commands to Run the Bot
This Bot has 6 commands
- [x] /start - Gives you a brief information about the both and how to interract with the bot
- [x] /info - It gives the user instructions on  how to use and interact with the 🤖bot commands to get the required informations you need.
- [x] /quit  - persuades you not to quit".
- [x] /programmingjoke - It gives you a random selected programming joke relating to any topic of programming.
- [x] /quotes - It proivde a random quote relating to success and inspirational topics.
- [x] /normaljoke - It provide a random jokes.

### How to Run Tests

#### Installing Rspec
Boot up your terminal and punch in `gem install rspec` to install RSpec. Once that’s done, you can verify your version of RSpec with `rspec --version`, which will output the current version of each of the packaged gems. Take a minute also to hit `rspec --help` and look through the various options available.

- You need to run 
```
$ gem install rspec
```
- Then run
```
$ bundle install or bundle
```
- You can run tests by running "rspec" in your terminal
```
$ rspec
```

## Install and Run the Bot Locally

In order to run the 🤖 Bot, you need to install RUBY in your computer. For windows you can go to [Ruby installer](https://rubyinstaller.org/) and for MAC and LINUX you can go to [Ruby official site](https://www.ruby-lang.org/en/downloads/) for intructions on how to intall it.

## When you have Ruby Installed in your System, please follow bellow mentioned steps to run the Bot

**Step 1**<br>
Clone the repo in your local folder where you want to run it<br>
`https://github.com/DanSam5K/Ruby-Telegram-Bot.git`.<br>
**Step 2**<br>
After cloning `cd` into project folder `$ cd Ruby-Telegram-Bot` create a `config.rb` in the project root directory You will need Telegram access Token API, create a variable inside the `config.rb` file  with name ` TELEGRAM_TOKEN = 'APIKEY' ` and asign your APIKEY to the variable, then uncomment the `# require_relative '../config'` inside `dansam_bot.rb` file <br>
**Step 3**<br> 
Run `bundle install` to install the gems from the `Gemfile`.<br>
**Step 4**<br>
Run `bin/main.rb` to start the bot.<br>
**Step 5**<br>
You can use the commands defined in the [Available commands section](#Commands-to-Run-the-Bot) defined above.<br>

#### This Bot is Live Now. You can click [🤖 here](https://t.me/ds_joker_bot) or [🤖 this](https://t.me/Amazingjoker_bot) to Play with Bot

## Authors

👤 **Daniel Samuel**

- GitHub: [@DanSam5K](https://github.com/DanSam5K)
- Twitter: [@_dan_sam](https://twitter.com/_dan_sam)
- LinkedIn: [DanSam](https://www.linkedin.com/in/dansamuel/)

## 🤝 Contributing

- If you want to contribute or have a feature to add.
- Go to the repo
- Open a pull request
or
- Feel free with a click [issues page](https://github.com/DanSam5K/Ruby-Telegram-Bot/issues).

Contributions, issues and feature requests are welcome!

## Show Your Support
Give a ⭐️ if you like this project!

## Acknowledgments

- Project inspired by Microverse Program

## 📝 License

This project is [MIT](https://mit-license.org/) licensed.

