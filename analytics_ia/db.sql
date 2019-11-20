--
-- File generated with SQLiteStudio v3.2.1 on qua nov 20 10:08:21 2019
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- Table: auth_group_permissions
CREATE TABLE auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_permission
CREATE TABLE auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                1,
                                1,
                                'add_logentry',
                                'Can add log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                2,
                                1,
                                'change_logentry',
                                'Can change log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                3,
                                1,
                                'delete_logentry',
                                'Can delete log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                4,
                                1,
                                'view_logentry',
                                'Can view log entry'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                5,
                                2,
                                'add_permission',
                                'Can add permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                6,
                                2,
                                'change_permission',
                                'Can change permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                7,
                                2,
                                'delete_permission',
                                'Can delete permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                8,
                                2,
                                'view_permission',
                                'Can view permission'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                9,
                                3,
                                'add_group',
                                'Can add group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                10,
                                3,
                                'change_group',
                                'Can change group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                11,
                                3,
                                'delete_group',
                                'Can delete group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                12,
                                3,
                                'view_group',
                                'Can view group'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                13,
                                4,
                                'add_user',
                                'Can add user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                14,
                                4,
                                'change_user',
                                'Can change user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                15,
                                4,
                                'delete_user',
                                'Can delete user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                16,
                                4,
                                'view_user',
                                'Can view user'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                17,
                                5,
                                'add_contenttype',
                                'Can add content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                18,
                                5,
                                'change_contenttype',
                                'Can change content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                19,
                                5,
                                'delete_contenttype',
                                'Can delete content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                20,
                                5,
                                'view_contenttype',
                                'Can view content type'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                21,
                                6,
                                'add_session',
                                'Can add session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                22,
                                6,
                                'change_session',
                                'Can change session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                23,
                                6,
                                'delete_session',
                                'Can delete session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                24,
                                6,
                                'view_session',
                                'Can view session'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                25,
                                7,
                                'add_concept',
                                'Can add concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                26,
                                7,
                                'change_concept',
                                'Can change concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                27,
                                7,
                                'delete_concept',
                                'Can delete concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                28,
                                7,
                                'view_concept',
                                'Can view concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                29,
                                8,
                                'add_context',
                                'Can add context'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                30,
                                8,
                                'change_context',
                                'Can change context'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                31,
                                8,
                                'delete_context',
                                'Can delete context'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                32,
                                8,
                                'view_context',
                                'Can view context'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                33,
                                9,
                                'add_map',
                                'Can add map'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                34,
                                9,
                                'change_map',
                                'Can change map'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                35,
                                9,
                                'delete_map',
                                'Can delete map'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                36,
                                9,
                                'view_map',
                                'Can view map'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                37,
                                10,
                                'add_userconcept',
                                'Can add user concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                38,
                                10,
                                'change_userconcept',
                                'Can change user concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                39,
                                10,
                                'delete_userconcept',
                                'Can delete user concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                40,
                                10,
                                'view_userconcept',
                                'Can view user concept'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                41,
                                11,
                                'add_subject',
                                'Can add subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                42,
                                11,
                                'change_subject',
                                'Can change subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                43,
                                11,
                                'delete_subject',
                                'Can delete subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                44,
                                11,
                                'view_subject',
                                'Can view subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                45,
                                12,
                                'add_question',
                                'Can add question'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                46,
                                12,
                                'change_question',
                                'Can change question'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                47,
                                12,
                                'delete_question',
                                'Can delete question'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                48,
                                12,
                                'view_question',
                                'Can view question'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                49,
                                13,
                                'add_alternative',
                                'Can add alternative'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                50,
                                13,
                                'change_alternative',
                                'Can change alternative'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                51,
                                13,
                                'delete_alternative',
                                'Can delete alternative'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                52,
                                13,
                                'view_alternative',
                                'Can view alternative'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                53,
                                14,
                                'add_usersubject',
                                'Can add user subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                54,
                                14,
                                'change_usersubject',
                                'Can change user subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                55,
                                14,
                                'delete_usersubject',
                                'Can delete user subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                56,
                                14,
                                'view_usersubject',
                                'Can view user subject'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                57,
                                15,
                                'add_userquestionhistory',
                                'Can add user question history'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                58,
                                15,
                                'change_userquestionhistory',
                                'Can change user question history'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                59,
                                15,
                                'delete_userquestionhistory',
                                'Can delete user question history'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                60,
                                15,
                                'view_userquestionhistory',
                                'Can view user question history'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                61,
                                16,
                                'add_difficulty',
                                'Can add difficulty'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                62,
                                16,
                                'change_difficulty',
                                'Can change difficulty'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                63,
                                16,
                                'delete_difficulty',
                                'Can delete difficulty'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                64,
                                16,
                                'view_difficulty',
                                'Can view difficulty'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                65,
                                17,
                                'add_evidence',
                                'Can add evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                66,
                                17,
                                'change_evidence',
                                'Can change evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                67,
                                17,
                                'delete_evidence',
                                'Can delete evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                68,
                                17,
                                'view_evidence',
                                'Can view evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                69,
                                18,
                                'add_questionevidence',
                                'Can add question evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                70,
                                18,
                                'change_questionevidence',
                                'Can change question evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                71,
                                18,
                                'delete_questionevidence',
                                'Can delete question evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                72,
                                18,
                                'view_questionevidence',
                                'Can view question evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                73,
                                19,
                                'add_userevidence',
                                'Can add user evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                74,
                                19,
                                'change_userevidence',
                                'Can change user evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                75,
                                19,
                                'delete_userevidence',
                                'Can delete user evidence'
                            );

INSERT INTO auth_permission (
                                id,
                                content_type_id,
                                codename,
                                name
                            )
                            VALUES (
                                76,
                                19,
                                'view_userevidence',
                                'Can view user evidence'
                            );


-- Table: auth_user
CREATE TABLE auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    first_name   VARCHAR (30)  NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    last_name    VARCHAR (150) NOT NULL
);


-- Table: auth_user_groups
CREATE TABLE auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_user_user_permissions
CREATE TABLE auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: conceptual_map_concept
CREATE TABLE conceptual_map_concept (
    id        INTEGER      NOT NULL
                           PRIMARY KEY AUTOINCREMENT,
    level     INTEGER      NOT NULL,
    content   VARCHAR (50) NOT NULL,
    parent_id INTEGER
                           REFERENCES conceptual_map_concept (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: conceptual_map_context
CREATE TABLE conceptual_map_context (
    id   INTEGER      NOT NULL
                      PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (50) NOT NULL
);


-- Table: conceptual_map_map
CREATE TABLE conceptual_map_map (
    id   INTEGER      NOT NULL
                      PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (50) NOT NULL
);


-- Table: conceptual_map_userconcept
CREATE TABLE conceptual_map_userconcept (
    id         INTEGER NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    concept_id INTEGER NOT NULL
                       REFERENCES conceptual_map_concept (id) DEFERRABLE INITIALLY DEFERRED,
    user_id    INTEGER NOT NULL
                       REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: django_admin_log
CREATE TABLE django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    action_time     DATETIME            NOT NULL,
    object_id       TEXT,
    object_repr     VARCHAR (200)       NOT NULL,
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0) 
);


-- Table: django_content_type
CREATE TABLE django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    1,
                                    'admin',
                                    'logentry'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    2,
                                    'auth',
                                    'permission'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    3,
                                    'auth',
                                    'group'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    4,
                                    'auth',
                                    'user'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    5,
                                    'contenttypes',
                                    'contenttype'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    6,
                                    'sessions',
                                    'session'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    7,
                                    'conceptual_map',
                                    'concept'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    8,
                                    'conceptual_map',
                                    'context'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    9,
                                    'conceptual_map',
                                    'map'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    10,
                                    'conceptual_map',
                                    'userconcept'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    11,
                                    'knowledge_modeling',
                                    'subject'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    12,
                                    'knowledge_modeling',
                                    'question'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    13,
                                    'knowledge_modeling',
                                    'alternative'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    14,
                                    'knowledge_modeling',
                                    'usersubject'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    15,
                                    'knowledge_modeling',
                                    'userquestionhistory'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    16,
                                    'knowledge_modeling',
                                    'difficulty'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    17,
                                    'knowledge_modeling',
                                    'evidence'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    18,
                                    'knowledge_modeling',
                                    'questionevidence'
                                );

INSERT INTO django_content_type (
                                    id,
                                    app_label,
                                    model
                                )
                                VALUES (
                                    19,
                                    'knowledge_modeling',
                                    'userevidence'
                                );


-- Table: django_migrations
CREATE TABLE django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  1,
                                  'contenttypes',
                                  '0001_initial',
                                  '2019-11-20 13:06:07.523642'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  2,
                                  'auth',
                                  '0001_initial',
                                  '2019-11-20 13:06:07.623465'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  3,
                                  'admin',
                                  '0001_initial',
                                  '2019-11-20 13:06:07.795928'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  4,
                                  'admin',
                                  '0002_logentry_remove_auto_add',
                                  '2019-11-20 13:06:07.923420'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  5,
                                  'admin',
                                  '0003_logentry_add_action_flag_choices',
                                  '2019-11-20 13:06:08.045746'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  6,
                                  'contenttypes',
                                  '0002_remove_content_type_name',
                                  '2019-11-20 13:06:08.148006'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  7,
                                  'auth',
                                  '0002_alter_permission_name_max_length',
                                  '2019-11-20 13:06:08.255610'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  8,
                                  'auth',
                                  '0003_alter_user_email_max_length',
                                  '2019-11-20 13:06:08.369620'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  9,
                                  'auth',
                                  '0004_alter_user_username_opts',
                                  '2019-11-20 13:06:08.568584'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  10,
                                  'auth',
                                  '0005_alter_user_last_login_null',
                                  '2019-11-20 13:06:08.697179'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  11,
                                  'auth',
                                  '0006_require_contenttypes_0002',
                                  '2019-11-20 13:06:08.793438'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  12,
                                  'auth',
                                  '0007_alter_validators_add_error_messages',
                                  '2019-11-20 13:06:08.891805'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  13,
                                  'auth',
                                  '0008_alter_user_username_max_length',
                                  '2019-11-20 13:06:08.990758'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  14,
                                  'auth',
                                  '0009_alter_user_last_name_max_length',
                                  '2019-11-20 13:06:09.090947'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  15,
                                  'auth',
                                  '0010_alter_group_name_max_length',
                                  '2019-11-20 13:06:09.200360'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  16,
                                  'auth',
                                  '0011_update_proxy_permissions',
                                  '2019-11-20 13:06:09.355056'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  17,
                                  'conceptual_map',
                                  '0001_initial',
                                  '2019-11-20 13:06:09.453514'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  18,
                                  'conceptual_map',
                                  '0002_auto_20190705_0335',
                                  '2019-11-20 13:06:09.604267'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  19,
                                  'conceptual_map',
                                  '0003_auto_20190705_0337',
                                  '2019-11-20 13:06:09.712987'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  20,
                                  'conceptual_map',
                                  '0004_auto_20190705_1555',
                                  '2019-11-20 13:06:09.825696'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  21,
                                  'conceptual_map',
                                  '0005_userconcept',
                                  '2019-11-20 13:06:09.925182'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  22,
                                  'knowledge_modeling',
                                  '0001_initial',
                                  '2019-11-20 13:06:10.063956'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  23,
                                  'knowledge_modeling',
                                  '0002_auto_20190630_2231',
                                  '2019-11-20 13:06:10.196396'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  24,
                                  'knowledge_modeling',
                                  '0003_auto_20190704_0226',
                                  '2019-11-20 13:06:10.331988'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  25,
                                  'knowledge_modeling',
                                  '0004_auto_20190705_0244',
                                  '2019-11-20 13:06:10.533903'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  26,
                                  'knowledge_modeling',
                                  '0005_auto_20190705_0335',
                                  '2019-11-20 13:06:10.694860'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  27,
                                  'knowledge_modeling',
                                  '0006_difficulty_evidence',
                                  '2019-11-20 13:06:10.830587'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  28,
                                  'knowledge_modeling',
                                  '0007_subject_publications',
                                  '2019-11-20 13:06:10.998779'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  29,
                                  'knowledge_modeling',
                                  '0008_auto_20191002_1724',
                                  '2019-11-20 13:06:11.188731'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  30,
                                  'knowledge_modeling',
                                  '0009_auto_20191002_1727',
                                  '2019-11-20 13:06:11.306059'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  31,
                                  'knowledge_modeling',
                                  '0010_auto_20191002_1735',
                                  '2019-11-20 13:06:11.549910'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  32,
                                  'knowledge_modeling',
                                  '0011_auto_20191002_1756',
                                  '2019-11-20 13:06:11.716621'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  33,
                                  'knowledge_modeling',
                                  '0012_auto_20191002_1833',
                                  '2019-11-20 13:06:12.285194'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  34,
                                  'knowledge_modeling',
                                  '0013_questionevidence',
                                  '2019-11-20 13:06:12.483038'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  35,
                                  'knowledge_modeling',
                                  '0014_auto_20191009_1611',
                                  '2019-11-20 13:06:12.648510'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  36,
                                  'knowledge_modeling',
                                  '0015_auto_20191009_1615',
                                  '2019-11-20 13:06:12.808971'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  37,
                                  'knowledge_modeling',
                                  '0016_auto_20191009_1637',
                                  '2019-11-20 13:06:12.985784'
                              );

INSERT INTO django_migrations (
                                  id,
                                  app,
                                  name,
                                  applied
                              )
                              VALUES (
                                  38,
                                  'sessions',
                                  '0001_initial',
                                  '2019-11-20 13:06:13.101438'
                              );


-- Table: django_session
CREATE TABLE django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);


-- Table: knowledge_modeling_alternative
CREATE TABLE knowledge_modeling_alternative (
    id          INTEGER     NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    content     TEXT        NOT NULL,
    number      VARCHAR (5),
    status      BOOL        NOT NULL,
    question_id INTEGER     NOT NULL
                            REFERENCES knowledge_modeling_question (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: knowledge_modeling_difficulty
CREATE TABLE knowledge_modeling_difficulty (
    id   INTEGER      NOT NULL
                      PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (50) NOT NULL
);


-- Table: knowledge_modeling_evidence
CREATE TABLE knowledge_modeling_evidence (
    id                  INTEGER      NOT NULL
                                     PRIMARY KEY AUTOINCREMENT,
    name                VARCHAR (50) NOT NULL,
    correct_knowing     DECIMAL      NOT NULL,
    correct_not_knowing DECIMAL      NOT NULL,
    mistake_knowing     DECIMAL      NOT NULL,
    mistake_not_knowing DECIMAL      NOT NULL,
    difficulty_id       INTEGER      NOT NULL
                                     REFERENCES knowledge_modeling_difficulty (id) DEFERRABLE INITIALLY DEFERRED,
    subject_id          INTEGER      NOT NULL
                                     REFERENCES knowledge_modeling_subject (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: knowledge_modeling_question
CREATE TABLE knowledge_modeling_question (
    id      INTEGER NOT NULL
                    PRIMARY KEY AUTOINCREMENT,
    number  INTEGER NOT NULL,
    content TEXT    NOT NULL
);


-- Table: knowledge_modeling_question_subjects
CREATE TABLE knowledge_modeling_question_subjects (
    id          INTEGER NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    question_id INTEGER NOT NULL
                        REFERENCES knowledge_modeling_question (id) DEFERRABLE INITIALLY DEFERRED,
    subject_id  INTEGER NOT NULL
                        REFERENCES knowledge_modeling_subject (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: knowledge_modeling_questionevidence
CREATE TABLE knowledge_modeling_questionevidence (
    id          INTEGER      NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    name        VARCHAR (50) NOT NULL,
    evidence_id INTEGER      NOT NULL
                             REFERENCES knowledge_modeling_evidence (id) DEFERRABLE INITIALLY DEFERRED,
    question_id INTEGER      NOT NULL
                             REFERENCES knowledge_modeling_question (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: knowledge_modeling_subject
CREATE TABLE knowledge_modeling_subject (
    id               INTEGER      NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    name             VARCHAR (50) NOT NULL,
    node_name        VARCHAR (50) NOT NULL,
    level            INTEGER,
    guess_value      DECIMAL      NOT NULL,
    slip_value       DECIMAL      NOT NULL,
    transition_value DECIMAL      NOT NULL,
    value            DECIMAL      NOT NULL
);


-- Table: knowledge_modeling_subject_children
CREATE TABLE knowledge_modeling_subject_children (
    id              INTEGER NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    from_subject_id INTEGER NOT NULL
                            REFERENCES knowledge_modeling_subject (id) DEFERRABLE INITIALLY DEFERRED,
    to_subject_id   INTEGER NOT NULL
                            REFERENCES knowledge_modeling_subject (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: knowledge_modeling_userevidence
CREATE TABLE knowledge_modeling_userevidence (
    id          INTEGER NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    user_id     INTEGER NOT NULL
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    status      BOOL    NOT NULL,
    evidence_id INTEGER NOT NULL
                        REFERENCES knowledge_modeling_questionevidence (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: knowledge_modeling_userquestionhistory
CREATE TABLE knowledge_modeling_userquestionhistory (
    id          INTEGER NOT NULL
                        PRIMARY KEY AUTOINCREMENT,
    status      BOOL    NOT NULL,
    question_id INTEGER NOT NULL
                        REFERENCES knowledge_modeling_question (id) DEFERRABLE INITIALLY DEFERRED,
    user_id     INTEGER NOT NULL
                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: knowledge_modeling_usersubject
CREATE TABLE knowledge_modeling_usersubject (
    id         INTEGER NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    subject_id INTEGER NOT NULL
                       REFERENCES knowledge_modeling_subject (id) DEFERRABLE INITIALLY DEFERRED,
    user_id    INTEGER NOT NULL
                       REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    time_index INTEGER NOT NULL,
    value      DECIMAL NOT NULL
);


-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- Index: auth_user_groups_group_id_97559544
CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- Index: conceptual_map_concept_parent_id_4db6e318
CREATE INDEX conceptual_map_concept_parent_id_4db6e318 ON conceptual_map_concept (
    "parent_id"
);


-- Index: conceptual_map_userconcept_concept_id_ad16ecb7
CREATE INDEX conceptual_map_userconcept_concept_id_ad16ecb7 ON conceptual_map_userconcept (
    "concept_id"
);


-- Index: conceptual_map_userconcept_user_id_b352e60c
CREATE INDEX conceptual_map_userconcept_user_id_b352e60c ON conceptual_map_userconcept (
    "user_id"
);


-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- Index: django_session_expire_date_a5c62663
CREATE INDEX django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


-- Index: knowledge_modeling_alternative_question_id_390b5d4b
CREATE INDEX knowledge_modeling_alternative_question_id_390b5d4b ON knowledge_modeling_alternative (
    "question_id"
);


-- Index: knowledge_modeling_evidence_difficulty_id_50c16508
CREATE INDEX knowledge_modeling_evidence_difficulty_id_50c16508 ON knowledge_modeling_evidence (
    "difficulty_id"
);


-- Index: knowledge_modeling_evidence_subject_id_602ec835
CREATE INDEX knowledge_modeling_evidence_subject_id_602ec835 ON knowledge_modeling_evidence (
    "subject_id"
);


-- Index: knowledge_modeling_question_subjects_question_id_4d47ad26
CREATE INDEX knowledge_modeling_question_subjects_question_id_4d47ad26 ON knowledge_modeling_question_subjects (
    "question_id"
);


-- Index: knowledge_modeling_question_subjects_question_id_subject_id_9407f6d4_uniq
CREATE UNIQUE INDEX knowledge_modeling_question_subjects_question_id_subject_id_9407f6d4_uniq ON knowledge_modeling_question_subjects (
    "question_id",
    "subject_id"
);


-- Index: knowledge_modeling_question_subjects_subject_id_ec3506b9
CREATE INDEX knowledge_modeling_question_subjects_subject_id_ec3506b9 ON knowledge_modeling_question_subjects (
    "subject_id"
);


-- Index: knowledge_modeling_questionevidence_evidence_id_6bb389a0
CREATE INDEX knowledge_modeling_questionevidence_evidence_id_6bb389a0 ON knowledge_modeling_questionevidence (
    "evidence_id"
);


-- Index: knowledge_modeling_questionevidence_question_id_84868288
CREATE INDEX knowledge_modeling_questionevidence_question_id_84868288 ON knowledge_modeling_questionevidence (
    "question_id"
);


-- Index: knowledge_modeling_subject_children_from_subject_id_ef51dfb3
CREATE INDEX knowledge_modeling_subject_children_from_subject_id_ef51dfb3 ON knowledge_modeling_subject_children (
    "from_subject_id"
);


-- Index: knowledge_modeling_subject_children_from_subject_id_to_subject_id_7b04c189_uniq
CREATE UNIQUE INDEX knowledge_modeling_subject_children_from_subject_id_to_subject_id_7b04c189_uniq ON knowledge_modeling_subject_children (
    "from_subject_id",
    "to_subject_id"
);


-- Index: knowledge_modeling_subject_children_to_subject_id_df69ce94
CREATE INDEX knowledge_modeling_subject_children_to_subject_id_df69ce94 ON knowledge_modeling_subject_children (
    "to_subject_id"
);


-- Index: knowledge_modeling_userevidence_evidence_id_82e2e436
CREATE INDEX knowledge_modeling_userevidence_evidence_id_82e2e436 ON knowledge_modeling_userevidence (
    "evidence_id"
);


-- Index: knowledge_modeling_userevidence_user_id_e4d6e0b6
CREATE INDEX knowledge_modeling_userevidence_user_id_e4d6e0b6 ON knowledge_modeling_userevidence (
    "user_id"
);


-- Index: knowledge_modeling_userquestionhistory_question_id_ed0b1b18
CREATE INDEX knowledge_modeling_userquestionhistory_question_id_ed0b1b18 ON knowledge_modeling_userquestionhistory (
    "question_id"
);


-- Index: knowledge_modeling_userquestionhistory_user_id_e60f048a
CREATE INDEX knowledge_modeling_userquestionhistory_user_id_e60f048a ON knowledge_modeling_userquestionhistory (
    "user_id"
);


-- Index: knowledge_modeling_usersubject_subject_id_f372b3ce
CREATE INDEX knowledge_modeling_usersubject_subject_id_f372b3ce ON knowledge_modeling_usersubject (
    "subject_id"
);


-- Index: knowledge_modeling_usersubject_user_id_b94fd3f7
CREATE INDEX knowledge_modeling_usersubject_user_id_b94fd3f7 ON knowledge_modeling_usersubject (
    "user_id"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
