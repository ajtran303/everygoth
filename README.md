# goth_tweet.rb

### What is this?

This is the source code for my Twitter bot, [@everygoth](https://twitter.com/everygoth).

### What's it do?

[@everygoth](https://twitter.com/everygoth) tweets words from the English language appended or prepended by the word "goth."

@everygoth will tweet once every other hour -- it will take 112,786 hours or almost ***THIRTEEN YEARS*** for it to finish tweeting!

### How does it work?

goth_tweet.rb uses the Twitter API.

First, it looks at the latest tweet by @everygoth. Then, it references that tweet against my gist of goth words. Finally, it posts the word that comes next.

[My gist contains 56,393 words](https://gist.github.com/ajtran303/d7a6ae0c957d2dc53dc17dab688d4db3) that I curated using Ruby. I wrote several scripts (not included) to "clean" the raw data and generate the text file.

#### [Attribution](https://twitter.com/haograms/status/1253115340424245249)

Originally inspired by [@everyword](https://twitter.com/everyword) (2007-2014), written in Javascript by [Allison Parrish](https://twitter.com/aparrish). ([1](https://github.com/aparrish/everywordbot))

Specifically inspired by the [@everypunk](https://twitter.com/everypunk) clone, written in Python by [Tim Objelisks](https://twitter.com/objelisks). ([2](https://github.com/Objelisks/everypunk))

The implementation was heavily influenced [Jake Faris](https://twitter.com/fake_jaris)'s bots written in Ruby. I followed his [article](https://farisj.github.io/quick_start_guide_on_making_a_twitter_bot/) and asked him some [questions](https://twitter.com/haograms/status/1252812599734857731). ([3](https://github.com/farisj/realness_bot),
[4](https://github.com/farisj/every_orb_bot),
[5](https://github.com/farisj/bot_me_daddy))
