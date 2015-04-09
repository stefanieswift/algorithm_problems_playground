# I have a CSV file that has a word on each line...some are capitalized, some are not. I what to know what the most occuring word in the file is. Capitilazation does not impact word count

require 'csv'

def most_used(file)
  words = CSV.readlines(file)
  word_hash = Hash.new(0)
  most_times = 0
  word_most_used = ''
  words.each do |x|
    word_hash[x.downcase] += 1
    if most_times < word_hash[x.downcase]
      most_times = word_hash[x.downcase]
      word_most_used = x.downcase
    end
  end
word_most_used
end