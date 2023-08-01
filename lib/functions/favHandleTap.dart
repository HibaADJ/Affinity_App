
import '../data/user.data.dart';
  List<User> usersFav = [];
  List<User> listUsers = [];
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
    }
    print(usersFav.length);
    return user.isFav;
  }


