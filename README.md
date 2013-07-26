Word Bunny
==========

Feeds on words, not carrots.
https://rubygems.org/gems/word_bunny

### Description

A rubygem that counts each unique word in any given string.
Created during a PHRUG hacknight.

### Usage

```ruby
$ require 'word_bunny'
$ WordBunny::TalliesWords.execute 'Hop! Bunny, hop!'
 => [["hop", 2], ["bunny", 1]]
```
