# =====  Once again, but with malice  =====
class W
  def zomg() '1' + wtf  end
  def wtf()  '2'        end
  def bbq()  '3'        end
end

class X < W
  def zomg() super      end
  def wtf()  '4' + bbq  end
  def bbq()  super      end
end

class Y < X
  def zomg() '6' + super  end
  def wtf()  '7' + super  end
  def bbq()  '8' + super  end
end

#*****
# W.new.zomg # =>
# X.new.zomg # =>
# Y.new.zomg # =>
