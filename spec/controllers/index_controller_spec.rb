require 'rails_helper'

describe IndexController, :type => :controller do
  render_views

  def expect_http_200 #Success
    expect(response.status).to eq(200)
  end

  it 'gets to no_w successfully' do
    get :no_w, format: :html
    expect_http_200
  end

  it 'gets to index successfully' do
    get :index, format: :html
    expect_http_200
  end

  it 'gets to index_2 successfully' do
    get :index_2, format: :html
    expect_http_200
  end

  it 'gets to index_3 successfully' do
    get :index_3, format: :html
    expect_http_200
  end

  it 'gets to index_4 successfully' do
    get :index_4, format: :html
    expect_http_200
  end

  it 'gets to index_5 successfully' do
    get :index_5, format: :html
    expect_http_200
  end

  it 'gets to index_6 successfully' do
    get :index_6, format: :html
    expect_http_200
  end

  it 'gets to index_7 successfully' do
    get :index_7, format: :html
    expect_http_200
  end

  it 'gets to afighters successfully' do
    get :afighters, format: :html
    expect_http_200
  end
end
