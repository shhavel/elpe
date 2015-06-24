# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Article
  include Rhom::PropertyBag

  # Uncomment the following line to enable sync with Article.
  # enable :sync

  #add model specific code here

  set :freezed, true

  property :sign, :integer
  property :category_sign, :integer
  property :name, :string

  def category
    Category.find(:all, :conditions => {'sign' => self.category_sign}).first
  end

  def text
    File.read(File.join(File.expand_path(File.dirname(__FILE__)), "ru/#{self.sign}.htm"))
  end
end
