#Generate by Carlos Montalvo
class Student < ActiveRecord::Base

has_many :recordcards

attr_accessible :lname, :fname, :birthday, :address, :phone, :photo

  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ 'lname like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end

end
