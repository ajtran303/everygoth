# everygoth

### What is this?

This is the source code for my Twitter bot, [@everygoth](https://twitter.com/everygoth).

### What's it do?

[@everygoth](https://twitter.com/everygoth) tweeted words from the English language prepended by the word "goth."

### How does it work?

I made an editorial decision to take @everygoth offline: [Twitter thread](https://twitter.com/haograms/status/1274008786999455744)

First, I use the Twitter API to read the latest tweet by @everygoth.

I use my DictionaryReader class to find the next word to tweet.

I format the tweets with mix-ins from my Gothify module.

Finally, I make another Twitter API call to update @everygoth.

~I use the public domain Webster's Second International Dictionary for my word list. It is 235,886 words long.~

~@everygoth tweets every half hour and will take **thirteen and a half years** to finish tweeting!~

#### [Attribution](https://twitter.com/haograms/status/1253115340424245249)

Originally inspired by [@everyword](https://twitter.com/everyword) (2007-2014), written in Javascript by [Allison Parrish](https://twitter.com/aparrish). ([1](https://github.com/aparrish/everywordbot))

Specifically inspired by the [@everypunk](https://twitter.com/everypunk) clone, written in Python by [Tim Objelisks](https://twitter.com/objelisks). ([2](https://github.com/Objelisks/everypunk))

The v1.0 implementation was heavily influenced [Jake Faris](https://twitter.com/fake_jaris)'s bots written in Ruby. I followed his [article](https://farisj.github.io/quick_start_guide_on_making_a_twitter_bot/) and asked him some deployment [questions](https://twitter.com/haograms/status/1252812599734857731). ([3](https://github.com/farisj/realness_bot),
[4](https://github.com/farisj/every_orb_bot),
[5](https://github.com/farisj/bot_me_daddy))

I would also like to thank [Emily Cain](https://twitter.com/data_bae) for writing a super helpful [article](https://dev.to/emcain/how-to-set-up-a-twitter-bot-with-python-and-heroku-1n39) on deploying to Heroku.

#### Version History

v1.0 - April 22, 2020 - Initial deployment, with dream-driven development

v2.0 - June 12, 2020 - First major refactor, with test-driven development

v2.1 - June 15, 2020 - Export text-manipilation methods to Gothify module
