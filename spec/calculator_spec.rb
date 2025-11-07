require './calculator'

describe Calculator do
  describe '#add' do
    before do
      @calculator = Calculator.new
    end

    it 'should return 0 when empty string is passed' do
      expect(@calculator.add('')).to eq(0)
    end

    it 'should add 2 numbers correctly' do
      expect(@calculator.add('1,2')).to eq(3)
    end

    it 'should add 3 numbers correctly' do
      expect(@calculator.add('1,2,3')).to eq(6)
    end

    context 'when new line is passed as delimiter' do
      it 'should add 2 numbers correctly' do
        expect(@calculator.add("1\n2")).to eq(3)
      end
    end

    context 'when custom delimiter is passed' do
      it 'should add numbers correctly' do
        expect(@calculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when custom delimiter is * passed' do
      it 'should multiply numbers correctly' do
        expect(@calculator.add("//*\n1*2")).to eq(2)
      end
    end

    context 'when negative numbers are passed' do
      it 'should raise an exception' do
        expect { @calculator.add('-1,2') }.to raise_error("negative numbers not allowed -1")
      end
    end
  end
end
