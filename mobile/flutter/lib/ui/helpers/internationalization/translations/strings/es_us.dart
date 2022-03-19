class EsUs {
  static Map<String, String> get translations => {}
    ..addAll(_filterDialog)
    ..addAll(_chat)
    ..addAll(_call)
    ..addAll(_error)
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
    'no_results_found': "Ningún resultado encontrado",
    'No_professional_favorites_so_far':
        "No hay favoritos profesionales hasta ahora",
  };

  static Map<String, String> _chat = {
    'voice_call_made': 'Llamada de voz realizada',
    'incoming_voice_call': "Llamada de voz entrante",
    'video_call_made': "Videollamada realizada",
    'incoming_video_call': "Videollamada entrante",
  };

  static Map<String, String> _call = {
    'voip_finish': 'la llamada ha terminado',
    'getting_the_call': "recibiendo la llamada...",
  };

  static Map<String, String> _filterDialog = {
    'filter_select_order': 'Elije el orden',
  };

  static Map<String, String> _newPortifolio = {
    'new_portifolio': 'Nueva cartera',
    'new_portifolio_title_description': 'Descripción',
    'new_portifolio_title_title': 'Título',
    'new_portifolio_image': 'Agregar foto',
  };

  static Map<String, String> _changeEmail = {
    'change_email_title': 'Cambiar correo electrónico',
    'change_email_email': 'Tu nuevo correo electrónico',
    'change_email_password': 'Tu contraseña',
  };

  static Map<String, String> _error = {
    'error_invalidFieldPassword':
        'Debe tener 8 caracteres, incluyendo letras maiúsculas, minúsculas y números',
    'error_emailInUse': 'Existe un usuario con el mismo correo electrónico',
    'error_invalidCredentials': 'Credenciales no válidas',
    'error_requiredField': 'Campo obligatorio',
    'error_invalidField': 'Campo no válido',
    'error_unexpected': 'Algo salió mal. Vuelva a intentarlo pronto',
  };

  static Map<String, String> _success = {
    'success_verifyEmail': 'Revisa tu correo electrónico con nueva información',
    'success_changed': 'Cambios realizados',
  };

  static Map<String, String> _global = {
    'global_wait': 'Espera ...',
    'global_ok': 'Aceptar',
    'global_empyt': 'No se encontraron resultados',
    'global_add': 'Agregar',
    'global_logout': 'Cerrar sesión',
    'global_new_message': 'Tienes un mensaje nuevo',
  };

  static Map<String, String> _login = {
    'login_email': 'Dirección de correo electrónico',
    'login_login': 'Entrar',
    'login_password': 'Contraseña',
    'login_placeholderPassword': 'Ingresa tu contraseña',
    'login_register': 'Registrarse',
    'login_forgot_password': 'Olvide mi contraseña',
    'login_or': 'O',
  };

  static Map<String, String> _passwordRecovery = {
    'password_recovery_recover': 'Recuperar Contraseña',
    'password_recovery_email': 'Escriba su correo electrónico',
    'password_recovery_send': 'enviar',
    'password_change': 'Cambiar contraseña',
    'password_confirm': 'Confirmar cambio',
    'password_redefinition': 'Redefinir contraseña',
    'password_insert_code':
        'Ingrese el código de 6 dígitos enviado a su correo electrónico',
    'password_continue': 'Continuar',
    'password_confirm_password': 'Confirmar seña',
    'password_new_password': 'Nueva contraseña',
    'password_new_password_confirm': 'Confirmar contraseña',
    'password_old_password': 'Contraseña actual',
  };

  static Map<String, String> _signUp = {
    'signup_register': 'Crea una cuenta',
    'signup_firstname': 'Nombre',
    'signup_lastname': 'Apellido',
    'signup_name': 'Nombre',
    'signup_accountType': 'Tipo de cuenta',
    'signup_looking': 'Estándar',
    'signup_offer': 'Servicios',
    'signup_terms': 'Al crear su cuenta, acepta los',
    'signup_privacy': ' Términos de uso y privacidad',
    'signup': 'Crea cuenta',
    'signup_gallery': 'Galería',
    'signup_camera': 'Cámera',
    'signup_remove': 'Eliminar',
  };

  static Map<String, String> _welcome = {
    'welcome': '¡Bienvenido!',
    'welcome_title': '¡Cuenta creada correctamente!\n',
    'welcome_sub':
        'Complete la información para que su perfil\n sea visible en los resultados de búsqueda',
    'welcome_category': 'Categoría',
    'welcome_category_input': 'Seleccione una categoría',
    'welcome_location': 'Localización',
    'welcome_location_input': 'Seleccione su ubicación',
    'welcome_done': 'Listo',
  };

  static Map<String, String> _category = {
    'category': 'Categorías',
    'category_sub': 'Subcategorías',
    'category_title_select': 'Seleccione su área de especialización',
    'category_cancel': 'Cancelar',
    'category_done': 'Listo',
    'category_btn_select': 'Seleccione',
    'category_notfound': 'No se encontraron categorías',
    'category_select_all': 'Seleccionar todos',
    'category_disregard_all': 'Ignorar todos',
  };

  static Map<String, String> _location = {
    'location': 'Localización',
    'location_nearby': 'Localización (cerca)',
    'search': 'Buscar',
    'clean': 'limpiar',
    'location_not_found': 'Ubicación no encontrada',
    'location_work': '¿Es este tu lugar de trabajo?',
    'location_confirm': 'Confirmar',
    'location_gps': 'Permiso GPS',
    'location_accept': 'Aceptar',
  };

  static Map<String, String> _popUpMenu = {
    'my_profile': 'Mi perfil',
    'favorites': 'Favoritos',
    'settings': 'Ajustes'
  };

  static Map<String, String> _home = {
    'see_all': 'Ver todo',
    'professional_near': 'Profesionales cercanos a ti',
    'help': 'Hola, ¿cómo puedo ayudar?\n',
    'help_sub': 'Haga su pregunta en las preguntas frecuentes o contáctenos'
  };

  static Map<String, String> _professional = {
    'professionals': 'Profesionales cercanos',
    'edit_profile': 'Editar perfil',
    'give_feedback': 'Evaluar',
    'portfolio': 'Portafolio',
    'write_comment': 'Escribir un comentario',
    'change_email': 'Cambiar e-mail',
    'apply': 'Aplicar',
    'all_categories': 'Todas las categorias',
    'filters': 'Filtros',
    'reset_filters': 'Restablecer filtros',
    'order_by': 'Order by',
    'relevance': 'Relevancia',
    'near_me': 'Cerca de mi',
    'accept_location': 'Aceptar ubicación',
    'type_message': 'escribe un mensaje',
    'say_hi': 'escribe "hola" para iniciar una conversación :)',
    'messages': 'Mensajes',
    'change': 'Cambiar',
    'empty': 'Vacio',
    'empty_portifolio':
        'Tu cartera está vacía. Registre algo para mostrar a sus clientes.',
    'empty_feedback':
        'Aún no tiene comentarios/retroalimentación de sus clientes',
    'empty_comment': 'Sé el primero en dar tu opinión sobre este profesional',
    'empty_portifolio_client':
        'Este profesional aún no ha registrado nada en su cartera',
    'share': 'Cuota',
    'report': 'Reporte',
    'professional_not_found': 'No se encontraron profesionales en las áreas',
    'delete': 'Excluir',
    'permission':
        '¡La aplicación usará su ubicación para encontrar profesionales en su región o usarla en las entradas de la aplicación con su permiso!'
  };
}
