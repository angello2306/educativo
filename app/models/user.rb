#Generate by Carlos Montalvo
class User < ActiveRecord::Base

  has_many :parents

  has_many :teachers

  attr_accessor :password

  attr_accessible :username, :password, :password_confirmation, :type_user

  before_save :encrypt_password
  
  before_create :create_remember_token
    
  validates_presence_of :username

  validates_length_of :username, :minimum => 3, :maximum => 20

  validates_format_of :username, :with => /\A[\S]+\Z/

  validates_uniqueness_of    :username
 
  validates :password,
  :confirmation => true

  def encrypt_password
    if password.present?
      self.password_halt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_halt)
    end
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
  def self.authenticate(username, password)
     user = where(username: username).first

     if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_halt)

       user
     else

       nil
     end
   end
 
  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ 'username like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end
 
 private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end

end