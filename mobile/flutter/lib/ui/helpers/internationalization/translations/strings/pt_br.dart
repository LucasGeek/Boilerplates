class PtBr {
  static Map<String, String> get translations => {}
    ..addAll(_filterDialog)
    ..addAll(_call)
    ..addAll(_error)
    ..addAll(_chat)
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
    'no_results_found': "Nenhum resultado encontrado",
    'No_professional_favorites_so_far':
        "Nenhum professional favoritado até o momento",
  };

  static Map<String, String> _chat = {
    'voice_call_made': 'Chamada de voz feita',
    'incoming_voice_call': "Chamada de voz recebida",
    'video_call_made': "Chamada de vídeo feita",
    'incoming_video_call': "Chamada de vídeo recebida",
  };

  static Map<String, String> _call = {
    'voip_finish': 'A ligação foi finalizada',
    'getting_the_call': "Recebendo a ligação...",
  };

  static Map<String, String> _filterDialog = {
    'filter_select_order': 'Selecione a ordem',
    'best_evaluation': 'Melhor avaliação',
  };

  static Map<String, String> _newPortifolio = {
    'new_portifolio': 'Novo Portfólio',
    'new_portifolio_title_description': 'Descrição',
    'new_portifolio_title_title': 'Título',
    'new_portifolio_image': 'Incluir foto',
  };

  static Map<String, String> _changeEmail = {
    'change_email_title': 'Alterar email',
    'change_email_email': 'Seu novo email',
    'change_email_password': 'Sua senha',
  };

  static Map<String, String> _error = {
    'error_invalidFieldPassword':
        'Deve conter 8 caracteres, com letras maiúsculas, minúsculas e números',
    'error_emailInUse': 'Um usuário existe com o mesmo e-mail',
    'error_invalidCredentials': 'Credenciais inválidas',
    'error_requiredField': 'Campo obrigatório',
    'error_invalidField': 'Campo inválido',
    'error_unexpected': 'Algo deu errado. Por favor, tente novamente em breve',
  };

  static Map<String, String> _success = {
    'success_verifyEmail': 'Verifique seu email com novas informações.',
    'success_changed': 'Alterações realizadas',
  };

  static Map<String, String> _global = {
    'global_wait': 'Espere ...',
    'global_ok': 'OK',
    'global_empyt': 'Nenhum resultado encontrado',
    'global_add': 'Adicionar',
    'global_logout': 'Sair',
    'global_new_message': 'Você tem uma nova mensagem',
  };

  static Map<String, String> _login = {
    'login_email': 'Endereço de e-mail',
    'login_login': 'Entrar',
    'login_password': 'Senha',
    'login_placeholderPassword': 'Insira sua senha',
    'login_register': 'Registrar',
    'login_forgot_password': 'Esqueci minha senha',
    'login_or': 'Ou',
  };

  static Map<String, String> _passwordRecovery = {
    'password_recovery_recover': 'Recuperar Senha',
    'password_recovery_email': 'Digite seu email',
    'password_recovery_send': 'enviar e-mail',
    'password_change': 'Alterar senha',
    'password_confirm': 'Confirmar alteração',
    'password_redefinition': 'Redefinir senha',
    'password_insert_code':
        'Insira o código de 6 dígitos enviado para o seu email',
    'password_continue': 'Continuar',
    'password_confirm_password': 'Confirmar senha',
    'password_new_password': 'Nova senha',
    'password_new_password_confirm': 'Confirmar senha',
    'password_old_password': 'Senha atual',
  };

  static Map<String, String> _signUp = {
    'signup_register': 'Registrar',
    'signup_firstname': 'Nome',
    'signup_lastname': 'Sobrenome',
    'signup_name': 'Nome',
    'signup_accountType': 'Tipo de conta',
    'signup_looking': 'Padrão',
    'signup_offer': 'Serviços',
    'signup_terms': 'Ao criar sua conta você estará concordando\n com os',
    'signup_privacy': ' Termos de Uso e Privacidade',
    'signup': 'Criar conta',
    'signup_gallery': 'Galeria',
    'signup_camera': 'Câmera',
    'signup_remove': 'Remover',
  };

  static Map<String, String> _welcome = {
    'welcome': 'Bem-vindo!',
    'welcome_title': 'Conta criada com sucesso!\n',
    'welcome_sub':
        'Preencha as informações para que seu perfil\n fique visível nos resultados de busca',
    'welcome_category': 'Categoria',
    'welcome_category_input': 'Selecione uma categoria',
    'welcome_location': 'Localização',
    'welcome_location_input': 'Selecione sua localização',
    'welcome_done': 'Pronto',
  };

  static Map<String, String> _category = {
    'category': 'Categorias',
    'category_sub': 'Subcategorias',
    'category_title_select': 'Selecione sua área de atuação',
    'category_cancel': 'Cancelar',
    'category_done': 'Feito',
    'category_btn_select': 'Selecione',
    'category_notfound': 'Não foi encontrado categorias',
    'category_select_all': 'Selecionar tudos',
    'category_disregard_all': 'Desconsiderar todos',
  };

  static Map<String, String> _location = {
    'location': 'Localização',
    'location_nearby': 'Localização (nas proximidades)',
    'search': 'Pesquisar',
    'clean': 'limpar',
    'location_not_found': 'Localização não encontrada',
    'location_work': 'Este é seu local de trabalho?',
    'location_confirm': 'Confirmar',
    'location_gps': 'Permissão de GPS',
    'location_accept': 'Aceitar',
  };

  static Map<String, String> _popUpMenu = {
    'my_profile': 'Meu perfil',
    'favorites': 'Favoritos',
    'settings': 'Configurações'
  };

  static Map<String, String> _home = {
    'see_all': 'Ver todos',
    'professional_near': 'Profissionais perto de você',
    'help': 'Olá, como posso ajudar?\n',
    'help_sub': 'Faça sua pergunta no FAQ ou nos contate'
  };

  static Map<String, String> _professional = {
    'professionals': 'Profissionais próximos',
    'edit_profile': 'Editar perfil',
    'give_feedback': 'Avaliar',
    'portfolio': 'Portfólio',
    'write_comment': 'Escreva um comentário',
    'change_email': 'Alterar e-mail',
    'apply': 'Aplicar',
    'all_categories': 'Todas as categorias',
    'filters': 'Filtros',
    'reset_filters': 'Resetar filtros',
    'order_by': 'Ordenar por',
    'relevance': 'Relevância',
    'near_me': 'Perto de mim',
    'accept_location': 'Aceitar localização',
    'type_message': 'Escreva algo',
    'say_hi': 'Diga "oi" para inicar uma conversa :)',
    'messages': 'Mensagens',
    'change': 'Alterar',
    'empty_portifolio':
        'Seu portfólio esta vazio. Cadastre algo para mostrar para seus clientes.',
    'empty_feedback':
        'Você ainda não tem comentários/feedbacks do seus clientes',
    'empty_comment':
        'Seja você o primeiro a dar seu feedback sobre esse professional',
    'empty_portifolio_client':
        'Esse professional ainda não cadastrou nada em seu portfólio',
    'share': 'Compartilhar',
    'report': 'Denunciar',
    'professional_not_found':
        'Não foi encontrado professionais nas proximidades',
    'delete': 'Excluir',
    'permission':
        'O app irá usar sua localização para encontrar professionais na sua região ou usar em cadastros no app com sua permissão!',
  };
}
