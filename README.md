# goth_tweet.rb

### What is this?

This is the source code repo for the Twitter bot, [@everygoth](https://twitter.com/everygoth).

### What's it do?

[@everygoth](https://twitter.com/everygoth) tweets words from the English language appended or prepended by the word "goth."

### How does it work?

goth_tweet.rb uses the Twitter API.

First, it looks at the latest tweet by @everygoth. Then, it references that tweet against my gist of goth words. Finally, it posts the word that comes next.

[My gist contains 56,393 words](https://gist.github.com/ajtran303/d7a6ae0c957d2dc53dc17dab688d4db3) that I curated using Ruby. I wrote several scripts (not included) to "clean" the raw data and generate the text file.

@everygoth will tweet once every other hour -- it will take 112,786 hours or almost ***THIRTEEN YEARS*** for it to finish tweeting!

#### Attribution

Originally inspired by [@everyword](https://twitter.com/everyword) (2007-2014), written in Javascript by Allison Parrish. ([1](https://github.com/aparrish/everywordbot))

Specifically inspired by the [@everypunk](https://twitter.com/everypunk) clone, written in Python by Tim Objelisks. ([2](https://github.com/Objelisks/everypunk))

I studied and modified some Twitter bots written in Ruby by Jake Faris. For deployment, I followed his [article](https://farisj.github.io/quick_start_guide_on_making_a_twitter_bot/) and asked him some questions on Twitter. ([3](https://github.com/farisj/realness_bot),
[4](https://github.com/farisj/every_orb_bot),
[5](https://github.com/farisj/bot_me_daddy))
