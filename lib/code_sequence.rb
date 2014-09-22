class CodeSequence
  def build
    sequence
  end

private
  def sequence
    @sequence ||= (1..4).map { colors.shuffle.first }
  end

  def colors
    %w[r g b y]
  end
end
