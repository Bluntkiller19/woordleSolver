import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_quize/core/models/challenge_data.dart';
import 'package:trivia_quize/core/models/lobby_id.dart';
import 'package:trivia_quize/core/models/multiplayer_result_model.dart';
import 'package:trivia_quize/core/models/results_model.dart';
import 'package:trivia_quize/core/models/single_player_data.dart';
import 'package:trivia_quize/src/views/challenge_home.dart';
import 'package:trivia_quize/src/views/challenge_play_screen.dart';
import 'package:trivia_quize/src/views/challenge_results.dart';
import 'package:trivia_quize/src/views/challenge_settings.dart';
import 'package:trivia_quize/src/views/challenge_veiw_result.dart';
import 'package:trivia_quize/src/views/choose_friend.dart';
import 'package:trivia_quize/src/views/find_friends.dart';
import 'package:trivia_quize/src/views/friend_requests.dart';
import 'package:trivia_quize/src/views/friends_home_page.dart';
import 'package:trivia_quize/src/views/join_lobby.dart';
import 'package:trivia_quize/src/views/lobby.dart';
import 'package:trivia_quize/src/views/login_page.dart';
import 'package:trivia_quize/src/views/forgot_password.dart';
import 'package:trivia_quize/src/views/home_view.dart';
import 'package:trivia_quize/src/views/multiplayer%20settings.dart';
import 'package:trivia_quize/src/views/multiplayer_options.dart';
import 'package:trivia_quize/src/views/multiplayer_play_screen.dart';
import 'package:trivia_quize/src/views/multiplayer_result.dart';
import 'package:trivia_quize/src/views/my_friends.dart';
import 'package:trivia_quize/src/views/questions_view.dart';
import 'package:trivia_quize/src/views/recieved_challenges.dart';
import 'package:trivia_quize/src/views/results_view.dart';
import 'package:trivia_quize/src/views/sign_up.dart';
import 'package:trivia_quize/src/views/single_player_data.dart';
import 'package:trivia_quize/src/views/splash_screen.dart';
import 'package:trivia_quize/src/views/verification.dart';


class Routes {
  static const String splash = '/';
  static const String verification = 'verify';
  static const String home = '/home';
  static const String questionView = '/questions';
  static const String resultsView = '/results';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgotPassword = '/reset';
  static const String singlePlayerSettings = '/singlePlayerSettings';
  static const String multiPlayerHome = '/multiPlayerHome';
  static const String multiPlayerHost = '/multiPlayerHost';
  static const String lobby = '/lobby';
  static const String joinLobby = '/joinLobby';
  static const String multiPlayerPlayScreen = '/multiPlayerPlayScreen';
  static const String multiPlayerResult = '/multiPlayerResult';
  static const String friendsHome = '/friendsHome';
  static const String myFriends = '/myFriends';
  static const String findFriends = '/findFriends';
  static const String friendRequests = '/friendRequests';
  static const String challengeHome = '/challengeHome';
  static const String chooseFriend = '/chooseFriend';
  static const String challengeSettings = '/challengeSettings';
  static const String challengePlayScreen = '/challengePlayScreen';
  static const String receivedChallenges = '/receivedChallenges';
  static const String challengeResult = '/challengeResult';
  static const String singleChallengeResult = '/singleChallengeResult';

  static Map<String, Widget Function(Object? params)> map = {
    splash: (Object? params) => const SplashScreen(),
    verification: (Object? params) => Verification(),
    login: (Object? params) => Login(),
    signup: (Object? params) => SignUp(),
    home: (Object? params) => const HomeView(),
    questionView: (Object? params) => QuestionView(singlePlayerData: params as SinglePlayerData),
    resultsView: (Object? params) => ResultView(results: params as Results),
    forgotPassword: (Object? params) => Reset(),
    singlePlayerSettings: (Object? params) => const SinglePlayerSettings(),
    multiPlayerHome: (Object? params) => const MultiplayerHome(),
    multiPlayerHost: (Object? params) => const MultiPlayerHost(),
    lobby: (Object? params) => Lobby(lobbyId: params as LobbyId),
    joinLobby: (Object? params) => JoinLobby(),
    multiPlayerPlayScreen: (Object? params) => MultiPayerPlayScreen(lobbyId: params as LobbyId),
    multiPlayerResult: (Object? params) => MultiPlayerResult(multiPlayerResult: params as MultiPlayerResultModel),
    friendsHome: (Object? params) => const FriendsHome(),
    myFriends: (Object? params) => const MyFriends(),
    findFriends: (Object? params) => const FindFriends(),
    friendRequests: (Object? params) => const FriendRequests(),
    challengeHome: (Object? params) => const ChallengeHome(),
    chooseFriend: (Object? params) => const ChooseFriend(),
    challengeSettings: (Object? params) => ChallengeSettings(challengeData: params as ChallengeData),
    challengePlayScreen: (Object? params) => ChallengePlayScreen(lobbyId: params as LobbyId),
    receivedChallenges: (Object? params) => const ReceivedChallenges(),
    challengeResult: (Object? params) => const ChallengeResult(),
    singleChallengeResult: (Object? params) => ChallengeViewResult(lobbyId: params as LobbyId),
  };
}