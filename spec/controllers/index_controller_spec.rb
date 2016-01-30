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

  it 'gets to index_3 successfully' do
    get :index_3, format: :html
    expect_http_200
  end

  it 'gets to index_4 successfully' do
    get :index_4, format: :html
    expect_http_200
  end

  it 'gets to index_8 successfully' do
    get :index_8, format: :html
    expect_http_200
  end

  it 'gets to index_9 successfully' do
    get :index_9, format: :html
    expect_http_200
  end

  it 'gets to index_11 successfully' do
    get :index_11, format: :html
    expect_http_200
  end

  it 'gets to index_12 successfully' do
    get :index_12, format: :html
    expect_http_200
  end

  it 'gets to afighters successfully' do
    get :afighters, format: :html
    expect_http_200
  end
end
