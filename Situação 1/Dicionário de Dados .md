# **Dicionário de Dados**
## Tabela: clientes

- id (string): Identificador único do cliente.
- name (string): Nome completo do cliente.
- address (string): Endereço do cliente.
- email (string): Email do cliente.

## Tabela: administradores

- id (string): Identificador único do administrador.
- name (string): Nome completo do administrador.
- email (string): Endereço de e-mail do administrador.
- password (string): Hash da senha para autenticação segura.

## Tabela: produtos

- id (string): Identificador único do produto.
- name (string): Nome do produto.
- description (string): Descrição detalhada do produto.
- price (double): Preço unitário do produto.
- imagem_url (URL): URL da imagem do produto.

## Tabela: pedidos

- id (string): Identificador único do pedido.
- client_id (string): Referência ao cliente que fez o pedido.
- date (timestamp): Data e hora em que o pedido foi realizado.
- total_price (double): Valor total do pedido.

## Tabela: itens_pedido

- id (string): Identificador único do item no pedido.
- order_id (string): Referência ao pedido (chave estrangeira para pedidos).
- product_id (string): Referência ao produto (chave estrangeira para produtos).
- quantity (int): Quantidade do produto neste item do pedido.
- price (double): Preço unitário do produto.

## Tabela: entregas

- id (string): Identificador único da entrega.
- order_id (string): Referência ao pedido associado à entrega (chave estrangeira para pedidos).
- user_address (string): Endereço de entrega para o pedido.
