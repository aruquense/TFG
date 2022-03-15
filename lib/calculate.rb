class Calculate
  
  def self.test_reloj(a, b, c)
    a.to_f + b.to_f + c.to_f
  end
  def self.test_yessavage_4(a, b, c, d)
    a.to_i + b.to_i + c.to_i + d.to_i
  end
  def self.test_yessavage_30(s01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30)
    s01+s02+s03+s04+s05+s06+s07+s08+s09+s10+s11+s12+s13+s14+s15+s16+s17+s18+s19+s20+s21+s22+s23+s24+s25+s26+s27+s28+s29+s30
  end
  def self.test_yessavage_15(s01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13,s14,s15)
    s01+s02+s03+s04+s05+s06+s07+s08+s09+s10+s11+s12+s13+s14+s15
  end
  def self.test_yessavage_10(s01,s02,s03,s04,s05,s06,s07,s08,s09,s10)
    s01+s02+s03+s04+s05+s06+s07+s08+s09+s10
  end
  def self.test_yessavage_30(a, b, c, d)
    a.to_i + b.to_i + c.to_i + d.to_i
  end
  def self.sum(a, b)
    a.to_i + b.to_i
  end

  def self.subtr(a, b)
    a.to_i - b.to_i
  end

  def self.multiply(a, b)
    a.to_i * b.to_i
  end

  def self.divide(a, b)
  	a.to_i / b.to_i
  end


end