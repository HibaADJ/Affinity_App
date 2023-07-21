
import '../data/user.data.dart';

  bool handleFavTap(User user){
    if(user.isFav){
      user.isFav=false;
    }
    else{
      user.isFav=true;
    };
    return user.isFav;
  }


