import 'package:get/get.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/admin_page/view/admin_page_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/create_group/bindings/create_group_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/create_group/views/create_group_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_file_upload/bindings/group_file_upload_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_file_upload/views/group_file_upload_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_members_admins_moderators/bindings/group_members_admins_moderators_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_members_admins_moderators/views/group_members_admins_moderators_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/group_profile_all_media/group_albums_gallery/bindings/group_albums_gallery_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/group_profile_all_media/group_albums_gallery/views/group_albums_gallery_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/group_profile_all_media/group_photos_gallery/bindings/group_photos_gallery_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/group_profile_all_media/group_photos_gallery/views/group_photos_gallery_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/group_profile_all_media/group_videos_gallery/bindings/group_videos_gallery_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/group_profile_all_media/group_videos_gallery/views/group_videos_gallery_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/invite_groups/bindings/invite_groups_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/invite_groups/views/invite_groups_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/joined_groups/bindings/joined_groups_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/joined_groups/views/joined_groups_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/my_groups/bindings/my_groups_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/my_groups/views/my_groups_view.dart';
import 'package:quantum_possibilities_flutter/app/modules/NAVIGATION_MENUS/user_menu/sub_menus/page_settings/binding/page_settings_binding.dart';
import 'package:quantum_possibilities_flutter/app/modules/shared/modules/create_group_post/bindings/create_group_post_bindings.dart';
import 'package:quantum_possibilities_flutter/app/modules/shared/modules/create_group_post/view/create_group_post_view.dart';

import '../modules/NAVIGATION_MENUS/cart/bindings/cart_binding.dart';
import '../modules/NAVIGATION_MENUS/cart/views/cart_view.dart';
import '../modules/NAVIGATION_MENUS/friend/bindings/friend_binding.dart';
import '../modules/NAVIGATION_MENUS/friend/views/friend_view.dart';
import '../modules/NAVIGATION_MENUS/home/bindings/home_binding.dart';
import '../modules/NAVIGATION_MENUS/home/create_story/bindings/create_story_binding.dart';
import '../modules/NAVIGATION_MENUS/home/create_story/sub_menus/create_image_story/bindings/create_image_story_binding.dart';
import '../modules/NAVIGATION_MENUS/home/create_story/sub_menus/create_image_story/views/create_image_story_view.dart';
import '../modules/NAVIGATION_MENUS/home/create_story/sub_menus/create_text_story/bindings/create_text_story_binding.dart';
import '../modules/NAVIGATION_MENUS/home/create_story/sub_menus/create_text_story/views/create_text_story_view.dart';
import '../modules/NAVIGATION_MENUS/home/create_story/views/create_story_view.dart';
import '../modules/NAVIGATION_MENUS/home/views/home_view.dart';
import '../modules/NAVIGATION_MENUS/marketplace/bindings/marketplace_binding.dart';
import '../modules/NAVIGATION_MENUS/marketplace/views/marketplace_view.dart';
import '../modules/NAVIGATION_MENUS/notification/bindings/notification_binding.dart';
import '../modules/NAVIGATION_MENUS/notification/views/notification_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/bindings/user_menu_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/admin_page/binding/admin_page_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/bookmarks/bindings/bookmarks_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/bookmarks/views/bookmarks_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/page_settings/view/page_setting.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/pages/bindings/pages_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/pages/views/pages_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/bindings/profile_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add website/bindings/add_website_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add website/views/add_website_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_contact/bindings/add_contact_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_contact/views/add_contact_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_education/bindings/add_education_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_education/views/add_education_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_language/bindings/add_language_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_language/views/add_language_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_work_place/bindings/add_work_place_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/add_work_place/views/add_work_place_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_about_yourself/bindings/add_edit_about_yourself_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_about_yourself/views/add_edit_about_yourself_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_bio/bindings/add_edit_bio_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_bio/views/add_edit_bio_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_birth_date/bindings/edit_birth_date_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_birth_date/views/edit_birth_date_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_gender/bindings/edit_gender_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_gender/views/edit_gender_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_nickname/bindings/edit_nickname_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_nickname/views/edit_nickname_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_places_lived/bindings/edit_places_lived_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_places_lived/views/edit_places_lived_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_relationship/bindings/edit_relationship_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/add_about/edit_relationship/views/edit_relationship_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/bindings/about_bindings.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/about/views/about_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/albums_gallery/bindings/albums_gallery_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/albums_gallery/views/albums_gallery_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/my_profile_friends/bindings/my_profile_friends_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/my_profile_friends/views/my_profile_friends_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/photos_gallery/bindings/photos_gallery_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/photos_gallery/views/photos_gallery_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/videos_gallery/bindings/videos_gallery_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/sub_menus/videos_gallery/views/videos_gallery_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/views/friend_list.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/profile/views/profile_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/views/user_menu_view.dart';
import '../modules/NAVIGATION_MENUS/video/bindings/video_binding.dart';
import '../modules/NAVIGATION_MENUS/video/views/video_view.dart';
import '../modules/auth/login/bindings/login_binding.dart';
import '../modules/auth/login/views/login_view.dart';
import '../modules/auth/signup/bindings/signup_binding.dart';
import '../modules/auth/signup/views/birthday_view.dart';
import '../modules/auth/signup/views/email_view.dart';
import '../modules/auth/signup/views/gender_view.dart';
import '../modules/auth/signup/views/name_view.dart';
import '../modules/auth/signup/views/number_view.dart';
import '../modules/auth/signup/views/password_view.dart';
import '../modules/auth/signup/views/signup_view.dart';
import '../modules/auth/splash/bindings/splash_binding.dart';
import '../modules/auth/splash/views/splash_view.dart';
import '../modules/create_reels/bindings/create_reels_binding.dart';
import '../modules/create_reels/views/create_reels_view.dart';
import '../modules/edit_post/bindings/edit_post_binding.dart';
import '../modules/edit_post/views/edit_post_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/bindings/group_profile_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/group_profile/views/group_profile_view.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/groups/bindings/groups_binding.dart';
import '../modules/NAVIGATION_MENUS/user_menu/sub_menus/all_groups/groups/views/groups_view.dart';
import '../modules/notification_post/bindings/notification_binding.dart';
import '../modules/notification_post/view/notification_post.dart';
import '../modules/shared/components/comment_reactions/bindings/comment_reactions_binding.dart';
import '../modules/shared/components/comment_reactions/views/comment_reactions_view.dart';
import '../modules/shared/components/comment_replay_reactions/bindings/comment_replay_reactions_binding.dart';
import '../modules/shared/components/comment_replay_reactions/views/comment_replay_reactions_view.dart';
import '../modules/shared/components/post_reactions/bindings/post_reactions_binding.dart';
import '../modules/shared/components/post_reactions/views/post_reactions_view.dart';
import '../modules/shared/components/reels_comment_reactions/bindings/reels_comment_reactions_binding.dart';
import '../modules/shared/components/reels_comment_reactions/views/reels_comment_reactions_view.dart';
import '../modules/shared/components/reels_comment_reply_reactions/bindings/reels_comment_reply_reactions_binding.dart';
import '../modules/shared/components/reels_comment_reply_reactions/views/reels_comment_reply_reactions_view.dart';
import '../modules/shared/components/reels_reactions/bindings/reels_reactions_binding.dart';
import '../modules/shared/components/reels_reactions/views/reels_reactions_view.dart';
import '../modules/shared/modules/create_page_post/bindings/create_page_post_bindings.dart';
import '../modules/shared/modules/create_page_post/view/create_page_post_view.dart';
import '../modules/shared/modules/create_post/bindings/create_post_bindings.dart';
import '../modules/shared/modules/create_post/view/check_in.dart';
import '../modules/shared/modules/create_post/view/create_post_view.dart';
import '../modules/shared/modules/create_post/view/event_page.dart';
import '../modules/shared/modules/create_post/view/feelings.dart';
import '../modules/shared/modules/create_post/view/gif_page.dart';
import '../modules/shared/modules/create_post/view/tag_people.dart';
import '../modules/shared/modules/detail_post/bindings/detail_post_binding.dart';
import '../modules/shared/modules/detail_post/views/detail_post_view.dart';
import '../modules/shared/modules/edit_history/bindings/post_history_bindings.dart';
import '../modules/shared/modules/edit_history/view/post_history_view.dart';
import '../modules/shared/modules/edit_post_comment/bindings/edit_post_comment_binding.dart';
import '../modules/shared/modules/edit_post_comment/views/edit_post_comment_view.dart';
import '../modules/shared/modules/edit_reels_comment/bindings/edit_reels_comment_binding.dart';
import '../modules/shared/modules/edit_reels_comment/edit_reels_reply_comment/bindings/edit_reels_reply_comment_binding.dart';
import '../modules/shared/modules/edit_reels_comment/edit_reels_reply_comment/views/edit_reels_reply_comment_view.dart';
import '../modules/shared/modules/edit_reels_comment/views/edit_reels_comment_view.dart';
import '../modules/shared/modules/edit_reply_post_comment/bindings/edit_reply_post_comment_binding.dart';
import '../modules/shared/modules/edit_reply_post_comment/views/edit_reply_post_comment_view.dart';
import '../modules/shared/modules/other_profile_view/bindings/other_profile_binding.dart';
import '../modules/shared/modules/other_profile_view/views/other_photos_gallery/binding/other_photos_gallery_bindings.dart';
import '../modules/shared/modules/other_profile_view/views/other_photos_gallery/view/other_photos_gallery_view.dart';
import '../modules/shared/modules/other_profile_view/views/other_profile_detail_view.dart';
import '../modules/shared/modules/other_profile_view/views/other_profile_friend_list_view.dart';
import '../modules/shared/modules/other_profile_view/views/other_profile_view.dart';
import '../modules/shared/modules/other_profile_view/views/others_album_gallery/binding/others_album_gallery_binding.dart';
import '../modules/shared/modules/other_profile_view/views/others_album_gallery/view/other_album_gallery_view.dart';
import '../modules/shared/page_profile/bindings/page_profile_binding.dart';
import '../modules/shared/page_profile/views/page_profile_view.dart';
import '../modules/shared/profile_image_silder/bindings/profile_image_silder_binding.dart';
import '../modules/shared/profile_image_silder/views/profile_image_silder_view.dart';
import '../modules/story_reaction_list/bindings/story_reaction_binding.dart';
import '../modules/story_reaction_list/views/story_reaction_view.dart';
import '../modules/tab_view/bindings/tab_view_bindings.dart';
import '../modules/tab_view/views/tab_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

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
      name: _Paths.PASSWORD,
      page: () => const PasswordView(),
      binding: SignupBinding(),
    ),

    GetPage(
      name: _Paths.VIDEO,
      page: () => const VideoView(),
      binding: VideoBinding(),
    ),
    GetPage(
      name: _Paths.FRIEND,
      page: () => const FriendView(),
      binding: FriendBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.MARKETPLACE,
      page: () => const MarketplaceView(),
      binding: MarketplaceBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.TAB,
      page: () => const TabView(),
      binding: TabViewBindings(),
    ),
    GetPage(
      name: _Paths.USER_MENU,
      page: () => const UserMenuView(),
      binding: UserMenuBinding(),
    ),
    GetPage(
      name: _Paths.CREAT_POST,
      page: () => const CreatePostView(),
      binding: CreatePostBindings(),
    ),
    GetPage(
      name: _Paths.CREATE_GROUP_POST,
      page: () => const CreateGroupPostView(),
      binding: CreateGroupPostBindings(),
    ),
    GetPage(
      name: _Paths.TAG_PEOPLE,
      page: () => const TagPeople(),
      binding: CreatePostBindings(),
    ),
    GetPage(
      name: _Paths.FEELINGS,
      page: () => const Feelings(),
      binding: CreatePostBindings(),
    ),
    GetPage(
      name: _Paths.CHECKIN,
      page: () => const CheckIn(),
      binding: CreatePostBindings(),
    ),
    GetPage(
      name: _Paths.GIF,
      page: () => const GifPage(),
      binding: CreatePostBindings(),
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => const EventPage(),
      binding: CreatePostBindings(),
    ),
    GetPage(
      name: _Paths.REACTIONS,
      page: () => const ReactionsView(),
      binding: ReactionsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_STORY,
      page: () => const CreateStoryView(),
      binding: CreateStoryBinding(),
    ),
    GetPage(
      name: _Paths.OTHERS_PROFILE,
      page: () => const OtherProfileView(),
      binding: OtherProfileBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_TEXT_STORY,
      page: () => const CreateTextStoryView(),
      binding: CreateTextStoryBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_IMAGE_STORY,
      page: () => const CreateImageStoryView(),
      binding: CreateImageStoryBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.OTHER_PROFILA_DETAIL,
      page: () => const OtherProfileDetailView(),
      binding: OtherProfileBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_POST,
      page: () => EditPostView(),
      binding: EditPostBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_FRIEND_LIST,
      page: () => const FriendList(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_POST,
      page: () => const DetailPostView(),
      binding: DetailPostBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_POST_COMMENT,
      page: () => const EditPostCommentView(),
      binding: EditPostCommentBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_REPLY_POST_COMMENT,
      page: () => const EditReplyPostCommentView(),
      binding: EditReplyPostCommentBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_REELS_COMMENT,
      page: () => const EditReelsCommentView(),
      binding: EditReelsCommentBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_REELS_REPLY_COMMENT,
      page: () => const EditReelsReplyCommentView(),
      binding: EditReelsReplyCommentBinding(),
    ),
    GetPage(
      name: _Paths.STORY_REACTION,
      page: () => StoryReactionView(),
      binding: StoryReactionBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_GENDER,
      page: () => const EditGenderView(),
      binding: EditGenderBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_POST,
      page: () => NotificationPost(),
      binding: NotificationBindings(),
    ),
    GetPage(
      name: _Paths.MY_PROFILE_FRIENDS,
      page: () => const MyProfileFriendsView(),
      binding: MyProfileFriendsBinding(),
    ),
    GetPage(
      name: _Paths.COMMENT_REACTIONS,
      page: () => const CommentReactionsView(),
      binding: CommentReactionsBinding(),
    ),
    GetPage(
      name: _Paths.COMMENT_REPLAY_REACTIONS,
      page: () => const CommentReplayReactionsView(),
      binding: CommentReplayReactionsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_WORK_PLACE,
      page: () => const AddWorkPlaceView(),
      binding: AddWorkPlaceBinding(),
    ),
    // GetPage(
    //   name: _Paths.EDIT_WORK_PLACE,
    //   page: () => const EditWorkPlaceView(),
    //   binding: AddWorkPlaceBinding(),
    // ),
    GetPage(
      name: _Paths.ADD_EDUCATION,
      page: () => const AddEducationView(),
      binding: AddEducationBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CONTACT,
      page: () => const AddContactView(),
      binding: AddContactBinding(),
    ),
    GetPage(
      name: _Paths.ADD_WEBSITE,
      page: () => const AddWebsiteView(),
      binding: AddWebsiteBinding(),
    ),
    GetPage(
      name: _Paths.ADD_BIO,
      page: () => const AddYourBioView(),
      binding: AddYourBioBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ABOUTYOURSELF,
      page: () => const AddAboutYourselfView(),
      binding: AddAboutYourselfBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PLACESLIVED,
      page: () => const EditPlacesLivedView(),
      binding: EditPlacesLivedBinding(),
    ),
    GetPage(
      name: _Paths.ADD_LANGUAGE,
      page: () => const AddLanguageView(),
      binding: AddLanguageBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_NICKNAME,
      page: () => const EditNickNameView(),
      binding: EditNickNameBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_RELATIONSHIP,
      page: () => const EditRelationshipView(),
      binding: EditRelationshipBinding(),
    ),
    // GetPage(
    //   name: _Paths.EDIT_BDAY,
    //   page: () => const AddLanguageView(),
    //   binding: AddLanguageBinding(),
    // ),
    GetPage(
      name: _Paths.EDIT_BIRTH_DATE,
      page: () => const EditBirthDateView(),
      binding: EditBirthDateBinding(),
    ),
    GetPage(
      name: _Paths.PAGES,
      page: () => const PagesView(),
      binding: PagesBinding(),
    ),
    GetPage(
      name: _Paths.BOOKMARKS,
      page: () => const BookmarksView(),
      binding: BookmarksBinding(),
    ),
    GetPage(
      name: _Paths.OTHER_FRIEND_LIST,
      page: () => const OtherProfileFriendsView(),
      binding: OtherProfileBinding(),
    ),
    GetPage(
      name: _Paths.PHOTOS_GALLERY,
      page: () => const PhotosGalleryView(),
      binding: PhotosGalleryBinding(),
    ),
    GetPage(
      name: _Paths.ALBUMS_GALLERY,
      page: () => const AlbumsGalleryView(),
      binding: AlbumsGalleryBinding(),
    ),
    GetPage(
      name: _Paths.VIDEOS_GALLERY,
      page: () => const VideosGalleryView(),
      binding: VideosGalleryBinding(),
    ),
    GetPage(
      name: _Paths.GROUP_PHOTOS_GALLERY,
      page: () => const GroupPhotosGalleryView(),
      binding: GroupPhotosGalleryBinding(),
    ),
    GetPage(
      name: _Paths.GROUP_ALBUMS_GALLERY,
      page: () => const GroupAlbumsGalleryView(),
      binding: GroupAlbumsGalleryBinding(),
    ),
    GetPage(
      name: _Paths.GROUP_VIDEOS_GALLERY,
      page: () => const GroupVideosGalleryView(),
      binding: GroupVideosGalleryBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_HISTORY,
      page: () => const PostHistoryView(),
      binding: PostHistoryBindings(),
    ),
    GetPage(
      name: _Paths.PROFILE_IMAGE_SILDER,
      page: () => const ProfileImageSilderView(),
      binding: ProfileImageSilderBinding(),
    ),
    GetPage(
      name: _Paths.OTHER_ALBUMS_GALLERY,
      page: () => const OtherAlbumGalleryView(),
      binding: OthersAlbumGalleryBinding(),
    ),
    GetPage(
      name: _Paths.OTHER_PHOTOS_GALLERY,
      page: () => const OtherPhotosGalleryView(),
      binding: OtherPhotosGalleryBindings(),
    ),
    GetPage(
      name: _Paths.CREATE_REELS,
      page: () => const CreateReelsView(),
      binding: CreateReelsBinding(),
    ),
    GetPage(
      name: _Paths.REELS_REACTIONS,
      page: () => const ReelsReactionsView(),
      binding: ReelsReactionsBinding(),
    ),
    GetPage(
      name: _Paths.REELS_COMMENT_REACTIONS,
      page: () => const ReelsCommentReactionsView(),
      binding: ReelsCommentReactionsBinding(),
    ),
    GetPage(
      name: _Paths.REELS_COMMENT_REPLY_REACTIONS,
      page: () => const ReelsCommentReplyReactionsView(),
      binding: ReelsCommentReplyReactionsBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_PROFILE,
      page: () => const PageProfileView(),
      binding: PageProfileBinding(),
    ),

    //////////////////////////All Groups ////////////////////////////////////
    GetPage(
      name: _Paths.GROUPS,
      page: () => const GroupsView(),
      binding: GroupsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_GROUP,
      page: () => const CreateGroupView(),
      binding: CreateGroupBinding(),
    ),
    GetPage(
      name: _Paths.JOINED_GROUPS,
      page: () => const JoinedGroupsView(),
      binding: JoinedGroupsBinding(),
    ),
    GetPage(
      name: _Paths.INVITE_GROUPS,
      page: () => const InviteGroupsView(),
      binding: InviteGroupsBinding(),
    ),
    GetPage(
      name: _Paths.GROUP_MEMBERS_ADMINS_MODERATORS,
      page: () => const GroupMembersAdminsModeratorsView(),
      binding: GroupMembersAdminsModeratorsBinding(),
    ),
    GetPage(
      name: _Paths.MY_GROUPS,
      page: () => const MyGroupsView(),
      binding: MyGroupsBinding(),
    ),
    GetPage(
      name: _Paths.GROUP_PROFILE,
      page: () => const GroupProfileView(),
      binding: GroupProfileBinding(),
    ),
    GetPage(
      name: _Paths.GROUP_FILES_UPLOAD,
      page: () => const GroupFileUploadView(),
      binding: GroupFileUploadBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_PAGE,
      page: () => const AdminPageView(),
      binding: AdminPageBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_PAGE_POST,
      page: () => const CreatePagePostView(),
      binding: CreatePagePostBinding(),
    ),
    GetPage(
      name: _Paths.FEELINGS,
      page: () => const Feelings(),
      binding: CreatePagePostBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_SETTING,
      page: () => const PageSetting(),
      binding: PageSettingsBinding(),
    ),
  ];
}
