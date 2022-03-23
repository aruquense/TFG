class Calculate
  
  def self.test_reloj(a, b, c)
    a.to_f + b.to_f + c.to_f
  end
  def self.test_yesavage_4(a, b, c, d)
    a.to_i + b.to_i + c.to_i + d.to_i
  end
  def self.test_yesavage_30(s01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s30)
    s01+s02.to_i+s03.to_i+s04.to_i+s05.to_i+s06.to_i+s07.to_i+s08.to_i+s09.to_i+s10.to_i+s11.to_i+s12.to_i+s13.to_i+s14.to_i+s15.to_i+s16.to_i+s17.to_i+s18.to_i+s19.to_i+s20.to_i+s21.to_i+s22.to_i+s23.to_i+s24.to_i+s25.to_i+s26.to_i+s27.to_i+s28.to_i+s29.to_i+s30.to_i
  end
  def self.test_yesavage_15(s01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13,s14,s15)
    s01.to_i+s02.to_i+s03.to_i+s04.to_i+s05.to_i+s06.to_i+s07.to_i+s08.to_i+s09.to_i+s10.to_i+s11.to_i+s12.to_i+s13.to_i+s14.to_i+s15.to_i
  end
  def self.test_yesavage_10(s01,s02,s03,s04,s05,s06,s07,s08,s09,s10)
    s01.to_i+s02.to_i+s03.to_i+s04.to_i+s05.to_i+s06.to_i+s07.to_i+s08.to_i+s09.to_i+s10.to_i
  end
  def self.test_informador(s01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26)
    s01.to_i+s02.to_i+s03.to_i+s04.to_i+s05.to_i+s06.to_i+s07.to_i+s08.to_i+s09.to_i+s10.to_i+s11.to_i+s12.to_i+s13.to_i+s14.to_i+s15.to_i+s16.to_i+s17.to_i+s18.to_i+s19.to_i+s20.to_i+s21.to_i+s22.to_i+s23.to_i+s24.to_i+s25.to_i+s26.to_i
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