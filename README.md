# Tela de Login com Google

Este aplicativo demonstra a funcionalidade de login com Google utilizando Firebase Authentication. O usuário pode fazer login com sua conta Google e visualizar suas informações de conta, como nome, e-mail e foto de perfil.

## Integrantes do Grupo

- Luciano Luís Zimmermann
- Rafael Venturi
- Yuri Jovêncio Pereira

## Funcionalidades

### 1. Tela de Login (`LoginScreen`)

- **Função**: Exibir um botão para o login via Google.
- **Ação**: Chama a função `signInWithGoogle()` para autenticar o usuário com o Google.

### 2. Tela Principal (`HomeScreen`)

- **Função**: Exibir as informações do usuário autenticado, como foto de perfil, nome e e-mail.
- **Ação**: Exibe o botão de logout para encerrar a sessão do usuário e redirecionar para a tela de login.

## Tipos de Erros do Provedor (Google)

Durante a autenticação, os seguintes erros podem ocorrer:

- **Cancelamento pelo usuário**: O usuário decide não realizar o login.
- **Falha na autenticação**: Ocorre quando a autenticação do Google falha, por exemplo, quando as credenciais são inválidas.
- **Erro de rede**: Se houver problemas de conexão com a internet ao tentar autenticar o usuário.
- **Erro ao obter o token de acesso**: Quando há falha ao obter o token de acesso ou ID do Google.

## Dependências Utilizadas

- `firebase_core: ^2.19.0`
- `firebase_auth: ^4.8.0`
- `google_sign_in: ^6.0.0`
- `flutter: ^3.7.0`

## Instruções para Configuração/Importação do Projeto

### 1. Instalação das Dependências

Para configurar o projeto, siga os seguintes passos:

1. Clone o repositório.
2. No diretório raiz do projeto, execute:

```bash
flutter pub get
