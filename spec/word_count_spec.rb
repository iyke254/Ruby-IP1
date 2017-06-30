require('rspec')
require('pry')
require('word_count')

describe('String#count_word') do
  it('returns the number of times a one word input appears in a sentence') do
    expect("i".count_word("i am so i am")).to(eq(2))
  end
  it('returns the number of times a one word input appears in a sentence and ignores common punctuation marks') do
    expect("we".count_word("We are Man-U, we are the red devils")).to(eq(3))
  end
end
