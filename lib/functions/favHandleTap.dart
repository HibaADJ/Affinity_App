
import '../data/user.data.dart';
  List<User> usersFav = [];
  bool handleFavTap(User user){
    if(user.isFav){
      user.isFav=false;
      if(usersFav.contains(user)){
        usersFav.remove(user);
      }
    }
    else{
      user.isFav=true;
     if(!usersFav.contains(user)){
       usersFav.add(user);
     }
    };
    return user.isFav;
  }


