class FrFr {
  static Map<String, String> get translations => {}
    ..addAll(_chat)
    ..addAll(_filterDialog)
    ..addAll(_error)
    ..addAll(_call)
    ..addAll(_success)
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
    ..addAll(_professional);

  static Map<String, String> _favorite = {
    'no_results_found': "aucun résultat trouvé",
    'No_professional_favorites_so_far':
        "Pas de favoris professionnels jusqu'à présent",
  };

  static Map<String, String> _chat = {
    'voice_call_made': 'Appel vocal effectué',
    'incoming_voice_call': "Appel vocal entrant",
    'video_call_made': "Appel vidéo passé",
    'incoming_video_call': "Appel vidéo entrant",
  };

  static Map<String, String> _call = {
    'voip_finish': "L'appel est terminé",
    'getting_the_call': "recevoir l'appel...",
  };

  static Map<String, String> _filterDialog = {
    'filter_select_order': 'Sélectionnez votre commande',
  };

  static Map<String, String> _newPortifolio = {
    'new_portifolio': 'Nouveau portefeuille',
    'new_portifolio_title_description': 'Description',
    'new_portifolio_title_title': 'Titre',
    'new_portifolio_image': 'Ajouter une photo',
  };

  static Map<String, String> _changeEmail = {
    'change_email_title': "Modifier l'e-mail",
    'change_email_email': 'Votre nouvel e-mail',
    'change_email_password': 'Votre mot de passe',
  };

  static Map<String, String> _error = {
    'error_invalidFieldPassword':
        'Il doit contenir 8 caractères, avec des lettres majuscules, des lettres minuscules et des chiffres',
    'error_emailInUse': 'Un utilisateur existe avec le même email',
    'error_invalidCredentials': 'Identifiants non valides',
    'error_requiredField': 'Champ obligatoire',
    'error_invalidField': 'Champ non valide',
    'error_unexpected':
        "Quelque chose s'est mal passé. Veuillez réessayer bientôt",
  };

  static Map<String, String> _success = {
    'success_verifyEmail':
        'Vérifiez votre e-mail avec de nouvelles informations',
    'success_changed': 'Modifications effectuées',
  };

  static Map<String, String> _global = {
    'global_wait': 'Attendez...',
    'global_ok': 'OK',
    'global_empyt': 'Aucun résultat trouvé',
    'global_add': 'Ajouter',
    'global_logout': 'Se déconnecter',
    'global_new_message': 'Vous avez un nouveau message',
  };

  static Map<String, String> _login = {
    'login_email': 'Adresse e-mail',
    'login_login': 'Entrer',
    'login_password': 'Mot de passe',
    'login_placeholderPassword': 'Tapez votre mot de passe',
    'login_register': "S'inscrire",
    'login_forgot_password': "j'ai oublié mon mot de passe",
    'login_or': 'Ou',
  };

  static Map<String, String> _passwordRecovery = {
    'password_recovery_recover': 'Récupérer mot de passe',
    'password_recovery_email': 'Tapez votre e-mail',
    'password_recovery_send': 'envoyer un e-mail',
    'password_change': 'Changer le mot de passe',
    'password_confirm': 'Confirmer le changement',
    'password_redefinition': 'Redéfinir le mot de passe',
    'password_insert_code': 'Entrez le code à 6 chiffres envoyé à votre email',
    'password_continue': 'Continuer',
    'password_confirm_password': 'Confirmez le mot de passe',
    'password_new_password': 'Nouveau mot de passe',
    'password_new_password_confirm': 'Confirmer le mot de passe',
    'password_old_password': 'Mot de passe actuel',
  };

  static Map<String, String> _signUp = {
    'signup_register': "S'inscrire",
    'signup_firstname': 'Nome',
    'signup_lastname': 'Nom de famille',
    'signup_name': 'Nom',
    'signup_accountType': 'Type de compte',
    'signup_looking': 'Standard',
    'signup_offer': 'Services',
    'signup_terms': 'En créant votre compte, vous acceptez les ',
    'signup_privacy': "conditions d'utilisation et de confidentialité",
    'signup': 'Créer un compte',
    'signup_gallery': 'Galerie',
    'signup_camera': 'Caméra',
    'signup_remove': 'Retirer',
  };

  static Map<String, String> _welcome = {
    'welcome': 'Bienvenue!',
    'welcome_title': 'Compte créé avec succès !\n',
    'welcome_sub':
        'Remplissez les informations pour que votre profil\n soit visible dans les résultats de recherche',
    'welcome_category': 'Catégorie',
    'welcome_category_input': 'Choisir une catégorie',
    'welcome_location': 'Localisation',
    'welcome_location_input': 'Sélectionnez votre emplacement',
    'welcome_done': 'Prêt',
  };

  static Map<String, String> _category = {
    'category': 'Catégorie',
    'category_sub': 'Sous-catégories',
    'category_title_select': "Sélectionnez votre domaine d'expertise",
    'category_cancel': 'Annuler',
    'category_done': 'Terminé',
    'category_btn_select': 'Sélectionner',
    'category_notfound': 'Aucune catégorie trouvée',
    'category_select_all': 'Sélectionner tout',
    'category_disregard_all': 'Ignorer tout',
  };

  static Map<String, String> _location = {
    'location': 'Localisation',
    'location_nearby': 'Localisation (à proximité)',
    'search': 'Chercher',
    'clean': 'nettoyer',
    'location_not_found': 'Emplacement non trouvé',
    'location_work': 'Est-ce votre lieu de travail ?',
    'location_confirm': 'Confirmer',
    'location_gps': 'Autorisation GPS',
    'location_accept': 'Accepter',
  };

  static Map<String, String> _popUpMenu = {
    'my_profile': 'Mon profil',
    'favorites': 'Favoris',
    'settings': 'Les paramètres'
  };

  static Map<String, String> _home = {
    'see_all': 'Voir tout',
    'professional_near': 'Des professionnels proches de vous',
    'help': 'Bonjour, comment puis-je vous aider ?\n',
    'help_sub': 'Posez votre question dans la FAQ ou contactez-nous'
  };

  static Map<String, String> _professional = {
    'professionals': 'Proche des professionnels',
    'edit_profile': 'Editer le profil',
    'give_feedback': 'Évaluer',
    'portfolio': 'Portefeuille',
    'write_comment': 'Écrire un commentaire',
    'change_email': "Changer l'e-mail",
    'apply': 'Postuler',
    'all_categories': 'Toutes catégories',
    'filters': 'Filtres',
    'reset_filters': 'Réinitialiser les filtres',
    'order_by': 'Commandé par',
    'relevance': 'Pertinence',
    'near_me': 'Près de moi',
    'accept_location': "accepter l'emplacement",
    'type_message': 'Écris quelque chose',
    'say_hi': 'écris "bonjour" pour démarrer une conversation :)',
    'messages': 'Messages',
    'change': 'Changer',
    'empty': 'Vide',
    'empty_portifolio':
        'Votre portefeuille est vide. Enregistrez quelque chose à montrer à vos clients.',
    'empty_feedback':
        "Vous n'avez toujours pas de commentaires/rétroactions de vos clients",
    'empty_comment':
        'Soyez le premier à donner votre avis sur ce professionnel',
    'empty_portifolio_client':
        "Ce professionnel n'a encore rien inscrit dans son portfolio",
    'share': 'Partager',
    'report': 'Rapport',
    'professional_not_found':
        "Aucun professionnel n'a été trouvé dans les zones",
    'delete': 'Effacer',
    'permission':
        "L'application utilisera votre emplacement pour trouver des professionnels dans votre région ou utilisera dans les entrées de l'application avec votre permission !"
  };
}
