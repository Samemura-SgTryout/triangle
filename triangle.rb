class Triangle
  def self.shape_is(a, b, c)
  	if (a < (b+c))  && (b < (a+c)) && (c < (a+b))
	    if (a == b) && (b == c)
	    	shape = "正三角形ですね！"
	    elsif (a==b) || (b==c) || (a==c)
	    	shape = "二等辺三角形ですね！"
	    else
	    	shape = "不等辺三角形ですね！"
	    end
	else
    	shape = "三角形じゃないです＞＜"
	end 	

    shape
  end
end

puts Triangle.shape_is(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i)