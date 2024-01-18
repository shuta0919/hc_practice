class Pokemon


  def initialize(name, type1, type2, hp)
    @name = name
    @type1 = type1
    @type2 = type2
    @hp = hp
  end

  def name
    @name
  end

  def type1
    @type1
  end

  def type2
    @type2
  end

  def hp
    @hp
  end

  def attack
    puts "#{name}の攻撃"
  end

  def changname(name)
    if name == 'うんこ'
      puts '不適切な名前です'
    else
      @name = name
    end
  end
end
