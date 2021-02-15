require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
    assert_select "a[href=?]", random_path
  end

  test "random scp link" do
    get random_path
    assert_select "a:match('href',?)", /www.scpwiki.com\/scp-[\d]+/
  end
end