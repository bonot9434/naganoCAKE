class Members::HomesController < ApplicationController

  def top
    @products = Product.limit(4).order("created_at DESC") #asc 昇順 desc 降順
  end

  def about
  end


end
