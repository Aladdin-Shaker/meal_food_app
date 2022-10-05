import 'package:flutter/material.dart';
import 'package:meal_food_app/screens/auth/login/login_screen.dart';
import 'package:meal_food_app/screens/auth/otp/otp_screen.dart';
import 'package:meal_food_app/screens/auth/resetPassword/reset_password_screen.dart';
import 'package:meal_food_app/screens/auth/signup/signup_screen.dart';
import 'package:meal_food_app/screens/gettingStart/getting_start_screen.dart';
import 'package:meal_food_app/screens/home/home_screen.dart';
import 'package:meal_food_app/screens/menu/menu_item_screen.dart';
import 'package:meal_food_app/screens/more/aboutUs/aboutus_screen.dart';
import 'package:meal_food_app/screens/more/address/address_screen.dart';
import 'package:meal_food_app/screens/more/checkout/checkout_screen.dart';
import 'package:meal_food_app/screens/more/inbox/inbox_screen.dart';
import 'package:meal_food_app/screens/more/more_screen.dart';
import 'package:meal_food_app/screens/more/myOrders/my_orders_screen.dart';
import 'package:meal_food_app/screens/more/notifications/notifications_screen.dart';
import 'package:meal_food_app/screens/more/paymentDetails/payment_details_screen.dart';
import 'package:meal_food_app/screens/offers/offers_screen.dart';
import 'package:meal_food_app/screens/onBoarding/onboarding_screen.dart';
import 'package:meal_food_app/screens/profile/profile_screen.dart';
import 'package:meal_food_app/screens/splash/splash_screen.dart';
import 'package:meal_food_app/screens/undefined/undefined_screen.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String onBoardingRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String signupRoute = "/signup";
  static const String gettingStartRoute = "/gettingStart";
  static const String resetPasswordRoute = "/resetPassword";
  static const String otpRoute = "/otp";
  static const String newPasswordRoute = "/newPassword";
  static const String homeRoute = "/home";
  static const String menuRoute = "/menu";
  static const String offersRoute = "/offers";
  static const String menuItemRoute = "/menuItem";
  static const String resturentsRoute = "/resturents";
  static const String profileRoute = "/profile";
  static const String moreRoute = "/more";
  static const String paymentDetailsRoute = "/paymentDetails";
  static const String myOrdersRoute = "/myOrders";
  static const String notificationsRoute = "/notifications";
  static const String inboxRoute = "/inbox";
  static const String aboutRoute = "/about";
  static const String checkoutRoute = "/checkout";
  static const String changeAddressRoute = "/changeAddress";

  static const String undefinedRoute = "/undefined";
}

class RouteGenerate {
  static Route<dynamic> getRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case Routes.gettingStartRoute:
        return MaterialPageRoute(builder: (_) => const GettingStartScreen());
      case Routes.otpRoute:
        return MaterialPageRoute(builder: (_) => const OTPScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.offersRoute:
        return MaterialPageRoute(builder: (_) => const OffersScreen());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.moreRoute:
        return MaterialPageRoute(builder: (_) => const MoreScreen());
      case Routes.menuItemRoute:
        return MaterialPageRoute(
            builder: (_) => const MenuItemScreen(menuTitle: ''));

      case Routes.paymentDetailsRoute:
        return MaterialPageRoute(builder: (_) => const PaymentDetailsScreen());

      case Routes.myOrdersRoute:
        return MaterialPageRoute(builder: (_) => MyOrdersScreen());

      case Routes.notificationsRoute:
        return MaterialPageRoute(builder: (_) => NotificationsScreen());

      case Routes.inboxRoute:
        return MaterialPageRoute(builder: (_) => InboxScreen());

      case Routes.aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutusScreen());

      case Routes.checkoutRoute:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());

      case Routes.changeAddressRoute:
        return MaterialPageRoute(builder: (_) => const ChangeAddressScreen());

      default:
        return MaterialPageRoute(builder: (_) => const UndefinedScreen());
    }
  }
}
