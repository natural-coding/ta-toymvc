## DB-LAYER

### Schema
toymvc

               
### Tables
1. [textbook_items] (Задачи, введенные посетителями сайта)
   - id
   - username
   - email
   - problem_text
   - is\_problem\_solved
   - admin_id

### Column descriptions
1. [textbook_items]
   - id
   - username
      - Имя пользователя, создавшего задачу
      - 32 символа
   - email
      - E-mail пользователя, создавшего задачу
      - 32 символа
      - Содержит буквы, цифры, точки, тире, @-sign
   - problem_text
      - Описание задачи
      - Разрешены переводы строк
      - HTML-теги запрещены
      - Максимальная длина ~1.5kB (1536 символов)
      - Минимальная длина 32 символа
   - is\_problem\_solved
      - Задача решена или нет
      - Boolean/Tinyint(1) (0 - НЕ решено, 1 - решено)
      - not null
      - default 0
   - admin_id
      - id пользователя из группы Администраторы, который редактировал 
      запись в БД (для модификации БД в будущем)
      - В настоящее время: признак редактирования записи администратором. 
      Любое значение, которое not null
      - unsigned integer, nullable 

### Triggers
1. [textbook_items]
   - BEFORE_INSERT
      - problem_text: проверить минимальную длину поля 
      - email: тоже проверки на уровне БД

<!--
### Tables and column types
1. [textbook_items] / [problems]
   - id
   - 
-->






