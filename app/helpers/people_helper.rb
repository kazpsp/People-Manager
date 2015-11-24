module PeopleHelper
  
  # Public: Shows profile pic
  #
  # person - person object
  #
  # Returns person's profile pic, if none is set, returns default profile pic 
  def profile_pic(person)
    if person.picture_url && !person.picture_url.empty?
      image_tag person.picture_url, class: "img-responsive"
    else
      image_tag "nopic.jpg", class: "img-responsive"
    end
  end
  
end
