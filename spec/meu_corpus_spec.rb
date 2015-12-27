require 'spec_helper'

def convert(text)
  text = meu_corpus(text.to_s)
  text = change_to_meu_with_natto(text)
  text
end

describe '#meu_corpus' do
  it { expect(convert('お疲れ様です')).to eq 'お疲れ様めう' }
  it { expect(convert('やってない')).to eq 'やってないめう' }
  it { expect(convert('お疲れ')).to eq 'お疲れめう' }
  it { expect(convert('facebook')).to eq 'ふぇいすぶっくめう' }
end
