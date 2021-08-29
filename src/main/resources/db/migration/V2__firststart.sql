INSERT INTO questions (question, answer) VALUES
('Что такое класс Object? Какие в нем есть методы?', 'Object - Родитель всех классов. clone() - создает новый объект, не отличающийся от клонируемого.
equals(Object obj) - определяет, равен ли один объект другому.
finalize() - вызывается перед удалением неиспользуемого объекта.
getClass() - получает класс объекта во время выполнения.
 hashCode() - возвращает хэш-код, связанный с вызывающим объектом.
notify() - возобновляет исполнение потока, ожидающего вызывающего объекта.
notifyAll() - возобновляет исполнение всех потоков, ожидающих вызывающего объекта.
 toString() - возвращает символьную строку, описывающую объект.
wait() - ожидает другого потока исполнения.'),
('Различия JVM,JRE,JDK', 'jvm - Java Virtual Machine - среда ("виртуальная"), в которой выполняется твой скомпилированный код
jre - Java Runtime Environment. Просто пакет, который включает в себя JVM и минимальный набор библиотек для работы программ. И еще браузерный плагин, где будут выполняться апплеты.
jdk - Java Development Kit - это уже полноценный набор библиотек и инструментов для для создания, компилирования и дебага программ. Включает в себя jre'),
('Композиция? Агрегация?', 'композиция - тесная связь (машина - двигательн), агрегация - менее тесная связь ( студент - лекция по астрофизике )'),
('Чем отличаются final, finally и finalize()?', 'final - объявление константы.
finally - управляет исключениями. Блок finally необязательный и обеспечивает механизм очистки независимо от того, что произошло в try блоке. Используйте finally для закрытия файлов или для освобождения других системных ресурсов таких, как соединения с базой данных.
finalize() - метод, который помогает при сборке мусора. Метод, который вызывается перед тем, как объект будет уничтожен сборщиком мусора.Не должен быть использован для освобождения ресурсов вне оперативной памяти, потому что Java имеет лимитированное количество этих ресурсов.'),
('Что такое - SOLID', 'Single Responsibility Principle (Принцип единственной ответственности).
O: Open-Closed Principle (Принцип открытости-закрытости).
L: Liskov Substitution Principle (Принцип подстановки Барбары Лисков).
I: Interface Segregation Principle (Принцип разделения интерфейса).
D: Dependency Inversion Principle (Принцип инверсии зависимостей).'),
('Что такое - REST и его требования"}]', 'Модель клиент-сервер.В основе данного ограничения лежит разграничение потребностей. Необходимо отделять потребности клиентского интерфейса от потребностей сервера, хранящего данные. Данное ограничение повышает переносимость клиентского кода на другие платформы, а упрощение серверной части улучшает масштабируемость системы. Само разграничение на “клиент” и “сервер” позволяет им развиваться независимо друг от друга.
2.Отсутствие состояния.Архитектура REST требует соблюдения следующего условия. В период между запросами серверу не нужно хранить информацию о состоянии клиента и наоборот. Все запросы от клиента должны быть составлены так, чтобы сервер получил всю необходимую информацию для выполнения запроса. Таким образом и сервер, и клиент могут "понимать" любое принятое сообщение, не опираясь при этом на предыдущие сообщения.
3.Кэширование.Клиенты могут выполнять кэширование ответов сервера. У тех, в свою очередь, должно быть явное или неявное обозначение как кэшируемых или некэшируемых, чтобы клиенты в ответ на последующие запросы не получали устаревшие или неверные данные.
Правильное использование кэширования помогает полностью или частично устранить некоторые клиент-серверные взаимодействия, ещё больше повышая производительность и расширяемость системы.
4.Единообразие интерфейса.К фундаментальным требованиям REST архитектуры относится и унифицированный, единообразный интерфейс. Клиент должен всегда понимать, в каком формате и на какие адреса ему нужно слать запрос, а сервер, в свою очередь, также должен понимать, в каком формате ему следует отвечать на запросы клиента. Этот единый формат клиент-серверного взаимодействия, который описывает, что, куда, в каком виде и как отсылать и является унифицированным интерфейсом
5.Слои.Под слоями подразумевается иерархическая структура сетей. Иногда клиент может общаться напрямую с сервером, а иногда — просто с промежуточным узлом. Применение промежуточных серверов способно повысить масштабируемость за счёт балансировки нагрузки и распределённого кэширования.
Приведем пример.Представим себе некоторое мобильное приложение, которое пользуется популярностью во всем мире. Его неотъемлемая часть — загрузка картинок. Так как пользователей — миллионы человек, один сервер не смог бы выдержать такой большой нагрузки.
Разграничение системы на слои решит эту проблему. Клиент запросит картинку у промежуточного узла, промежуточный узел запросит картинку у сервера, который наименее загружен в данный момент, и вернет картинку клиенту. Если здесь на каждом уровне иерархии правильно применить кэширование, то можно добиться хорошей масштабируемости системы.
6.Код по требованию.Данное ограничение подразумевает, что клиент может расширять свою функциональность, за счет загрузки кода с сервера в виде апплетов или сценариев. '),
('Что такое - Soap', 'Простой протокол доступа к объектам'),
('Что такое лямбда? ', 'Лямбда-выражение или просто лямбда в Java — упрощённая запись анонимного класса, реализующего функциональный интерфейс. Функциональный интерфейс в Java — интерфейс, в котором объявлен только один абстрактный метод.'),
('Участки памяти в JVM', 'stack (быстрая ) и heap (young generation,old generation,metaspace)'),
('Иерархия Исключений', 'trowable (checked) - error ( uncheked) (системные ошибки) - exeption (cheked) - runtime(uncheked) , sql(cheked), io(cheked), '),
('Ключевые слова try/catch/finaly/throw/trows', 'try - может возникнуть исключение/ catch - обработка / funaly - почти всегда выполнится / throw - создание своего, trows - проброс'),
('Что такое механизм try-with-resources?', 'Конструкцию try-with-resources ввели в Java 7. Она дает возможность объявлять один или несколько ресурсов в блоке try, которые будут закрыты автоматически без использования finally блока.
В качестве ресурса можно использовать любой объект, класс которого реализует интерфейс java.lang.AutoCloseable или java.io.Closable.'),
('Что такое Generics ?', 'Обобщения - это параметризованные типы. С их помощью можно объявлять классы, интерфейсы и методы, где тип данных указан в виде параметра.'),
('reflection API', 'Рефлексия:Узнать/определить класс объекта,Получить информацию о модификаторах класса, полях, методах, константах, конструкторах и суперклассах;
Выяснить, какие методы принадлежат реализуемому интерфейсу/интерфейсам;
Создать экземпляр класса, причем имя класса неизвестно до момента выполнения программы;
Получить и установить значение поля объекта по имени;
Вызвать метод объекта по имени.'),
('Что такое - TCP/IP', 'Стек протоколов TCP/IP - набор сетевых протоколов передачи данных : прикладной (http,ftp) транспортный (tcp, udp)  сетевой (ip) , канальный или уровень сетевых интерфейсов (ethernet)'),
('Отличия TCP от UDP?', 'TCP - отправка и получение, UDP - только отправка( нужна для скорости, например, видеосвязь)'),
('В каких состояниях может находиться поток?', 'new,runnable,running,waiting,dead'),
('Какие существуют способы синхронизации в Java?', ' Системная синхронизация с использованием wait/notify. Поток, который ждет выполнения каких-либо условий, вызывает у этого объекта метод wait, предварительно захватив его монитор. На этом его работа приостанавливается. Другой поток может вызвать на этом же самом объекте метод notify (опять же, предварительно захватив монитор объекта), в результате чего, ждущий на объекте поток "просыпается" и продолжает свое выполнение.

2. Системная синхронизация с использованием join
Метод join, вызванный у экземпляра класса Thread, позволяет текущему потоку остановиться до того момента, как поток, связаный с этим экземпляром, закончит работу.

3. Использование классов из пакета java.util.concurrent,
который предоставляет набор классов для организации межпоточного взаимодействия. Примеры таких классов - Lock, семафор (Semaphore), etc. Концепция данного подхода заключается в использовании атомарных операций и переменных.'),
('Что такое race condition? и как решается?', 'состояние, при котором хотя бы один потом редактирует, а второй читает. в результате возникает некорректные результаты. Использовать локи, атомики'),
('Что такое Процесс и Поток?', 'Процесс — экземпляр программы во время выполнения, независимый объект, которому выделены системные ресурсы (например, процессорное время и память).Поток — определенный способ выполнения процесса. Когда один поток изменяет ресурс процесса, это изменение сразу же становится видно другим потокам этого процесса.'),
('Что такое livelock?', 'ситуацию, в которой два или больше потока что-то делают, но оба друг другу мешают, и толку от них на круг никакого. Представьте двух людей, что столкнулись в узком проходе и долго пытаются уступить друг другу дорогу, каждый раз сдвигаясь в одну сторону.'),
('Дайте определение понятию «синхронизация', 'Синхронизация – это процесс, который позволяет выполнять все параллельные потоки в программе синхронно'),
('Чем отличаются методы yield(), sleep(), wait(),join()?', 'метод yield(), она меняет состояние потока из running в runnable.
При вызове метода sleep(), поток приостанавливает работу на указанное времяю .
Метод wait  меняет состояние потока на waiting , заставляет заснуть текущий поток на одну секунду. его будут методы notify() или notifyAll().метод, который может быть использован для того, чтобы приостановить выполнение текущего потока до тех пор, пока другой поток не закончит свое выполнение') ,
('Что такое «монитор» в Java?', 'Средство обеспечения контроля доступа к объекту'),
('Каким образом можно создать поток?', 'Наследоваться от Thred, имплементится от Runnable и Callable'),
('Чем отличаются два интерфейса Runnable и Callable?', 'Интерфейс Callable похож на Runnable в том, что оба предназначены для классов, чьи экземпляры потенциально выполняются другим потоком. Runnable, однако, не возвращает результат и не может вызвать проверенное исключение.'),
('Проблемы многопоточности', 'race condition, голодание, deadlock, livelock'),
('Что такое deadlock?', 'Ситуация при которой потоки блокируют объекты друг друга. полезным метод lockInterruptibly интерфейса Lock из пакета java.util.concurrent.locks. Он позволяет прервать поток занявший монитор этим методом(и таким образом освободить монитор).'),
('Приведите примеры порождающих шаблонов проектирования', 'Прототип, Синглтон, Билдер'),
('Типы шаблонов проектирования', 'Порождающие. Одиночка, Прототип,Строитель
Структурные. адаптер, мост, фасад
Поведенческие. посредник, наблюдатель, цепочка обязанностей'),
('Приведите примеры структурных шаблонов проектирования.', 'Адаптер, Мост, Фасад'),
('Приведите примеры основных шаблонов проектирования', 'lala'),
('Жизненный цикл Бина', 'Cоздание объекта ( конструктор) - внедрение зависимостей - преинициализация - Aware-интерфейс - BeanPostProcessor ( before инициализация) - инициализация - @postConsruct - initmethod - propetySet - пост-инициализация - BeanPostProcessor.afterInitialization - использование бина - завершение работы - @predestroy - destroymethod'),
('Что такое bean scope и какие виды существуют?', 'Bean Scope - область видимости.Singleton
Определяет один единственный бин для каждого контейнера Spring IoC (используется по умолчанию).
Prototype.Позволяет иметь любое количество экземпляров бина.
Request-Создаётся один экземпляр бина на каждый HTTP запрос. Касается исключительно ApplicationContext.
Session-Создаётся один экземпляр бина на каждую HTTP сессию. Касается исключительно ApplicationContext.
Global-session-Создаётся один экземпляр бина на каждую глобальную HTTP сессию. Касается исключительно ApplicationContext.'),
('Что такое IoC и DI?', 'IoC - это принцип ООП, используемый для уменьшения связанности между классами и объектами. Программист в нужные точки программы разместит необходимый код и не волнуется как и когда должен работать размещенный код. Говоря простым языком, при использовании IoC кодом будет управлять фреймворк а не программист.
DI - делает объекты приложения слабо зависимым друг от друга. То есть об инициализации объектов будет заботится внешний механизм разработанный программистом. При использовании DI программист будет работать не на "уровне классов" а на "уровне интерфейсов". Таким образом зависимости между объектами будут сведены к минимуму. '),
('Что такое Application Context', 'OC — инверсия управления. Вместо ручного внедрения зависимостей, фреймворк забирает ответственность за это.
ApplicationContext — реализация IOC спрингом.'),
('стартеры в spring boot ', 'это набор удобных дескрипторов зависимостей, которые вы можете включить в свое приложение. Позволяет не задумываться о совпадении версий, о том, что нужно для работы проекта'),
('@qualifier', 'Для того, чтобы указать Spring, какой именно бин вам необходим, применяется аннотация @Qualifier'),
('Что такое - ACID / Уровни изоляций', 'Атомарность (atomicity) гарантирует, что никакая транзакция не будет зафиксирована в системе частично. Будут либо выполнены все её подоперации, либо не выполнено ни одной.

Согласованность (consistency). Транзакция, достигающая своего нормального завершения и, тем самым, фиксирующая свои результаты, сохраняет согласованность базы данных.

Изолированность (isolation). Во время выполнения транзакции параллельные транзакции не должны оказывать влияние на её результат.

Долговечность (durability). Независимо от проблем на нижних уровнях (к примеру, обесточивание системы или сбои в оборудовании) изменения, сделанные успешно завершённой транзакцией, должны остаться сохранёнными после возвращения системы в работу.'),
('Нормальные формы БД ', 'Первая нормальная форма (1NF) - Отношение находится в 1NF, если значения всех его атрибутов атомарны (неделимы).
Вторая нормальная форма (2NF) - Отношение находится в 2NF, если оно находится в 1NF, и при этом все неключевые атрибуты зависят только от ключа целиком, а не от какой-то его части.
Третья нормальная форма (3NF) - Отношение находится в 3NF, если оно находится в 2NF и все неключевые атрибуты не зависят друг от друга.'),
('Проблемы при параллельном доступе к бд ', 'Потерянное обновление (lost update) — при одновременном изменении одного блока данных разными транзакциями одно из изменений теряется;
«Грязное» чтение (dirty read) — чтение данных, добавленных или изменённых транзакцией, которая впоследствии не подтвердится (откатится);
Неповторяющееся чтение (non-repeatable read) — при повторном чтении в рамках одной транзакции ранее прочитанные данные оказываются изменёнными;
Фантомное чтение (phantom reads)'),
('Уровни', 'read uncommitted,read committed,repeatable read,serializable'),
('Как работает fetch type LAZY в Hibernate?', 'LAZY загрузка означает, что ORM загрузит сущность или коллекцию отложено, при первом обращении к ней из кода.'),
('Проблема N+1 в Hibernate', 'N+1 проблема в Hibernate состоит в том, в некоторых ситуациях один HQL select преобразуется N+1 SQL select-ов. Это отрицательно влияет на производительность,  поэтому такого поведения нужно избегать.Устранение проблемы с помощью Join Fetch'),
('Кластерные и некластерные индексы', 'С кластеризованным индексом строки физически хранятся на диске в том же порядке, что и индекс. Следовательно, может быть только один кластерный индекс.
С некластеризованным индексом существует второй список, в котором есть указатели на физические строки. У вас может быть много некластеризованных индексов, хотя каждый новый индекс будет увеличивать время, необходимое для записи новых записей.
Как правило, быстрее читать из кластерного индекса, если вы хотите вернуть все столбцы. Вам не нужно идти сначала к индексу, а затем к таблице.
Запись в таблицу с кластеризованным индексом может быть медленнее, если есть необходимость перегруппировать данные.'),
('Состояние Entity', 'Transient: состояние, при котором объект никогда не был связан с какой-либо сессией и не является персистентностью. Этот объект находится во временном состоянии. Объект в этом состоянии может стать персистентным при вызове метода save(), persist() или saveOrUpdate(). Объект персистентности может перейти в transient состоянии после вызова метода delete().
Persistent: когда объект связан с уникальной сессией он находится в состоянии persistent (персистентности). Любой экземпляр, возвращаемый методами get() или load() находится в состоянии persistent.
Detached: если объект был персистентным, но сейчас не связан с какой-либо сессией, то он находится в отвязанном (detached) состоянии. Такой объект можно сделать персистентным используя методы update(), saveOrUpdate(), lock() или replicate(). Состояния transient или detached так же могут перейти в состояние persistent как новый объект персистентности после вызова метода merge().'),
('Как работает Java-Машина?', 'lala'),

('Что такое ООП? Принципы?', 'Наследование, Полиморфизм , Инкапсуляция, Абстракция'),
('Модификаторы доступа', 'private - Class,default - Class,Package,protected - Class,Package,Subclass,public - Class,Package, Subclass, World'),
('Виды Statementov', 'Statement-Этот интерфейс используется для доступа к БД для общих целей. Он крайне полезен, когда мы используем статические SQL – выражения во время работы программы. Этот интерфейс не принимает никаких параметров.
PreparedStatement-Этот интерфейс используется в случае, когда мы планируем использовать SQL – выражения множество раз. Он принимает параметры во время работы программы.
CallableStatement-Этот интерфейс становится полезным вслучае, когда мы хотим получить досутп к различным процедурам БД. Он также может прнимать параметры во время работы программы'),
('Назовите Основные структуры данных', 'Массивы,Стеки,Очереди,Связанные списки,Графы,Деревья,Префиксные деревья,Хэш таблицы'),
('Что такое «коллекция»? Иерархия Коллекций', 'iterable (позволяет прогонять коллекции через for each) , Collection, Set - HashSet,TreeSet,LinkedHashSet, Queue - Deque , List - LinkedList,ArrayList, Map - LinkedHashMap, HashMap, TreeMap'),
('Как работает HashMap?', 'Hashmap - структура данных, которая хранит в себе пару ключ - значение. при создании хэшмап создаются 16 бакетов. при добавлении пары вычисляется хэш код ключа, на основании которого попадает в тот или иной бакет. если объектов нет, если нет, то проиходит проверка по equals( ибо могут быть коллизии) если по equals они одинаковы, то объект заменяется, если нет, то добавляется'),
('Чем отличается ArrayList от LinkedList? В каких случаях лучше использовать первый, а в каких второй?', 'если ты собираешься вставлять (или удалять) в середину коллекции много элементов, то тебе лучше использовать LinkedList. Во всех остальных случаях – ArrayList.'),
('Что такое Git? Как работает?', 'Система контроля версий.'),
('Расскажите о себе и о своём опыте', 'Меня зовут Камиль. Я Java разработчик с 3-х летним опытом  коммерческой разработки. За это время проработал на 3-х проектах (Ростелеком, RM.Toolkit, Магнит). По стеку технологий ( Java
, Spring (Boot, MVC, Data), Hibernate
, PostgreSQL, MySQL
, Junit
, Git
, Maven)
По флоу работу — везде было подобие скрама  с двухнедельными спринтами, ежедневными дейликами с некоторыми отклонениями как свойственно проектам. Фиксировали всё в Jira

 Начну с Первого проекта.  Ростелком, у которого  есть платформа по предоставлению медиа контента, наша команда  отвечала за ядро этой платформы, где хранятся данные учетных записей,устройств пользователей, тарифов.   В основном это был фикс багов, рефакторинг. написание тестов.
В команде было 15 человек. 6 из которых Бэк.

Второй проект -  RM -tolkit   в качестве бэк разработчика. Проект  помогает ресурс-менеджеру назначать и проводить асесменты, давать фидбэки.  Разрабатывал новые фичи,оценивали сложность задач ,фиксил баги. Писал тесты
В команде было 20 человек. 7-8 из которых Бэк.

На текущий момент работаю на проекте Магнит, проект для сотрудников по мониторингу продаж и их увеличения  . Добавляю функционал,  устраняю неполадки. Провожу ревью кода. Интегрировал Сваггер .
по стеку технологий (• Java, Spring (Boot, MVC, Data), MySQL, JUnit) команда из 5 человек. 2 бека, 1 пм он же аналитик, 1 тестер и фронт.  '),
('В чем отличие между кластерными и некластерными индексами?', 'Некластерные индексы - данные физически расположены в произвольном порядке, но логически упорядочены согласно индексу. Такой тип индексов подходит для часто изменяемого набора данных.
При кластерном индексировании данные физически упорядочены, что серьезно повышает скорость выборок данных (но только в случае последовательного доступа к данным). Для одного набора данных может быть создан только один кластерный индекс.'),
('Какие сложные задачи были?', 'lala'),
('Встроенные функциональные интерфейсы', 'Consumer - выполняет некоторое действие над объектом типа T, при этом ничего не возвращая,Predicate - проверяет соблюдение некоторого условия ,Suplier - не принимает никаких аргументов, но должен возвращать объект типа T,Function - представляет функцию перехода от объекта типа T к объекту типа R,BinaryOperator - принимает в качестве параметра два объекта типа T, выполняет над ними бинарную операцию и возвращает ее результат ,UnaryOperator - принимает в качестве параметра объект типа T, выполняет над ними операции и возвращает результат операций '),
('что такое  happens before?', 'Отношение строгого частичного порядка  введённое между атомарными командами (++ и -- не атомарны!),Оно значит, что вторая команда будет «в курсе» изменений, проведённых первой.'),
('mock и spy отличия?', 'пустышка (dummy) - объект, который обычно передается в тестируемый класс в качестве параметра, но не имеет поведения: с ним ничего не происходит и никакие его методы не вызываются.
Примером dummy-объектов являются new object(), null, «Ignored String» и т.д.
фальшивка (fake object) применяется в основном для ускорения запуска ресурсоёмких тестов и является заменой тяжеловесного внешнего зависимого объекта его легковесной реализацией.
Основные примеры — эмулятор базы данных (fake database) или фальшивый web-сервис.
заглушка (test stub) используется для получения данных из внешней зависимости, подменяя её. При этом заглушка игнорирует все данные, поступающие из тестируемого объекта, возвращая заранее определённый результат.
Тестируемый объект использует чтение из конфигурационного файла? Тогда передаем ему заглушку ConfigFileStub возвращающую тестовые строки конфигурации без обращения к файловой системе.
шпион (test spy) - разновидность заглушки, которая умеет протоколировать сделанные к ней обращения из тестируемой системы, чтобы проверить их правильность в конце теста. При этом фиксируется количество, состав и содержание параметров вызовов.');