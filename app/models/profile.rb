class Profile < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :firstname, :lastname, :prescription_num, :phonenum, :address1, :city, :zipcode, :prescription_card, :idcard
  ######################################################
  # Paperclip Image Attachment
  
  has_attached_file :prescription_card,
    styles: { normal: "200x200#", bigger: "700x700#" },
    default_style: :normal,
    preserve_files: true

  validates_attachment_content_type :prescription_card, content_type: /^image\/(jpeg|png|gif|tiff|jpg)$/
  
  has_attached_file :idcard,
    styles: { normal: "200x200#", bigger: "700x700#" },
    default_style: :normal,
    preserve_files: true

  validates_attachment_content_type :idcard, content_type: /^image\/(jpeg|png|gif|tiff|jpg)$/
  
end
