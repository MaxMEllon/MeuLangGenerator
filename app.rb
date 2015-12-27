require 'bundler'
require 'json'
Bundler.require

post '/meu?' do
  text = params[:text]
  p text
  text = meu_corpus(text.to_s)
  text = change_to_meu_with_natto(text)
  content_type :json
  data = { text: text }
  data.to_json
end

def meu_corpus(text)
  # 謎
  text.gsub!(/顔が赤くなる/, 'ゆでゆでだこになる')
  text.gsub!(/めうもそうおもう/, 'めうほほうほほふーッ!!')
  text.gsub!(/ふふーん/, 'むきゅきゅーん☆')
  text.gsub!(/ふふん/, 'むきゅきゅん')
  text.gsub!(/とてもくやしい/, 'ぐぬぬぬぬぬぬぬ')
  text.gsub!(/驚いて/, 'むっきゅーーんして')
  text.gsub!(/メリークリスマス/, 'メリクリリン')
  # text.gsub!(//, 'ざぎん')
  # text.gsub!(//, 'ひなち')
  # text.gsub!(//, 'まっくすきゃっほい')
  # text.gsub!(//, 'まとと')
  # text.gsub!(//, 'むっきゅん☆')
  # text.gsub!(//, 'むっきゅりんりん☆')
  # text.gsub!(//, 'むにゅにるる')
  # text.gsub!(//, 'べよねね先生')
  # text.gsub!(//, 'くりすたりっくはーと')
  # text.gsub!(//, 'べくたーすきゃきゃ')
  # text.gsub!(//, 'みさささ')
  # text.gsub!(//, 'にゅはは☆')
  # text.gsub!(//, 'むきゅーーん')
  # text.gsub!(//, 'れぞぞ')
  # text.gsub!(//, '全宇宙がすたんでぃんぐはなぢレベル')
  # text.gsub!(//, 'あずず')
  # text.gsub!(//, 'おさしみ')

  # 単語
  text.gsub!(/おもちゃ/, 'もちゃちゃ')
  text.gsub!(/情報/, 'じょーほー')
  text.gsub!(/将来/, 'しょーらい')
  text.gsub!(/的/, 'てき')
  text.gsub!(/おめでとう/, 'おめでと')
  text.gsub!(/超絶/, 'ちょーぜつ')
  text.gsub!(/萌える/, 'もえきゅん')
  text.gsub!(/クリスマス/, 'くりりん')
  text.gsub!(/コスプレ/, 'こっぷれ')
  text.gsub!(/非常に/, 'ひじょーに')
  text.gsub!(/結構/, 'けっこー')
  text.gsub!(/素足/, 'おみあし')
  text.gsub!(/クラゲ/, 'クラゲゲ')
  text.gsub!(/すごい|凄い/, 'すっごい')
  text.gsub!(/群衆/, 'ぐんしゅー')
  text.gsub!(/見守る/, 'みまもるる')
  text.gsub!(/おかしい|可笑しい/, 'おっかしー')
  text.gsub!(/コーディネート/, 'こーでぃねーと')
  text.gsub!(/通り|どおり/, 'どーり')
  text.gsub!(/むふふ/, 'むひゅひゅ')
  text.gsub!(/心臓/, 'しんぞぞ')
  text.gsub!(/おねえちゃん|お姉ちゃん/, 'ちゃんねー')
  text.gsub!(/ギャル/, 'ぎゃる')
  text.gsub!(/漆黒/, 'しっこく')
  text.gsub!(/混沌/, 'こんとん')
  text.gsub!(/むむむ/, 'むにに')
  text.gsub!(/Facebook|フェイスブック/, 'ふぇいすぶっく')
  text.gsub!(/長い|ながい/, 'なっがい')
  text.gsub!(/地区/, 'ちっくく')
  text.gsub!(/最高峰/, 'さいこーほう')
  text.gsub!(/ずるい/, 'ずっるい')
  text.gsub!(/いつも/, 'いっつも')
  text.gsub!(/っていった/, 'ってった')
  text.gsub!(/突撃|とつげき/, 'とっつげき')
  text.gsub!(/眼鏡|メガネ|めがね/, 'めがねね')
  text.gsub!(/ビート/, 'びと')
  text.gsub!(/お宝/, 'おたから')
  text.gsub!(/高速|光速/, 'こーそく')
  text.gsub!(/ゴシック/, 'ごしっく')
  text.gsub!(/floor|フロアー|フロア/, 'ふろろあ')
  text.gsub!(/コンプリート|complete/, 'こんぷりーと')
  text.gsub!(/店長/, 'てんちょー')
  text.gsub!(/Sound Voltex|サウンドボルテックス|ボルテ/, 'ぼるる')
  text.gsub!(/速攻|即効/, 'そっこー')
  text.gsub!(/グルーブ/, 'ぐるーぶ')
  text.gsub!(/さすが/, 'さっすが')
  text.gsub!(/リュック/, 'りゅっく')
  text.gsub!(/猫/, 'にゃんこ')
  text.gsub!(/投函/, 'とうかん')
  text.gsub!(/感想|乾燥/, 'かんそー')
  text.gsub!(/もちろん|勿論/, 'もっちろん')
  text.gsub!(/とかげ|トカゲ/, 'とかげげ')
  text.gsub!(/ステージフェイルド|stage failed/, 'すてーじふぇいるど')
  text.gsub!(/どうなっているんだ/, 'どーなってるんだ')
  text.gsub!(/オペレーション/, 'おっぺれーしょん')
  text.gsub!(/不思議|ふしぎ|フシギ/, 'ふっしぎ')
  text.gsub!(/お刺身|おさしみ/, 'おさしみみ')
  text.gsub!(/真っ暗/, 'まっくろけけ')
  text.gsub!(/どん底/, 'どんぞこ')
  text.gsub!(/アルティメット/, 'あるてぃめっと')
  text.gsub!(/降臨/, 'こーりん')
  text.gsub!(/とても/, 'とっても')
  text.gsub!(/姉/, 'ねーね')
  text.gsub!(/出す/, 'ばっばーんする')
  text.gsub!(/あれれ/, 'ありり')
  text.gsub!(/うますぎ/, 'んますぎ')
  text.gsub!(/自転車|チャリ/, 'もちゃちゃ')
  text.gsub!(/とても/, 'とて')
  text.gsub!(/かわいい/, 'かわ')
  text.gsub!(/超高難易度/, 'ちょーこーなんいど')
  text.gsub!(/ドラム/, 'ドララ')
  text.gsub!(/セッション/, 'せっしょん')
  text.gsub!(/ギャラリー/, 'ぎゃらりー')
  text.gsub!(/レッツゴー|Let's go/, 'れっつごー')
  text.gsub!(/ひなまつり|ひな祭り/, 'ひなひなまつり')
  text.gsub!(/ストロベリーチョコ/, 'すっとろべりーちょこ')
  text.gsub!(/ぴったり/, 'ぴったしし')
  text.gsub!(/出発/, 'しゅっぱつ')
  text.gsub!(/ギター/, 'ぎたた')
  text.gsub!(/急いで/, 'いっそいで')
  text.gsub!(/格好/, 'カッコ')
  text.gsub!(/ほったらかし/, 'ほったらかしし')
  text.gsub!(/バケツ/, 'バケケ')
  text.gsub!(/ザーザー/, 'ざんざん')
  text.gsub!(/境内/, 'けいだい')
  text.gsub!(/乾いた/, 'かわいた')
  text.gsub!(/なによりも/, 'なりよりも')
  text.gsub!(/最高/, 'さいこー')
  text.gsub!(/こうやって/, 'こーやって')
  text.gsub!(/世界一/, 'せかいいち')
  text.gsub!(/笑う/, 'すまいりんぐする')
  text.gsub!(/優しい/, 'やさしー')
  text.gsub!(/レベル/, 'れべべ')
  text.gsub!(/隣/, 'となり')
  text.gsub!(/完全/, 'かんぜん')
  text.gsub!(/どうやら/, 'どーやら')
  text.gsub!(/スマホ/, 'すまほほ')
  text.gsub!(/スキル/, 'すきる')
  text.gsub!(/ポストカード/, 'ぽすとかーど')
  text.gsub!(/もうひとつ|もう一つ/, 'もひとつ')
  text.gsub!(/発表/, 'はっぴょー')
  text.gsub!(/傭兵/, 'ようへい')
  text.gsub!(/部隊/, 'ぶたい')
  text.gsub!(/そういえば/, 'そーいえば')
  text.gsub!(/どうのこうの/, 'どーのこーの')
  text.gsub!(/近々/, 'ちっかぢか')
  text.gsub!(/型抜き/, 'かたぬきき')
  text.gsub!(/諸君/, 'しょっくん')
  text.gsub!(/チラチラ|ちらちら/, 'ちらっちら')
  text.gsub!(/正直/, 'しょーじき')
  text.gsub!(/瞬間/, 'しゅんかん')
  text.gsub!(/画像/, 'がぞー')
  text.gsub!(/解析/, 'かいせき')
  text.gsub!(/映ってる/, 'うつってる')
  text.gsub!(/決定的瞬間/, 'けっていてきしゅんかん')
  text.gsub!(/刻銘/, 'こくめい')
  text.gsub!(/パソコン/, 'ぱそこん')
  text.gsub!(/予想/, 'よそー')
  text.gsub!(/イメチェン/, 'いめちぇんじじ')
  text.gsub!(/ラッパー/, 'らっぱー')
  text.gsub!(/リリック/, 'りりっく')
  text.gsub!(/写真/, 'しゃしん')
  text.gsub!(/生写真/, '生じゃしん')
  text.gsub!(/アイドル/, 'あいどる')
  text.gsub!(/スペシャル/, 'すぺっしゃる')
  text.gsub!(/ぎりぎり|ぎりぎり/, 'ぎりっぎり')
  text.gsub!(/沖縄/, 'おっきなわわ')
  text.gsub!(/エントリー/, 'えんとりー')
  text.gsub!(/アピール/, 'あっぴーる')
  text.gsub!(/あれれれ/, 'はれれれ')
  text.gsub!(/可能性/, 'かのーせー')
  text.gsub!(/秘蔵/, 'ひっぞー')
  text.gsub!(/特別に/, 'とっくべつに')
  text.gsub!(/警戒網/, 'けいかいもう')
  text.gsub!(/精一杯/, 'せいいっぱい')
  text.gsub!(/ツアー/, 'つあー')
  text.gsub!(/萌えおこし/, 'MOKS')
  text.gsub!(/我慢/, 'ガマン')
  text.gsub!(/喧騒/, 'ケンソー')
  text.gsub!(/絶賛/, 'ぜっさん')
  text.gsub!(/乞うご期待/, 'こうごきたい')

  # 代名詞
  text.gsub!(/それ/, 'そり')
  text.gsub!(/これ/, 'こり')

  # 一人称
  text.gsub!(/私|僕|俺/, 'めう')

  # 人名
  text.gsub!(/霜月凛|凛|りん/, 'りんりん先生')
  text.gsub!(/山形まり花|まり花|まりか/, 'まりり')
  text.gsub!(/和泉一舞|一舞|いぶ/, 'いぶぶ')
  text.gsub!(/春日咲子|咲子|さきこ/, 'さきき')
  text.gsub!(/芽兎めう/, 'めう')
  text.gsub!(/ひなた/, 'ひなひな')
  text.gsub!(/東雲心菜|心菜|ここな/, 'こここ')
  text.gsub!(/東雲夏陽|夏陽|なつひ/, 'なつつ')
  text.gsub!(/リリーゼ/, 'りりーぜ')
  text.gsub!(/モード/, 'もーど')

  text
end

def change_to_meu_with_natto(text)
  nm = Natto::MeCab.new # mecab用変数
  surface = [] # 分かち書き部分を格納
  feature = [] # 品詞情報を格納
  is_ignore = false

  # 形態素解析結果のデバック出力
  # puts nm.parse(text)

  nm.parse(text) do |n|
    break if n.feature.split(',')[0] == 'BOS/EOS'
    surface << n.surface
    feature << n.feature
  end

  # 動詞、助動詞の並びなら、動詞めうに変換
  for num in 1..surface.size - 1
    # 変換後に助動詞が続く場合は無視
    if is_ignore == true && feature[num].split(',')[0] == '助動詞'
      surface.delete_at[surface.size - 1]
      feature.delete_at[feature.size - 1]
      next
    else
      is_ignore = false
    end

    # 動詞、助動詞の並びの場合
    next unless feature[num - 1].split(',')[0] == '動詞' && feature[num].split(',')[0] == '助動詞'
    is_ignore = true

    # 過去形への対応
    if surface[num] == 'た' || surface[num] == 'ない'
      surface << 'め'
      surface << 'う'
      next
    end

    # 語句の書き換え
    surface[num - 1] = feature[num - 1].split(',')[6] # 動詞を基本形に
    surface[num] = 'め'
    surface.insert(num + 1, 'う')
  end

  # 最後がめうでない場合はめうを挿入
  tmp = surface[surface.size - 1]
  if tmp.split(',')[0] == '記号' || tmp == '!' || tmp == '!!'
    unless surface[surface.size - 3] == 'め' && surface[surface.size - 2] == 'う'
      surface[surface.size - 1] = 'め'
      surface << 'う'
      surface << tmp
    end
  elsif !surface[surface.size - 2] == 'め' && surface[surface.size - 1] == 'う'
    surface << 'め'
    surface << 'う'
  end

  # 生成語を文字列に変換
  str = ''
  surface.each do |n|
    str << n
  end
  str
end

def change_to_meu_with_natto(text)
  nm = Natto::MeCab.new # mecab用変数
  surface = [] # 分かち書き部分を格納
  feature = [] # 品詞情報を格納
  is_ignore = false

  # 形態素解析結果のデバック出力
  # puts nm.parse(text)

  nm.parse(text) do |n|
    break if n.feature.split(',')[0] == 'BOS/EOS'
    surface << n.surface
    feature << n.feature
  end

  # 動詞、助動詞の並びなら、動詞めうに変換
  for num in 1..surface.size - 1
    # 変換後に助動詞が続く場合は無視
    if is_ignore == true && feature[num].split(',')[0] == '助動詞'
      surface.delete_at[surface.size - 1]
      feature.delete_at[feature.size - 1]
      next
    else
      is_ignore = false
    end

    # 動詞、助動詞の並びの場合
    next unless feature[num - 1].split(',')[0] == '動詞' && feature[num].split(',')[0] == '助動詞'
    is_ignore = true

    # 過去形への対応
    if surface[num] == 'た'
      surface << 'め'
      surface << 'う'
      next
    end

    # 語句の書き換え
    surface[num - 1] = feature[num - 1].split(',')[6] # 動詞を基本形に
    surface[num] = 'め'
    surface.insert(num + 1, 'う')
  end

  # 最後がめうでない場合はめうを挿入
  if feature[feature.size - 1].split(',')[0] == '記号' || surface[surface.size - 1] == '!' || surface[surface.size - 1] == '!!'
    unless  surface[surface.size - 3] == 'め' && surface[surface.size - 2] == 'う'
      tmp = surface[surface.size - 1]
      surface[surface.size - 1] = 'め'
      surface << 'う'
      surface << tmp
    end
  elsif !(surface[surface.size - 2] == 'め' && surface[surface.size - 1] == 'う')
    surface << 'め'
    surface << 'う'
  end

  # 生成語を文字列に変換
  str = ''
  surface.each do |n|
    str << n
  end
  str
end
