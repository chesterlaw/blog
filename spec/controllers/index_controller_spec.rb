require 'rails_helper'

describe IndexController, :type => :controller do
  render_views

  def expect_http_200 # Success
    expect(response.status).to eq(200)
  end

  def expect_http_302 # Redirect
    expect(response.status).to eq(302)
  end

  it 'gets to no_w successfully' do
    get :no_w, format: :html
    expect_http_302
    expect(response).to redirect_to(index_url)
  end

  it 'gets to index successfully' do
    get :index, format: :html
    expect_http_200
  end

  it 'gets to index_2 successfully' do
    get :index_2, format: :html
    expect_http_200
  end

  it 'gets to afighters successfully' do
    get :afighters, format: :html
    expect_http_200
  end
end
