# ProverbsNIV Gem
A gem that consumes the Proverbs (NIV) endpoints from [Book of Proverbs web app](http://bookofproverbs.herokuapp.com/api/v1/niv_bible).
<br>
Additional gem information (i.e. download count, etc.) also available [here](https://rubygems.org/gems/proverbs_niv).
<br>
[![ProverbsNIV](https://badge.fury.io/rb/proverbs_niv.svg)](https://badge.fury.io/rb/proverbs_niv)
<br>

## Getting Started
1. Add to Gemfile
 `gem 'proverbs_niv'`
2. Run $ bundle install
3. Add `require 'proverbs_niv'` 
4. Initialize library:
		`ProverbsNiv.init`
5. Call any available method (examples listed below)

### Available methods:
1. Returns all chapters of Proverbs:<br>
	`@chapter_nums = ProverbsNiv.getAllChapterNumbers`

2. Returns content of all chapters of Proverbs:<br>
	`@proverbs_content = ProverbsNiv.getContentOfAllChapters`

3. Returns chapter content of passed in chapter.
		For example: passing 1 in for chapter 1:<br>
		`@chapter_content = ProverbsNiv.getChapterContent(1)`

4. Returns all verses of passed in chapter.
		For example: passing 1 in for chapter 1:<br>
		`@chapter_verses = ProverbsNiv.getChapterVerses(1)`

5. Returns recurrence count (with NO stop words) for passed in chapter.
		For example: passing 1 in for chapter 1:<br>
		`@chapter_word_count_no_sw = ProverbsNiv.getRecurrenceCountNoSw(1)`

6. Returns recurrence count (with stop words) for passed in chapter.
		For example: passing 1 in for chapter 1:<br>
		`@chapter_word_count_sw = ProverbsNiv.getRecurrenceCountSw(1)`


