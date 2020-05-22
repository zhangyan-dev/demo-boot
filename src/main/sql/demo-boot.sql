/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : demo-boot

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2017-05-19 15:17:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_operation`
-- ----------------------------
DROP TABLE IF EXISTS `auth_operation`;
CREATE TABLE `auth_operation` (
  `opid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `opcode` varchar(20) NOT NULL COMMENT '权限值',
  `opname` varchar(50) NOT NULL COMMENT '权限名称',
  `ophref` varchar(200) DEFAULT NULL COMMENT '权限操作链接',
  `opseq` int(11) NOT NULL DEFAULT '1' COMMENT '显示顺序',
  PRIMARY KEY (`opid`),
  KEY `op_code_index` (`opcode`) USING BTREE,
  KEY `op_name_index` (`opname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='权限信息表';

-- ----------------------------
-- Records of auth_operation
-- ----------------------------
INSERT INTO `auth_operation` VALUES ('87', '01', '权限管理', '/admin/auth', '1');
INSERT INTO `auth_operation` VALUES ('88', '02', '整合技术', '/admin/tech', '1');
INSERT INTO `auth_operation` VALUES ('89', '03', '日志管理', '/admin/log', '1');
INSERT INTO `auth_operation` VALUES ('90', '0101', '查询用户列表', '/admin/user/queryPage', '1');
INSERT INTO `auth_operation` VALUES ('91', '010102', '更新用户页面', '/admin/user/updatePage/{id}', '1');
INSERT INTO `auth_operation` VALUES ('92', '010206', '角色已绑定权限', '/admin/role/hasOpers/{roleid}', '1');
INSERT INTO `auth_operation` VALUES ('93', '010102', '修改用户', '/admin/user/update', '1');
INSERT INTO `auth_operation` VALUES ('94', '0103', '查询权限列表', '/admin/oper/queryPage', '1');
INSERT INTO `auth_operation` VALUES ('96', '010104', '删除用户', '/admin/user/deleteByID/{id}', '1');
INSERT INTO `auth_operation` VALUES ('97', '0101', '用户管理界面', '/admin/user/mainPage', '1');
INSERT INTO `auth_operation` VALUES ('98', '010205', '角色权限管理页面', '/admin/role/bindOperPage/{roleid}', '1');
INSERT INTO `auth_operation` VALUES ('99', '0201', '查询文件列表', '/admin/tech/queryFilePage', '1');
INSERT INTO `auth_operation` VALUES ('100', '020203', '删除文章', '/admin/tech/delArticle/{id}', '1');
INSERT INTO `auth_operation` VALUES ('101', '010101', '添加用户', '/admin/user/add', '1');
INSERT INTO `auth_operation` VALUES ('102', '010104', '修改个人密码', '/admin/user/updatePasswd', '1');
INSERT INTO `auth_operation` VALUES ('103', '020101', '添加文件', '/admin/tech/addFile', '1');
INSERT INTO `auth_operation` VALUES ('105', '0103', '权限管理界面', '/admin/oper/mainPage', '1');
INSERT INTO `auth_operation` VALUES ('106', '010201', '添加角色页面', '/admin/role/addPage', '1');
INSERT INTO `auth_operation` VALUES ('107', '0102', '角色管理界面', '/admin/role/mainPage', '1');
INSERT INTO `auth_operation` VALUES ('108', '010204', '角色绑定用户', '/admin/role/bindUser', '1');
INSERT INTO `auth_operation` VALUES ('109', '010103', '重置用户密码页面', '/admin/user/updatePwdPage', '1');
INSERT INTO `auth_operation` VALUES ('110', '010203', '删除角色', '/admin/role/deleteByID/{id}', '1');
INSERT INTO `auth_operation` VALUES ('111', '010205', '绑定角色权限', '/admin/role/bindOpers', '1');
INSERT INTO `auth_operation` VALUES ('112', '0202', '文章管理界面', '/admin/tech/articlePage', '1');
INSERT INTO `auth_operation` VALUES ('113', '010202', '更新角色页面', '/admin/role/updatePage/{id}', '1');
INSERT INTO `auth_operation` VALUES ('114', '010101', '添加用户页面', '/admin/user/addPage', '1');
INSERT INTO `auth_operation` VALUES ('115', '020101', '添加文件页面', '/admin/tech/addFilePage', '1');
INSERT INTO `auth_operation` VALUES ('116', '0201', '文件管理界面', '/admin/tech/filePage', '1');
INSERT INTO `auth_operation` VALUES ('117', '020201', '添加文章', '/admin/tech/addArticle', '1');
INSERT INTO `auth_operation` VALUES ('118', '010202', '修改角色', '/admin/role/update', '1');
INSERT INTO `auth_operation` VALUES ('119', '010201', '添加角色', '/admin/role/add', '1');
INSERT INTO `auth_operation` VALUES ('120', '010206', '解除角色权限', '/admin/role/unbindOpers', '1');
INSERT INTO `auth_operation` VALUES ('122', '010206', '角色未绑定权限', '/admin/role/noOpers/{roleid}', '1');
INSERT INTO `auth_operation` VALUES ('123', '0001', '系统主界面', '/admin/main', '1');
INSERT INTO `auth_operation` VALUES ('124', '020201', '添加文章页面', '/admin/tech/addArticlePage', '1');
INSERT INTO `auth_operation` VALUES ('125', '0202', '查询文章列表', '/admin/tech/queryArticlePage', '1');
INSERT INTO `auth_operation` VALUES ('126', '010104', '修改个人密码页面', '/admin/user/updatePasswdPage', '1');
INSERT INTO `auth_operation` VALUES ('127', '0102', '查询角色列表', '/admin/role/queryPage', '1');
INSERT INTO `auth_operation` VALUES ('128', '010103', '重置用户密码', '/admin/user/updatePwd', '1');
INSERT INTO `auth_operation` VALUES ('129', '010204', '角色用户管理页面', '/admin/role/bindUserPage/{roleid}', '1');
INSERT INTO `auth_operation` VALUES ('131', '020102', '更新文件页面', '/admin/tech/updateFilePage/{id}', '1');
INSERT INTO `auth_operation` VALUES ('132', '020202', '更新文章页面', '/admin/tech/updateArticlePage/{id}', '1');
INSERT INTO `auth_operation` VALUES ('133', '020202', '修改文章', '/admin/tech/updateArticle', '1');
INSERT INTO `auth_operation` VALUES ('134', '0301', '日志管理界面', '/admin/log/mainPage', '1');
INSERT INTO `auth_operation` VALUES ('135', '0301', '查询日志列表', '/admin/log/queryPage', '1');
INSERT INTO `auth_operation` VALUES ('136', '0203', '测试界面', '/admin/tech/testPage', '1');
INSERT INTO `auth_operation` VALUES ('137', '020103', '删除文件', '/admin/tech/delFile/{id}', '1');
INSERT INTO `auth_operation` VALUES ('138', '020102', '修改文件', '/admin/tech/updateFile', '1');

-- ----------------------------
-- Table structure for `auth_role`
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rolename` varchar(20) NOT NULL COMMENT '角色名称',
  `cname` varchar(50) NOT NULL COMMENT '中文名',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO `auth_role` VALUES ('5', 'admin1', '测试管理员');
INSERT INTO `auth_role` VALUES ('23', 'admin', '超级管理员');
INSERT INTO `auth_role` VALUES ('25', 'anonymous', '匿名用户组');

-- ----------------------------
-- Table structure for `auth_role_operation`
-- ----------------------------
DROP TABLE IF EXISTS `auth_role_operation`;
CREATE TABLE `auth_role_operation` (
  `roleid` int(11) NOT NULL COMMENT '角色ID',
  `opid` int(11) NOT NULL COMMENT '权限ID',
  PRIMARY KEY (`roleid`,`opid`),
  KEY `fk_opid` (`opid`),
  CONSTRAINT `fk_opid` FOREIGN KEY (`opid`) REFERENCES `auth_operation` (`opid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_roleid` FOREIGN KEY (`roleid`) REFERENCES `auth_role` (`roleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限关系表';

-- ----------------------------
-- Records of auth_role_operation
-- ----------------------------
INSERT INTO `auth_role_operation` VALUES ('5', '87');
INSERT INTO `auth_role_operation` VALUES ('23', '87');
INSERT INTO `auth_role_operation` VALUES ('5', '88');
INSERT INTO `auth_role_operation` VALUES ('23', '88');
INSERT INTO `auth_role_operation` VALUES ('5', '89');
INSERT INTO `auth_role_operation` VALUES ('23', '89');
INSERT INTO `auth_role_operation` VALUES ('5', '90');
INSERT INTO `auth_role_operation` VALUES ('23', '90');
INSERT INTO `auth_role_operation` VALUES ('5', '91');
INSERT INTO `auth_role_operation` VALUES ('23', '91');
INSERT INTO `auth_role_operation` VALUES ('5', '92');
INSERT INTO `auth_role_operation` VALUES ('23', '92');
INSERT INTO `auth_role_operation` VALUES ('5', '93');
INSERT INTO `auth_role_operation` VALUES ('23', '93');
INSERT INTO `auth_role_operation` VALUES ('5', '94');
INSERT INTO `auth_role_operation` VALUES ('23', '94');
INSERT INTO `auth_role_operation` VALUES ('5', '96');
INSERT INTO `auth_role_operation` VALUES ('23', '96');
INSERT INTO `auth_role_operation` VALUES ('5', '97');
INSERT INTO `auth_role_operation` VALUES ('23', '97');
INSERT INTO `auth_role_operation` VALUES ('5', '98');
INSERT INTO `auth_role_operation` VALUES ('23', '98');
INSERT INTO `auth_role_operation` VALUES ('5', '99');
INSERT INTO `auth_role_operation` VALUES ('23', '99');
INSERT INTO `auth_role_operation` VALUES ('5', '100');
INSERT INTO `auth_role_operation` VALUES ('23', '100');
INSERT INTO `auth_role_operation` VALUES ('5', '101');
INSERT INTO `auth_role_operation` VALUES ('23', '101');
INSERT INTO `auth_role_operation` VALUES ('5', '102');
INSERT INTO `auth_role_operation` VALUES ('23', '102');
INSERT INTO `auth_role_operation` VALUES ('5', '103');
INSERT INTO `auth_role_operation` VALUES ('23', '103');
INSERT INTO `auth_role_operation` VALUES ('5', '105');
INSERT INTO `auth_role_operation` VALUES ('23', '105');
INSERT INTO `auth_role_operation` VALUES ('5', '106');
INSERT INTO `auth_role_operation` VALUES ('23', '106');
INSERT INTO `auth_role_operation` VALUES ('5', '107');
INSERT INTO `auth_role_operation` VALUES ('23', '107');
INSERT INTO `auth_role_operation` VALUES ('5', '108');
INSERT INTO `auth_role_operation` VALUES ('23', '108');
INSERT INTO `auth_role_operation` VALUES ('5', '109');
INSERT INTO `auth_role_operation` VALUES ('23', '109');
INSERT INTO `auth_role_operation` VALUES ('5', '110');
INSERT INTO `auth_role_operation` VALUES ('23', '110');
INSERT INTO `auth_role_operation` VALUES ('5', '111');
INSERT INTO `auth_role_operation` VALUES ('23', '111');
INSERT INTO `auth_role_operation` VALUES ('5', '112');
INSERT INTO `auth_role_operation` VALUES ('23', '112');
INSERT INTO `auth_role_operation` VALUES ('5', '113');
INSERT INTO `auth_role_operation` VALUES ('23', '113');
INSERT INTO `auth_role_operation` VALUES ('5', '114');
INSERT INTO `auth_role_operation` VALUES ('23', '114');
INSERT INTO `auth_role_operation` VALUES ('5', '115');
INSERT INTO `auth_role_operation` VALUES ('23', '115');
INSERT INTO `auth_role_operation` VALUES ('5', '116');
INSERT INTO `auth_role_operation` VALUES ('23', '116');
INSERT INTO `auth_role_operation` VALUES ('5', '117');
INSERT INTO `auth_role_operation` VALUES ('23', '117');
INSERT INTO `auth_role_operation` VALUES ('5', '118');
INSERT INTO `auth_role_operation` VALUES ('23', '118');
INSERT INTO `auth_role_operation` VALUES ('5', '119');
INSERT INTO `auth_role_operation` VALUES ('23', '119');
INSERT INTO `auth_role_operation` VALUES ('5', '120');
INSERT INTO `auth_role_operation` VALUES ('23', '120');
INSERT INTO `auth_role_operation` VALUES ('5', '122');
INSERT INTO `auth_role_operation` VALUES ('23', '122');
INSERT INTO `auth_role_operation` VALUES ('5', '123');
INSERT INTO `auth_role_operation` VALUES ('23', '123');
INSERT INTO `auth_role_operation` VALUES ('5', '124');
INSERT INTO `auth_role_operation` VALUES ('23', '124');
INSERT INTO `auth_role_operation` VALUES ('5', '125');
INSERT INTO `auth_role_operation` VALUES ('23', '125');
INSERT INTO `auth_role_operation` VALUES ('5', '126');
INSERT INTO `auth_role_operation` VALUES ('23', '126');
INSERT INTO `auth_role_operation` VALUES ('5', '127');
INSERT INTO `auth_role_operation` VALUES ('23', '127');
INSERT INTO `auth_role_operation` VALUES ('5', '128');
INSERT INTO `auth_role_operation` VALUES ('23', '128');
INSERT INTO `auth_role_operation` VALUES ('5', '129');
INSERT INTO `auth_role_operation` VALUES ('23', '129');
INSERT INTO `auth_role_operation` VALUES ('5', '131');
INSERT INTO `auth_role_operation` VALUES ('23', '131');
INSERT INTO `auth_role_operation` VALUES ('5', '132');
INSERT INTO `auth_role_operation` VALUES ('23', '132');
INSERT INTO `auth_role_operation` VALUES ('5', '133');
INSERT INTO `auth_role_operation` VALUES ('23', '133');
INSERT INTO `auth_role_operation` VALUES ('5', '134');
INSERT INTO `auth_role_operation` VALUES ('23', '134');
INSERT INTO `auth_role_operation` VALUES ('5', '135');
INSERT INTO `auth_role_operation` VALUES ('23', '135');
INSERT INTO `auth_role_operation` VALUES ('23', '136');
INSERT INTO `auth_role_operation` VALUES ('23', '137');
INSERT INTO `auth_role_operation` VALUES ('23', '138');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `useable` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否可用(0禁用,1可用)',
  `roleid` int(11) NOT NULL COMMENT '所属角色',
  `addtime` datetime NOT NULL COMMENT '创建时间',
  `logintime` datetime DEFAULT NULL COMMENT '登陆时间',
  `loginip` varchar(15) DEFAULT NULL COMMENT '登陆IP',
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE,
  KEY `fk_user_role` (`roleid`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`roleid`) REFERENCES `auth_role` (`roleid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('15', 'ok77', 'e2137fae6eb8c807519b2645e433900d', 'meinv777@qq.com', '1', '25', '2016-07-02 21:53:59', '2017-01-03 08:10:47', '162.247.96.40');
INSERT INTO `auth_user` VALUES ('16', 'caizehua', 'e10adc3949ba59abbe56e057f20f883e', null, '1', '5', '2016-09-29 17:21:05', '2017-04-25 19:11:40', '192.168.0.200');
INSERT INTO `auth_user` VALUES ('17', 'ok666', '2cd31ce854ce6a763f801d761bee549d', '', '1', '25', '2017-01-04 11:38:20', '2017-01-13 20:00:13', '113.87.160.102');
INSERT INTO `auth_user` VALUES ('18', 'admin', '21232f297a57a5a743894a0e4a801fc3', null, '1', '23', '2017-04-21 14:45:05', '2017-05-19 15:15:20', '192.168.0.200');
INSERT INTO `auth_user` VALUES ('19', 'test', '96e79218965eb72c92a549dd5a330112', '', '1', '5', '2017-05-04 11:14:31', null, null);
INSERT INTO `auth_user` VALUES ('20', 'userJ4o51', '123456', 'J4o51@test.com', '1', '5', '2017-05-04 15:22:46', null, null);
INSERT INTO `auth_user` VALUES ('21', 'user3vSi8', '123456', '3vSi8@test.com', '1', '5', '2017-05-04 15:23:34', null, null);
INSERT INTO `auth_user` VALUES ('22', 'user9wJjI', '123456', '9wJjI@test.com', '1', '5', '2017-05-04 15:33:19', null, null);
INSERT INTO `auth_user` VALUES ('23', 'user2NLJB', '123456', '2NLJB@test.com', '1', '5', '2017-05-04 17:00:12', null, null);
INSERT INTO `auth_user` VALUES ('24', 'userjy208', '123456', 'jy208@test.com', '1', '5', '2017-05-04 17:12:41', null, null);
INSERT INTO `auth_user` VALUES ('25', 'userfKEIy', '123456', 'fKEIy@test.com', '1', '5', '2017-05-04 17:36:30', null, null);
INSERT INTO `auth_user` VALUES ('26', 'user59u9o', '123456', '59u9o@test.com', '1', '5', '2017-05-04 17:42:22', null, null);
INSERT INTO `auth_user` VALUES ('27', 'userB0VQP', '123456', 'B0VQP@test.com', '1', '5', '2017-05-04 17:46:23', null, null);
INSERT INTO `auth_user` VALUES ('28', 'usertP745', '123456', 'tP745@test.com', '1', '5', '2017-05-04 17:56:57', null, null);
INSERT INTO `auth_user` VALUES ('29', 'userNO3Dz', '123456', 'NO3Dz@test.com', '1', '5', '2017-05-04 18:01:24', null, null);
INSERT INTO `auth_user` VALUES ('30', 'userebT60', '123456', 'ebT60@test.com', '1', '5', '2017-05-05 10:28:41', null, null);
INSERT INTO `auth_user` VALUES ('31', 'userufXrw', '123456', 'ufXrw@test.com', '1', '5', '2017-05-05 11:40:43', null, null);
INSERT INTO `auth_user` VALUES ('32', 'usernK2R8', '123456', 'nK2R8@test.com', '1', '5', '2017-05-05 14:12:59', null, null);
INSERT INTO `auth_user` VALUES ('33', 'userb035J', '123456', 'b035J@test.com', '1', '5', '2017-05-05 14:44:07', null, null);

-- ----------------------------
-- Table structure for `i_article`
-- ----------------------------
DROP TABLE IF EXISTS `i_article`;
CREATE TABLE `i_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '发帖id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `color` varchar(20) NOT NULL COMMENT '标题颜色',
  `cover` varchar(255) NOT NULL COMMENT '封面',
  `content` text NOT NULL COMMENT '内容',
  `posttime` datetime NOT NULL COMMENT '发表时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='文章信息表';

-- ----------------------------
-- Records of i_article
-- ----------------------------
INSERT INTO `i_article` VALUES ('1', '18', '测试', '#2b2b32', '/upload/20170502/7ff39476-f154-4511-abd1-4248c6a546d7.jpg', '<p>测试测试</p><p><img src=\"/upload/20170502/c7821f6d-9164-4dfd-88ff-cee1299144f6.jpg\"/></p><p><img src=\"/upload/20170502/f1a4efb2-b1ba-4ecf-a9df-9450952d36ab.jpg\"/></p><p><br/></p>', '2017-05-02 14:07:28');
INSERT INTO `i_article` VALUES ('2', '18', '测试', '#2b2b32', '/upload/20170502/15a2e757-0c6e-430e-8b8b-c949238ed17b.jpg', '<pre>岗位职责：\r\n1．负责公司整体ios产品的整体架构设计，完成IOS平台手机软件的需求、设计、编码和自测工作；\r\n2．根据软件设计规范，开发基于iphone/ipad平台的应用程序；\r\n3．协同后台开发人员实现产品界面和功能与后台的交互；\r\n4．配合产品经理、UI设计师，研究并改善用户体验；\r\n\r\n任职要求：\r\n1、熟悉Object-C中MVC，封装，多态，委托代理，单例，Block，观察者等设计模式；\r\n2、熟悉iOS的内存管理机制和多线程开发，熟练运用GCD、NSOperation、NSThread等；\r\n3、具有良好的代码编程管理习惯，有独立分析问题和解决问题的能力；\r\n4、精通iOS下的并行开发、网络、内存管理、GUI开发等技术；\r\n5、精通iOS的消息传递机制，delegate，block，通知，推送等等；\r\n6、掌握iOS网络通信机制；熟悉http、tcp、socket等网络编程；\r\n7、了解iOS开发环境，对iOS与第三方平台开发接口的配合，有广泛深入的了解；\r\n8、具备良好的项目进度把控能力，能够独立承担项目任务，分析解决问题；\r\n9、对移动产品的用户体验有一定经验者优先。</pre><p><img src=\"/upload/20170502/631e6117-e726-4f33-8056-d54b792615ee.jpg\" title=\"\" alt=\"\"/></p>', '2017-05-02 15:10:59');

-- ----------------------------
-- Table structure for `i_file`
-- ----------------------------
DROP TABLE IF EXISTS `i_file`;
CREATE TABLE `i_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL COMMENT '文件原名',
  `nowname` varchar(255) NOT NULL COMMENT '文件名称',
  `savepath` varchar(255) NOT NULL COMMENT '存放位置',
  `url` varchar(255) NOT NULL COMMENT '访问地址',
  `filetype` varchar(255) NOT NULL COMMENT '文件类型',
  `filesize` bigint(20) NOT NULL COMMENT '文件大小(字节)',
  `addtime` datetime NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='上传的文件信息';

-- ----------------------------
-- Records of i_file
-- ----------------------------
INSERT INTO `i_file` VALUES ('1', '产品经理招聘.docx', 'a5c395ed-523c-4a52-b40d-af9a53ad6307.docx', '/service/upload/20170502/a5c395ed-523c-4a52-b40d-af9a53ad6307.docx', '/upload/20170502/a5c395ed-523c-4a52-b40d-af9a53ad6307.docx', '.docx', '12379', '2017-04-28 16:17:39');
INSERT INTO `i_file` VALUES ('2', 'IOS开发工程师.txt', 'd67819fa-e062-421b-b4de-4878338c4c60.txt', '/service/upload/20170428/d67819fa-e062-421b-b4de-4878338c4c60.txt', '/upload/20170428/d67819fa-e062-421b-b4de-4878338c4c60.txt', '.txt', '855', '2017-04-28 16:41:53');
INSERT INTO `i_file` VALUES ('4', 'Java网络爬虫开发工程师.txt', 'c2dafcca-8bd3-4f48-bd20-143e53ecd83f.txt', '/service/upload/20170428/c2dafcca-8bd3-4f48-bd20-143e53ecd83f.txt', '/upload/20170428/c2dafcca-8bd3-4f48-bd20-143e53ecd83f.txt', '.txt', '1194', '2017-04-28 17:14:58');
INSERT INTO `i_file` VALUES ('5', '《M6》会员系统功能需求文档.docx', 'd48ffbd5-0394-40ae-b5e4-f8ab3a23c20f.docx', '/service/upload/20170502/d48ffbd5-0394-40ae-b5e4-f8ab3a23c20f.docx', '/upload/20170502/d48ffbd5-0394-40ae-b5e4-f8ab3a23c20f.docx', '.docx', '6015953', '2017-05-02 11:01:48');
INSERT INTO `i_file` VALUES ('6', 'Java招聘.txt', 'dfdc9423-7abd-4bf0-9a26-a606b94b8eb5.txt', '/service/upload/20170502/dfdc9423-7abd-4bf0-9a26-a606b94b8eb5.txt', '/upload/20170502/dfdc9423-7abd-4bf0-9a26-a606b94b8eb5.txt', '.txt', '1248', '2017-05-02 11:04:50');
INSERT INTO `i_file` VALUES ('7', 'M6计算.txt', '7dd95ba4-4b64-401f-b9bf-d46ebd538538.txt', '/service/upload/20170502/7dd95ba4-4b64-401f-b9bf-d46ebd538538.txt', '/upload/20170502/7dd95ba4-4b64-401f-b9bf-d46ebd538538.txt', '.txt', '179', '2017-05-02 11:05:13');
INSERT INTO `i_file` VALUES ('8', 'IOS开发工程师.txt', '6929d03c-fdae-42b1-9997-3210b33a44f8.txt', '/service/upload/20170502/6929d03c-fdae-42b1-9997-3210b33a44f8.txt', '/upload/20170502/6929d03c-fdae-42b1-9997-3210b33a44f8.txt', '.txt', '855', '2017-05-02 11:20:10');

-- ----------------------------
-- Table structure for `i_log`
-- ----------------------------
DROP TABLE IF EXISTS `i_log`;
CREATE TABLE `i_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '操作用户',
  `type` tinyint(4) NOT NULL COMMENT '操作类型(0操作日志;1异常日志)',
  `url` varchar(255) DEFAULT NULL COMMENT '请求地址',
  `method` varchar(255) NOT NULL COMMENT '执行方法',
  `params` text COMMENT '请求参数',
  `requestip` varchar(255) NOT NULL COMMENT '请求IP',
  `description` varchar(255) DEFAULT NULL COMMENT '操作描述',
  `detail` text COMMENT '异常详情',
  `oper_date` datetime NOT NULL COMMENT '操作日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2841 DEFAULT CHARSET=utf8 COMMENT='系统日志表';

-- ----------------------------
-- Records of i_log
-- ----------------------------
INSERT INTO `i_log` VALUES ('1', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-02 17:15:34');
INSERT INTO `i_log` VALUES ('2', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 17:16:12');
INSERT INTO `i_log` VALUES ('3', 'admin', '0', '/boot/admin/main', 'com.xe.demo.controller.LoginController.main()', '{loginIp=192.168.0.200}', '192.168.0.200', '进入主界面', null, '2017-05-02 17:16:12');
INSERT INTO `i_log` VALUES ('2531', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-02 17:17:21');
INSERT INTO `i_log` VALUES ('2532', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 17:17:55');
INSERT INTO `i_log` VALUES ('2533', 'admin', '0', '/boot/admin/main', 'com.xe.demo.controller.LoginController.main()', '{loginIp=192.168.0.200}', '192.168.0.200', '进入主界面', null, '2017-05-02 17:17:57');
INSERT INTO `i_log` VALUES ('2534', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-02 17:18:08');
INSERT INTO `i_log` VALUES ('2535', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 17:32:12');
INSERT INTO `i_log` VALUES ('2536', 'admin', '0', '/boot/admin/main', 'com.xe.demo.controller.LoginController.main()', '{loginIp=192.168.0.200}', '192.168.0.200', '进入主界面', null, '2017-05-02 17:32:17');
INSERT INTO `i_log` VALUES ('2537', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-02 17:32:43');
INSERT INTO `i_log` VALUES ('2538', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 17:37:27');
INSERT INTO `i_log` VALUES ('2539', 'admin', '0', '/boot/admin/main', 'com.xe.demo.controller.LoginController.main()', '{loginIp=192.168.0.200}', '192.168.0.200', '进入主界面', null, '2017-05-02 17:37:27');
INSERT INTO `i_log` VALUES ('2540', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-02 17:37:33');
INSERT INTO `i_log` VALUES ('2541', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 17:38:56');
INSERT INTO `i_log` VALUES ('2542', 'admin', '0', '/boot/admin/main', 'com.xe.demo.controller.LoginController.main()', '{loginIp=192.168.0.200}', '192.168.0.200', '进入主界面', null, '2017-05-02 17:38:56');
INSERT INTO `i_log` VALUES ('2543', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 18:19:39');
INSERT INTO `i_log` VALUES ('2544', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-02 18:19:42');
INSERT INTO `i_log` VALUES ('2545', 'admin', '0', '/boot/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-02 18:19:43');
INSERT INTO `i_log` VALUES ('2546', 'admin', '0', '/boot/admin/oper/queryPage', 'com.xe.demo.controller.OperationController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询权限列表', null, '2017-05-02 18:19:44');
INSERT INTO `i_log` VALUES ('2547', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-02 18:19:46');
INSERT INTO `i_log` VALUES ('2548', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 18:19:47');
INSERT INTO `i_log` VALUES ('2549', 'admin', '0', '/boot/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-02 18:20:59');
INSERT INTO `i_log` VALUES ('2550', 'admin', '0', '/boot/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-02 18:21:17');
INSERT INTO `i_log` VALUES ('2551', 'admin', '1', '/boot/admin/role/queryPage', 'com.xe.demo.service.RoleService.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '分页查询', '/ by zero', '2017-05-02 18:21:17');
INSERT INTO `i_log` VALUES ('2552', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 18:33:29');
INSERT INTO `i_log` VALUES ('2553', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:34:20');
INSERT INTO `i_log` VALUES ('2554', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=2, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:34:24');
INSERT INTO `i_log` VALUES ('2555', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=3, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:34:27');
INSERT INTO `i_log` VALUES ('2556', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=100}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:34:32');
INSERT INTO `i_log` VALUES ('2557', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:41:38');
INSERT INTO `i_log` VALUES ('2558', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:42:02');
INSERT INTO `i_log` VALUES ('2559', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:42:20');
INSERT INTO `i_log` VALUES ('2560', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{useable=0, sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:44:00');
INSERT INTO `i_log` VALUES ('2561', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{useable=0, sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:45:25');
INSERT INTO `i_log` VALUES ('2562', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{useable=0, sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:45:37');
INSERT INTO `i_log` VALUES ('2563', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-02 18:46:00');
INSERT INTO `i_log` VALUES ('2564', 'admin', '0', '/boot/admin/oper/queryPage', 'com.xe.demo.controller.OperationController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询权限列表', null, '2017-05-02 18:46:02');
INSERT INTO `i_log` VALUES ('2565', 'admin', '0', '/boot/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-02 18:46:04');
INSERT INTO `i_log` VALUES ('2566', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{useable=0, sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:46:05');
INSERT INTO `i_log` VALUES ('2567', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{useable=0, sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:46:56');
INSERT INTO `i_log` VALUES ('2568', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:51:19');
INSERT INTO `i_log` VALUES ('2569', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:51:47');
INSERT INTO `i_log` VALUES ('2570', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:51:53');
INSERT INTO `i_log` VALUES ('2571', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10, type=0}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:51:56');
INSERT INTO `i_log` VALUES ('2572', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10, type=1}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:51:58');
INSERT INTO `i_log` VALUES ('2573', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:51:59');
INSERT INTO `i_log` VALUES ('2574', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10, username=匿}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:52:10');
INSERT INTO `i_log` VALUES ('2575', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:52:23');
INSERT INTO `i_log` VALUES ('2576', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10, username=admin}', '192.168.0.200', '查询日志列表', null, '2017-05-02 18:52:26');
INSERT INTO `i_log` VALUES ('2577', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 20:38:41');
INSERT INTO `i_log` VALUES ('2578', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-02 20:38:44');
INSERT INTO `i_log` VALUES ('2579', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 20:38:48');
INSERT INTO `i_log` VALUES ('2580', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-02 20:45:19');
INSERT INTO `i_log` VALUES ('2581', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 20:45:23');
INSERT INTO `i_log` VALUES ('2582', 'admin', '0', '/boot/admin/tech/updateArticle', 'com.xe.demo.controller.TechController.updateArticle()', '{cover=/upload/20170502/8ff6b7e9-39fb-46ba-9ad5-aaa7d7888fee.jpg, uid=0, color=#2b2b32, loginIp=192.168.0.200, title=测试, content=<p>测试测试<br/></p>}', '192.168.0.200', '修改文章', null, '2017-05-02 20:45:52');
INSERT INTO `i_log` VALUES ('2583', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 20:47:19');
INSERT INTO `i_log` VALUES ('2584', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 20:47:25');
INSERT INTO `i_log` VALUES ('2585', 'admin', '0', '/boot/admin/tech/updateArticle', 'com.xe.demo.controller.TechController.updateArticle()', '{cover=/upload/20170502/15a2e757-0c6e-430e-8b8b-c949238ed17b.jpg, uid=18, color=#2b2b32, loginIp=192.168.0.200, id=2, title=测试, content=<pre>岗位职责：\r\n1．负责公司整体ios产品的整体架构设计，完成IOS平台手机软件的需求、设计、编码和自测工作；\r\n2．根据软件设计规范，开发基于iphone/ipad平台的应用程序；\r\n3．协同后台开发人员实现产品界面和功能与后台的交互；\r\n4．配合产品经理、UI设计师，研究并改善用户体验；\r\n\r\n任职要求：\r\n1、熟悉Object-C中MVC，封装，多态，委托代理，单例，Block，观察者等设计模式；\r\n2、熟悉iOS的内存管理机制和多线程开发，熟练运用GCD、NSOperation、NSThread等；\r\n3、具有良好的代码编程管理习惯，有独立分析问题和解决问题的能力；\r\n4、精通iOS下的并行开发、网络、内存管理、GUI开发等技术；\r\n5、精通iOS的消息传递机制，delegate，block，通知，推送等等；\r\n6、掌握iOS网络通信机制；熟悉http、tcp、socket等网络编程；\r\n7、了解iOS开发环境，对iOS与第三方平台开发接口的配合，有广泛深入的了解；\r\n8、具备良好的项目进度把控能力，能够独立承担项目任务，分析解决问题；\r\n9、对移动产品的用户体验有一定经验者优先。</pre><p><br/></p>}', '192.168.0.200', '修改文章', null, '2017-05-02 20:50:10');
INSERT INTO `i_log` VALUES ('2586', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 20:50:10');
INSERT INTO `i_log` VALUES ('2587', 'admin', '0', '/boot/admin/tech/updateArticle', 'com.xe.demo.controller.TechController.updateArticle()', '{cover=/upload/20170502/15a2e757-0c6e-430e-8b8b-c949238ed17b.jpg, uid=18, color=#2b2b32, loginIp=192.168.0.200, id=2, title=测试, content=<pre>岗位职责：\r\n1．负责公司整体ios产品的整体架构设计，完成IOS平台手机软件的需求、设计、编码和自测工作；\r\n2．根据软件设计规范，开发基于iphone/ipad平台的应用程序；\r\n3．协同后台开发人员实现产品界面和功能与后台的交互；\r\n4．配合产品经理、UI设计师，研究并改善用户体验；\r\n\r\n任职要求：\r\n1、熟悉Object-C中MVC，封装，多态，委托代理，单例，Block，观察者等设计模式；\r\n2、熟悉iOS的内存管理机制和多线程开发，熟练运用GCD、NSOperation、NSThread等；\r\n3、具有良好的代码编程管理习惯，有独立分析问题和解决问题的能力；\r\n4、精通iOS下的并行开发、网络、内存管理、GUI开发等技术；\r\n5、精通iOS的消息传递机制，delegate，block，通知，推送等等；\r\n6、掌握iOS网络通信机制；熟悉http、tcp、socket等网络编程；\r\n7、了解iOS开发环境，对iOS与第三方平台开发接口的配合，有广泛深入的了解；\r\n8、具备良好的项目进度把控能力，能够独立承担项目任务，分析解决问题；\r\n9、对移动产品的用户体验有一定经验者优先。</pre><p><img src=\"/upload/20170502/631e6117-e726-4f33-8056-d54b792615ee.jpg\" title=\"\" alt=\"\"/></p>}', '192.168.0.200', '修改文章', null, '2017-05-02 20:50:39');
INSERT INTO `i_log` VALUES ('2588', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 20:50:39');
INSERT INTO `i_log` VALUES ('2589', 'admin', '0', '/boot/admin/tech/updateArticle', 'com.xe.demo.controller.TechController.updateArticle()', '{cover=/upload/20170502/7ff39476-f154-4511-abd1-4248c6a546d7.jpg, uid=18, color=#2b2b32, loginIp=192.168.0.200, id=1, title=测试, content=<p>测试测试</p><p><img src=\"/upload/20170502/c7821f6d-9164-4dfd-88ff-cee1299144f6.jpg\"/></p><p><img src=\"/upload/20170502/f1a4efb2-b1ba-4ecf-a9df-9450952d36ab.jpg\"/></p><p><br/></p>}', '192.168.0.200', '修改文章', null, '2017-05-02 20:51:19');
INSERT INTO `i_log` VALUES ('2590', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-02 20:51:19');
INSERT INTO `i_log` VALUES ('2591', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-03 09:43:25');
INSERT INTO `i_log` VALUES ('2592', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-03 09:43:31');
INSERT INTO `i_log` VALUES ('2593', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-03 09:43:37');
INSERT INTO `i_log` VALUES ('2594', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-03 09:43:39');
INSERT INTO `i_log` VALUES ('2595', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10, type=1}', '192.168.0.200', '查询日志列表', null, '2017-05-03 09:43:47');
INSERT INTO `i_log` VALUES ('2596', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 09:47:46');
INSERT INTO `i_log` VALUES ('2597', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询用户列表', null, '2017-05-03 09:47:51');
INSERT INTO `i_log` VALUES ('2598', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文章列表', null, '2017-05-03 09:48:24');
INSERT INTO `i_log` VALUES ('2599', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 09:48:26');
INSERT INTO `i_log` VALUES ('2600', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文章列表', null, '2017-05-03 09:48:31');
INSERT INTO `i_log` VALUES ('2601', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询用户列表', null, '2017-05-03 10:19:26');
INSERT INTO `i_log` VALUES ('2602', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 10:19:28');
INSERT INTO `i_log` VALUES ('2603', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 10:26:45');
INSERT INTO `i_log` VALUES ('2604', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 10:26:49');
INSERT INTO `i_log` VALUES ('2605', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 10:28:32');
INSERT INTO `i_log` VALUES ('2606', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 10:30:41');
INSERT INTO `i_log` VALUES ('2607', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 10:30:45');
INSERT INTO `i_log` VALUES ('2608', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文章列表', null, '2017-05-03 10:33:51');
INSERT INTO `i_log` VALUES ('2609', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 10:34:29');
INSERT INTO `i_log` VALUES ('2610', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询日志列表', null, '2017-05-03 10:34:35');
INSERT INTO `i_log` VALUES ('2611', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=2, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询日志列表', null, '2017-05-03 10:34:44');
INSERT INTO `i_log` VALUES ('2612', 'admin', '0', '/boot/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询日志列表', null, '2017-05-03 10:34:45');
INSERT INTO `i_log` VALUES ('2613', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 10:41:29');
INSERT INTO `i_log` VALUES ('2614', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询用户列表', null, '2017-05-03 10:42:16');
INSERT INTO `i_log` VALUES ('2615', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=127.0.0.1}', '127.0.0.1', '退出', null, '2017-05-03 10:42:22');
INSERT INTO `i_log` VALUES ('2616', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 11:25:39');
INSERT INTO `i_log` VALUES ('2617', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 11:28:15');
INSERT INTO `i_log` VALUES ('2618', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 13:45:06');
INSERT INTO `i_log` VALUES ('2619', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 13:45:15');
INSERT INTO `i_log` VALUES ('2620', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:17');
INSERT INTO `i_log` VALUES ('2621', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:19');
INSERT INTO `i_log` VALUES ('2622', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:19');
INSERT INTO `i_log` VALUES ('2623', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:19');
INSERT INTO `i_log` VALUES ('2624', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:19');
INSERT INTO `i_log` VALUES ('2625', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:19');
INSERT INTO `i_log` VALUES ('2626', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:20');
INSERT INTO `i_log` VALUES ('2627', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:20');
INSERT INTO `i_log` VALUES ('2628', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:20');
INSERT INTO `i_log` VALUES ('2629', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:20');
INSERT INTO `i_log` VALUES ('2630', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:20');
INSERT INTO `i_log` VALUES ('2631', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:21');
INSERT INTO `i_log` VALUES ('2632', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:21');
INSERT INTO `i_log` VALUES ('2633', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:21');
INSERT INTO `i_log` VALUES ('2634', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:21');
INSERT INTO `i_log` VALUES ('2635', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:21');
INSERT INTO `i_log` VALUES ('2636', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:22');
INSERT INTO `i_log` VALUES ('2637', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:22');
INSERT INTO `i_log` VALUES ('2638', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:22');
INSERT INTO `i_log` VALUES ('2639', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:22');
INSERT INTO `i_log` VALUES ('2640', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:22');
INSERT INTO `i_log` VALUES ('2641', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:23');
INSERT INTO `i_log` VALUES ('2642', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:23');
INSERT INTO `i_log` VALUES ('2643', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:23');
INSERT INTO `i_log` VALUES ('2644', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:23');
INSERT INTO `i_log` VALUES ('2645', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:23');
INSERT INTO `i_log` VALUES ('2646', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:23');
INSERT INTO `i_log` VALUES ('2647', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:24');
INSERT INTO `i_log` VALUES ('2648', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:24');
INSERT INTO `i_log` VALUES ('2649', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:24');
INSERT INTO `i_log` VALUES ('2650', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:24');
INSERT INTO `i_log` VALUES ('2651', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:24');
INSERT INTO `i_log` VALUES ('2652', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:24');
INSERT INTO `i_log` VALUES ('2653', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:24');
INSERT INTO `i_log` VALUES ('2654', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:25');
INSERT INTO `i_log` VALUES ('2655', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:25');
INSERT INTO `i_log` VALUES ('2656', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:45:25');
INSERT INTO `i_log` VALUES ('2657', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 13:54:21');
INSERT INTO `i_log` VALUES ('2658', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:25');
INSERT INTO `i_log` VALUES ('2659', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:25');
INSERT INTO `i_log` VALUES ('2660', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:25');
INSERT INTO `i_log` VALUES ('2661', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:25');
INSERT INTO `i_log` VALUES ('2662', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:26');
INSERT INTO `i_log` VALUES ('2663', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:26');
INSERT INTO `i_log` VALUES ('2664', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:26');
INSERT INTO `i_log` VALUES ('2665', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:26');
INSERT INTO `i_log` VALUES ('2666', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:26');
INSERT INTO `i_log` VALUES ('2667', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:27');
INSERT INTO `i_log` VALUES ('2668', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:27');
INSERT INTO `i_log` VALUES ('2669', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=20}', '127.0.0.1', '查询文件列表', null, '2017-05-03 13:54:50');
INSERT INTO `i_log` VALUES ('2670', 'admin', '0', '/boot/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文章列表', null, '2017-05-03 13:54:52');
INSERT INTO `i_log` VALUES ('2671', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:06:36');
INSERT INTO `i_log` VALUES ('2672', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询用户列表', null, '2017-05-03 14:07:25');
INSERT INTO `i_log` VALUES ('2673', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:09:18');
INSERT INTO `i_log` VALUES ('2674', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:11:38');
INSERT INTO `i_log` VALUES ('2675', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=127.0.0.1}', '127.0.0.1', '退出', null, '2017-05-03 14:11:55');
INSERT INTO `i_log` VALUES ('2676', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:12:16');
INSERT INTO `i_log` VALUES ('2677', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:12:51');
INSERT INTO `i_log` VALUES ('2678', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:19:54');
INSERT INTO `i_log` VALUES ('2679', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 14:20:03');
INSERT INTO `i_log` VALUES ('2680', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:30:35');
INSERT INTO `i_log` VALUES ('2681', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 14:39:45');
INSERT INTO `i_log` VALUES ('2682', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询用户列表', null, '2017-05-03 14:42:05');
INSERT INTO `i_log` VALUES ('2683', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=127.0.0.1}', '127.0.0.1', '退出', null, '2017-05-03 14:42:09');
INSERT INTO `i_log` VALUES ('2684', 'admin>', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin>}', '127.0.0.1', '登录', null, '2017-05-03 14:42:14');
INSERT INTO `i_log` VALUES ('2685', 'admin>', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin>}', '127.0.0.1', '登录', null, '2017-05-03 14:42:25');
INSERT INTO `i_log` VALUES ('2686', 'admin>', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin>}', '127.0.0.1', '登录', null, '2017-05-03 14:42:59');
INSERT INTO `i_log` VALUES ('2687', 'admin>', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin>}', '127.0.0.1', '登录', null, '2017-05-03 14:43:32');
INSERT INTO `i_log` VALUES ('2688', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 15:06:47');
INSERT INTO `i_log` VALUES ('2689', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询用户列表', null, '2017-05-03 15:06:50');
INSERT INTO `i_log` VALUES ('2690', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 15:08:40');
INSERT INTO `i_log` VALUES ('2691', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 15:09:17');
INSERT INTO `i_log` VALUES ('2692', 'admin', '0', '/boot/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询文件列表', null, '2017-05-03 15:10:31');
INSERT INTO `i_log` VALUES ('2693', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=127.0.0.1, username=admin}', '127.0.0.1', '登录', null, '2017-05-03 15:18:09');
INSERT INTO `i_log` VALUES ('2694', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询用户列表', null, '2017-05-03 15:20:15');
INSERT INTO `i_log` VALUES ('2695', 'admin', '0', '/boot/admin/oper/queryPage', 'com.xe.demo.controller.OperationController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=127.0.0.1, pageSize=10}', '127.0.0.1', '查询权限列表', null, '2017-05-03 15:27:52');
INSERT INTO `i_log` VALUES ('2696', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-04 11:10:46');
INSERT INTO `i_log` VALUES ('2697', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-04 11:11:10');
INSERT INTO `i_log` VALUES ('2698', 'admin', '0', '/boot/admin/user/add', 'com.xe.demo.controller.UserController.add()', '{useable=1, password=96e79218965eb72c92a549dd5a330112, roleid=5, loginIp=192.168.0.200, email=, username=test}', '192.168.0.200', '添加用户', null, '2017-05-04 11:13:27');
INSERT INTO `i_log` VALUES ('2699', 'admin', '1', '/boot/admin/user/add', 'com.xe.demo.service.UserService.saveUser()', '{useable=1, password=96e79218965eb72c92a549dd5a330112, roleid=5, loginIp=192.168.0.200, email=, username=test}', '192.168.0.200', '添加用户', '\r\n### Error updating database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'addtime\' cannot be null\r\n### The error may involve com.xe.demo.mapper.AuthUserMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO auth_user  ( id,username,password,email,useable,roleid,addtime,logintime,loginip ) VALUES( ?,?,?,?,?,?,?,?,? )\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'addtime\' cannot be null\n; SQL []; Column \'addtime\' cannot be null; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'addtime\' cannot be null', '2017-05-04 11:13:45');
INSERT INTO `i_log` VALUES ('2700', 'admin', '0', '/boot/admin/user/add', 'com.xe.demo.controller.UserController.add()', '{useable=1, password=96e79218965eb72c92a549dd5a330112, roleid=5, loginIp=192.168.0.200, email=, username=test}', '192.168.0.200', '添加用户', null, '2017-05-04 11:14:31');
INSERT INTO `i_log` VALUES ('2701', 'admin', '0', '/boot/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-04 11:14:31');
INSERT INTO `i_log` VALUES ('2702', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 14:37:30');
INSERT INTO `i_log` VALUES ('2703', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-08 14:37:35');
INSERT INTO `i_log` VALUES ('2704', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-08 14:37:38');
INSERT INTO `i_log` VALUES ('2705', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-08 14:53:46');
INSERT INTO `i_log` VALUES ('2706', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 15:09:37');
INSERT INTO `i_log` VALUES ('2707', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-08 15:09:40');
INSERT INTO `i_log` VALUES ('2708', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10, type=0}', '192.168.0.200', '查询日志列表', null, '2017-05-08 15:09:44');
INSERT INTO `i_log` VALUES ('2709', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{pageNo=1, loginIp=192.168.0.200, pageSize=10, type=1}', '192.168.0.200', '查询日志列表', null, '2017-05-08 15:09:45');
INSERT INTO `i_log` VALUES ('2710', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-08 15:09:53');
INSERT INTO `i_log` VALUES ('2711', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 15:18:46');
INSERT INTO `i_log` VALUES ('2712', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 15:29:56');
INSERT INTO `i_log` VALUES ('2713', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 15:30:01');
INSERT INTO `i_log` VALUES ('2714', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 15:30:13');
INSERT INTO `i_log` VALUES ('2715', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-08 15:30:16');
INSERT INTO `i_log` VALUES ('2716', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-08 15:30:18');
INSERT INTO `i_log` VALUES ('2717', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=2, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-08 15:30:23');
INSERT INTO `i_log` VALUES ('2718', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:22:32');
INSERT INTO `i_log` VALUES ('2719', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Cannot serialize; nested exception is org.springframework.core.serializer.support.SerializationFailedException: Failed to serialize object using DefaultSerializer; nested exception is java.lang.IllegalArgumentException: DefaultSerializer requires a Serializable payload but received an object of type [com.xe.demo.common.pojo.Identity]', '2017-05-08 17:22:37');
INSERT INTO `i_log` VALUES ('2720', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:23:47');
INSERT INTO `i_log` VALUES ('2721', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Cannot serialize; nested exception is org.springframework.core.serializer.support.SerializationFailedException: Failed to serialize object using DefaultSerializer; nested exception is java.lang.IllegalArgumentException: DefaultSerializer requires a Serializable payload but received an object of type [com.xe.demo.common.pojo.Identity]', '2017-05-08 17:24:00');
INSERT INTO `i_log` VALUES ('2722', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:28:48');
INSERT INTO `i_log` VALUES ('2723', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-08 17:29:18');
INSERT INTO `i_log` VALUES ('2724', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:30:35');
INSERT INTO `i_log` VALUES ('2725', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:30:49');
INSERT INTO `i_log` VALUES ('2726', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-08 17:31:15');
INSERT INTO `i_log` VALUES ('2727', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:31:36');
INSERT INTO `i_log` VALUES ('2728', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:34:14');
INSERT INTO `i_log` VALUES ('2729', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Cannot serialize; nested exception is org.springframework.core.serializer.support.SerializationFailedException: Failed to serialize object using DefaultSerializer; nested exception is java.lang.IllegalArgumentException: DefaultSerializer requires a Serializable payload but received an object of type [com.xe.demo.common.pojo.Identity]', '2017-05-08 17:34:17');
INSERT INTO `i_log` VALUES ('2730', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:35:41');
INSERT INTO `i_log` VALUES ('2731', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Cannot serialize; nested exception is org.springframework.core.serializer.support.SerializationFailedException: Failed to serialize object using DefaultSerializer; nested exception is java.lang.IllegalArgumentException: DefaultSerializer requires a Serializable payload but received an object of type [com.xe.demo.common.pojo.Identity]', '2017-05-08 17:35:42');
INSERT INTO `i_log` VALUES ('2732', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:36:46');
INSERT INTO `i_log` VALUES ('2733', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Cannot serialize; nested exception is org.springframework.core.serializer.support.SerializationFailedException: Failed to serialize object using DefaultSerializer; nested exception is java.lang.IllegalArgumentException: DefaultSerializer requires a Serializable payload but received an object of type [com.xe.demo.common.pojo.Identity]', '2017-05-08 17:36:46');
INSERT INTO `i_log` VALUES ('2734', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:37:47');
INSERT INTO `i_log` VALUES ('2735', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:38:40');
INSERT INTO `i_log` VALUES ('2736', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Cannot serialize; nested exception is org.springframework.core.serializer.support.SerializationFailedException: Failed to serialize object using DefaultSerializer; nested exception is java.lang.IllegalArgumentException: DefaultSerializer requires a Serializable payload but received an object of type [com.xe.demo.common.pojo.Identity]', '2017-05-08 17:38:40');
INSERT INTO `i_log` VALUES ('2737', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:40:32');
INSERT INTO `i_log` VALUES ('2738', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:40:37');
INSERT INTO `i_log` VALUES ('2739', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:41:41');
INSERT INTO `i_log` VALUES ('2740', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:42:11');
INSERT INTO `i_log` VALUES ('2741', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:45:02');
INSERT INTO `i_log` VALUES ('2742', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:45:11');
INSERT INTO `i_log` VALUES ('2743', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:45:57');
INSERT INTO `i_log` VALUES ('2744', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:46:06');
INSERT INTO `i_log` VALUES ('2745', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:48:16');
INSERT INTO `i_log` VALUES ('2746', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:48:44');
INSERT INTO `i_log` VALUES ('2747', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:48:47');
INSERT INTO `i_log` VALUES ('2748', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:49:35');
INSERT INTO `i_log` VALUES ('2749', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:49:39');
INSERT INTO `i_log` VALUES ('2750', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:50:12');
INSERT INTO `i_log` VALUES ('2751', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:50:16');
INSERT INTO `i_log` VALUES ('2752', 'admin', '0', '/boot/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:50:23');
INSERT INTO `i_log` VALUES ('2753', '匿名操作', '0', '/boot/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:50:26');
INSERT INTO `i_log` VALUES ('2754', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 17:50:55');
INSERT INTO `i_log` VALUES ('2755', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 17:50:58');
INSERT INTO `i_log` VALUES ('2756', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 18:35:30');
INSERT INTO `i_log` VALUES ('2757', '匿名操作', '0', '/admin/logout', 'com.xe.demo.controller.LoginController.logout()', '{loginIp=192.168.0.200}', '192.168.0.200', '退出', null, '2017-05-08 18:35:53');
INSERT INTO `i_log` VALUES ('2758', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 18:36:12');
INSERT INTO `i_log` VALUES ('2759', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-08 18:43:43');
INSERT INTO `i_log` VALUES ('2760', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Unknown redis exception; nested exception is java.lang.NullPointerException', '2017-05-08 18:43:43');
INSERT INTO `i_log` VALUES ('2761', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 09:15:27');
INSERT INTO `i_log` VALUES ('2762', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Unknown redis exception; nested exception is java.lang.NullPointerException', '2017-05-09 09:15:28');
INSERT INTO `i_log` VALUES ('2763', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 09:36:19');
INSERT INTO `i_log` VALUES ('2764', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Unknown redis exception; nested exception is java.lang.NullPointerException', '2017-05-09 09:36:19');
INSERT INTO `i_log` VALUES ('2765', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 09:36:50');
INSERT INTO `i_log` VALUES ('2766', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Unknown redis exception; nested exception is java.lang.NullPointerException', '2017-05-09 09:37:20');
INSERT INTO `i_log` VALUES ('2767', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 09:38:08');
INSERT INTO `i_log` VALUES ('2768', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Unknown redis exception; nested exception is java.lang.NullPointerException', '2017-05-09 09:38:20');
INSERT INTO `i_log` VALUES ('2769', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 09:39:43');
INSERT INTO `i_log` VALUES ('2770', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Unknown redis exception; nested exception is java.lang.NullPointerException', '2017-05-09 09:39:43');
INSERT INTO `i_log` VALUES ('2771', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 10:14:27');
INSERT INTO `i_log` VALUES ('2772', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', 'Unknown redis exception; nested exception is java.lang.NullPointerException', '2017-05-09 10:14:27');
INSERT INTO `i_log` VALUES ('2773', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 10:15:38');
INSERT INTO `i_log` VALUES ('2774', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 10:23:44');
INSERT INTO `i_log` VALUES ('2775', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-09 10:24:03');
INSERT INTO `i_log` VALUES ('2776', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-09 10:24:04');
INSERT INTO `i_log` VALUES ('2777', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-09 10:24:05');
INSERT INTO `i_log` VALUES ('2778', 'admin', '0', '/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-09 10:24:06');
INSERT INTO `i_log` VALUES ('2779', 'admin', '0', '/admin/oper/queryPage', 'com.xe.demo.controller.OperationController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询权限列表', null, '2017-05-09 10:24:06');
INSERT INTO `i_log` VALUES ('2780', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 10:31:16');
INSERT INTO `i_log` VALUES ('2781', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-09 10:31:19');
INSERT INTO `i_log` VALUES ('2782', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-09 10:31:47');
INSERT INTO `i_log` VALUES ('2783', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 10:42:19');
INSERT INTO `i_log` VALUES ('2784', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-09 10:42:25');
INSERT INTO `i_log` VALUES ('2785', 'admin', '0', '/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-09 10:42:27');
INSERT INTO `i_log` VALUES ('2786', 'admin', '0', '/admin/oper/queryPage', 'com.xe.demo.controller.OperationController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询权限列表', null, '2017-05-09 10:42:27');
INSERT INTO `i_log` VALUES ('2787', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-09 10:42:29');
INSERT INTO `i_log` VALUES ('2788', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-09 10:42:30');
INSERT INTO `i_log` VALUES ('2789', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 11:28:31');
INSERT INTO `i_log` VALUES ('2790', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 11:31:08');
INSERT INTO `i_log` VALUES ('2791', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 11:36:47');
INSERT INTO `i_log` VALUES ('2792', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 11:41:48');
INSERT INTO `i_log` VALUES ('2793', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-09 11:41:51');
INSERT INTO `i_log` VALUES ('2794', 'admin', '0', '/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-09 13:53:29');
INSERT INTO `i_log` VALUES ('2795', 'admin', '0', '/admin/oper/queryPage', 'com.xe.demo.controller.OperationController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询权限列表', null, '2017-05-09 13:53:31');
INSERT INTO `i_log` VALUES ('2796', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-09 13:53:36');
INSERT INTO `i_log` VALUES ('2797', 'admin', '0', '/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-09 13:53:55');
INSERT INTO `i_log` VALUES ('2798', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-09 13:55:35');
INSERT INTO `i_log` VALUES ('2799', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:06:07');
INSERT INTO `i_log` VALUES ('2800', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:07:58');
INSERT INTO `i_log` VALUES ('2801', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:17:06');
INSERT INTO `i_log` VALUES ('2802', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:17:51');
INSERT INTO `i_log` VALUES ('2803', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:22:19');
INSERT INTO `i_log` VALUES ('2804', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:24:37');
INSERT INTO `i_log` VALUES ('2805', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:28:52');
INSERT INTO `i_log` VALUES ('2806', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:31:25');
INSERT INTO `i_log` VALUES ('2807', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:32:14');
INSERT INTO `i_log` VALUES ('2808', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', '[B cannot be cast to com.xe.demo.model.AuthUser', '2017-05-09 14:32:14');
INSERT INTO `i_log` VALUES ('2809', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:33:24');
INSERT INTO `i_log` VALUES ('2810', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:34:10');
INSERT INTO `i_log` VALUES ('2811', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', '[B cannot be cast to com.xe.demo.model.AuthUser', '2017-05-09 14:34:10');
INSERT INTO `i_log` VALUES ('2812', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 14:55:17');
INSERT INTO `i_log` VALUES ('2813', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', '[B cannot be cast to com.xe.demo.model.AuthUser', '2017-05-09 14:55:17');
INSERT INTO `i_log` VALUES ('2814', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:01:48');
INSERT INTO `i_log` VALUES ('2815', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:22:54');
INSERT INTO `i_log` VALUES ('2816', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:25:09');
INSERT INTO `i_log` VALUES ('2817', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:26:23');
INSERT INTO `i_log` VALUES ('2818', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:53:01');
INSERT INTO `i_log` VALUES ('2819', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:53:01');
INSERT INTO `i_log` VALUES ('2820', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:53:37');
INSERT INTO `i_log` VALUES ('2821', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:53:48');
INSERT INTO `i_log` VALUES ('2822', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:54:05');
INSERT INTO `i_log` VALUES ('2823', 'admin', '1', '/admin/login', 'com.xe.demo.service.LoginService.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:54:20');
INSERT INTO `i_log` VALUES ('2824', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-09 15:54:29');
INSERT INTO `i_log` VALUES ('2825', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-10 10:01:54');
INSERT INTO `i_log` VALUES ('2826', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-10 10:02:23');
INSERT INTO `i_log` VALUES ('2827', 'admin', '0', '/admin/role/queryPage', 'com.xe.demo.controller.RoleController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询角色列表', null, '2017-05-10 10:02:24');
INSERT INTO `i_log` VALUES ('2828', 'admin', '0', '/admin/oper/queryPage', 'com.xe.demo.controller.OperationController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询权限列表', null, '2017-05-10 10:02:24');
INSERT INTO `i_log` VALUES ('2829', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-10 10:07:07');
INSERT INTO `i_log` VALUES ('2830', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-10 10:08:21');
INSERT INTO `i_log` VALUES ('2831', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-10 10:09:53');
INSERT INTO `i_log` VALUES ('2832', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-15 10:03:23');
INSERT INTO `i_log` VALUES ('2833', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-15 10:03:29');
INSERT INTO `i_log` VALUES ('2834', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-15 10:03:38');
INSERT INTO `i_log` VALUES ('2835', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-15 10:03:49');
INSERT INTO `i_log` VALUES ('2836', 'admin', '0', '/admin/login', 'com.xe.demo.controller.LoginController.login()', '{password=21232f297a57a5a743894a0e4a801fc3, loginIp=192.168.0.200, username=admin}', '192.168.0.200', '登录', null, '2017-05-19 15:15:20');
INSERT INTO `i_log` VALUES ('2837', 'admin', '0', '/admin/user/queryPage', 'com.xe.demo.controller.UserController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询用户列表', null, '2017-05-19 15:15:23');
INSERT INTO `i_log` VALUES ('2838', 'admin', '0', '/admin/tech/queryArticlePage', 'com.xe.demo.controller.TechController.queryArticlePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文章列表', null, '2017-05-19 15:15:26');
INSERT INTO `i_log` VALUES ('2839', 'admin', '0', '/admin/log/queryPage', 'com.xe.demo.controller.LogController.queryPage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询日志列表', null, '2017-05-19 15:15:28');
INSERT INTO `i_log` VALUES ('2840', 'admin', '0', '/admin/tech/queryFilePage', 'com.xe.demo.controller.TechController.queryFilePage()', '{sortName=id, pageNo=1, sortOrder=desc, loginIp=192.168.0.200, pageSize=10}', '192.168.0.200', '查询文件列表', null, '2017-05-19 15:15:30');

-- ----------------------------
-- Procedure structure for `addOrUpdateOper`
-- ----------------------------
DROP PROCEDURE IF EXISTS `addOrUpdateOper`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOrUpdateOper`(IN `opcode` varchar(20),IN `ophref` varchar(50),IN `opname` varchar(50),IN `opseq` int)
BEGIN
	declare opid int default 0;
	select op.opid intoopid from auth_operation AS op where op.opcode = opcode and op.ophref = ophref;
	if opid > 0 then
		update auth_operation set opname = opname, opseq = opseq 
		where opcode = opcode and ophref = ophref;
		delete from auth_operation where opid = opid;
	else
		insert into auth_operation(opcode, opname, ophref, opseq) 
		values(opcode, opname, ophref, opseq);
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `bind_opers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `bind_opers`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `bind_opers`(IN `roleid` integer)
BEGIN
	/*用于判断是否结束循环*/
	declare done int default 0;
	declare opid int;
	declare count int default 0;
	/*定义游标*/
	declare c_opid cursor for select op.opid from auth_operation op;
	/*定义 设置循环结束标识done值怎么改变 的逻辑*/
	declare continue handler for not FOUND set done = 1;
	/*打开游标*/
	open c_opid;
		repeat
			fetch c_opid into opid;
			if not done then 
				select count(op.opid) into count from auth_role_operation op where op.roleid = roleid and op.opid = opid;

				if count <= 0 then
					insert into auth_role_operation(roleid, opid) values(roleid, opid);
				end if;
			end if;
		until done end repeat;
	close c_opid;  /*关闭游标*/
END
;;
DELIMITER ;
