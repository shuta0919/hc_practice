# frozen_string_literal: true

x = gets.chomp.split(',').map(&:to_i)
y = gets.chomp.split(',').map(&:to_i)

results = x.zip(y).map do |par, score|
  diff = score - par

  scores = {
    -4 => 'コンドル',
    -3 => 'アルバトロス',
    -2 => 'イーグル',
    -1 => 'バーディ',
    0 => 'パー',
    1 => 'ボギー'
  }

  if score == 1 && [4, 3].include?(par)
    'ホールイワン'
  elsif diff > 1
    "#{diff}ボギー"
  else
    scores[diff]
  end
end

puts results.join(',')
