def words(sentence)

words_lst = sentence.split(' ')

word_cnt = {}
words_lst.each do |word|
  if word_cnt[word]
    word_cnt[word] += 1
  else
    word_cnt[word] = 1
  end
end
return word_cnt
end
