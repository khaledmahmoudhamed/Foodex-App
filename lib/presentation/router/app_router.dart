import 'package:flutter/material.dart';
import 'package:my_app/constant/screens.dart' as screens;
import 'package:my_app/presentation/screen/screens/2/chat_folder/messages.dart';
import 'package:my_app/presentation/screen/screens/2/explor_menu.dart';
import 'package:my_app/presentation/screen/screens/2/explore_menu_with_filter.dart';
import 'package:my_app/presentation/screen/screens/2/rate_resturant.dart';
import 'package:my_app/presentation/screen/screens/2/voucher_promo_screen.dart';
import 'package:my_app/presentation/screen/screens/3/detail_product_screen.dart';
import 'package:my_app/presentation/screen/screens/3/edit_location.dart';
import 'package:my_app/presentation/screen/screens/3/your_order_screen.dart';
import '../screen/screens/1/boarding_screen.dart';
import '../screen/screens/1/forget_password_screen.dart';
import '../screen/screens/1/location_screen1.10.dart';
import '../screen/screens/1/log_in_screen.dart';
import '../screen/screens/1/payment_method.dart';
import '../screen/screens/1/profile_screen.dart';
import '../screen/screens/1/reset_password.dart';
import '../screen/screens/1/sign_up_process.dart';
import '../screen/screens/1/sign_up_screen.dart';
import '../screen/screens/1/signup success1.11.dart';
import '../screen/screens/1/success_notification.dart';
import '../screen/screens/1/upload_photo.dart';
import '../screen/screens/1/verefication_screen.dart';
import '../screen/screens/2/Explore_resturant.dart';
import '../screen/screens/2/chat_folder/chat_detailss.dart';
import '../screen/screens/2/explore_restaurant_filter.dart';
import '../screen/screens/2/filter_screen.dart';
import '../screen/screens/2/finish_order.dart';
import '../screen/screens/2/my_home_page.dart';
import '../screen/screens/2/notification.dart';
import '../screen/screens/2/rate_food_screen.dart';
import '../screen/screens/2/video_app_screen.dart';
import '../screen/screens/3/edit_payments.dart';
import '../screen/screens/3/google_map_screen.dart';
import '../screen/screens/3/menu_details_screen.dart';
import '../screen/screens/3/order_details.dart';
import '../screen/screens/3/payments_screen.dart';
import '../screen/screens/3/profile_screen.dart';

class AppRouter{
  late  Widget startWidget;
  Route?onGenerateRoute(RouteSettings settings){
    startWidget=const OnBoardingScreen();
    switch(settings.name){
      case'/':
        return MaterialPageRoute(builder: (_)=>startWidget );
      case screens.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case screens.signupProcess:
        return MaterialPageRoute(builder: (_)=> const SignupProcess());
        case screens.login:
        return MaterialPageRoute(builder: (_)=> const LoginScreen());
      case screens.payment:
        return MaterialPageRoute(builder: (_) => const PaymentMethod());
      case screens.upload:
        return MaterialPageRoute(builder: (_)=>const UploadPhoto());
      case screens.profile:
        return MaterialPageRoute(builder: (_)=> const ProfileScreen());
      case screens.location:
        return MaterialPageRoute(builder: (_)=> const LocationScreen());
      case screens.accepted:
        return MaterialPageRoute(builder: (_) => const SignupSuccessScreen());
      case screens.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      case screens.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPassword());
      case screens.verification:
        return MaterialPageRoute(builder: (_) => const VerificationScreen());
      case screens.success:
        return MaterialPageRoute(builder: (_) => const SuccessNotification());
      case screens.restaurant:
        return MaterialPageRoute(builder: (_) => const ExploreRestaurant());
      case screens.home:
        return MaterialPageRoute(builder: (_) =>   const MyHomePage());
      case screens.messages:
        return MaterialPageRoute(builder: (_) => const Messages());
      case screens.chatDetails:
        return MaterialPageRoute(builder: (_) => const ChatDetails());
      case screens.exploreRestaurant:
        return MaterialPageRoute(builder: (_) => const ExploreRestaurant());
      case screens.filter:
        return MaterialPageRoute(builder: (_) => const FilterScreen());
      case screens.exploreMenu:
        return MaterialPageRoute(builder: (_) => const ExploreMenu());
      case screens.exploreRestaurantWithFilter:
        return MaterialPageRoute(builder: (_) => const ExploreRestaurantWithFilter());
      case screens.exploreMenuWithFilter:
        return MaterialPageRoute(builder: (_) => const ExploreMenuWithFilter());
      case screens.mapLocation:
        return MaterialPageRoute(builder: (_) => const GoogleMapScreen());
      case screens.orderDetails:
        return MaterialPageRoute(builder: (_) => const OrderDetailsScreen());
      case screens.confirmOrder:
        return MaterialPageRoute(builder: (_) => const PaymentsScreen());
      case screens.editPayment:
        return MaterialPageRoute(builder: (_) => const EditPaymentsScreen());
      case screens.editLocation:
        return MaterialPageRoute(builder: (_) => const EditLocationScreen());
      case screens.myOrder:
      return MaterialPageRoute(builder: (_) => const MyOrderScreen());
      case screens.callRinging:
        return MaterialPageRoute(builder: (_) => const MyVideoApp());
      case screens.finishOrder:
        return MaterialPageRoute(builder: (_) => const FinishOrder());
      case screens.rateFood:
        return MaterialPageRoute(builder: (_) => const RateFoodScreen());
      case screens.rateRestaurant:
        return MaterialPageRoute(builder: (_) => const RateRestaurant());
      case screens.voucherPromo:
        return MaterialPageRoute(builder: (_) => const VoucherPromoScreen());
      case screens.notification:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case screens.profileTwo:
        return MaterialPageRoute(builder: (_) => const ProfileDetailsScreen());
      case screens.productDetailsTwo:
        return MaterialPageRoute(builder: (_) => const DetailProductScreen());
      case screens.menuDetails:
        return MaterialPageRoute(builder: (_) => const MenuDetailScreen());




    }
    return null;
  }

  }