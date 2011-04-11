require 'matrix'

class Matrix
  def star_vectors
    self.row_vectors + self.column_vectors + self.diagonal_vectors
  end
end
