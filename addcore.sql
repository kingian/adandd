/*
Navicat MySQL Data Transfer

Source Server         : localSQL
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : adnd

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2014-09-26 22:36:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add character', '7', 'add_character');
INSERT INTO `auth_permission` VALUES ('20', 'Can change character', '7', 'change_character');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete character', '7', 'delete_character');
INSERT INTO `auth_permission` VALUES ('22', 'Can add player_race', '8', 'add_player_race');
INSERT INTO `auth_permission` VALUES ('23', 'Can change player_race', '8', 'change_player_race');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete player_race', '8', 'delete_player_race');
INSERT INTO `auth_permission` VALUES ('25', 'Can add human', '9', 'add_human');
INSERT INTO `auth_permission` VALUES ('26', 'Can change human', '9', 'change_human');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete human', '9', 'delete_human');
INSERT INTO `auth_permission` VALUES ('28', 'Can add dwarf', '10', 'add_dwarf');
INSERT INTO `auth_permission` VALUES ('29', 'Can change dwarf', '10', 'change_dwarf');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete dwarf', '10', 'delete_dwarf');
INSERT INTO `auth_permission` VALUES ('31', 'Can add elf', '11', 'add_elf');
INSERT INTO `auth_permission` VALUES ('32', 'Can change elf', '11', 'change_elf');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete elf', '11', 'delete_elf');
INSERT INTO `auth_permission` VALUES ('34', 'Can add gnome', '12', 'add_gnome');
INSERT INTO `auth_permission` VALUES ('35', 'Can change gnome', '12', 'change_gnome');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete gnome', '12', 'delete_gnome');
INSERT INTO `auth_permission` VALUES ('37', 'Can add halfling', '13', 'add_halfling');
INSERT INTO `auth_permission` VALUES ('38', 'Can change halfling', '13', 'change_halfling');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete halfling', '13', 'delete_halfling');
INSERT INTO `auth_permission` VALUES ('40', 'Can add half_elf', '14', 'add_half_elf');
INSERT INTO `auth_permission` VALUES ('41', 'Can change half_elf', '14', 'change_half_elf');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete half_elf', '14', 'delete_half_elf');
INSERT INTO `auth_permission` VALUES ('43', 'Can add half_orc', '15', 'add_half_orc');
INSERT INTO `auth_permission` VALUES ('44', 'Can change half_orc', '15', 'change_half_orc');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete half_orc', '15', 'delete_half_orc');
INSERT INTO `auth_permission` VALUES ('46', 'Can add player_class', '16', 'add_player_class');
INSERT INTO `auth_permission` VALUES ('47', 'Can change player_class', '16', 'change_player_class');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete player_class', '16', 'delete_player_class');
INSERT INTO `auth_permission` VALUES ('49', 'Can add assassin', '17', 'add_assassin');
INSERT INTO `auth_permission` VALUES ('50', 'Can change assassin', '17', 'change_assassin');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete assassin', '17', 'delete_assassin');
INSERT INTO `auth_permission` VALUES ('52', 'Can add cleric', '18', 'add_cleric');
INSERT INTO `auth_permission` VALUES ('53', 'Can change cleric', '18', 'change_cleric');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete cleric', '18', 'delete_cleric');
INSERT INTO `auth_permission` VALUES ('55', 'Can add druid', '19', 'add_druid');
INSERT INTO `auth_permission` VALUES ('56', 'Can change druid', '19', 'change_druid');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete druid', '19', 'delete_druid');
INSERT INTO `auth_permission` VALUES ('58', 'Can add fighter', '20', 'add_fighter');
INSERT INTO `auth_permission` VALUES ('59', 'Can change fighter', '20', 'change_fighter');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete fighter', '20', 'delete_fighter');
INSERT INTO `auth_permission` VALUES ('61', 'Can add illusionist', '21', 'add_illusionist');
INSERT INTO `auth_permission` VALUES ('62', 'Can change illusionist', '21', 'change_illusionist');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete illusionist', '21', 'delete_illusionist');
INSERT INTO `auth_permission` VALUES ('64', 'Can add magic_user', '22', 'add_magic_user');
INSERT INTO `auth_permission` VALUES ('65', 'Can change magic_user', '22', 'change_magic_user');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete magic_user', '22', 'delete_magic_user');
INSERT INTO `auth_permission` VALUES ('67', 'Can add paladin', '23', 'add_paladin');
INSERT INTO `auth_permission` VALUES ('68', 'Can change paladin', '23', 'change_paladin');
INSERT INTO `auth_permission` VALUES ('69', 'Can delete paladin', '23', 'delete_paladin');
INSERT INTO `auth_permission` VALUES ('70', 'Can add ranger', '24', 'add_ranger');
INSERT INTO `auth_permission` VALUES ('71', 'Can change ranger', '24', 'change_ranger');
INSERT INTO `auth_permission` VALUES ('72', 'Can delete ranger', '24', 'delete_ranger');
INSERT INTO `auth_permission` VALUES ('73', 'Can add thief', '25', 'add_thief');
INSERT INTO `auth_permission` VALUES ('74', 'Can change thief', '25', 'change_thief');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete thief', '25', 'delete_thief');
INSERT INTO `auth_permission` VALUES ('76', 'Can add multi_class', '26', 'add_multi_class');
INSERT INTO `auth_permission` VALUES ('77', 'Can change multi_class', '26', 'change_multi_class');
INSERT INTO `auth_permission` VALUES ('78', 'Can delete multi_class', '26', 'delete_multi_class');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$12000$dWAAt3CsHPHO$FJFa3h1utNVWOxvc64wkSDFElPbqs4OukPX/dHgnD+c=', '2014-09-10 04:48:45', '1', 'iking', '', '', '', '1', '1', '2014-08-27 04:02:43');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'character', 'sandbox', 'character');
INSERT INTO `django_content_type` VALUES ('8', 'player_race', 'sandbox', 'player_race');
INSERT INTO `django_content_type` VALUES ('9', 'human', 'sandbox', 'human');
INSERT INTO `django_content_type` VALUES ('10', 'dwarf', 'sandbox', 'dwarf');
INSERT INTO `django_content_type` VALUES ('11', 'elf', 'sandbox', 'elf');
INSERT INTO `django_content_type` VALUES ('12', 'gnome', 'sandbox', 'gnome');
INSERT INTO `django_content_type` VALUES ('13', 'halfling', 'sandbox', 'halfling');
INSERT INTO `django_content_type` VALUES ('14', 'half_elf', 'sandbox', 'half_elf');
INSERT INTO `django_content_type` VALUES ('15', 'half_orc', 'sandbox', 'half_orc');
INSERT INTO `django_content_type` VALUES ('16', 'player_class', 'sandbox', 'player_class');
INSERT INTO `django_content_type` VALUES ('17', 'assassin', 'sandbox', 'assassin');
INSERT INTO `django_content_type` VALUES ('18', 'cleric', 'sandbox', 'cleric');
INSERT INTO `django_content_type` VALUES ('19', 'druid', 'sandbox', 'druid');
INSERT INTO `django_content_type` VALUES ('20', 'fighter', 'sandbox', 'fighter');
INSERT INTO `django_content_type` VALUES ('21', 'illusionist', 'sandbox', 'illusionist');
INSERT INTO `django_content_type` VALUES ('22', 'magic_user', 'sandbox', 'magic_user');
INSERT INTO `django_content_type` VALUES ('23', 'paladin', 'sandbox', 'paladin');
INSERT INTO `django_content_type` VALUES ('24', 'ranger', 'sandbox', 'ranger');
INSERT INTO `django_content_type` VALUES ('25', 'thief', 'sandbox', 'thief');
INSERT INTO `django_content_type` VALUES ('26', 'multi_class', 'sandbox', 'multi_class');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1lokffftgkl85fjgkc81ptyaz9xde9pr', 'YzMwMTA4YmJkN2E2MjY4ZmZhYjYxYjM2N2U0ZjJmNWNhODdiNzJlMjp7fQ==', '2014-09-10 04:10:23');
INSERT INTO `django_session` VALUES ('xpxbuj3tm171m7fenh4z6xurew6mv3qf', 'YzMwMTA4YmJkN2E2MjY4ZmZhYjYxYjM2N2U0ZjJmNWNhODdiNzJlMjp7fQ==', '2014-09-24 04:49:58');

-- ----------------------------
-- Table structure for `osric_attribute_table`
-- ----------------------------
DROP TABLE IF EXISTS `osric_attribute_table`;
CREATE TABLE `osric_attribute_table` (
  `attribute_score` int(11) NOT NULL DEFAULT '0',
  `str_bonus_to_hit` int(11) DEFAULT NULL,
  `str_bonus_to_damage` int(11) DEFAULT NULL,
  `str_encumberance_adjustment` int(11) DEFAULT NULL,
  `str_minor_tests` int(11) DEFAULT NULL,
  `str_major_test` int(11) DEFAULT NULL,
  `int_max_additional_languages` int(11) DEFAULT NULL,
  `dex_surprise_bonus` int(11) DEFAULT NULL,
  `dex_missile_bonus` int(11) DEFAULT NULL,
  `dex_AC_adjustment` int(11) DEFAULT NULL,
  `wia_mental_saving_throw_bonus` int(11) DEFAULT NULL,
  `con_HP_per_die` int(11) DEFAULT NULL,
  `con_survive_resurrection_raise_dead` int(11) DEFAULT NULL,
  `con_survive_system_shock` int(11) DEFAULT NULL,
  `cha_max_henchmen` int(11) DEFAULT NULL,
  `cha_loyalty_bonus` int(11) DEFAULT NULL,
  `cha_reaction_bonus` int(11) DEFAULT NULL,
  PRIMARY KEY (`attribute_score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osric_attribute_table
-- ----------------------------
INSERT INTO `osric_attribute_table` VALUES ('3', '-3', '-1', '-35', '1', '0', '0', '-3', '-3', '4', '-3', '-2', '40', '35', '1', '-30', '-25');
INSERT INTO `osric_attribute_table` VALUES ('4', '-2', '-1', '-25', '1', '0', '0', '-2', '-2', '3', '-2', '-1', '45', '40', '1', '-25', '-20');
INSERT INTO `osric_attribute_table` VALUES ('5', '-2', '-1', '-25', '1', '0', '0', '-1', '-1', '2', '-1', '-1', '50', '45', '2', '-20', '-15');
INSERT INTO `osric_attribute_table` VALUES ('6', '-1', '0', '-15', '1', '0', '0', '0', '0', '1', '-1', '-1', '55', '50', '2', '-15', '-10');
INSERT INTO `osric_attribute_table` VALUES ('7', '-1', '0', '-15', '1', '0', '0', '0', '0', '0', '-1', '0', '60', '55', '3', '-10', '-5');
INSERT INTO `osric_attribute_table` VALUES ('8', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '65', '60', '3', '-5', '0');
INSERT INTO `osric_attribute_table` VALUES ('9', '0', '0', '0', '2', '1', '1', '0', '0', '0', '0', '0', '70', '65', '4', '0', '0');
INSERT INTO `osric_attribute_table` VALUES ('10', '0', '0', '0', '2', '2', '2', '0', '0', '0', '0', '0', '75', '70', '4', '0', '0');
INSERT INTO `osric_attribute_table` VALUES ('11', '0', '0', '0', '2', '2', '2', '0', '0', '0', '0', '0', '80', '75', '4', '0', '0');
INSERT INTO `osric_attribute_table` VALUES ('12', '0', '0', '10', '2', '4', '3', '0', '0', '0', '0', '0', '85', '80', '5', '0', '0');
INSERT INTO `osric_attribute_table` VALUES ('13', '0', '0', '10', '2', '4', '3', '0', '0', '0', '0', '0', '90', '85', '5', '0', '5');
INSERT INTO `osric_attribute_table` VALUES ('14', '0', '0', '20', '2', '7', '4', '0', '0', '0', '0', '0', '92', '88', '6', '5', '10');
INSERT INTO `osric_attribute_table` VALUES ('15', '0', '0', '20', '2', '7', '4', '0', '0', '-1', '0', '1', '94', '91', '7', '15', '15');
INSERT INTO `osric_attribute_table` VALUES ('16', '0', '1', '35', '3', '10', '5', '1', '1', '-2', '0', '2', '96', '95', '8', '20', '25');
INSERT INTO `osric_attribute_table` VALUES ('17', '1', '1', '50', '3', '13', '6', '2', '2', '-3', '0', '2', '98', '97', '10', '30', '30');
INSERT INTO `osric_attribute_table` VALUES ('18', '1', '2', '75', '3', '16', '7', '3', '3', '-4', '0', '2', '100', '99', '15', '40', '35');
INSERT INTO `osric_attribute_table` VALUES ('19', '3', '6', '300', '5', '40', '8', '3', '3', '-4', '0', '2', '100', '99', '20', '50', '40');

-- ----------------------------
-- Table structure for `osric_race_mins_maxs`
-- ----------------------------
DROP TABLE IF EXISTS `osric_race_mins_maxs`;
CREATE TABLE `osric_race_mins_maxs` (
  `race_id` int(11) NOT NULL AUTO_INCREMENT,
  `race` varchar(255) DEFAULT NULL,
  `str_min` int(11) DEFAULT NULL,
  `dex_min` int(11) DEFAULT NULL,
  `con_min` int(11) DEFAULT NULL,
  `int_min` int(11) DEFAULT NULL,
  `wis_min` int(11) DEFAULT NULL,
  `cha_min` int(11) DEFAULT NULL,
  `assassin` int(11) DEFAULT NULL,
  `cleric` int(11) DEFAULT NULL,
  `druid` int(11) DEFAULT NULL,
  `fighter` int(11) DEFAULT NULL,
  `illusionist` int(11) DEFAULT NULL,
  `magic_user` int(11) DEFAULT NULL,
  `paladin` int(11) DEFAULT NULL,
  `ranger` int(11) DEFAULT NULL,
  `thief` int(11) DEFAULT NULL,
  PRIMARY KEY (`race_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osric_race_mins_maxs
-- ----------------------------
INSERT INTO `osric_race_mins_maxs` VALUES ('1', 'dwarf', '8', '3', '12', '3', '3', '3', '9', '8', null, '7', null, null, null, null, '36');
INSERT INTO `osric_race_mins_maxs` VALUES ('2', 'elf', '3', '7', '8', '8', '3', '8', '10', '7', null, '5', null, '9', null, null, '36');
INSERT INTO `osric_race_mins_maxs` VALUES ('3', 'gnome', '6', '3', '8', '7', '3', '3', '8', '7', null, '5', '5', null, null, null, '36');
INSERT INTO `osric_race_mins_maxs` VALUES ('4', 'half-elf', '3', '6', '6', '4', '3', '3', '11', '5', null, '6', null, '7', null, '6', '36');
INSERT INTO `osric_race_mins_maxs` VALUES ('5', 'halfling', '6', '8', '10', '6', '3', '3', null, null, '6', '4', null, null, null, null, '36');
INSERT INTO `osric_race_mins_maxs` VALUES ('6', 'half-orc', '6', '3', '13', '3', '3', '3', '15', '4', null, '10', null, null, null, null, '36');

-- ----------------------------
-- Table structure for `osric_thac0`
-- ----------------------------
DROP TABLE IF EXISTS `osric_thac0`;
CREATE TABLE `osric_thac0` (
  `thac0_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `twenty_one` int(11) DEFAULT NULL,
  `twenty` int(11) DEFAULT NULL,
  `zero` int(11) DEFAULT NULL,
  PRIMARY KEY (`thac0_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of osric_thac0
-- ----------------------------
INSERT INTO `osric_thac0` VALUES ('1', 'T,A', '1', '-5', '1', null);
INSERT INTO `osric_thac0` VALUES ('2', 'T,A', '5', '-7', '-1', null);
INSERT INTO `osric_thac0` VALUES ('3', 'T,A', '9', '-10', '-4', null);
INSERT INTO `osric_thac0` VALUES ('4', 'T,A', '13', '-12', '-6', null);
INSERT INTO `osric_thac0` VALUES ('5', 'T,A', '17', '-14', '-8', null);
INSERT INTO `osric_thac0` VALUES ('6', 'T,A', '21', '-16', '-10', null);
INSERT INTO `osric_thac0` VALUES ('7', 'C,D', '1', '-6', '0', null);
INSERT INTO `osric_thac0` VALUES ('8', 'C,D', '4', '-8', '-2', null);
INSERT INTO `osric_thac0` VALUES ('9', 'C,D', '7', '-10', '-4', null);
INSERT INTO `osric_thac0` VALUES ('10', 'C,D', '10', '-12', '-6', null);
INSERT INTO `osric_thac0` VALUES ('11', 'C,D', '13', '-14', '-8', null);
INSERT INTO `osric_thac0` VALUES ('12', 'C,D', '16', '-16', '-10', null);
INSERT INTO `osric_thac0` VALUES ('13', 'C,D', '19', '-18', '-12', null);
INSERT INTO `osric_thac0` VALUES ('14', 'F,R,P', '0', '-5', '1', null);
INSERT INTO `osric_thac0` VALUES ('15', 'F,R,P', '1', '-6', '0', null);
INSERT INTO `osric_thac0` VALUES ('16', 'F,R,P', '2', '-7', '-1', null);
INSERT INTO `osric_thac0` VALUES ('17', 'F,R,P', '3', '-8', '-2', null);
INSERT INTO `osric_thac0` VALUES ('18', 'F,R,P', '4', '-9', '-3', null);
INSERT INTO `osric_thac0` VALUES ('19', 'F,R,P', '5', '-10', '-4', null);
INSERT INTO `osric_thac0` VALUES ('20', 'F,R,P', '6', '-11', '-5', null);
INSERT INTO `osric_thac0` VALUES ('21', 'F,R,P', '7', '-12', '-6', null);
INSERT INTO `osric_thac0` VALUES ('22', 'F,R,P', '8', '-13', '-7', null);
INSERT INTO `osric_thac0` VALUES ('23', 'F,R,P', '9', '-14', '-8', null);
INSERT INTO `osric_thac0` VALUES ('24', 'F,R,P', '10', '-15', '-9', null);
INSERT INTO `osric_thac0` VALUES ('25', 'F,R,P', '11', '-16', '-10', '10');
INSERT INTO `osric_thac0` VALUES ('26', 'F,R,P', '12', '-17', '-11', '9');
INSERT INTO `osric_thac0` VALUES ('27', 'F,R,P', '13', '-19', '-12', '8');
INSERT INTO `osric_thac0` VALUES ('28', 'F,R,P', '14', '-20', '-13', '7');
INSERT INTO `osric_thac0` VALUES ('29', 'F,R,P', '15', '-21', '-14', '6');
INSERT INTO `osric_thac0` VALUES ('30', 'F,R,P', '16', '-22', '-15', '5');
INSERT INTO `osric_thac0` VALUES ('31', 'F,R,P', '17', '-23', '-16', '4');
INSERT INTO `osric_thac0` VALUES ('32', 'F,R,P', '18', '-24', '-17', '3');
INSERT INTO `osric_thac0` VALUES ('33', 'F,R,P', '19', '-25', '-18', '2');
INSERT INTO `osric_thac0` VALUES ('34', 'F,R,P', '20', '-26', '-19', '1');
INSERT INTO `osric_thac0` VALUES ('35', 'MU,I', '1', '-5', '1', null);
INSERT INTO `osric_thac0` VALUES ('36', 'MU,I', '6', '-7', '-1', null);
INSERT INTO `osric_thac0` VALUES ('37', 'MU,I', '11', '-9', '-3', null);
INSERT INTO `osric_thac0` VALUES ('38', 'MU,I', '16', '-11', '-5', null);
INSERT INTO `osric_thac0` VALUES ('39', 'MU,I', '21', '-13', '-7', null);

-- ----------------------------
-- Table structure for `sandbox_assassin`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_assassin`;
CREATE TABLE `sandbox_assassin` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_6020a5d4` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_assassin
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_character`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_character`;
CREATE TABLE `sandbox_character` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `strength` int(11) NOT NULL,
  `dexterity` int(11) NOT NULL,
  `constitution` int(11) NOT NULL,
  `intelligence` int(11) NOT NULL,
  `wisdom` int(11) NOT NULL,
  `charisma` int(11) NOT NULL,
  `experience_points` int(11) NOT NULL,
  `hit_points` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `character_log` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sandbox_character_5ef5c1cf` (`race_id`),
  CONSTRAINT `race_id_refs_id_ac5d7183` FOREIGN KEY (`race_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_character
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_cleric`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_cleric`;
CREATE TABLE `sandbox_cleric` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_a86365f5` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_cleric
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_druid`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_druid`;
CREATE TABLE `sandbox_druid` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_d476c3b1` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_druid
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_dwarf`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_dwarf`;
CREATE TABLE `sandbox_dwarf` (
  `player_race_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_race_ptr_id`),
  CONSTRAINT `player_race_ptr_id_refs_id_d9f99fe7` FOREIGN KEY (`player_race_ptr_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_dwarf
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_elf`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_elf`;
CREATE TABLE `sandbox_elf` (
  `player_race_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_race_ptr_id`),
  CONSTRAINT `player_race_ptr_id_refs_id_bda3463a` FOREIGN KEY (`player_race_ptr_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_elf
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_fighter`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_fighter`;
CREATE TABLE `sandbox_fighter` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_6576a90a` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_fighter
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_gnome`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_gnome`;
CREATE TABLE `sandbox_gnome` (
  `player_race_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_race_ptr_id`),
  CONSTRAINT `player_race_ptr_id_refs_id_b2e8025f` FOREIGN KEY (`player_race_ptr_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_gnome
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_halfling`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_halfling`;
CREATE TABLE `sandbox_halfling` (
  `player_race_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_race_ptr_id`),
  CONSTRAINT `player_race_ptr_id_refs_id_7346eb39` FOREIGN KEY (`player_race_ptr_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_halfling
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_half_elf`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_half_elf`;
CREATE TABLE `sandbox_half_elf` (
  `player_race_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_race_ptr_id`),
  CONSTRAINT `player_race_ptr_id_refs_id_2b2e4ab3` FOREIGN KEY (`player_race_ptr_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_half_elf
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_half_orc`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_half_orc`;
CREATE TABLE `sandbox_half_orc` (
  `player_race_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_race_ptr_id`),
  CONSTRAINT `player_race_ptr_id_refs_id_b820caea` FOREIGN KEY (`player_race_ptr_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_half_orc
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_human`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_human`;
CREATE TABLE `sandbox_human` (
  `player_race_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_race_ptr_id`),
  CONSTRAINT `player_race_ptr_id_refs_id_6d767648` FOREIGN KEY (`player_race_ptr_id`) REFERENCES `sandbox_player_race` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_human
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_illusionist`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_illusionist`;
CREATE TABLE `sandbox_illusionist` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_fcaede0e` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_illusionist
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_magic_user`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_magic_user`;
CREATE TABLE `sandbox_magic_user` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_e2509928` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_magic_user
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_multi_class`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_multi_class`;
CREATE TABLE `sandbox_multi_class` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_9420d2da` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_multi_class
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_paladin`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_paladin`;
CREATE TABLE `sandbox_paladin` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_1374fdc1` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_paladin
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_player_class`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_player_class`;
CREATE TABLE `sandbox_player_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_player_class
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_player_race`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_player_race`;
CREATE TABLE `sandbox_player_race` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_player_race
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_ranger`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_ranger`;
CREATE TABLE `sandbox_ranger` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_7830f403` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_ranger
-- ----------------------------

-- ----------------------------
-- Table structure for `sandbox_thief`
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_thief`;
CREATE TABLE `sandbox_thief` (
  `player_class_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`player_class_ptr_id`),
  CONSTRAINT `player_class_ptr_id_refs_id_4d70103a` FOREIGN KEY (`player_class_ptr_id`) REFERENCES `sandbox_player_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sandbox_thief
-- ----------------------------
