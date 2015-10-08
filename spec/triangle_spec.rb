require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  subject {Triangle}
  before do
    @seisankaku = "正三角形ですね！"
    @nitouhen = "二等辺三角形ですね！"
    @hutouhen = "不等辺三角形ですね！"
    @not_sankaku = "三角形じゃないです＞＜"
  end
  describe "#shape_is" do
    test_item = [\
      [1, 1, 1, "@seisankaku"],\
      [100, 100, 100, "@seisankaku"],\
      [2, 1, 3, "@not_sankaku"],\
      [2, 2, 3, "@nitouhen"],\
      [2, 3, 3, "@nitouhen"],\
      [2, 4, 3, "@hutouhen"],\
      [2, 5, 3, "@not_sankaku"],\
      [2, 100, 3, "@not_sankaku"]\
    ]
      test_item.each do |i|
        it { expect(subject.shape_is(i[0], i[1], i[2])).to eq eval(i[3]) }
        it { expect(subject.shape_is(i[0], i[2], i[1])).to eq eval(i[3]) }
        it { expect(subject.shape_is(i[1], i[0], i[2])).to eq eval(i[3]) }
        it { expect(subject.shape_is(i[1], i[2], i[0])).to eq eval(i[3]) }
        it { expect(subject.shape_is(i[2], i[0], i[1])).to eq eval(i[3]) }
        it { expect(subject.shape_is(i[2], i[1], i[0])).to eq eval(i[3]) }
      end
    
  end

end