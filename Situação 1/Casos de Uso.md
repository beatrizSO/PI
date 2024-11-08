# **CASOS DE USO**

--> Realizar Pedido

Ator Principal: Cliente

Descrição: O cliente seleciona produtos da vitrine virtual, adiciona ao carrinho, revisa os itens e clica em enviar para concluir o pedido.

Pré-condições:

    O cliente deve estar autenticado no sistema (logado).
    Os produtos devem estar disponíveis na vitrine virtual.

Pós-condições:

    O pedido é registrado no sistema.
    O cliente recebe a confirmação do pedido.
    O administrador é notificado sobre o novo pedido.

Fluxo Principal:

    1. O cliente navega na vitrine virtual e visualiza os produtos disponíveis.
    2. O cliente seleciona um cupcake e clica em "Adicionar ao Carrinho".
    3. O sistema adiciona o cupcake ao carrinho de compras (que é o "pedido").
    4. O cliente pode repetir os passos 1-3 para adicionar mais cupcakes.
    5. O cliente clica em "Visualizar Carrinho" para revisar os produtos selecionados.
    6. O cliente clica em "Finalizar Pedido".
    7. O sistema registra o pedido.
    8. O cliente recebe uma confirmação do pedido na tela.

Fluxos Alternativos:

    7a. Erro de conexão
        Se o sistema não conseguir registrar o pedido no BD, exibe uma mensagem informando que não foi possível realizar o pedido.
        O cliente pode tentar realizar o pedido novamente mais tarde.

Fluxos de Exceção:

    6a. Carrinho Vazio:
        Se o cliente tenta finalizar um pedido sem produtos no carrinho, o sistema exibe uma mensagem informando que o carrinho está vazio.
        O fluxo retorna ao passo 1.






---> Editar Informações Pessoais de Perfil

Ator Principal: Cliente

Descrição: O cliente atualiza suas informações pessoais, como nome, e-mail, endereço e telefone, no sistema.

Pré-condições:

    O cliente deve estar autenticado no sistema (logado).

Pós-condições:

    As informações pessoais do cliente são atualizadas no sistema.

Fluxo Principal:

    1. O cliente acessa sua conta e vai até a seção "Perfil".
    2. O cliente clica na opção "Editar Informações Pessoais".
    3. O sistema exibe um formulário com os dados pessoais atuais do cliente:
        Nome
        Endereço
        Telefone
    4. O cliente edita os campos desejados com as novas informações.
    5. O cliente clica em "Salvar" para atualizar as informações.
    6. sistema valida as novas informações verificando se todos os campos estão preenchidos.
    7. Se todas as validações forem bem-sucedidas, o sistema atualiza as informações no banco de dados.
    8. O sistema exibe uma mensagem de confirmação de que as informações foram atualizadas com sucesso.

Fluxos Alternativos:

    6a. Validação Falhou:
        Se alguma validação falhar (ex.: campos não preenchidos), o sistema exibe uma mensagem de erro.
        O cliente insere as informações e repete o passo 5.

Fluxos de Exceção:

    4a. Erro de Conexão:
        Se o sistema não conseguir registrar o pedido no BD, exibe uma mensagem informando que não foi possível realizar o pedido.
        O cliente pode tentar atualizar as informações novamente mais tarde.







--> Adicionar produto para venda

Ator Principal: Administrador

Descrição: O administrador insere as informações de um novo cupcake no sistema para disponibilizá-lo na vitrine virtual.

Pré-condições:

    O administrador deve estar autenticado no sistema (logado).

Pós-condições:

    O novo produto é adicionado à vitrine virtual e está disponível para os clientes visualizarem e comprarem.

Fluxo Principal:

    1. O administrador acessa o painel de administração do sistema.
    2. O administrador seleciona a opção "Adicionar Produto".
    3. O sistema exibe o formulário para inserção de dados do produto.
    4. O administrador insere as informações do cupcake, incluindo:
        Nome do Produto
        Descrição
        Preço
        Imagem do Produto
    5. O administrador clica em "Salvar" para adicionar o produto.
    6. O sistema valida as informações inseridas:
        Verifica se todos os campos obrigatórios estão preenchidos.
        Verifica se o preço é um valor válido.
    7. O sistema salva o novo produto no banco de dados.
    8. O sistema atualiza a vitrine virtual para incluir o novo produto.
    9. O administrador recebe uma confirmação de que o produto foi adicionado com sucesso.

Fluxos Alternativos:

    6a. Validação Falhou:
        Se alguma validação falhar (ex.: preço inválido, campo obrigatório vazio), o sistema exibe uma mensagem de erro.
        O administrador corrige as informações e repete o passo 5.

Fluxos de Exceção:

    4a. Erro de Conexão:
        Se o sistema não conseguir registrar o pedido no BD, exibe uma mensagem informando que não foi possível realizar o pedido.
        O administrador pode tentar adicionar o produto novamente ou entrar em contato com o suporte técnico.
