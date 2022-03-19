class EnUs {
  static Map<String, String> get translations => {}
    ..addAll(_call)
    ..addAll(_filterDialog)
    ..addAll(_chat)
    ..addAll(_global)
    ..addAll(_login)
    ..addAll(_passwordRecovery)
    ..addAll(_signUp)
    ..addAll(_welcome)
    ..addAll(_category)
    ..addAll(_location)
    ..addAll(_popUpMenu)
    ..addAll(_home)
    ..addAll(_changeEmail)
    ..addAll(_newPortifolio)
    ..addAll(_favorite)
    ..addAll(_error)
    ..addAll(_success)
    ..addAll(_professional);

  static Map<String, String> _favorite = {
    'no_results_found': "no results found",
    'No_professional_favorites_so_far': "No professional favorites so far",
  };

  static Map<String, String> _chat = {
    'voice_call_made': 'Voice call made',
    'incoming_voice_call': "Incoming voice call",
    'video_call_made': "Video call made",
    'incoming_video_call': "Incoming video call",
  };

  static Map<String, String> _call = {
    'voip_finish': 'The call has ended',
    'getting_the_call': "getting the call...",
  };

  static Map<String, String> _filterDialog = {
    'filter_select_order': 'Select order',
    'best_evaluation': 'Best Evaluation',
  };

  static Map<String, String> _newPortifolio = {
    'new_portifolio': 'New Portfolio',
    'new_portifolio_title_description': 'Description',
    'new_portifolio_title_title': 'Title',
    'new_portifolio_image': 'Add photo',
  };

  static Map<String, String> _changeEmail = {
    'change_email_title': 'Change email',
    'change_email_email': 'Your new email',
    'change_email_password': 'Your password',
  };

  static Map<String, String> _error = {
    'error_invalidFieldPassword':
        'Must contain 8 characters, with uppercase, lowercase and numbers',
    'error_emailInUse': 'A user exists with the same email',
    'error_invalidCredentials': 'Invalid credentials',
    'error_requiredField': 'Mandatory field',
    'error_invalidField': 'Invalid field',
    'error_unexpected': 'Something went wrong. Please try again soon',
  };

  static Map<String, String> _success = {
    'success_verifyEmail': 'Check your email with new information',
    'success_changed': 'Changes made',
  };

  static Map<String, String> _global = {
    'global_wait': 'Wait...',
    'global_ok': 'OK',
    'global_empyt': 'No results found',
    'global_add': 'Add',
    'global_logout': 'Log out',
    'global_new_message': 'You have a new message',
  };

  static Map<String, String> _login = {
    'login_email': 'Email address',
    'login_login': 'Login',
    'login_password': 'Password',
    'login_placeholderPassword': 'Insert your password',
    'login_register': 'Register',
    'login_forgot_password': 'I forgot my password',
    'login_or': 'Or',
  };

  static Map<String, String> _passwordRecovery = {
    'password_recovery_recover': 'Recover Password',
    'password_recovery_email': 'Enter your registration email address',
    'password_recovery_send': 'send e-mail',
    'password_change': 'Change Password',
    'password_confirm': 'Confirm change',
    'password_redefinition': 'Redefine password',
    'password_insert_code': 'Enter the 6-digit code sent to your email',
    'password_continue': 'Continue',
    'password_confirm_password': 'Confirm password',
    'password_new_password': 'New password',
    'password_new_password_confirm': 'Confirm password',
    'password_old_password': 'Current password',
  };

  static Map<String, String> _signUp = {
    'signup_register': 'Register',
    'signup_firstname': 'Name',
    'signup_lastname': 'Surname',
    'signup_name': 'Name',
    'signup_accountType': 'Account type',
    'signup_looking': "I'm looking",
    'signup_offer': 'Offer services',
    'signup_terms': 'By creating an account you are accepting\n the',
    'signup_privacy': ' Terms of Use and Privacy',
    'signup': 'Create account',
    'signup_gallery': 'Gallery',
    'signup_camera': 'Camera',
    'signup_remove': 'Remove',
  };

  static Map<String, String> _welcome = {
    'welcome': 'Welcome!',
    'welcome_title': 'Account created successfully!\n',
    'welcome_sub':
        'Fill in the information so that your profile is\n visible in the search results',
    'welcome_category': 'Category',
    'welcome_category_input': 'Select a category',
    'welcome_location': 'Location',
    'welcome_location_input': 'Select a location',
    'welcome_done': 'Done',
    'welcome_categories': 'Categories',
  };

  static Map<String, String> _category = {
    'category': 'Categories',
    'category_sub': 'Subcategories',
    'category_title_select': 'Select your area of expertise',
    'category_cancel': 'Cancel',
    'category_done': 'Done',
    'category_btn_select': 'Select',
    'category_notfound': 'No categories found',
    'category_select_all': 'Select all',
    'category_disregard_all': 'Disregard all',
  };

  static Map<String, String> _location = {
    'location': 'Location',
    'location_nearby': 'Location (nearby)',
    'search': 'Search',
    'clean': 'clean',
    'location_not_found': 'Location not found',
    'location_work': 'Is this your place of work?',
    'location_confirm': 'Confirm',
    'location_gps': 'GPS permission',
    'location_accept': 'Accept',
  };

  static Map<String, String> _popUpMenu = {
    'my_profile': 'My profile',
    'favorites': 'Favorites',
    'settings': 'Settings'
  };

  static Map<String, String> _home = {
    'see_all': 'See all',
    'professional_near': 'Professional near you',
    'help': 'Hi, can we help?\n',
    'help_sub': 'Ask you questions with the FAQ or contact us'
  };

  static Map<String, String> _professional = {
    'professionals': 'Professionals near',
    'edit_profile': 'Edit profile',
    'give_feedback': 'Give feedback',
    'portfolio': 'Portfolio',
    'write_comment': 'Write a comment',
    'change_email': 'Change e-mail',
    'apply': 'Apply',
    'all_categories': 'All categories',
    'filters': 'Filters',
    'reset_filters': 'Reset filters',
    'order_by': 'Order by',
    'relevance': 'Relevance',
    'near_me': 'Near me',
    'accept_location': 'Accept location',
    'type_message': 'Type a message',
    'say_hi': 'Say "hi" to start a conversation :)',
    'messages': 'Messages',
    'change': 'Change',
    'empty': 'Empty',
    'empty_portifolio':
        'Your portfolio is empty. Register something to show your customers.',
    'empty_feedback':
        "You still don't have comments/feedbacks from your customers",
    'empty_comment': 'Be the first to give your feedback on this professional',
    'empty_portifolio_client':
        'This professional has not registered anything in his portfolio yet',
    'share': 'Share',
    'report': 'Report',
    'professional_not_found': 'No professionals were found in the areas',
    'delete': 'Delete',
    'permission':
        'The app will use your location to find professionals in your region or use in app entries with your permission!'
  };
}
