# goth_tweet.rb

### What is this?

This is the source code repo for the Twitter bot, [@everygoth](twitter.com/everygoth).

### What's it do?

[@everygoth](twitter.com/everygoth) tweets words from the English language appended or prepended by the word "goth."

### How does it work?

goth_tweet.rb uses the Twitter API.

First, it looks at the latest tweet by @everygoth. Then, it references that tweet against my gist of goth words. Finally, it posts the word that comes next.

[My gist contains 56,393 words](https://gist.github.com/ajtran303/d7a6ae0c957d2dc53dc17dab688d4db3) that I curated using Ruby. I wrote several scripts (not included) to "clean" the raw data and generate the text file.

#### Attribution

Originally inspired by [@everyword](twitter.com/everyword) (2007-2014) by Allison Parrish.

Specifically inspired by the [@everypunk](twitter.com/everypunk) clone.

I followed this article, [Quick Start Guide On Making A Twitter Bot](https://farisj.github.io/quick_start_guide_on_making_a_twitter_bot/) by Jake Faris, studied and modified some of his Twitter bots
([1](https://github.com/farisj/realness_bot)
[2](https://github.com/farisj/every_orb_bot)
[3](https://github.com/farisj/bot_me_daddy))
and asked him some questions on Twitter.
