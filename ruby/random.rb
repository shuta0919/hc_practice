# frozen_string_literal: true

# ABCDEFの6人のグループがある
members = %w[A B C D E F]

# 2人か3人のグループをつくる
group1 = members.sample(rand(2..3)).sort

# 残りのメンバーを取り出す
group2 = members - group1

p group1
p group2
