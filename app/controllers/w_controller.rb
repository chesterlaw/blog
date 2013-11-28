class WController < ApplicationController
  def index
    @chinese_title = ['羅', '彦', '章', '之', '網', '站', '。']

    render :layout => 'w'
  end

  def afighters
    @chinese_title = ['甲', '級', '爭', '取', '者', '。']

    render :layout => 'w'
  end
end
