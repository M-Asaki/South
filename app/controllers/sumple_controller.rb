class SumpleController < ApplicationController
  def index
    @before_picture = `photo2.jpg`
    @after_picture = OpenCVModel.gray_scalling(@before_picture)
  end
end
