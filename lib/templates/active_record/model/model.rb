<% module_namespacing do -%>
#Generate by Carlos Montalvo
class <%= class_name %> < <%= parent_class_name.classify %>
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>

attr_accessible <%= attributes_names.map { |name| ":#{name}" }.join(', ') %>

  # Use for function search
  def self.search(search, per_page, page)
  if search
    paginate :per_page => per_page, :page => page,
             :conditions => [ '<%= attributes_names.first %> like ?', "%#{search[:q]}%"], :order => 'id DESC'
  else
    paginate :per_page => per_page, :page => page, :order => 'id DESC'
  end
 end

end
<% end -%>