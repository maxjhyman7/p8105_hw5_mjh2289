birthday = function(n_room) {
  
  birthday = sample(1:365, size = n_room, replace = TRUE)
  
  shared_birthday = length(unique(birthday)) < n_room
  
  return(shared_birthday)
  
}
