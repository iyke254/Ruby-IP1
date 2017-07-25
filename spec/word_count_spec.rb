require('rspec')
require('pry')
require('word_count')

describe('String#word_count') do
  it('returns the number of times a one word input appears in a sentence') do
    expect("i".word_count("i am so i am")).to(eq(2))
  end
  it('returns the number of times a one word input appears in a sentence and ignores common punctuation marks') do
    expect("we".word_count("We are Man-U, we are the red devils")).to(eq(2))
  end
end
