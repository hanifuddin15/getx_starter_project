import 'package:get/get.dart';
import 'package:probashi_app/app/modules/auth/login/bindings/login_binding.dart';
import 'package:probashi_app/app/modules/auth/login/views/login_view.dart';
import 'package:probashi_app/app/modules/auth/signup/bindings/signup_binding.dart';
import 'package:probashi_app/app/modules/auth/signup/views/birthday_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/country_selection_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/email_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/gender_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/mobile_number_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/name_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/number_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/occupation_selection_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/password_view.dart';
import 'package:probashi_app/app/modules/auth/signup/views/signup_view.dart';
import 'package:probashi_app/app/modules/auth/splash/bindings/splash_binding.dart';
import 'package:probashi_app/app/modules/auth/splash/views/splash_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;
  static const LOGIN = Routes.LOGIN;

  static final routes = [
  

    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.NAME,
      page: () => const NameView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.COUNTRY_SELECTION,
      page: () => const CountrySelectionView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.OCCUPATION_SELECTION,
      page: () => const OccupationSelectionView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.BIRTHDAY,
      page: () => const BirthdayView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.GENDER,
      page: () => const GenderView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.EMAIL,
      page: () => const EmailView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.NUMBER,
      page: () => const NumberView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.MOBILE_NUMBER,
      page: () => const MobileNumberView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD,
      page: () => const PasswordView(),
      binding: SignupBinding(),
    ),

    // GetPage(
    //   name: _Paths.VIDEO,
    //   page: () => const VideoView(),
    //   binding: VideoBinding(),
    // ),
    // GetPage(
    //   name: _Paths.FRIEND,
    //   page: () => const FriendView(),
    //   binding: FriendBinding(),
    // ),
    // GetPage(
    //   name: _Paths.NOTIFICATION,
    //   page: () => const NotificationView(),
    //   binding: NotificationBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CART,
    //   page: () => const CartView(),
    //   binding: CartBinding(),
    // ),
    // GetPage(
    //   name: _Paths.MARKETPLACE,
    //   page: () => const MarketplaceView(),
    //   binding: MarketplaceBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PROFILE,
    //   page: () => const ProfileView(),
    //   binding: ProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.TAB,
    //   page: () => const TabView(),
    //   binding: TabViewBindings(),
    // ),
    // GetPage(
    //   name: _Paths.USER_MENU,
    //   page: () => const UserMenuView(),
    //   binding: UserMenuBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREAT_POST,
    //   page: () => const CreatePostView(),
    //   binding: CreatePostBindings(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_GROUP_POST,
    //   page: () => const CreateGroupPostView(),
    //   binding: CreateGroupPostBindings(),
    // ),
    // GetPage(
    //   name: _Paths.TAG_PEOPLE,
    //   page: () => const TagPeople(),
    //   binding: CreatePostBindings(),
    // ),
    // GetPage(
    //   name: _Paths.FEELINGS,
    //   page: () => const Feelings(),
    //   binding: CreatePostBindings(),
    // ),
    // GetPage(
    //   name: _Paths.CHECKIN,
    //   page: () => const CheckIn(),
    //   binding: CreatePostBindings(),
    // ),
    // GetPage(
    //   name: _Paths.GIF,
    //   page: () => const GifPage(),
    //   binding: CreatePostBindings(),
    // ),
    // GetPage(
    //   name: _Paths.EVENT,
    //   page: () => const EventPage(),
    //   binding: CreatePostBindings(),
    // ),
    // GetPage(
    //   name: _Paths.REACTIONS,
    //   page: () => const ReactionsView(),
    //   binding: ReactionsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_STORY,
    //   page: () => const CreateStoryView(),
    //   binding: CreateStoryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.OTHERS_PROFILE,
    //   page: () => const OtherProfileView(),
    //   binding: OtherProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_TEXT_STORY,
    //   page: () => const CreateTextStoryView(),
    //   binding: CreateTextStoryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_IMAGE_STORY,
    //   page: () => const CreateImageStoryView(),
    //   binding: CreateImageStoryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ABOUT,
    //   page: () => const AboutView(),
    //   binding: AboutBinding(),
    // ),
    // GetPage(
    //   name: _Paths.OTHER_PROFILA_DETAIL,
    //   page: () => const OtherProfileDetailView(),
    //   binding: OtherProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_POST,
    //   page: () => EditPostView(),
    //   binding: EditPostBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PROFILE_FRIEND_LIST,
    //   page: () => const FriendList(),
    //   binding: ProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.DETAIL_POST,
    //   page: () => const DetailPostView(),
    //   binding: DetailPostBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_POST_COMMENT,
    //   page: () => const EditPostCommentView(),
    //   binding: EditPostCommentBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_REPLY_POST_COMMENT,
    //   page: () => const EditReplyPostCommentView(),
    //   binding: EditReplyPostCommentBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_REELS_COMMENT,
    //   page: () => const EditReelsCommentView(),
    //   binding: EditReelsCommentBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_REELS_REPLY_COMMENT,
    //   page: () => const EditReelsReplyCommentView(),
    //   binding: EditReelsReplyCommentBinding(),
    // ),
    // GetPage(
    //   name: _Paths.STORY_REACTION,
    //   page: () => StoryReactionView(),
    //   binding: StoryReactionBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_GENDER,
    //   page: () => const EditGenderView(),
    //   binding: EditGenderBinding(),
    // ),
    // GetPage(
    //   name: _Paths.NOTIFICATION_POST,
    //   page: () => NotificationPost(),
    //   binding: NotificationBindings(),
    // ),
    // GetPage(
    //   name: _Paths.MY_PROFILE_FRIENDS,
    //   page: () => const MyProfileFriendsView(),
    //   binding: MyProfileFriendsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.COMMENT_REACTIONS,
    //   page: () => const CommentReactionsView(),
    //   binding: CommentReactionsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.COMMENT_REPLAY_REACTIONS,
    //   page: () => const CommentReplayReactionsView(),
    //   binding: CommentReplayReactionsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ADD_WORK_PLACE,
    //   page: () => const AddWorkPlaceView(),
    //   binding: AddWorkPlaceBinding(),
    // ),
    // // GetPage(
    // //   name: _Paths.EDIT_WORK_PLACE,
    // //   page: () => const EditWorkPlaceView(),
    // //   binding: AddWorkPlaceBinding(),
    // // ),
    // GetPage(
    //   name: _Paths.ADD_EDUCATION,
    //   page: () => const AddEducationView(),
    //   binding: AddEducationBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ADD_CONTACT,
    //   page: () => const AddContactView(),
    //   binding: AddContactBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ADD_WEBSITE,
    //   page: () => const AddWebsiteView(),
    //   binding: AddWebsiteBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ADD_BIO,
    //   page: () => const AddYourBioView(),
    //   binding: AddYourBioBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ADD_ABOUTYOURSELF,
    //   page: () => const AddAboutYourselfView(),
    //   binding: AddAboutYourselfBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_PLACESLIVED,
    //   page: () => const EditPlacesLivedView(),
    //   binding: EditPlacesLivedBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ADD_LANGUAGE,
    //   page: () => const AddLanguageView(),
    //   binding: AddLanguageBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_NICKNAME,
    //   page: () => const EditNickNameView(),
    //   binding: EditNickNameBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_RELATIONSHIP,
    //   page: () => const EditRelationshipView(),
    //   binding: EditRelationshipBinding(),
    // ),
    // // GetPage(
    // //   name: _Paths.EDIT_BDAY,
    // //   page: () => const AddLanguageView(),
    // //   binding: AddLanguageBinding(),
    // // ),
    // GetPage(
    //   name: _Paths.EDIT_BIRTH_DATE,
    //   page: () => const EditBirthDateView(),
    //   binding: EditBirthDateBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PAGES,
    //   page: () => const PagesView(),
    //   binding: PagesBinding(),
    // ),
    // GetPage(
    //   name: _Paths.BOOKMARKS,
    //   page: () => const BookmarksView(),
    //   binding: BookmarksBinding(),
    // ),
    // GetPage(
    //   name: _Paths.OTHER_FRIEND_LIST,
    //   page: () => const OtherProfileFriendsView(),
    //   binding: OtherProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PHOTOS_GALLERY,
    //   page: () => const PhotosGalleryView(),
    //   binding: PhotosGalleryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ALBUMS_GALLERY,
    //   page: () => const AlbumsGalleryView(),
    //   binding: AlbumsGalleryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.VIDEOS_GALLERY,
    //   page: () => const VideosGalleryView(),
    //   binding: VideosGalleryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.GROUP_PHOTOS_GALLERY,
    //   page: () => const GroupPhotosGalleryView(),
    //   binding: GroupPhotosGalleryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.GROUP_ALBUMS_GALLERY,
    //   page: () => const GroupAlbumsGalleryView(),
    //   binding: GroupAlbumsGalleryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.GROUP_VIDEOS_GALLERY,
    //   page: () => const GroupVideosGalleryView(),
    //   binding: GroupVideosGalleryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.EDIT_HISTORY,
    //   page: () => const PostHistoryView(),
    //   binding: PostHistoryBindings(),
    // ),
    // GetPage(
    //   name: _Paths.PROFILE_IMAGE_SILDER,
    //   page: () => const ProfileImageSilderView(),
    //   binding: ProfileImageSilderBinding(),
    // ),
    // GetPage(
    //   name: _Paths.OTHER_ALBUMS_GALLERY,
    //   page: () => const OtherAlbumGalleryView(),
    //   binding: OthersAlbumGalleryBinding(),
    // ),
    // GetPage(
    //   name: _Paths.OTHER_PHOTOS_GALLERY,
    //   page: () => const OtherPhotosGalleryView(),
    //   binding: OtherPhotosGalleryBindings(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_REELS,
    //   page: () => const CreateReelsView(),
    //   binding: CreateReelsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.REELS_REACTIONS,
    //   page: () => const ReelsReactionsView(),
    //   binding: ReelsReactionsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.REELS_COMMENT_REACTIONS,
    //   page: () => const ReelsCommentReactionsView(),
    //   binding: ReelsCommentReactionsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.REELS_COMMENT_REPLY_REACTIONS,
    //   page: () => const ReelsCommentReplyReactionsView(),
    //   binding: ReelsCommentReplyReactionsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PAGE_PROFILE,
    //   page: () => const PageProfileView(),
    //   binding: PageProfileBinding(),
    // ),

    // //////////////////////////All Groups ////////////////////////////////////
    // GetPage(
    //   name: _Paths.GROUPS,
    //   page: () => const GroupsView(),
    //   binding: GroupsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_GROUP,
    //   page: () => const CreateGroupView(),
    //   binding: CreateGroupBinding(),
    // ),
    // GetPage(
    //   name: _Paths.JOINED_GROUPS,
    //   page: () => const JoinedGroupsView(),
    //   binding: JoinedGroupsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.INVITE_GROUPS,
    //   page: () => const InviteGroupsView(),
    //   binding: InviteGroupsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.GROUP_MEMBERS_ADMINS_MODERATORS,
    //   page: () => const GroupMembersAdminsModeratorsView(),
    //   binding: GroupMembersAdminsModeratorsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.MY_GROUPS,
    //   page: () => const MyGroupsView(),
    //   binding: MyGroupsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.GROUP_PROFILE,
    //   page: () => const GroupProfileView(),
    //   binding: GroupProfileBinding(),
    // ),
    // GetPage(
    //   name: _Paths.GROUP_FILES_UPLOAD,
    //   page: () => const GroupFileUploadView(),
    //   binding: GroupFileUploadBinding(),
    // ),
    // GetPage(
    //   name: _Paths.ADMIN_PAGE,
    //   page: () => const AdminPageView(),
    //   binding: AdminPageBinding(),
    // ),
    // GetPage(
    //   name: _Paths.CREATE_PAGE_POST,
    //   page: () => const CreatePagePostView(),
    //   binding: CreatePagePostBinding(),
    // ),
    // GetPage(
    //   name: _Paths.FEELINGS,
    //   page: () => const Feelings(),
    //   binding: CreatePagePostBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PAGE_SETTING,
    //   page: () => const PageSetting(),
    //   binding: PageSettingsBinding(),
    // ),
  ];
}
