# ProverbsNIV Gem
A gem that consumes the Proverbs (NIV) endpoints from bookofproverbs.herokuapp.com/api/v1.

## Getting Started
1. Add to Gemfile
 `gem 'proverbs_niv'`
2. Run $ bundle install
3. Add `require 'proverbs_niv'` 
4. Initialize library:
		`ProverbNiv.init`
5. Call any available method

### Available methods:
1. Returns all chapters of Proverbs:
		`ProverbNiv.getAllChapters`

2. Returns chapter content of passed in chapter.
		For example: passing 1 in for chapter 1:
		`ProverbNiv.getChapterContent(1)`

3. Returns all verses of passed in chapter:
		For example: passing 1 in for chapter 1:
		`ProverbNiv.getChapterVerses(1)`

4. Returns recurrence count (with stop words) for passed in chapter
		For example: passing 1 in for chapter 1:
		`ProverbNiv.getChapterSwVerses(1)`


