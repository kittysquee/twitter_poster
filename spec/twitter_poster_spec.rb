require 'twitter_poster'

describe TwitterPoster do
  describe '#valid_length?' do
    it 'will be false when tweet too long' do
      subject.add_tweet('*' * 141)
      expect(subject.valid_length?).to eq false
    end

    it 'will be true when tweet is juuust right' do
      subject.add_tweet('*' * 140)
      expect(subject.valid_length?).to eq true
    end

    it 'will be true when tweet is shorter' do
      subject.add_tweet('*' * 100)
      expect(subject.valid_length?).to eq true
    end
  end

  it 'adds a new tweet' do
    subject.add_tweet('sausage')
    expect(subject.tweet).to eq 'sausage'
  end

end
