#Generate by Carlos Montalvo
class Parent < ActiveRecord::Base

belongs_to :user

belongs_to :student

attr_accessible :student_id, :lname, :fname, :dni, :user_id

  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ 'student_id like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end

end
