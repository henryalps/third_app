require 'spec_helper'

describe "Static pages" do

  #告诉 RSpec，page 就是要测试的对象（subject）
  subject { page }
  #let(:title_str){"Ruby on Rails Tutorial Sample App | "}
  describe "Home page" do

    #使用before块消除访问地址的重复
    #before 方法还可以使用别名 before(:each) 调用
    before { visit root_path }
    it { should have_content('Third App') }
    it { should have_title(full_title('')) }
    it { should_not have_title(full_title('Home')) }
  end

   describe "Help page" do

    before { visit help_path}
    it {should have_content('Help')}
    it {should have_title(full_title('Help'))}
  end

    describe "About page" do

    before { visit about_path }
    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

    describe "Contact page" do

    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }  
  end

end