--
-- Структура таблицы `account`
--
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
                           `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                           `name` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `deleted` tinyint(1) DEFAULT '0',
                           `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `sic_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `billing_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `billing_address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `billing_address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `billing_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `billing_address_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `shipping_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `shipping_address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `shipping_address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `shipping_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `shipping_address_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `created_at` datetime DEFAULT NULL,
                           `modified_at` datetime DEFAULT NULL,
                           `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `account`
--

INSERT INTO `account` (`id`, `name`, `deleted`, `website`, `type`, `industry`, `sic_code`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_postal_code`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_country`, `shipping_address_postal_code`, `description`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `owner_user_id`) VALUES
('5b6856208df9c890a', 'Retailer Comp', 0, '', '', '', '', '', '', '', 'Germany', '', '', '', '', '', '', '', '2018-08-06 14:07:28', '2018-09-06 11:12:28', '1', '1', '1', NULL),
('5b910d204446f4221', 'Supplier Corp', 0, '', '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-09-06 11:18:56', '2018-11-22 08:15:37', '1', '1', '1', NULL),
('5bf6653f768cd5df9', 'Main Supplier Corp', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-11-22 08:13:51', '2018-11-22 08:15:23', '1', '1', '1', '1'),
('5bf665dc2c5912929', 'Main Retailer Corp', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-11-22 08:16:28', '2018-11-22 08:16:28', '1', NULL, '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `account_contact`
--
DROP TABLE IF EXISTS `account_contact`;
CREATE TABLE `account_contact` (
                                   `id` int(11) NOT NULL,
                                   `account_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                   `contact_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                   `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `deleted` tinyint(1) DEFAULT '0',
                                   `is_inactive` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `account_contact`
--

INSERT INTO `account_contact` (`id`, `account_id`, `contact_id`, `role`, `deleted`, `is_inactive`) VALUES
(1, '5b6856208df9c890a', '5b68563817b1dbd0b', 'Retailer', 0, 0),
(2, '5b910d204446f4221', '5b910d35ecf9383b9', 'Supplier', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `account_portal_user`
--
DROP TABLE IF EXISTS `account_portal_user`;
CREATE TABLE `account_portal_user` (
                                       `id` int(11) NOT NULL,
                                       `user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                       `account_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                       `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `account_portal_user`
--

INSERT INTO `account_portal_user` (`id`, `user_id`, `account_id`, `deleted`) VALUES
(1, '5b6807ebe42c89d66', '5b6856208df9c890a', 0),
(2, '5b910d520c3fe4642', '5b910d204446f4221', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `array_value`
--
DROP TABLE IF EXISTS `array_value`;
CREATE TABLE `array_value` (
                               `id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
                               `deleted` tinyint(1) DEFAULT '0',
                               `value` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `attribute` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `entity_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                               `entity_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `array_value`
--

INSERT INTO `array_value` (`id`, `deleted`, `value`, `attribute`, `entity_id`, `entity_type`) VALUES
('5c5d8b6588cf94224', 0, 'USD', 'currencies', '5971b7857670e1789', 'Channel'),
('5c5d8b6589e3fa09b', 0, 'EUR', 'currencies', '5971b7857670e1789', 'Channel'),
('5c5d8b658a6a951d1', 0, 'de_DE', 'locales', '5971b7857670e1789', 'Channel'),
('5c5d8b658af8de250', 0, 'en_US', 'locales', '5971b7857670e1789', 'Channel'),
('5c5d8b658b3e5dce3', 0, 'USD', 'currencies', '59a81f80ae0ce8ecb', 'Channel'),
('5c5d8b658b9fd5508', 0, 'EUR', 'currencies', '59a81f80ae0ce8ecb', 'Channel'),
('5c5d8b658d2dfdf1b', 0, 'de_DE', 'locales', '59a81f80ae0ce8ecb', 'Channel'),
('5c5d8b658dae64870', 0, 'USD', 'currencies', '59a81f8c56f59622d', 'Channel'),
('5c5d8b658e05e6f89', 0, 'en_US', 'locales', '59a81f8c56f59622d', 'Channel'),
('5c5d8b658e9081f6d', 0, 'EUR', 'currencies', '59a81fa552e62a6aa', 'Channel'),
('5c5d8b658eede581c', 0, 'USD', 'currencies', '59a81fa552e62a6aa', 'Channel'),
('5c5d8b658fb40c752', 0, 'en_US', 'locales', '59a81fa552e62a6aa', 'Channel'),
('5c5d8b65901eb3915', 0, 'de_DE', 'locales', '59a81fa552e62a6aa', 'Channel'),
('5c5d8b65919358757', 0, 'EUR', 'currencies', '59ba3d074e36186d4', 'Channel'),
('5c5d8b6591ef3c10c', 0, 'USD', 'currencies', '59ba3d074e36186d4', 'Channel'),
('5c5d8b6592766911f', 0, 'de_DE', 'locales', '59ba3d074e36186d4', 'Channel'),
('5c5d8b6593170690f', 0, 'EUR', 'currencies', '5a144ccfe86acdda7', 'Channel'),
('5c5d8b6593f11607d', 0, 'USD', 'currencies', '5a144ccfe86acdda7', 'Channel'),
('5c5d8b6594868a1a8', 0, 'de_DE', 'locales', '5a144ccfe86acdda7', 'Channel'),
('5c5d8b6594de6d961', 0, 'en_US', 'locales', '5a144ccfe86acdda7', 'Channel'),
('5c5d8b65958a3c961', 0, 'EUR', 'currencies', '5b7bba2f2f257d218', 'Channel'),
('5c5d8b6595ec0c702', 0, 'USD', 'currencies', '5b7bba2f2f257d218', 'Channel'),
('5c5d8b65968930747', 0, 'de_DE', 'locales', '5b7bba2f2f257d218', 'Channel'),
('5c5d8b659927d4a7e', 0, 'green', 'tag', '59a90c862458bd976', 'Product'),
('5c5d8b659bae5f6c0', 0, 'red', 'tag', '59fad6841f243119b', 'Product'),
('5c5d8b659cc5e5989', 0, 'red', 'tag', '59fb0aa27855b0afd', 'Product'),
('5c5d8b65a3a3581bc', 0, 'blue', 'tag', '59fb152fe4a37088e', 'Product'),
('5c5d8b65a485690f2', 0, 'yellow', 'tag', '5a9e93d0e1e4fd1b9', 'Product'),
('5c5d8b65a4f0abd77', 0, 'green', 'tag', '5ac229e0da6a4b297', 'Product'),
('5c5d8b65a526da61d', 0, 'red', 'tag', '5ac229e0da6a4b297', 'Product'),
('5c5d8b65a60bd3127', 0, 'green', 'tag', '5be971728d44f1a11', 'Product'),
('5c5d8b65a64ab71d7', 0, 'yellow', 'tag', '5be98924b15087ff5', 'Product'),
('5c5d8b65a6ebdb696', 0, 'blue', 'tag', '5be98924b15087ff5', 'Product'),
('5c8a62040736c08ef', 0, 'Document', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a620407def0b6d', 0, 'KnowledgeBaseArticle', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a62040888cc2b9', 0, 'Attribute', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a62040a2507fbe', 0, 'AttributeGroup', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a62040c4d4df88', 0, 'Brand', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a62040cf504eb0', 0, 'Category', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a62040d93f8a65', 0, 'Product', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a62040dfebaebb', 0, 'ProductFamily', 'tabList', '5b4eec4be7175d965', 'Portal'),
('5c8a622b47552c192', 0, 'Document', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5c8a622b49bbc7ef3', 0, 'KnowledgeBaseArticle', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5c8a622b4a321fb5f', 0, 'Attribute', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5c8a622b4a7bfaa04', 0, 'AttributeGroup', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5c8a622b4ac2d5692', 0, 'Brand', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5c8a622b4b4f350dd', 0, 'Category', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5c8a622b4b92ad23b', 0, 'Product', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5c8a622b4bf7027ed', 0, 'ProductFamily', 'tabList', '5b910a8ec465248a7', 'Portal'),
('5ccb0422a58dc625e', 0, 'red', 'tag', '59fb0e05a0c46a91a', 'Product'),
('5ccb0422a629f5be0', 0, 'green', 'tag', '59fb0e05a0c46a91a', 'Product'),
('5ccb0422a6b98051b', 0, 'yellow', 'tag', '59fb0e05a0c46a91a', 'Product'),
('5ccb06bdc0cfcc467', 0, 'red', 'tag', '5a9e93d0e1e4fd1b9', 'Product'),
('5ccb072b9020596cc', 0, 'red', 'tag', '59fb152fe4a37088e', 'Product'),
('5ccbcee5820a6384a', 0, 'green', 'tag', '59fad6841f243119b', 'Product'),
('5ccbcfdd6ea9ebf12', 0, 'red', 'tag', '59a90c862458bd976', 'Product'),
('5ccbd051093166ace', 0, 'red', 'tag', '5be98924b15087ff5', 'Product'),
('5d2c5b21200f09a1f', 0, 'your_tag1', 'tag', '5ac229e0da6a4b297', 'Product'),
('5d2c5b47a20862b77', 0, 'your_tag1', 'tag', '59fb0aa27855b0afd', 'Product'),
('5d2c5b5208cf20494', 0, 'your_tag2', 'tag', '59fb0e05a0c46a91a', 'Product'),
('5d2c5b5854c97c9d3', 0, 'your_tag2', 'tag', '5a9e93d0e1e4fd1b9', 'Product'),
('5d2c5b68c77d74fc0', 0, 'your_tag1', 'tag', '59fb152fe4a37088e', 'Product'),
('5d2c5b6f04bd21714', 0, 'yellow', 'tag', '5be971728d44f1a11', 'Product'),
('5d2c5b786bec380e6', 0, 'your_tag1', 'tag', '59fad6841f243119b', 'Product'),
('5d2c5b7eb7b9e77b9', 0, 'your_tag2', 'tag', '59a90c862458bd976', 'Product'),
('5d2c5b86e29e4e291', 0, 'your_tag1', 'tag', '5b8649f0dae076eb0', 'Product'),
('5d2c5b8c42be93175', 0, 'your_tag1', 'tag', '59b0e83c603a1b9c8', 'Product'),
('5d7b81fa7bee89464', 0, 'your_tag2', 'tag', '59fb0aa27855b0afd', 'Product'),
('5d7b81fa7c5d4149f', 0, 'yellow', 'tag', '59fb0aa27855b0afd', 'Product'),
('5d7b8e537487a552d', 0, 'yellow', 'tag', '59a91396e7971debe', 'Product'),
('5d7b8e5374c97fea2', 0, 'green', 'tag', '59a91396e7971debe', 'Product'),
('5d7b960d934f07322', 0, 'your_tag2', 'tag', '5b8649f0dae076eb0', 'Product'),
('5d7b978eddba3f48f', 0, 'red', 'tag', '59b0e83c603a1b9c8', 'Product'),
('5da954642869f6606', 0, 'blue', 'tag', '5da95464266aa342e', 'Product'),
('5da954642a524f3ad', 0, 'yellow', 'tag', '5da95464266aa342e', 'Product'),
('5da954642af37e316', 0, 'green', 'tag', '5da95464266aa342e', 'Product'),
('5da954642b72fb5f0', 0, 'red', 'tag', '5da95464266aa342e', 'Product'),
('5da954642bb615261', 0, 'your_tag1', 'tag', '5da95464266aa342e', 'Product'),
('5dd24b5a31e19e743', 0, 'Headset', 'supplied', '5da95464266aa342e', 'Product'),
('5dd24b5a46b57a36a', 0, 'Charger', 'supplied', '5da95464266aa342e', 'Product'),
('5dd24b88c271ceb1d', 0, 'Headset', 'supplied', '59fb0aa27855b0afd', 'Product'),
('5dd24b88c2dd792ef', 0, 'Charger', 'supplied', '59fb0aa27855b0afd', 'Product'),
('5dd24b88c310fa502', 0, 'Documentation', 'supplied', '59fb0aa27855b0afd', 'Product'),
('5dd24b9b5f8caaceb', 0, 'Headset', 'supplied', '59fb0e05a0c46a91a', 'Product'),
('5dd24b9b60226daca', 0, 'Charger', 'supplied', '59fb0e05a0c46a91a', 'Product'),
('5dd24b9b607054edf', 0, 'Documentation', 'supplied', '59fb0e05a0c46a91a', 'Product'),
('5dd24bb211551669e', 0, 'Battery', 'supplied', '5a9e93d0e1e4fd1b9', 'Product'),
('5dd24bb2119fdf3ae', 0, 'Lens', 'supplied', '5a9e93d0e1e4fd1b9', 'Product'),
('5dd24bb211f83210b', 0, 'Charger', 'supplied', '5a9e93d0e1e4fd1b9', 'Product'),
('5dd24bb2122dbc4d7', 0, 'Documentation', 'supplied', '5a9e93d0e1e4fd1b9', 'Product'),
('5dd24bc3d947320ea', 0, 'Charger', 'supplied', '59a91396e7971debe', 'Product'),
('5dd24bc3d9832e1a8', 0, 'Battery', 'supplied', '59a91396e7971debe', 'Product'),
('5dd24bc3d9be9e113', 0, 'Lens', 'supplied', '59a91396e7971debe', 'Product'),
('5dd24bc3da2d3a915', 0, 'Documentation', 'supplied', '59a91396e7971debe', 'Product'),
('5dd24d7c029dd4069', 0, 'Charger', 'supplied', '5be971728d44f1a11', 'Product'),
('5dd24d7c02e03ac21', 0, 'Battery', 'supplied', '5be971728d44f1a11', 'Product'),
('5dd24d7c03348330e', 0, 'Lens', 'supplied', '5be971728d44f1a11', 'Product'),
('5dd24d7c0365c357a', 0, 'Documentation', 'supplied', '5be971728d44f1a11', 'Product'),
('5dd24d93bdc41b67f', 0, 'Documentation', 'supplied', '59fad6841f243119b', 'Product'),
('5dd2554353144751f', 0, 'Remote Control (with batteries)', 'supplied', '59fad6841f243119b', 'Product'),
('5dd2557927ae7d9de', 0, 'Remote Control (with batteries)', 'supplied', '59a90c862458bd976', 'Product'),
('5dd25579281cbc1d9', 0, 'Documentation', 'supplied', '59a90c862458bd976', 'Product'),
('5dd25596ceb927a85', 0, 'Remote Control (with batteries)', 'supplied', '5b8649f0dae076eb0', 'Product'),
('5dd25596cf0e40474', 0, 'Documentation', 'supplied', '5b8649f0dae076eb0', 'Product'),
('5dd259ca51e31f4e4', 0, 'Power cord', 'supplied', '59fad6841f243119b', 'Product'),
('5dd259d251b5ca8b3', 0, 'Power cord', 'supplied', '59a90c862458bd976', 'Product'),
('5dd259da1cea3a436', 0, 'Power cord', 'supplied', '5b8649f0dae076eb0', 'Product'),
('5defa4885c4b8ceda', 0, 'Headset', 'suppliedDeDe', '5da95464266aa342e', 'Product'),
('5defa4885ce7a58b7', 0, 'Charger', 'suppliedDeDe', '5da95464266aa342e', 'Product'),
('5defa4885e2be44b5', 0, 'Headset', 'suppliedEnUs', '5da95464266aa342e', 'Product'),
('5defa4885eaf97323', 0, 'Charger', 'suppliedEnUs', '5da95464266aa342e', 'Product'),
('5defa48d18c91095d', 0, 'Documentation', 'supplied', '5da95464266aa342e', 'Product'),
('5defa48d198fae5d6', 0, 'Documentation', 'suppliedDeDe', '5da95464266aa342e', 'Product'),
('5defa48d1a5a7ba84', 0, 'Documentation', 'suppliedEnUs', '5da95464266aa342e', 'Product'),
('5f75a31c577aa3d77', 0, 'Main', 'role', '5f75a3184e5969e9a', 'AssetRelation'),
('5f75a47dd24756cf3', 0, 'Main', 'role', '5f75a43b88358ad0e', 'AssetRelation'),
('5f75a4c862b108036', 0, 'Main', 'role', '5f75a4c809e2c0c91', 'AssetRelation'),
('5f75a542a618d4854', 0, 'Main', 'role', '5f75a5424f1fc7837', 'AssetRelation'),
('5f75a615da68cbb52', 0, 'Main', 'role', '5f75a6157ec3e67ef', 'AssetRelation'),
('5f75a686436a19266', 0, 'Main', 'role', '5f75a685ddc78e08a', 'AssetRelation'),
('5f75a6df5342cd4b4', 0, 'Main', 'role', '5f75a6deec85525ff', 'AssetRelation'),
('5f75a74e49855c07b', 0, 'Main', 'role', '5f75a74de60221a84', 'AssetRelation'),
('5f75a8509a69fe893', 0, 'Main', 'role', '5f75a7fa119a03e3a', 'AssetRelation'),
('5f75a8a19a142028d', 0, 'Main', 'role', '5f75a8a13f595b296', 'AssetRelation'),
('5f75a914db0c351db', 0, 'Main', 'role', '5f75a8e8288ea4d1f', 'AssetRelation'),
('5f75a9461d42c93a6', 0, 'Main', 'role', '5f75a945ba0e3e41b', 'AssetRelation'),
('5f75a99a0533b5ec1', 0, 'Main', 'role', '5f75a9999c5dfdc65', 'AssetRelation');

-- --------------------------------------------------------

--
-- Структура таблицы `asset`
--
DROP TABLE IF EXISTS `asset`;
CREATE TABLE `asset` (
                         `id` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `deleted` tinyint(1) DEFAULT '0',
                         `height` int(11) DEFAULT NULL,
                         `width` int(11) DEFAULT NULL,
                         `color_space` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `color_depth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `orientation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `is_active` tinyint(1) NOT NULL DEFAULT '1',
                         `tags` mediumtext COLLATE utf8mb4_unicode_ci,
                         `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `name_of_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `description` mediumtext COLLATE utf8mb4_unicode_ci,
                         `meta_data` mediumtext COLLATE utf8mb4_unicode_ci,
                         `created_at` datetime DEFAULT NULL,
                         `modified_at` datetime DEFAULT NULL,
                         `private` tinyint(1) NOT NULL DEFAULT '0',
                         `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Gallery Image',
                         `size` double DEFAULT NULL,
                         `size_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `name_de_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `name_en_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `description_de_de` mediumtext COLLATE utf8mb4_unicode_ci,
                         `description_en_us` mediumtext COLLATE utf8mb4_unicode_ci,
                         `collection_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `created_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `modified_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `assigned_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `file_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `owner_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `asset`
--

INSERT INTO `asset` (`id`, `name`, `deleted`, `height`, `width`, `color_space`, `color_depth`, `orientation`, `is_active`, `tags`, `path`, `name_of_file`, `description`, `meta_data`, `created_at`, `modified_at`, `private`, `code`, `type`, `size`, `size_unit`, `name_de_de`, `name_en_us`, `description_de_de`, `description_en_us`, `collection_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `file_id`, `owner_user_id`) VALUES
('5f75a3050b22d418c', '1', 0, 925, 679, 'SRGB', '8', 'Portrait', 1, '[]', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/ativy', '1', NULL, NULL, '2020-10-01 09:36:05', '2020-10-01 09:36:05', 0, '1', 'Gallery Image', 57.9, 'kb', '1', '1', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a2fc1aa28778f', '1'),
('5f75a3605cc30e8dc', '2', 0, 2000, 1916, 'SRGB', '8', 'Portrait', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/lu445', '2', NULL, NULL, '2020-10-01 09:37:36', '2020-10-01 09:37:36', 0, '2', 'Gallery Image', 316, 'kb', '2', '2', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a34ca6acffb73', '1'),
('5f75a377a0d34c16c', '3', 0, 800, 323, 'SRGB', '8', 'Portrait', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/0xefr', '3', NULL, NULL, '2020-10-01 09:37:59', '2020-10-01 09:37:59', 0, '3', 'Gallery Image', 37.3, 'kb', '3', '3', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a36cc19e83f46', '1'),
('5f75a3a938c6ac431', '4', 0, 420, 425, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/7q0xd', '4', NULL, NULL, '2020-10-01 09:38:49', '2020-10-01 09:38:49', 0, '4', 'Gallery Image', 11.6, 'kb', '4', '4', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a39f3ad950d6f', '1'),
('5f75a43b83e5efcb7', '5', 0, 300, 300, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/sy0dm', '5', NULL, NULL, '2020-10-01 09:41:15', '2020-10-01 09:41:15', 0, '5', 'Gallery Image', 8.7, 'kb', '5', '5', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a430b5df63b3d', '1'),
('5f75a44ce8e89c5df', '6', 0, 689, 693, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/zvh3o', '6', NULL, NULL, '2020-10-01 09:41:32', '2020-10-01 09:41:32', 0, '6', 'Gallery Image', 34.7, 'kb', '6', '6', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a4448776f8dc9', '1'),
('5f75a46269a80a836', '7', 0, 700, 700, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/x96er', '7', NULL, NULL, '2020-10-01 09:41:54', '2020-10-01 09:41:54', 0, '7', 'Gallery Image', 81.2, 'kb', '7', '7', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a458890284911', '1'),
('5f75a4c7e8435c65d', '8', 0, 700, 700, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/avf4v', '8', NULL, NULL, '2020-10-01 09:43:35', '2020-10-01 09:43:35', 0, '8', 'Gallery Image', 36.4, 'kb', '8', '8', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a4bcbc8432490', '1'),
('5f75a4e49314109ce', '9', 0, 281, 500, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/er1kw', '9', NULL, NULL, '2020-10-01 09:44:04', '2020-10-01 09:44:04', 0, '9', 'Gallery Image', 97.9, 'kb', '9', '9', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a4d71f66f7630', '1'),
('5f75a4f59f8747668', '10', 0, 480, 480, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/i9bw5', '10', NULL, NULL, '2020-10-01 09:44:21', '2020-10-01 09:44:21', 0, '10', 'Gallery Image', 92.2, 'kb', '10', '10', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a4eb98c61db58', '1'),
('5f75a54239b1e04d2', 'canon_eos_1100d_18_55_kit_images_3635339', 0, 469, 600, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/exesq', 'canon_eos_1100d_18_55_kit_images_3635339', NULL, NULL, '2020-10-01 09:45:38', '2020-10-01 09:45:38', 0, 'canon_eos_1100d_18_55_kit_images_3635339', 'Gallery Image', 64.1, 'kb', 'canon_eos_1100d_18_55_kit_images_3635339', 'canon_eos_1100d_18_55_kit_images_3635339', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a5380c2b5aa61', '1'),
('5f75a557d1f002493', '1111493_0', 0, 412, 500, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/dggei', '1111493_0', NULL, NULL, '2020-10-01 09:45:59', '2020-10-01 09:45:59', 0, '1111493_0', 'Gallery Image', 30.7, 'kb', '1111493_0', '1111493_0', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a54e48b12d2fe', '1'),
('5f75a56d46299d70a', '365411', 0, 364, 628, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/tit7c', '365411', NULL, NULL, '2020-10-01 09:46:21', '2020-10-01 09:46:21', 0, '365411', 'Gallery Image', 46, 'kb', '365411', '365411', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a5608d2c3430e', '1'),
('5f75a615755ec81df', 'Canon EOS 5D Mark III', 0, 1250, 1250, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/xrhpo', 'Canon EOS 5D Mark III', NULL, NULL, '2020-10-01 09:49:09', '2020-10-01 09:49:09', 0, 'canon_eos_5d_mark_iii', 'Gallery Image', 616.5, 'kb', 'Canon EOS 5D Mark III', 'Canon EOS 5D Mark III', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a6084d0c49f48', '1'),
('5f75a63bbdfdd0cc2', 'Canon EOS 5D Mark III_2', 0, 543, 724, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/8dbuh', 'Canon EOS 5D Mark III_2', NULL, NULL, '2020-10-01 09:49:47', '2020-10-01 09:49:47', 0, 'canon_eos_5d_mark_iii_2', 'Gallery Image', 316.8, 'kb', 'Canon EOS 5D Mark III_2', 'Canon EOS 5D Mark III_2', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a631d4ea3f9f6', '1'),
('5f75a64e769dd37c1', 'Canon EOS 5D Mark III_1', 0, 190, 289, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/h8e2m', 'Canon EOS 5D Mark III_1', NULL, NULL, '2020-10-01 09:50:06', '2020-10-01 09:50:06', 0, 'canon_eos_5d_mark_iii_1', 'Gallery Image', 15.5, 'kb', 'Canon EOS 5D Mark III_1', 'Canon EOS 5D Mark III_1', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a643219c1d467', '1'),
('5f75a685d89ef7df9', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for', 0, 800, 800, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/ffghs', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for', NULL, NULL, '2020-10-01 09:51:01', '2020-10-01 09:51:01', 0, 'caenboo6d70d60dcamerabagsoftsiliconerubberprotectivecamerabodycovercaseskinfor', 'Gallery Image', 98, 'kb', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a67aada9ded1d', '1'),
('5f75a69a8849c2bbe', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover', 0, 448, 822, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/4x3qi', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover', NULL, NULL, '2020-10-01 09:51:22', '2020-10-01 09:51:22', 0, 'highqualityslrcamerabagforcanoneos5dmarkiiilightweightcamerabagcasecover', 'Gallery Image', 57.2, 'kb', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a68e0f1ac294a', '1'),
('5f75a6dee4ac8adf5', 'Canon EOS 5D Mark IV 24-105mm', 0, 1500, 1500, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/z6a3x', 'Canon EOS 5D Mark IV 24-105mm', NULL, NULL, '2020-10-01 09:52:30', '2020-10-01 09:52:30', 0, 'canon_eos_5d_mark_iv_24105mm', 'Gallery Image', 373.4, 'kb', 'Canon EOS 5D Mark IV 24-105mm', 'Canon EOS 5D Mark IV 24-105mm', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a6d48444aca15', '1'),
('5f75a6f0dee206198', 'Canon EOS 5D Mark IV 24-105mm_1', 0, 1000, 1500, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/1c7pd', 'Canon EOS 5D Mark IV 24-105mm_1', NULL, NULL, '2020-10-01 09:52:48', '2020-10-01 09:52:48', 0, 'canon_eos_5d_mark_iv_24105mm_1', 'Gallery Image', 136.3, 'kb', 'Canon EOS 5D Mark IV 24-105mm_1', 'Canon EOS 5D Mark IV 24-105mm_1', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a6e66b2776860', '1'),
('5f75a7056e8b6953a', 'Canon EOS 5D Mark IV 24-105mm_2', 0, 1500, 1500, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/b0w36', 'Canon EOS 5D Mark IV 24-105mm_2', NULL, NULL, '2020-10-01 09:53:09', '2020-10-01 09:53:09', 0, 'canon_eos_5d_mark_iv_24105mm_2', 'Gallery Image', 324.9, 'kb', 'Canon EOS 5D Mark IV 24-105mm_2', 'Canon EOS 5D Mark IV 24-105mm_2', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a6f925975b6b1', '1'),
('5f75a74de1719d808', 'philips_46pfl8007k_', 0, 445, 700, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/nj9uf', 'philips_46pfl8007k_', NULL, NULL, '2020-10-01 09:54:21', '2020-10-01 09:54:21', 0, 'philips_46pfl8007k_', 'Gallery Image', 9.3, 'kb', 'philips_46pfl8007k_', 'philips_46pfl8007k_', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a7437572382c4', '1'),
('5f75a75fd7bb693c2', 'Philips-46PFL8007K-12-2-large', 0, 701, 643, 'SRGB', '8', 'Portrait', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/vv07e', 'Philips-46PFL8007K-12-2-large', NULL, NULL, '2020-10-01 09:54:39', '2020-10-01 09:54:39', 0, 'philips46pfl8007k122large', 'Gallery Image', 100.8, 'kb', 'Philips-46PFL8007K-12-2-large', 'Philips-46PFL8007K-12-2-large', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a755ac4ed5c99', '1'),
('5f75a76fe82a4304b', 'U0040458_big', 0, 1024, 1024, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/bllq9', 'U0040458_big', NULL, NULL, '2020-10-01 09:54:55', '2020-10-01 09:54:55', 0, 'u0040458_big', 'Gallery Image', 89.1, 'kb', 'U0040458_big', 'U0040458_big', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a766d4d031a4c', '1'),
('5f75a78031d0e5b93', 'Philips-46PFL8007K-12-1-large', 0, 655, 667, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/6pcu1', 'Philips-46PFL8007K-12-1-large', NULL, NULL, '2020-10-01 09:55:12', '2020-10-01 09:55:12', 0, 'philips46pfl8007k121large', 'Gallery Image', 201.7, 'kb', 'Philips-46PFL8007K-12-1-large', 'Philips-46PFL8007K-12-1-large', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a7770db9fe746', '1'),
('5f75a8a1279629d25', 'LED5500_NYCskyline_Frt_2', 0, 294, 294, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/0hiok', 'LED5500_NYCskyline_Frt_2', NULL, NULL, '2020-10-01 10:00:01', '2020-10-01 10:00:01', 0, 'led5500_nycskyline_frt_2', 'Gallery Image', 24.8, 'kb', 'LED5500_NYCskyline_Frt_2', 'LED5500_NYCskyline_Frt_2', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a88a12eee8c48', '1'),
('5f75a8a12820880b4', '2018-11-09_10-13-35', 0, 844, 1286, 'SRGB', '8', 'Landscape', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/pqwc5', '2018-11-09_10-13-35', NULL, NULL, '2020-10-01 10:00:01', '2020-10-01 10:00:01', 0, '20181109_101335', 'Gallery Image', 189, 'kb', '2018-11-09_10-13-35', '2018-11-09_10-13-35', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a882d560f4973', '1'),
('5f75a8d40d5627635', '688720_0', 0, 400, 400, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/lyh2m', '688720_0', NULL, NULL, '2020-10-01 10:00:52', '2020-10-01 10:00:52', 0, '688720_0', 'Gallery Image', 23.3, 'kb', '688720_0', '688720_0', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a8ca99c339b79', '1'),
('5f75a8e82157d66cf', '71fVj87ziQL._SL1500_', 0, 1500, 1214, 'SRGB', '8', 'Portrait', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/xusob', '71fVj87ziQL._SL1500_', NULL, NULL, '2020-10-01 10:01:12', '2020-10-01 10:01:12', 0, '71fvj87ziql_sl1500_', 'Gallery Image', 229.3, 'kb', '71fVj87ziQL._SL1500_', '71fVj87ziQL._SL1500_', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a8dc9309a1fc2', '1'),
('5f75a945b56e69fb0', '57217833_images_7953489093', 0, 554, 286, 'SRGB', '8', 'Portrait', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/0pjnq', '57217833_images_7953489093', NULL, NULL, '2020-10-01 10:02:45', '2020-10-01 10:02:45', 0, '57217833_images_7953489093', 'Gallery Image', 13.6, 'kb', '57217833_images_7953489093', '57217833_images_7953489093', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a93d1919f38de', '1'),
('5f75a95fb9190a1e4', '57217833_images_7953489303', 0, 572, 572, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/x4u4g', '57217833_images_7953489303', NULL, NULL, '2020-10-01 10:03:11', '2020-10-01 10:03:11', 0, '57217833_images_7953489303', 'Gallery Image', 77.2, 'kb', '57217833_images_7953489303', '57217833_images_7953489303', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a9527609717bd', '1'),
('5f75a99993608e33a', '3D-apple-iphone-x-color-model_Z', 0, 1200, 1200, 'SRGB', '8', 'Square', 1, NULL, 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/v8pix', '3D-apple-iphone-x-color-model_Z', NULL, NULL, '2020-10-01 10:04:09', '2020-10-01 10:04:09', 0, '3dappleiphonexcolormodel_z', 'Gallery Image', 549.5, 'kb', '3D-apple-iphone-x-color-model_Z', '3D-apple-iphone-x-color-model_Z', NULL, NULL, '5f75a13b112f2f5ba', '1', NULL, '1', '5f75a9913b6b2f8c9', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `asset_meta_data`
--
DROP TABLE IF EXISTS `asset_meta_data`;
CREATE TABLE `asset_meta_data` (
                                   `id` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `deleted` tinyint(1) DEFAULT '0',
                                   `description` mediumtext COLLATE utf8mb4_unicode_ci,
                                   `created_at` datetime DEFAULT NULL,
                                   `modified_at` datetime DEFAULT NULL,
                                   `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `created_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `modified_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `assigned_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `asset_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `owner_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `asset_meta_data`
--

INSERT INTO `asset_meta_data` (`id`, `name`, `deleted`, `description`, `created_at`, `modified_at`, `value`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `asset_id`, `owner_user_id`) VALUES
('5f75a305407bbeb64', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:36:05+03:00', NULL, NULL, NULL, '5f75a3050b22d418c', NULL),
('5f75a30540e4d050e', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:36:05+03:00', NULL, NULL, NULL, '5f75a3050b22d418c', NULL),
('5f75a30541381c058', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a3050b22d418c', NULL),
('5f75a305417c4cfe3', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a3050b22d418c', NULL),
('5f75a360a39713b78', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:37:36+03:00', NULL, NULL, NULL, '5f75a3605cc30e8dc', NULL),
('5f75a360a40001a53', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:37:36+03:00', NULL, NULL, NULL, '5f75a3605cc30e8dc', NULL),
('5f75a360a43175583', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a3605cc30e8dc', NULL),
('5f75a360a4b64b9e8', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '1x1,1x1,1x1', NULL, NULL, NULL, '5f75a3605cc30e8dc', NULL),
('5f75a377c756a5f43', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:37:59+03:00', NULL, NULL, NULL, '5f75a377a0d34c16c', NULL),
('5f75a377c793c409e', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:37:59+03:00', NULL, NULL, NULL, '5f75a377a0d34c16c', NULL),
('5f75a377c7cea3e69', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a377a0d34c16c', NULL),
('5f75a377c7ec8a33c', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a377a0d34c16c', NULL),
('5f75a3a96e7beeb16', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:38:49+03:00', NULL, NULL, NULL, '5f75a3a938c6ac431', NULL),
('5f75a3a96eb6658cc', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:38:49+03:00', NULL, NULL, NULL, '5f75a3a938c6ac431', NULL),
('5f75a3a96ef021976', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a3a938c6ac431', NULL),
('5f75a3a96f1f01082', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a3a938c6ac431', NULL),
('5f75a43ba9308ee9e', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:41:15+03:00', NULL, NULL, NULL, '5f75a43b83e5efcb7', NULL),
('5f75a43ba9a078620', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:41:15+03:00', NULL, NULL, NULL, '5f75a43b83e5efcb7', NULL),
('5f75a43ba9f229516', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a43b83e5efcb7', NULL),
('5f75a43baa753f62a', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a43b83e5efcb7', NULL),
('5f75a44d1c24bf303', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:41:32+03:00', NULL, NULL, NULL, '5f75a44ce8e89c5df', NULL),
('5f75a44d1c635e647', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:41:32+03:00', NULL, NULL, NULL, '5f75a44ce8e89c5df', NULL),
('5f75a44d1c8e64f83', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a44ce8e89c5df', NULL),
('5f75a44d1cd33fe68', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a44ce8e89c5df', NULL),
('5f75a46290fb05f31', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 100\n', NULL, NULL, NULL, '5f75a46269a80a836', NULL),
('5f75a462913b2aec3', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:41:54+03:00', NULL, NULL, NULL, '5f75a46269a80a836', NULL),
('5f75a4629167c0d17', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:41:54+03:00', NULL, NULL, NULL, '5f75a46269a80a836', NULL),
('5f75a462918b44a2e', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a46269a80a836', NULL),
('5f75a46291ba827f8', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a46269a80a836', NULL),
('5f75a4c82c212c418', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\n', NULL, NULL, NULL, '5f75a4c7e8435c65d', NULL),
('5f75a4c82c5aa3681', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:43:36+03:00', NULL, NULL, NULL, '5f75a4c7e8435c65d', NULL),
('5f75a4c82c7b6f3bb', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:43:36+03:00', NULL, NULL, NULL, '5f75a4c7e8435c65d', NULL),
('5f75a4c82c9b20897', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a4c7e8435c65d', NULL),
('5f75a4c82cb9c532a', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a4c7e8435c65d', NULL),
('5f75a4e4bc013bbaa', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:44:04+03:00', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bc49c33f8', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:44:04+03:00', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bc6a6aa94', 'png:IHDR.bit-depth-orig', 0, NULL, NULL, NULL, '8', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bc8937ed5', 'png:IHDR.bit_depth', 0, NULL, NULL, NULL, '8', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bca73dba9', 'png:IHDR.color-type-orig', 0, NULL, NULL, NULL, '6', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bcc67c17d', 'png:IHDR.color_type', 0, NULL, NULL, NULL, '6 (RGBA)', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bd0a7e16b', 'png:IHDR.interlace_method', 0, NULL, NULL, NULL, '1 (Adam7 method)', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bd28a7865', 'png:IHDR.width,height', 0, NULL, NULL, NULL, '500, 281', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4e4bd51a6fe8', 'png:sRGB', 0, NULL, NULL, NULL, 'intent=0 (Perceptual Intent)', NULL, NULL, NULL, '5f75a4e49314109ce', NULL),
('5f75a4f5c62d31b8a', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:44:21+03:00', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c663eb6c0', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:44:21+03:00', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c685b3443', 'icc:copyright', 0, NULL, NULL, NULL, 'Copyright 1999 Adobe Systems Incorporated', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c6d066dfc', 'icc:description', 0, NULL, NULL, NULL, 'Adobe RGB (1998)', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c6eabe1b3', 'icc:manufacturer', 0, NULL, NULL, NULL, 'Adobe RGB (1998)', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c7169bd41', 'icc:model', 0, NULL, NULL, NULL, 'Adobe RGB (1998)', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c732cf9ba', 'png:cHRM', 0, NULL, NULL, NULL, 'chunk was found (see Chromaticity, above)', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c7650cbbc', 'png:iCCP', 0, NULL, NULL, NULL, 'chunk was found', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c782880d0', 'png:IHDR.bit-depth-orig', 0, NULL, NULL, NULL, '8', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c7b5e9596', 'png:IHDR.bit_depth', 0, NULL, NULL, NULL, '8', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c7d20a783', 'png:IHDR.color-type-orig', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c7ee15111', 'png:IHDR.color_type', 0, NULL, NULL, NULL, '2 (Truecolor)', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c8096bf2b', 'png:IHDR.interlace_method', 0, NULL, NULL, NULL, '0 (Not interlaced)', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c824c5cbd', 'png:IHDR.width,height', 0, NULL, NULL, NULL, '480, 480', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a4f5c840270ff', 'png:pHYs', 0, NULL, NULL, NULL, 'x_res=2835, y_res=2835, units=1', NULL, NULL, NULL, '5f75a4f59f8747668', NULL),
('5f75a54270d8d0023', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:45:38+03:00', NULL, NULL, NULL, '5f75a54239b1e04d2', NULL),
('5f75a5427112ae542', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:45:38+03:00', NULL, NULL, NULL, '5f75a54239b1e04d2', NULL),
('5f75a542713125986', 'exif:Orientation', 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, '5f75a54239b1e04d2', NULL),
('5f75a54271501a971', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a54239b1e04d2', NULL),
('5f75a542716f3ceb9', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a54239b1e04d2', NULL),
('5f75a55803b8193a9', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 75\n', NULL, NULL, NULL, '5f75a557d1f002493', NULL),
('5f75a55803fe05719', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:45:59+03:00', NULL, NULL, NULL, '5f75a557d1f002493', NULL),
('5f75a558041d4ebee', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:45:59+03:00', NULL, NULL, NULL, '5f75a557d1f002493', NULL),
('5f75a5580454e0cf5', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a557d1f002493', NULL),
('5f75a558048416864', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a557d1f002493', NULL),
('5f75a56d6a334e429', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 90\n', NULL, NULL, NULL, '5f75a56d46299d70a', NULL),
('5f75a56d6a8d8d0b0', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:46:21+03:00', NULL, NULL, NULL, '5f75a56d46299d70a', NULL),
('5f75a56d6aaf1591f', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:46:21+03:00', NULL, NULL, NULL, '5f75a56d46299d70a', NULL),
('5f75a56d6af9c0c9f', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a56d46299d70a', NULL),
('5f75a56d6b17c87c6', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a56d46299d70a', NULL),
('5f75a615a4494f103', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 100\n', NULL, NULL, NULL, '5f75a615755ec81df', NULL),
('5f75a615a49375e98', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:49:09+03:00', NULL, NULL, NULL, '5f75a615755ec81df', NULL),
('5f75a615a4b46569a', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:49:09+03:00', NULL, NULL, NULL, '5f75a615755ec81df', NULL),
('5f75a615a4de49650', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a615755ec81df', NULL),
('5f75a615a4f81ef79', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a615755ec81df', NULL),
('5f75a63be8669f327', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:49:47+03:00', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63be8a8ac407', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:49:47+03:00', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63be8de1f4cd', 'png:bKGD', 0, NULL, NULL, NULL, 'chunk was found (see Background color, above)', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63be8fdd036f', 'png:cHRM', 0, NULL, NULL, NULL, 'chunk was found (see Chromaticity, above)', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63be91cfb318', 'png:gAMA', 0, NULL, NULL, NULL, 'gamma=0.45455 (See Gamma, above)', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63be93c4afd6', 'png:IHDR.bit-depth-orig', 0, NULL, NULL, NULL, '8', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63be95a09f25', 'png:IHDR.bit_depth', 0, NULL, NULL, NULL, '8', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63be98b7f842', 'png:IHDR.color-type-orig', 0, NULL, NULL, NULL, '6', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63bea192cab5', 'png:IHDR.color_type', 0, NULL, NULL, NULL, '6 (RGBA)', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63bea7032374', 'png:IHDR.interlace_method', 0, NULL, NULL, NULL, '0 (Not interlaced)', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63beaa4c0d3b', 'png:IHDR.width,height', 0, NULL, NULL, NULL, '724, 543', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63beb0cbb972', 'png:pHYs', 0, NULL, NULL, NULL, 'x_res=2835, y_res=2835, units=1', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63beb3fc8533', 'png:sRGB', 0, NULL, NULL, NULL, 'intent=0 (Perceptual Intent)', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a63beb7220051', 'png:text', 0, NULL, NULL, NULL, '2 tEXt/zTXt/iTXt chunks were found', NULL, NULL, NULL, '5f75a63bbdfdd0cc2', NULL),
('5f75a64eac9382536', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:50:06+03:00', NULL, NULL, NULL, '5f75a64e769dd37c1', NULL),
('5f75a64eace44b23b', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:50:06+03:00', NULL, NULL, NULL, '5f75a64e769dd37c1', NULL),
('5f75a64ead057d5d3', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a64e769dd37c1', NULL),
('5f75a64ead26434de', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a64e769dd37c1', NULL),
('5f75a6860b53eff34', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:51:01+03:00', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860b9b6c54d', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:51:01+03:00', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860bbc95139', 'exif:ColorSpace', 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860bdc7971b', 'exif:DateTime', 0, NULL, NULL, NULL, '2017:07:15 09:47:26', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860bfb97a21', 'exif:ExifImageLength', 0, NULL, NULL, NULL, '800', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860c3b2ddb5', 'exif:ExifImageWidth', 0, NULL, NULL, NULL, '800', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860c5bfde93', 'exif:ExifOffset', 0, NULL, NULL, NULL, '136', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860c79f3a35', 'exif:ResolutionUnit', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860c981c651', 'exif:Software', 0, NULL, NULL, NULL, 'www.meitu.com', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860cb5eeb38', 'exif:thumbnail:Compression', 0, NULL, NULL, NULL, '6', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860cd1ca3ac', 'exif:thumbnail:JPEGInterchangeFormat', 0, NULL, NULL, NULL, '306', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860cee06f15', 'exif:thumbnail:JPEGInterchangeFormatLength', 0, NULL, NULL, NULL, '7338', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860d298059e', 'exif:thumbnail:ResolutionUnit', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860d556985d', 'exif:thumbnail:XResolution', 0, NULL, NULL, NULL, '72/1', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860d73516d2', 'exif:thumbnail:YResolution', 0, NULL, NULL, NULL, '72/1', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860d9dceb0e', 'exif:XResolution', 0, NULL, NULL, NULL, '3000000/10000', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860dbb9219e', 'exif:YResolution', 0, NULL, NULL, NULL, '3000000/10000', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860dd8349cb', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a6860df491632', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '1x1,1x1,1x1', NULL, NULL, NULL, '5f75a685d89ef7df9', NULL),
('5f75a69aaf94c9bb8', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:51:22+03:00', NULL, NULL, NULL, '5f75a69a8849c2bbe', NULL),
('5f75a69aafd309f3f', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:51:22+03:00', NULL, NULL, NULL, '5f75a69a8849c2bbe', NULL),
('5f75a69aaff3d7857', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a69a8849c2bbe', NULL),
('5f75a69ab0130733d', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a69a8849c2bbe', NULL),
('5f75a6df1ca0881a7', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 90\n', NULL, NULL, NULL, '5f75a6dee4ac8adf5', NULL),
('5f75a6df1ce0f6824', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:52:30+03:00', NULL, NULL, NULL, '5f75a6dee4ac8adf5', NULL),
('5f75a6df1d027a693', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:52:30+03:00', NULL, NULL, NULL, '5f75a6dee4ac8adf5', NULL),
('5f75a6df1d21d1870', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a6dee4ac8adf5', NULL),
('5f75a6df1d4209760', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a6dee4ac8adf5', NULL),
('5f75a6f1185a4bf88', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:52:48+03:00', NULL, NULL, NULL, '5f75a6f0dee206198', NULL),
('5f75a6f118c9e2e0d', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:52:48+03:00', NULL, NULL, NULL, '5f75a6f0dee206198', NULL),
('5f75a6f119299430c', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a6f0dee206198', NULL),
('5f75a6f1195c294d1', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a6f0dee206198', NULL),
('5f75a705a2c2ab3c2', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:53:09+03:00', NULL, NULL, NULL, '5f75a7056e8b6953a', NULL),
('5f75a705a327ee372', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:53:09+03:00', NULL, NULL, NULL, '5f75a7056e8b6953a', NULL),
('5f75a705a35827f1e', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a7056e8b6953a', NULL),
('5f75a705a39f20ee6', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a7056e8b6953a', NULL),
('5f75a74e13473e44b', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:54:21+03:00', NULL, NULL, NULL, '5f75a74de1719d808', NULL),
('5f75a74e138b1669e', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:54:21+03:00', NULL, NULL, NULL, '5f75a74de1719d808', NULL),
('5f75a74e13bf41345', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a74de1719d808', NULL),
('5f75a74e13f52ec26', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a74de1719d808', NULL),
('5f75a7600a3e56cb5', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:54:39+03:00', NULL, NULL, NULL, '5f75a75fd7bb693c2', NULL),
('5f75a7600a7b494f2', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:54:39+03:00', NULL, NULL, NULL, '5f75a75fd7bb693c2', NULL),
('5f75a7600aa8ec905', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a75fd7bb693c2', NULL),
('5f75a7600acac9af9', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a75fd7bb693c2', NULL),
('5f75a7701bbe63e7b', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), default quality\n', NULL, NULL, NULL, '5f75a76fe82a4304b', NULL),
('5f75a7701c03f606f', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:54:55+03:00', NULL, NULL, NULL, '5f75a76fe82a4304b', NULL),
('5f75a7701c39fa6ed', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:54:55+03:00', NULL, NULL, NULL, '5f75a76fe82a4304b', NULL),
('5f75a7701c597a2fa', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a76fe82a4304b', NULL),
('5f75a7701c7a1455a', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a76fe82a4304b', NULL),
('5f75a78058fb0b107', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T12:55:12+03:00', NULL, NULL, NULL, '5f75a78031d0e5b93', NULL),
('5f75a780593dba216', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T12:55:12+03:00', NULL, NULL, NULL, '5f75a78031d0e5b93', NULL),
('5f75a7805975b0136', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a78031d0e5b93', NULL),
('5f75a7805996df90e', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a78031d0e5b93', NULL),
('5f75a8a14c494a445', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T13:00:01+03:00', NULL, NULL, NULL, '5f75a8a1279629d25', NULL),
('5f75a8a14c7ebd78c', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T13:00:01+03:00', NULL, NULL, NULL, '5f75a8a1279629d25', NULL),
('5f75a8a14cb363f69', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a8a1279629d25', NULL),
('5f75a8a14cd111c2a', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '1x1,1x1,1x1', NULL, NULL, NULL, '5f75a8a1279629d25', NULL),
('5f75a8a16273f9e0f', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T13:00:01+03:00', NULL, NULL, NULL, '5f75a8a12820880b4', NULL),
('5f75a8a162ce495ae', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T13:00:01+03:00', NULL, NULL, NULL, '5f75a8a12820880b4', NULL),
('5f75a8a1630f1d773', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a8a12820880b4', NULL),
('5f75a8a1634610ba1', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a8a12820880b4', NULL),
('5f75a8d4338dad384', 'comment', 0, NULL, NULL, NULL, 'CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), default quality\n', NULL, NULL, NULL, '5f75a8d40d5627635', NULL),
('5f75a8d433c343367', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T13:00:52+03:00', NULL, NULL, NULL, '5f75a8d40d5627635', NULL),
('5f75a8d433e31736b', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T13:00:52+03:00', NULL, NULL, NULL, '5f75a8d40d5627635', NULL),
('5f75a8d4340036e35', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a8d40d5627635', NULL),
('5f75a8d434359ca4a', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a8d40d5627635', NULL),
('5f75a8e84c41102e4', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T13:01:12+03:00', NULL, NULL, NULL, '5f75a8e82157d66cf', NULL),
('5f75a8e84c9257dbf', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T13:01:12+03:00', NULL, NULL, NULL, '5f75a8e82157d66cf', NULL),
('5f75a8e84ce1b1920', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a8e82157d66cf', NULL),
('5f75a8e84d0113db4', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '2x2,1x1,1x1', NULL, NULL, NULL, '5f75a8e82157d66cf', NULL),
('5f75a945db181759e', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T13:02:45+03:00', NULL, NULL, NULL, '5f75a945b56e69fb0', NULL),
('5f75a945db5883632', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T13:02:45+03:00', NULL, NULL, NULL, '5f75a945b56e69fb0', NULL),
('5f75a945db7863d40', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a945b56e69fb0', NULL),
('5f75a945db9770958', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '1x1,1x1,1x1', NULL, NULL, NULL, '5f75a945b56e69fb0', NULL),
('5f75a95fdfd0d5776', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T13:03:11+03:00', NULL, NULL, NULL, '5f75a95fb9190a1e4', NULL),
('5f75a95fe00fabfbc', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T13:03:11+03:00', NULL, NULL, NULL, '5f75a95fb9190a1e4', NULL),
('5f75a95fe032c1347', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a95fb9190a1e4', NULL),
('5f75a95fe05019e79', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '1x1,1x1,1x1', NULL, NULL, NULL, '5f75a95fb9190a1e4', NULL),
('5f75a999c1e1fb99f', 'date:create', 0, NULL, NULL, NULL, '2020-10-01T13:04:09+03:00', NULL, NULL, NULL, '5f75a99993608e33a', NULL),
('5f75a999c23304712', 'date:modify', 0, NULL, NULL, NULL, '2020-10-01T13:04:09+03:00', NULL, NULL, NULL, '5f75a99993608e33a', NULL),
('5f75a999c25498fca', 'jpeg:colorspace', 0, NULL, NULL, NULL, '2', NULL, NULL, NULL, '5f75a99993608e33a', NULL),
('5f75a999c28aa9de2', 'jpeg:sampling-factor', 0, NULL, NULL, NULL, '1x1,1x1,1x1', NULL, NULL, NULL, '5f75a99993608e33a', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `asset_relation`
--
DROP TABLE IF EXISTS `asset_relation`;
CREATE TABLE `asset_relation` (
                                  `id` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `deleted` tinyint(1) DEFAULT '0',
                                  `description` mediumtext COLLATE utf8mb4_unicode_ci,
                                  `created_at` datetime DEFAULT NULL,
                                  `modified_at` datetime DEFAULT NULL,
                                  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `entity_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `asset_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `sort_order` int(11) DEFAULT NULL,
                                  `scope` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Global',
                                  `role` mediumtext COLLATE utf8mb4_unicode_ci,
                                  `created_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `modified_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `assigned_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `owner_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `asset_relation`
--

INSERT INTO `asset_relation` (`id`, `name`, `deleted`, `description`, `created_at`, `modified_at`, `entity_name`, `entity_id`, `asset_id`, `sort_order`, `scope`, `role`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `owner_user_id`) VALUES
('5f75a3184e5969e9a', '1 / 57.9', 0, NULL, '2020-10-01 09:36:24', '2020-10-01 09:36:28', 'Product', '5da95464266aa342e', '5f75a3050b22d418c', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a3607ac50e0bd', '2 / 316.0', 0, NULL, '2020-10-01 09:37:36', '2020-10-01 09:37:36', 'Product', '5da95464266aa342e', '5f75a3605cc30e8dc', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a377a5bb7f499', '3 / 37.3', 0, NULL, '2020-10-01 09:37:59', '2020-10-01 10:05:42', 'Product', '5da95464266aa342e', '5f75a377a0d34c16c', NULL, 'Channel', '[]', '1', '1', '1', '1'),
('5f75a3a94e3f6d5a7', '4 / 11.6', 0, NULL, '2020-10-01 09:38:49', '2020-10-01 09:38:49', 'Product', '5da95464266aa342e', '5f75a3a938c6ac431', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a43b88358ad0e', '5 / 8.7', 0, NULL, '2020-10-01 09:41:15', '2020-10-01 09:42:21', 'Product', '59fb0aa27855b0afd', '5f75a43b83e5efcb7', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a44cedebe06cc', '6 / 34.7', 0, NULL, '2020-10-01 09:41:32', '2020-10-01 09:42:27', 'Product', '59fb0aa27855b0afd', '5f75a44ce8e89c5df', NULL, 'Global', '[]', '1', '1', '1', '1'),
('5f75a4626f36e6beb', '7 / 81.2', 0, NULL, '2020-10-01 09:41:54', '2020-10-01 09:42:33', 'Product', '59fb0aa27855b0afd', '5f75a46269a80a836', NULL, 'Global', '[]', '1', '1', '1', '1'),
('5f75a4c809e2c0c91', '8 / 36.4', 0, NULL, '2020-10-01 09:43:36', '2020-10-01 09:43:36', 'Product', '59fb0e05a0c46a91a', '5f75a4c7e8435c65d', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a4e499168c1e3', '9 / 97.9', 0, NULL, '2020-10-01 09:44:04', '2020-10-01 09:44:04', 'Product', '59fb0e05a0c46a91a', '5f75a4e49314109ce', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a4f5a498c8dcb', '10 / 92.2', 0, NULL, '2020-10-01 09:44:21', '2020-10-01 09:44:22', 'Product', '59fb0e05a0c46a91a', '5f75a4f59f8747668', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a5424f1fc7837', 'canon_eos_1100d_18_55_kit_images_3635339 / 64.1', 0, NULL, '2020-10-01 09:45:38', '2020-10-01 09:45:38', 'Product', '5a9e93d0e1e4fd1b9', '5f75a54239b1e04d2', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a557d6d41f73c', '1111493_0 / 30.7', 0, NULL, '2020-10-01 09:45:59', '2020-10-01 09:46:00', 'Product', '5a9e93d0e1e4fd1b9', '5f75a557d1f002493', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a56d4a5f8fb39', '365411 / 46.0', 0, NULL, '2020-10-01 09:46:21', '2020-10-01 09:46:21', 'Product', '5a9e93d0e1e4fd1b9', '5f75a56d46299d70a', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a6157ec3e67ef', 'Canon EOS 5D Mark III / 616.5', 0, NULL, '2020-10-01 09:49:09', '2020-10-01 09:49:09', 'Product', '59a91396e7971debe', '5f75a615755ec81df', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a63bc56fdffaf', 'Canon EOS 5D Mark III_2 / 316.8', 0, NULL, '2020-10-01 09:49:47', '2020-10-01 09:49:48', 'Product', '59a91396e7971debe', '5f75a63bbdfdd0cc2', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a64e8b6af5ca8', 'Canon EOS 5D Mark III_1 / 15.5', 0, NULL, '2020-10-01 09:50:06', '2020-10-01 09:50:06', 'Product', '59a91396e7971debe', '5f75a64e769dd37c1', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a685ddc78e08a', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for / 98.0', 0, NULL, '2020-10-01 09:51:01', '2020-10-01 09:51:02', 'Product', '59fb152fe4a37088e', '5f75a685d89ef7df9', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a69a8cdd067ca', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover / 57.2', 0, NULL, '2020-10-01 09:51:22', '2020-10-01 09:51:22', 'Product', '59fb152fe4a37088e', '5f75a69a8849c2bbe', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a6deec85525ff', 'Canon EOS 5D Mark IV 24-105mm / 373.4', 0, NULL, '2020-10-01 09:52:30', '2020-10-01 09:52:31', 'Product', '5be971728d44f1a11', '5f75a6dee4ac8adf5', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a6f0e6f94c332', 'Canon EOS 5D Mark IV 24-105mm_1 / 136.3', 0, NULL, '2020-10-01 09:52:48', '2020-10-01 09:52:49', 'Product', '5be971728d44f1a11', '5f75a6f0dee206198', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a7057ae0ad8a3', 'Canon EOS 5D Mark IV 24-105mm_2 / 324.9', 0, NULL, '2020-10-01 09:53:09', '2020-10-01 09:53:09', 'Product', '5be971728d44f1a11', '5f75a7056e8b6953a', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a74de60221a84', 'philips_46pfl8007k_ / 9.3', 0, NULL, '2020-10-01 09:54:21', '2020-10-01 09:54:22', 'Product', '59fad6841f243119b', '5f75a74de1719d808', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a75fdd05db1e7', 'Philips-46PFL8007K-12-2-large / 100.8', 0, NULL, '2020-10-01 09:54:39', '2020-10-01 09:54:40', 'Product', '59fad6841f243119b', '5f75a75fd7bb693c2', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a76fee057184d', 'U0040458_big / 89.1', 0, NULL, '2020-10-01 09:54:55', '2020-10-01 09:54:56', 'Product', '59fad6841f243119b', '5f75a76fe82a4304b', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a78037442bdc9', 'Philips-46PFL8007K-12-1-large / 201.7', 0, NULL, '2020-10-01 09:55:12', '2020-10-01 09:55:12', 'Product', '59fad6841f243119b', '5f75a78031d0e5b93', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a7fa119a03e3a', 'U0040458_big / 89.1', 0, NULL, '2020-10-01 09:57:14', '2020-10-01 09:58:40', 'Product', '59a90c862458bd976', '5f75a76fe82a4304b', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a805d8c09a42d', 'Philips-46PFL8007K-12-2-large / 100.8', 0, NULL, '2020-10-01 09:57:25', '2020-10-01 09:57:28', 'Product', '59a90c862458bd976', '5f75a75fd7bb693c2', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a810983d84cde', 'philips_46pfl8007k_ / 9.3', 0, NULL, '2020-10-01 09:57:36', '2020-10-01 09:57:38', 'Product', '59a90c862458bd976', '5f75a74de1719d808', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a82e5630925d2', 'Philips-46PFL8007K-12-1-large / 201.7', 0, NULL, '2020-10-01 09:58:06', '2020-10-01 09:58:08', 'Product', '59a90c862458bd976', '5f75a78031d0e5b93', NULL, 'Global', NULL, '1', '1', '1', '1'),
('5f75a8a12c15c88e7', 'LED5500_NYCskyline_Frt_2 / 24.8', 0, NULL, '2020-10-01 10:00:01', '2020-10-01 10:00:01', 'Product', '5b8649f0dae076eb0', '5f75a8a1279629d25', 1, 'Global', NULL, '1', '1', '1', '1'),
('5f75a8a13f595b296', '2018-11-09_10-13-35 / 189.0', 0, NULL, '2020-10-01 10:00:01', '2020-10-01 10:00:01', 'Product', '5b8649f0dae076eb0', '5f75a8a12820880b4', 0, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a8d411b05b414', '688720_0 / 23.3', 0, NULL, '2020-10-01 10:00:52', '2020-10-01 10:01:50', 'Product', '59b0e83c603a1b9c8', '5f75a8d40d5627635', 1, 'Channel', '[]', '1', '1', '1', '1'),
('5f75a8e8288ea4d1f', '71fVj87ziQL._SL1500_ / 229.3', 0, NULL, '2020-10-01 10:01:12', '2020-10-01 10:01:56', 'Product', '59b0e83c603a1b9c8', '5f75a8e82157d66cf', 0, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a945ba0e3e41b', '57217833_images_7953489093 / 13.6', 0, NULL, '2020-10-01 10:02:45', '2020-10-01 10:02:46', 'Product', '5be98924b15087ff5', '5f75a945b56e69fb0', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1'),
('5f75a95fbdf2bec63', '57217833_images_7953489303 / 77.2', 0, NULL, '2020-10-01 10:03:11', '2020-10-01 10:03:12', 'Product', '5be98924b15087ff5', '5f75a95fb9190a1e4', NULL, 'Channel', NULL, '1', '1', '1', '1'),
('5f75a9999c5dfdc65', '3D-apple-iphone-x-color-model_Z / 549.5', 0, NULL, '2020-10-01 10:04:09', '2020-10-01 10:04:10', 'Category', '59fb0dc6f3fd265c9', '5f75a99993608e33a', NULL, 'Global', '[\"Main\"]', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `asset_relation_channel`
--
DROP TABLE IF EXISTS `asset_relation_channel`;
CREATE TABLE `asset_relation_channel` (
                                          `id` int(11) NOT NULL,
                                          `asset_relation_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                          `channel_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                          `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `asset_relation_channel`
--

INSERT INTO `asset_relation_channel` (`id`, `asset_relation_id`, `channel_id`, `deleted`) VALUES
(1, '5f75a8d411b05b414', '5b7bba2f2f257d218', 0),
(2, '5f75a8d411b05b414', '59ba3d074e36186d4', 0),
(3, '5f75a95fbdf2bec63', '59a81f8c56f59622d', 0),
(4, '5f75a95fbdf2bec63', '59a81f80ae0ce8ecb', 0),
(5, '5f75a377a5bb7f499', '59a81f8c56f59622d', 0),
(6, '5f75a377a5bb7f499', '59a81f80ae0ce8ecb', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `associated_product`
--
DROP TABLE IF EXISTS `associated_product`;
CREATE TABLE `associated_product` (
                                      `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                                      `deleted` tinyint(1) DEFAULT '0',
                                      `association_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `main_product_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `related_product_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `created_at` datetime DEFAULT NULL,
                                      `modified_at` datetime DEFAULT NULL,
                                      `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `both_directions` tinyint(1) NOT NULL DEFAULT '0',
                                      `backward_association_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                      `main_product_image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                      `related_product_image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `associated_product`
--

INSERT INTO `associated_product` (`id`, `deleted`, `association_id`, `main_product_id`, `related_product_id`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `both_directions`, `backward_association_id`, `name`, `main_product_image_name`, `related_product_image_name`) VALUES
('5ae16951c1e0eee3d', 0, '59fb0ed494382a4d6', '59fb0e05a0c46a91a', '59fb0aa27855b0afd', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Related', NULL, NULL),
('5ae1697ca82138e22', 0, '59fb0ed494382a4d6', '59fad6841f243119b', '59fb0e05a0c46a91a', NULL, '2019-08-27 12:43:38', NULL, '1', NULL, NULL, 0, NULL, 'Related', NULL, NULL),
('5ae16a181f21945ab', 0, '59fb0ed494382a4d6', '59a9107c9cf398b37', '59fad6841f243119b', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Related', NULL, NULL),
('5be985729af39b9cd', 0, '5bd1593cd0af6b9fc', '5be971728d44f1a11', '5a9e93d0e1e4fd1b9', '2018-11-12 13:51:46', '2018-11-12 13:51:46', '1', NULL, '1', '1', 0, NULL, 'Replaces', NULL, NULL),
('5be985ff4cb7ea99b', 0, '5bd159efdaadb75b0', '5be971728d44f1a11', '59fb141abf37aef5e', '2018-11-12 13:54:07', '2018-11-12 13:54:07', '1', NULL, '1', '1', 0, NULL, 'Has Replacements', NULL, NULL),
('5be991ba767d5b887', 0, '5bd15a44e983762e0', '5be98924b15087ff5', '59fb0aa27855b0afd', '2018-11-12 14:44:10', '2018-11-12 14:44:10', '1', NULL, '1', '1', 0, NULL, 'Is Spare Part of', NULL, NULL),
('5be991d71b262369c', 0, '5bd1590b3e04af6c3', '5be98924b15087ff5', '59fb0e05a0c46a91a', '2018-11-12 14:44:39', '2018-11-12 14:44:39', '1', NULL, '1', '1', 0, NULL, 'Is Part Of', NULL, NULL),
('5bed5fba34df91cc9', 0, '5bd158d8dab2b3355', '59fb11b0353ba97d1', '59fb0aa27855b0afd', '2018-11-15 11:59:54', '2018-11-15 11:59:54', '1', NULL, '1', '1', 0, NULL, 'Consists Of', NULL, NULL),
('5bed607448f23b0ee', 0, '5bd1590b3e04af6c3', '59fb0aa27855b0afd', '59fb11b0353ba97d1', '2018-11-15 12:03:00', '2018-11-15 12:03:00', '1', NULL, '1', '1', 0, NULL, 'Is Part Of', NULL, NULL),
('5bed6249d97ddaa15', 0, '59a81c9df10f90133', '5a9e93d0e1e4fd1b9', '59fb152fe4a37088e', '2018-11-15 12:10:49', '2018-11-15 12:10:49', '1', NULL, '1', '1', 0, NULL, 'Cross sell', NULL, NULL),
('5bed62580547c70a1', 0, '59a81c827c1b799b8', '5a9e93d0e1e4fd1b9', '59a91396e7971debe', '2018-11-15 12:11:04', '2018-11-15 12:11:04', '1', NULL, '1', '1', 0, NULL, 'Upsell', NULL, NULL),
('5bed62d671b533a3c', 0, '59a81c9df10f90133', '59a91396e7971debe', '59fb152fe4a37088e', '2018-11-15 12:13:10', '2018-11-15 12:13:10', '1', NULL, '1', '1', 0, NULL, 'Cross sell', NULL, NULL),
('5bed63af33d9e828a', 0, '5bd158d8dab2b3355', '59fb141abf37aef5e', '59b0e83c603a1b9c8', '2018-11-15 12:16:47', '2018-11-15 12:16:47', '1', NULL, '1', '1', 0, NULL, 'Consists Of', NULL, NULL),
('5bed63c50f607fa59', 0, '5bd1590b3e04af6c3', '59fb141abf37aef5e', '59fb152fe4a37088e', '2018-11-15 12:17:09', '2018-11-15 12:17:09', '1', NULL, '1', '1', 0, NULL, 'Is Part Of', NULL, NULL),
('5bed642f31242f5ae', 0, '5bd15a44e983762e0', '59fb152fe4a37088e', '59fb141abf37aef5e', '2018-11-15 12:18:55', '2018-11-15 12:18:55', '1', NULL, '1', '1', 0, NULL, 'Is Spare Part of', NULL, NULL),
('5bed67d3edbc655dd', 0, '59a81c827c1b799b8', '59fad6841f243119b', '5b8649f0dae076eb0', '2018-11-15 12:34:27', '2018-11-15 12:34:27', '1', NULL, '1', '1', 0, NULL, 'Upsell', NULL, NULL),
('5bed67ea24380325a', 0, '5bd1573f7c6f251ce', '59fad6841f243119b', '59a90c862458bd976', '2018-11-15 12:34:50', '2018-11-15 12:34:50', '1', NULL, '1', '1', 0, NULL, 'Similar', NULL, NULL),
('5bed6864e1084a67e', 0, '59a81c827c1b799b8', '59a90c862458bd976', '5b8649f0dae076eb0', '2018-11-15 12:36:52', '2018-11-15 12:36:52', '1', NULL, '1', '1', 0, NULL, 'Upsell', NULL, NULL),
('5bed6877559e2e711', 0, '5bd1573f7c6f251ce', '59a90c862458bd976', '59fad6841f243119b', '2018-11-15 12:37:11', '2018-11-15 12:37:11', '1', NULL, '1', '1', 0, NULL, 'Similar', NULL, NULL),
('5bed6910d44812563', 0, '59fb0ed494382a4d6', '5b8649f0dae076eb0', '59a90c862458bd976', '2018-11-15 12:39:44', '2018-11-15 12:39:44', '1', NULL, '1', '1', 0, NULL, 'Related', NULL, NULL),
('5bed691e4713582a7', 0, '59a81c9df10f90133', '5b8649f0dae076eb0', '59fad6841f243119b', '2018-11-15 12:39:58', '2018-11-15 12:39:58', '1', NULL, '1', '1', 0, NULL, 'Cross sell', NULL, NULL),
('5bed6a16e42828361', 0, '5bd15a44e983762e0', '59b0e83c603a1b9c8', '59a91396e7971debe', '2018-11-15 12:44:06', '2018-11-15 12:44:06', '1', NULL, '1', '1', 0, NULL, 'Is Spare Part of', NULL, NULL),
('5bed6a22c743afc95', 0, '5bd158d8dab2b3355', '59b0e83c603a1b9c8', '5a9e93d0e1e4fd1b9', '2018-11-15 12:44:18', '2018-11-15 12:44:18', '1', NULL, '1', '1', 0, NULL, 'Consists Of', NULL, NULL),
('5d79db3834e00bbdb', 0, '5bd158d8dab2b3355', '59fb11b0353ba97d1', '59fb0e05a0c46a91a', '2019-09-12 05:44:24', '2019-09-12 05:44:24', '1', NULL, '1', '1', 1, '5bd1590b3e04af6c3', 'Consists Of', NULL, NULL),
('5d79db3852d44c8d4', 0, '5bd1590b3e04af6c3', '59fb0e05a0c46a91a', '59fb11b0353ba97d1', '2019-09-12 05:44:24', '2019-09-12 05:44:24', '1', NULL, NULL, NULL, 0, NULL, 'Is Part Of', NULL, NULL),
('5d79f32b1cf4eec4f', 0, '5bd158d8dab2b3355', '5d79f32aefaf71a28', '59fb0aa27855b0afd', '2019-09-12 07:26:35', '2019-09-12 07:26:35', '1', NULL, '1', '1', 0, NULL, 'Consists Of', NULL, NULL),
('5d79f32b1d1a445df', 0, '5bd158d8dab2b3355', '5d79f32aefaf71a28', '59fb0e05a0c46a91a', '2019-09-12 07:26:35', '2019-09-12 07:26:35', '1', NULL, '1', '1', 1, '5bd1590b3e04af6c3', 'Consists Of', NULL, NULL),
('5d79f32b1d6d504bc', 0, '5bd1590b3e04af6c3', '59fb0aa27855b0afd', '5d79f32aefaf71a28', '2019-09-12 07:26:35', '2019-09-12 07:26:35', '1', NULL, '1', '1', 0, NULL, 'Is Part Of', NULL, NULL),
('5d79f32b1d8bf46a0', 0, '5bd1590b3e04af6c3', '59fb0e05a0c46a91a', '5d79f32aefaf71a28', '2019-09-12 07:26:35', '2019-09-12 07:26:35', '1', NULL, NULL, NULL, 0, NULL, 'Is Part Of', NULL, NULL),
('5da056a52620286e5', 0, '5bd1573f7c6f251ce', '59fb0aa27855b0afd', '59fb0e05a0c46a91a', '2019-10-11 10:17:09', '2019-10-11 10:17:09', '1', NULL, '1', '1', 1, '5bd1573f7c6f251ce', 'Similar', NULL, NULL),
('5da954643b4e415e9', 0, '5bd1590b3e04af6c3', '59fb0aa27855b0afd', '5da95464266aa342e', '2019-10-18 05:57:56', '2019-10-18 05:57:56', '1', NULL, '1', '1', 0, NULL, 'Is Part Of', NULL, NULL),
('5da954643b7b8f0dd', 0, '5bd1590b3e04af6c3', '59fb0e05a0c46a91a', '5da95464266aa342e', '2019-10-18 05:57:56', '2019-10-18 05:57:56', '1', NULL, NULL, NULL, 0, NULL, 'Is Part Of', NULL, NULL),
('5da97beb93c8fbaab', 0, '5bd1573f7c6f251ce', '5da95464266aa342e', '59fb0aa27855b0afd', '2019-10-18 08:46:35', '2019-10-18 08:46:35', '1', NULL, '1', '1', 0, NULL, 'Similar', NULL, NULL),
('5da97c04e49801bd1', 0, '59fb0ed494382a4d6', '5da95464266aa342e', '59fb0e05a0c46a91a', '2019-10-18 08:47:00', '2019-10-18 08:47:00', '1', NULL, '1', '1', 1, '59fb0ed494382a4d6', 'Related', NULL, NULL),
('5da97c05088feb810', 0, '59fb0ed494382a4d6', '59fb0e05a0c46a91a', '5da95464266aa342e', '2019-10-18 08:47:01', '2019-10-18 08:47:01', '1', NULL, '1', '1', 0, NULL, 'Related', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `association`
--
DROP TABLE IF EXISTS `association`;
CREATE TABLE `association` (
                               `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                               `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `deleted` tinyint(1) DEFAULT '0',
                               `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                               `is_active` tinyint(1) NOT NULL DEFAULT '0',
                               `created_at` datetime DEFAULT NULL,
                               `modified_at` datetime DEFAULT NULL,
                               `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `description_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                               `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `description_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                               `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `backward_association_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `association`
--

INSERT INTO `association` (`id`, `name`, `deleted`, `description`, `is_active`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `name_en_us`, `description_en_us`, `name_de_de`, `description_de_de`, `owner_user_id`, `assigned_user_id`, `backward_association_id`) VALUES
('59a81c827c1b799b8', 'Upsell', 0, '', 1, '2017-08-31 14:26:10', '2017-09-20 08:06:36', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('59a81c9df10f90133', 'Cross sell', 0, '', 1, '2017-08-31 14:26:37', '2017-09-20 08:06:36', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0ed494382a4d6', 'Related', 0, '', 1, '2017-11-02 12:25:56', '2017-11-02 12:34:04', '1', '1', 'Related', '', NULL, NULL, NULL, NULL, NULL),
('5bd1573f7c6f251ce', 'Similar', 0, '', 1, '2018-10-25 05:40:15', '2018-10-25 05:40:15', '1', NULL, 'Similar', '', 'Ähnlich', '', '1', '1', NULL),
('5bd158d8dab2b3355', 'Consists Of', 0, '', 1, '2018-10-25 05:47:04', '2018-10-25 05:47:04', '1', NULL, 'Consists Of', '', 'Besteht aus', '', '1', '1', NULL),
('5bd1590b3e04af6c3', 'Is Part Of', 0, '', 1, '2018-10-25 05:47:55', '2018-10-25 05:47:55', '1', NULL, 'Is Part Of', '', 'Ist ein Teil von', '', '1', '1', NULL),
('5bd1593cd0af6b9fc', 'Replaces', 0, '', 1, '2018-10-25 05:48:44', '2018-10-25 05:48:44', '1', NULL, 'Replaces', '', 'Ersetzt', '', '1', '1', NULL),
('5bd159efdaadb75b0', 'Has Replacements', 0, '', 1, '2018-10-25 05:51:43', '2018-10-25 05:51:43', '1', NULL, 'Has Replacements', '', 'Hat Ersatz', '', '1', '1', NULL),
('5bd15a192bd96c7ed', 'Has Spare Parts', 0, '', 1, '2018-10-25 05:52:25', '2018-10-25 05:52:25', '1', NULL, 'Has Spare Parts', '', 'Hat Ersatzteile', '', '1', '1', NULL),
('5bd15a44e983762e0', 'Is Spare Part of', 0, '', 1, '2018-10-25 05:53:08', '2018-10-25 05:53:08', '1', NULL, 'Is Spare Part of', '', 'Ist Ersatzteil von', '', '1', '1', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `attachment`
--
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
                              `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                              `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `deleted` tinyint(1) DEFAULT '0',
                              `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `size` int(11) DEFAULT NULL,
                              `source_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `created_at` datetime DEFAULT NULL,
                              `role` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `storage` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `storage_file_path` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `global` tinyint(1) NOT NULL DEFAULT '0',
                              `parent_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                              `parent_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                              `related_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                              `related_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                              `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                              `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `tmp_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `hash_md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `attachment`
--

INSERT INTO `attachment` (`id`, `name`, `deleted`, `type`, `size`, `source_id`, `created_at`, `role`, `storage`, `storage_file_path`, `global`, `parent_id`, `parent_type`, `related_id`, `related_type`, `created_by_id`, `field`, `tmp_path`, `hash_md5`) VALUES
('5937e8f048f378267', 'import-file.csv', 0, 'text/csv', NULL, NULL, '2017-06-07 11:52:16', 'Import File', NULL, NULL, 0, NULL, NULL, '5937e8f0b98a2bd75', 'Import', '1', NULL, NULL, NULL),
('5937ea323c0e70071', 'import-file.csv', 0, 'text/csv', NULL, NULL, '2017-06-07 11:57:38', 'Import File', NULL, NULL, 0, NULL, NULL, '5937ea329bd01cb00', 'Import', '1', NULL, NULL, NULL),
('593800356ed98caca', 'import-file.csv', 0, 'text/csv', NULL, NULL, '2017-06-07 13:31:33', 'Import File', NULL, NULL, 0, NULL, NULL, '59380035c72f21d6f', 'Import', '1', NULL, NULL, NULL),
('594b674ec8e7d4c98', 'pim.png', 0, 'image/png', 327655, NULL, '2017-06-22 06:44:30', 'Attachment', NULL, NULL, 0, NULL, NULL, '594b6751b9630160d', 'PimCategoryImage', '1', NULL, NULL, NULL),
('594b75649fb1b34b4', 'pim.png', 0, 'image/png', 327655, NULL, '2017-06-22 07:44:36', 'Attachment', NULL, NULL, 0, NULL, NULL, '594b756a2bf973da4', 'PimCategoryImage', '1', NULL, NULL, NULL),
('594b756f4c19aa92b', 'pim.png', 0, 'image/png', 327655, NULL, '2017-06-22 07:44:47', 'Attachment', NULL, NULL, 0, NULL, NULL, '594b7570887eef62a', 'PimCategoryImage', '1', NULL, NULL, NULL),
('5959f700452d6175f', 'images.jpg', 0, 'image/jpeg', 1666, NULL, '2017-07-03 07:49:20', 'Attachment', NULL, NULL, 0, NULL, NULL, '5959f704eeb13a989', 'PimBrand', '5959ec923589d4818', NULL, NULL, NULL),
('595a483f8d5ba54a5', 'TZ_ua.docx', 0, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 218636, NULL, '2017-07-03 13:35:59', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('595a48f0199f4f4fa', 'images (1).png', 0, 'image/png', 75330, NULL, '2017-07-03 13:38:56', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a48f2a03747f47', 'PimProductImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a48f9c70923add', 'images (1).jpg', 0, 'image/jpeg', 6400, NULL, '2017-07-03 13:39:05', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '5959ec923589d4818', NULL, NULL, NULL),
('595a49272f5efaef4', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-03 13:39:51', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a492fae161b062', 'PimProductImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a493fb63735372', 'jpeg.jpg', 0, 'image/jpeg', 19911, NULL, '2017-07-03 13:40:15', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '5959ec923589d4818', NULL, NULL, NULL),
('595a578b026003a45', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-03 14:41:15', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a578d479e4e490', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a57b2d0a36852a', 'images (1).png', 0, 'image/png', 75330, NULL, '2017-07-03 14:41:54', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a57b6644eaf792', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a59a6c87d590c2', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-03 14:50:14', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a59afea46f2994', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a59bb8a4f9e342', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-03 14:50:35', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a59c02d0334db7', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a59c71d2edf14a', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-03 14:50:47', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a59c8ec426a0b7', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a59d863ea2b1e2', 'images (1).png', 0, 'image/png', 75330, NULL, '2017-07-03 14:51:04', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a59d9c859356e0', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a59e2d6556e468', 'images (1).jpg', 0, 'image/jpeg', 6400, NULL, '2017-07-03 14:51:14', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '5959ec923589d4818', NULL, NULL, NULL),
('595a59ee92c420d90', 'images (1).png', 0, 'image/png', 75330, NULL, '2017-07-03 14:51:26', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a59f359124deb2', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a5b3f9ceb21da9', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-03 14:57:03', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a5b478d468ef0f', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595a5b60ce2f95ebf', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-03 14:57:36', 'Attachment', NULL, NULL, 0, NULL, NULL, '595a5b62ec1f5081b', 'PimCategoryImage', '5959ec923589d4818', NULL, NULL, NULL),
('595b55f53645c0e56', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-04 08:46:45', 'Attachment', NULL, NULL, 0, NULL, NULL, '595b55f9f1f383139', 'PimCategoryImage', '1', NULL, NULL, NULL),
('595b5600dbac1deec', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-04 08:46:56', 'Attachment', NULL, NULL, 0, NULL, NULL, '595b560372cb1c8d4', 'PimCategoryImage', '1', NULL, NULL, NULL),
('595b5638703a8b285', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-04 08:47:52', 'Attachment', NULL, NULL, 0, NULL, NULL, '595b563a60dbe4be1', 'PimCategoryImage', '1', NULL, NULL, NULL),
('595b5640940ef76c4', 'images (1).png', 0, 'image/png', 75330, NULL, '2017-07-04 08:48:00', 'Attachment', NULL, NULL, 0, NULL, NULL, '595b56417b502ce91', 'PimCategoryImage', '1', NULL, NULL, NULL),
('595b56484539f7ec6', 'images (1).png', 0, 'image/png', 75330, NULL, '2017-07-04 08:48:08', 'Attachment', NULL, NULL, 0, NULL, NULL, '595b564af355cf6db', 'PimCategoryImage', '1', NULL, NULL, NULL),
('5964cf0cac0714981', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-11 13:13:48', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cf0d9394d8a12', 'ProductImage', '1', NULL, NULL, NULL),
('5964cf73ac2d1490f', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-11 13:15:31', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cf75905fd9749', 'ProductImage', '1', NULL, NULL, NULL),
('5964cf807c42dbdda', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-11 13:15:44', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cf819bd4c5bc3', 'ProductImage', '1', NULL, NULL, NULL),
('5964cf95964f85494', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-11 13:16:05', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cf819bd4c5bc3', 'ProductImage', '1', NULL, NULL, NULL),
('5964cfb290668168a', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-11 13:16:34', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cfb48e8f04917', 'ProductImage', '1', NULL, NULL, NULL),
('5964cfc16ad103903', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-11 13:16:49', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cfb48e8f04917', 'ProductImage', '1', NULL, NULL, NULL),
('5964cfd7ec0bdce13', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-11 13:17:11', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cfb48e8f04917', 'ProductImage', '1', NULL, NULL, NULL),
('5964cfe3e77d88a06', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-11 13:17:23', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964cfe54619b1ab4', 'ProductImage', '1', NULL, NULL, NULL),
('5964d0199f8f8e724', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-11 13:18:17', 'Attachment', NULL, NULL, 0, NULL, NULL, '5964d01ba66b5aa16', 'ProductImage', '1', NULL, NULL, NULL),
('5965d17e73e6eb110', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-12 07:36:30', 'Attachment', NULL, NULL, 0, NULL, NULL, '5965d182dab31f5df', 'ProductImage', '1', NULL, NULL, NULL),
('5965d226503915da9', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-12 07:39:18', 'Attachment', NULL, NULL, 0, NULL, NULL, '5965d182dab31f5df', 'ProductImage', '1', NULL, NULL, NULL),
('5965d25943ba276cb', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-12 07:40:09', 'Attachment', NULL, NULL, 0, NULL, NULL, '5965d25b2b8efaff9', 'ProductImage', '1', NULL, NULL, NULL),
('5965d26288dbc6b23', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-12 07:40:18', 'Attachment', NULL, NULL, 0, NULL, NULL, '5965d25b2b8efaff9', 'ProductImage', '1', NULL, NULL, NULL),
('5965d26d3945c425d', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-12 07:40:29', 'Attachment', NULL, NULL, 0, NULL, NULL, '5965d27a5af817366', 'ProductImage', '1', NULL, NULL, NULL),
('5965d284cbaceb02f', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-12 07:40:52', 'Attachment', NULL, NULL, 0, NULL, NULL, '5965d27a5af817366', 'ProductImage', '1', NULL, NULL, NULL),
('596628749261ccd0c', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-07-12 13:47:32', 'Attachment', NULL, NULL, 0, NULL, NULL, '59662876b65dd4099', 'ProductImage', '1', NULL, NULL, NULL),
('59689e18e82a4250e', 'FLYsj0.jpeg', 0, 'image/jpeg', 179046, NULL, '2017-07-14 10:34:00', 'Attachment', NULL, NULL, 0, NULL, NULL, '59689e1e3fcebaf57', 'ProductImage', '1', NULL, NULL, NULL),
('5978814025d4cf46c', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-26 11:47:12', 'Attachment', NULL, NULL, 0, NULL, NULL, '59788141d9ec060bc', 'ProductImage', '1', NULL, NULL, NULL),
('5978816be6356da05', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-26 11:47:55', 'Attachment', NULL, NULL, 0, NULL, NULL, '5978816d211c72e32', 'ProductImage', '1', NULL, NULL, NULL),
('597881c282af816c6', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-26 11:49:22', 'Attachment', NULL, NULL, 0, NULL, NULL, '597881c42ec74608b', 'ProductImage', '1', NULL, NULL, NULL),
('597882b7aa935429c', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-26 11:53:27', 'Attachment', NULL, NULL, 0, NULL, NULL, '597882b8cb7448e53', 'ProductImage', '1', NULL, NULL, NULL),
('597882d99437ac51a', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-26 11:54:01', 'Attachment', NULL, NULL, 0, NULL, NULL, '597882dbcde9fbb55', 'ProductImage', '1', NULL, NULL, NULL),
('5978832d387b87276', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-07-26 11:55:25', 'Attachment', NULL, NULL, 0, NULL, NULL, '5978832f1c23f3be9', 'ProductImage', '1', NULL, NULL, NULL),
('5978833414632e0c0', 'FLYsj0.jpeg', 0, 'image/jpeg', 179046, NULL, '2017-07-26 11:55:32', 'Attachment', NULL, NULL, 0, NULL, NULL, '59788335458663972', 'ProductImage', '1', NULL, NULL, NULL),
('5978834ec82ee86f1', 'FLYsj0.jpeg', 0, 'image/jpeg', 179046, NULL, '2017-07-26 11:55:58', 'Attachment', NULL, NULL, 0, NULL, NULL, '5978834fb9b46aae4', 'ProductImage', '1', NULL, NULL, NULL),
('5978835567ea007f5', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-07-26 11:56:05', 'Attachment', NULL, NULL, 0, NULL, NULL, '597883567e84ff766', 'ProductImage', '1', NULL, NULL, NULL),
('5978976b933f03350', 'pim.png', 0, 'image/png', 387738, NULL, '2017-07-26 13:21:47', 'Attachment', NULL, NULL, 0, NULL, NULL, '5978976dc082abcdf', 'ProductImage', '1', NULL, NULL, NULL),
('59789792537dc0042', 'pim.png', 0, 'image/png', 387738, NULL, '2017-07-26 13:22:26', 'Attachment', NULL, NULL, 0, NULL, NULL, '5978979439aba0b4d', 'ProductImage', '1', NULL, NULL, NULL),
('597897a8088cbd175', 'pim.png', 0, 'image/png', 387738, NULL, '2017-07-26 13:22:48', 'Attachment', NULL, NULL, 0, NULL, NULL, '597897aa8a60e5767', 'ProductImage', '1', NULL, NULL, NULL),
('5981718802d760b29', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-08-02 06:30:32', 'Attachment', NULL, NULL, 0, NULL, NULL, '598171e018c45c687', 'ProductImage', '1', NULL, NULL, NULL),
('598171f0f29475a97', 'FLYsj0.jpeg', 0, 'image/jpeg', 179046, NULL, '2017-08-02 06:32:16', 'Attachment', NULL, NULL, 0, NULL, NULL, '598171f25f2343cf9', 'ProductImage', '1', NULL, NULL, NULL),
('598172395304bb352', 'readme_fr.txt', 0, 'text/plain', 22018, NULL, '2017-08-02 06:33:29', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('59899858c22b0a1a1', 'images.jpg', 0, 'image/jpeg', 1666, NULL, '2017-08-08 10:54:16', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('59a4152697eb92e38', 'images (1).jpg', 0, 'image/jpeg', 6400, NULL, '2017-08-28 13:05:42', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('59afa305eb2a1b9f5', '11042552-8439.jpg', 0, 'image/jpeg', 15154, NULL, '2017-09-06 07:25:57', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('59aff120c292bcdb2', '108135701_01.jpeg', 0, 'image/jpeg', 93987, NULL, '2017-09-06 12:59:12', 'Attachment', NULL, NULL, 0, NULL, NULL, '59aff13d2bf61fd8b', 'ProductImage', '1', NULL, NULL, NULL),
('59aff19d58fff83d4', '108135701_01.jpeg', 0, 'image/jpeg', 93987, NULL, '2017-09-06 13:01:17', 'Attachment', NULL, NULL, 0, NULL, NULL, '59aff13d2bf61fd8b', 'ProductImage', '1', NULL, NULL, NULL),
('59b28e46deb578d2c', 'Monitors - Google Chrome.jpg', 0, 'image/jpeg', 116607, NULL, '2017-09-08 12:34:14', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b28e137471218c2', 'CategoryImage', '1', NULL, NULL, NULL),
('59b28e7632dc4eae7', 'Monitors - Google Chrome.jpg', 0, 'image/jpeg', 116607, NULL, '2017-09-08 12:35:02', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b28e137471218c2', 'CategoryImage', '1', NULL, NULL, NULL),
('59b28f622bc59ae29', 'Pineapple[1].png', 0, 'image/png', 9856, NULL, '2017-09-08 12:38:58', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b28f648eb245f25', 'CategoryImage', '1', NULL, NULL, NULL),
('59b295ace5772bd49', 'cropped-zinit_h300_300-32x32[1].png', 0, 'image/png', 864, NULL, '2017-09-08 13:05:48', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b2959b4b49825e2', 'ProductImage', '1', NULL, NULL, NULL),
('59b295f33c8926126', '108135701_01.jpg', 0, 'image/jpeg', 222533, NULL, '2017-09-08 13:06:59', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b2959b4b49825e2', 'ProductImage', '1', NULL, NULL, NULL),
('59b2963dd720b929c', 'images (1).png', 0, 'image/png', 75330, NULL, '2017-09-08 13:08:13', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b296404ddc41ccc', 'ProductImage', '1', NULL, NULL, NULL),
('59b296e69a0ba2d50', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-09-08 13:11:02', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b296e83929f0c3f', 'ProductImage', '1', NULL, NULL, NULL),
('59b296f3b40f02c3b', 'phone-calls-love-hate-400x257.gif', 0, 'image/gif', 23084, NULL, '2017-09-08 13:11:15', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b296fe6fee32616', 'ProductImage', '1', NULL, NULL, NULL),
('59b79964c63a304f9', 'FLYsj0.jpeg', 0, 'image/jpeg', 179046, NULL, '2017-09-12 08:23:00', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b799689f683b71e', 'ProductImage', '1', NULL, NULL, NULL),
('59b79a1c9e49f7228', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-09-12 08:26:04', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b79a200820d5666', 'ProductImage', '1', NULL, NULL, NULL),
('59b79b89db0de0136', 'start2_140x140.jpg', 0, 'image/jpeg', 5456, NULL, '2017-09-12 08:32:09', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b79b8ae371d79fe', 'ProductImage', '1', NULL, NULL, NULL),
('59b79bded5d6de66e', 'FLYsj0.jpeg', 0, 'image/jpeg', 179046, NULL, '2017-09-12 08:33:34', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b79be24042b5f5a', 'ProductImage', '1', NULL, NULL, NULL),
('59b79bea9fe8a1209', 'gf.gif', 0, 'image/gif', 14774, NULL, '2017-09-12 08:33:46', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b79bebe97413de1', 'ProductImage', '1', NULL, NULL, NULL),
('59b79bf452b95250e', 'qq.gif', 0, 'image/gif', 2921, NULL, '2017-09-12 08:33:56', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b79bf59aadd0769', 'ProductImage', '1', NULL, NULL, NULL),
('59b79bfd0c0d1f583', '315193.jpg', 0, 'image/jpeg', 51677, NULL, '2017-09-12 08:34:05', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b79bfe686d5b64a', 'ProductImage', '1', NULL, NULL, NULL),
('59b79d57618789ba3', '315193.jpg', 0, 'image/jpeg', 51677, NULL, '2017-09-12 08:39:51', 'Attachment', NULL, NULL, 0, NULL, NULL, '59b79d58a2baf0ccf', 'ProductImage', '1', NULL, NULL, NULL),
('59bfacc25ac97c442', 'AttributeGroup редгування.jpg', 0, 'image/jpeg', 108693, NULL, '2017-09-18 11:23:46', 'Attachment', NULL, NULL, 0, NULL, NULL, '59bfacc3968e6debd', 'CategoryImage', '1', NULL, NULL, NULL),
('59bfaf2a16ef6fc63', 'Категории.xlsx', 0, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 11756, NULL, '2017-09-18 11:34:02', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('59c26b3f5f5b91de6', 'Add Product Attributes.jpg', 0, 'image/jpeg', 71928, NULL, '2017-09-20 13:21:03', 'Attachment', NULL, NULL, 0, NULL, NULL, '59c26b425706d9bb9', 'CategoryImage', '1', NULL, NULL, NULL),
('59c2784b7576b606b', 'Create AttributeGroup.jpg', 0, 'image/jpeg', 100031, NULL, '2017-09-20 14:16:43', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('59ca369eb255d3085', '315193.jpg', 0, 'image/jpeg', 51677, NULL, '2017-09-26 11:14:38', 'Attachment', NULL, NULL, 0, NULL, NULL, '59ca36a0f02f3aa66', 'ProductImage', '1', NULL, NULL, NULL),
('59d7706c10be7357f', '1-Home.png', 0, 'image/png', 115216, NULL, '2017-10-06 12:00:44', 'Attachment', NULL, NULL, 0, NULL, NULL, '59d7706ed19fea11f', 'ProductImage', '1', NULL, NULL, NULL),
('59d770fa8cdf1bfcb', 'planeta-zemlya-kartinka.960x540[1].jpg', 0, 'image/jpeg', 59880, NULL, '2017-10-06 12:03:06', 'Attachment', NULL, NULL, 0, NULL, NULL, '59d770fe0b3cb0828', 'CategoryImage', '1', NULL, NULL, NULL),
('59e0ab5ae949fb826', '315193.jpg', 0, 'image/jpeg', 51677, NULL, '2017-10-13 12:02:34', 'Attachment', NULL, NULL, 0, NULL, NULL, '59e0ab62f0e4d9d7e', 'ProductImage', '1', NULL, NULL, NULL),
('5a3a20e96ea76f760', 'TreoPIM_logo_h60.png', 0, 'image/png', 2219, NULL, '2017-12-20 08:35:53', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', NULL, NULL, NULL),
('5ab9dda748083bd9c', '123. 2018-03-27 05:59:03.xlsx', 0, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL, NULL, '2018-03-27 05:59:03', 'Export File by export profile', 'ExportProfileXlsx', NULL, 0, NULL, NULL, NULL, NULL, 'system', NULL, NULL, NULL),
('5ae1d63c071cfca83', 'Test. 2018-04-26 13:38:04.xlsx', 0, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL, NULL, '2018-04-26 13:38:04', 'Export File by export profile', 'ExportProfileXlsx', NULL, 0, NULL, NULL, NULL, NULL, 'system', NULL, NULL, NULL),
('5ae2b6a9b7196ae7e', 's-l1600 (2).jpg', 0, 'image/jpeg', 28496, NULL, '2018-04-27 05:35:37', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2b6aeb6d0ac980', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2b6d0b74f4eae1', 's-l1600.jpg', 0, 'image/jpeg', 37497, NULL, '2018-04-27 05:36:16', 'Attachment', NULL, NULL, 0, NULL, NULL, '5ae2b6d268a4179a6', 'ProductImage', '1', 'image', NULL, NULL),
('5ae2b6e345188bb0b', 's-l1600 (1).jpg', 0, 'image/jpeg', 33879, NULL, '2018-04-27 05:36:35', 'Attachment', NULL, NULL, 0, NULL, NULL, '5ae2b6e595a29e2a0', 'ProductImage', '1', 'image', NULL, NULL),
('5ae2b8eaf1c8799ac', 'apple_iphone_x_64gb_space_gray_9.jpg', 0, 'image/jpeg', 17630, NULL, '2018-04-27 05:45:14', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2b8f5ac1ae9e4e', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2b8eaf2d78720e', 'apple_iphone_x_64gb_silver_3_2.jpeg', 0, 'image/jpeg', 59476, NULL, '2018-04-27 05:45:14', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2b8f5ace889046', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2b8eb00ed4d2cb', 'apple_iphone_x_64gb_silver_4_2.jpeg', 0, 'image/jpeg', 21204, NULL, '2018-04-27 05:45:14', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2b8f5ab38ff09a', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2b8ec046547276', 'apple_iphone_x_64gb_silver_2_2.jpeg', 0, 'image/jpeg', 49530, NULL, '2018-04-27 05:45:16', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2b8f6ab831f393', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2b8ec2bbcbe62c', 'apple_iphone_x_64gb_silver_5.jpeg', 0, 'image/jpeg', 68319, NULL, '2018-04-27 05:45:16', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2b8f5e222214e6', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2b8ec2f40531d7', 'apple_iphone_x_64gb_space_gray_10.jpg', 0, 'image/jpeg', 118856, NULL, '2018-04-27 05:45:16', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2b8f5ddde91808', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bd6a8cd031e46', 'apple_iphone_x_64gb_space_gray_5.jpeg', 0, 'image/jpeg', 24032, NULL, '2018-04-27 06:04:26', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2bd7caecb49a49', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bd6a92902e41d', 'apple_iphone_x_64gb_space_gray_2.jpeg', 0, 'image/jpeg', 55364, NULL, '2018-04-27 06:04:26', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2bd7caed1bc1ad', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bd6a96999a9b4', 'apple_iphone_x_64gb_silver_3_2.jpeg', 0, 'image/jpeg', 61019, NULL, '2018-04-27 06:04:26', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2bd7cb029d3855', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bd6ae64c04e44', 'apple_iphone_x_64gb_space_gray_6.jpg', 0, 'image/jpeg', 103521, NULL, '2018-04-27 06:04:26', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2bd7caf4aa62cf', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bd6b06c77204d', 'apple_iphone_x_64gb_space_gray_7.jpg', 0, 'image/jpeg', 68245, NULL, '2018-04-27 06:04:27', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2bd7cafe68ca41', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bd6bb6457e5a0', 'apple_iphone_x_64gb_space_gray_8.jpg', 0, 'image/jpeg', 51938, NULL, '2018-04-27 06:04:27', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2bd7cc1a1f5382', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bd6bb83903988', 'apple_iphone_x_64gb_space_gray.jpeg', 0, 'image/jpeg', 69919, NULL, '2018-04-27 06:04:27', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2bd7d250b96f4f', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bdfbc40af441d', 'apple_iphone_x_64gb_space_gray_5.jpeg', 0, 'image/jpeg', 24032, NULL, '2018-04-27 06:06:51', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0bc61b83d84', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bdfbc6816037f', 'apple_iphone_x_64gb_silver_3_2.jpeg', 0, 'image/jpeg', 61019, NULL, '2018-04-27 06:06:51', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0bcbbec2037', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bdfbca11e4d4f', 'apple_iphone_x_64gb_space_gray_2.jpeg', 0, 'image/jpeg', 55364, NULL, '2018-04-27 06:06:51', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0bc9a5587ee', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bdfbca7d79d6e', 'apple_iphone_x_64gb_space_gray_8.jpg', 0, 'image/jpeg', 51938, NULL, '2018-04-27 06:06:51', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0bc8d33af42', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bdfbccf92f112', 'apple_iphone_x_64gb_space_gray.jpeg', 0, 'image/jpeg', 69919, NULL, '2018-04-27 06:06:51', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0bc92d9b57f', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bdfbe74e93e45', 'apple_iphone_x_64gb_space_gray_6.jpg', 0, 'image/jpeg', 103521, NULL, '2018-04-27 06:06:51', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0bdd07e73b2', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2bdfc4482fb090', 'apple_iphone_x_64gb_space_gray_7.jpg', 0, 'image/jpeg', 68245, NULL, '2018-04-27 06:06:52', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0c5123ebdcc', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2be035b6e1b906', 'apple_iphone_x_64gb_silver_3_2.jpeg', 0, 'image/jpeg', 59476, NULL, '2018-04-27 06:06:59', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0c44f21640a', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2be035bcc47991', 'apple_iphone_x_64gb_space_gray_9.jpg', 0, 'image/jpeg', 17630, NULL, '2018-04-27 06:06:59', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0c4127daf84', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2be03617cea7f1', 'apple_iphone_x_64gb_silver_4_2.jpeg', 0, 'image/jpeg', 21204, NULL, '2018-04-27 06:06:59', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0c3f8c8144b', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2be0363ad9f0a9', 'apple_iphone_x_64gb_silver_2_2.jpeg', 0, 'image/jpeg', 49530, NULL, '2018-04-27 06:06:59', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0c51b3536f3', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2be0365ea5ddf5', 'apple_iphone_x_64gb_silver_5.jpeg', 0, 'image/jpeg', 68319, NULL, '2018-04-27 06:06:59', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0c536dd53ac', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2be03684833a82', 'apple_iphone_x_64gb_space_gray_10.jpg', 0, 'image/jpeg', 118856, NULL, '2018-04-27 06:06:59', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2be0ca87999a37', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2c63cea2ea4693', '24461_4_l.jpg', 0, 'image/jpeg', 20181, NULL, '2018-04-27 06:42:04', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2c64681b4f7639', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2c63cf278a3efd', 'ef70-300-4-56-is-usm-d.jpg', 0, 'image/jpeg', 70375, NULL, '2018-04-27 06:42:04', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2c64688a217143', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2c63d19997d344', 'canon_eos_5d_mark3_24_105_review_images_961819448.jpg', 0, 'image/jpeg', 292854, NULL, '2018-04-27 06:42:05', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2c6468226dd4a6', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2c63deaf50ba46', 'canon-6d2.jpeg', 0, 'image/jpeg', 51803, NULL, '2018-04-27 06:42:05', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2c6478367d164b', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2c96b639091f33', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover.jpg', 0, 'image/jpeg', 58614, NULL, '2018-04-27 06:55:39', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2c974703242d92', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2c96b70a04bb3b', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for.jpg', 0, 'image/jpeg', 100324, NULL, '2018-04-27 06:55:39', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2c974714cc36e2', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2ca37dfc02f0b2', 'philips_46pfl8007k_12_1.jpg', 0, 'image/jpeg', 9529, NULL, '2018-04-27 06:59:03', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2ca3c29cd57dea', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2ca37eb59bc4dd', 'Philips-46PFL8007K-12-2-large.jpg', 0, 'image/jpeg', 103226, NULL, '2018-04-27 06:59:03', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2ca3c21a711b48', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5ae2ca3804e23a38b', 'Philips-46PFL8007K-12-1-large.jpg', 0, 'image/jpeg', 206560, NULL, '2018-04-27 06:59:04', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5ae2ca3c236c4219a', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5b3244192e92d07ca', 'iphone-x-kf-device-tab-d-8-gestures.png', 0, 'image/png', 184294, NULL, '2018-06-26 13:48:09', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b32441b7bfda03c2', 'ProductImage', '1', 'image', NULL, NULL),
('5b32506e0226012a2', '71rFUuxNnvL._SY355_.jpg', 0, 'image/jpeg', 25455, NULL, '2018-06-26 14:40:45', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b32506f9ba98fc22', 'ProductImage', '1', 'image', NULL, NULL),
('5b333ee10d53afdeb', 'iphonex_spacegray.png', 0, 'image/png', 114374, NULL, '2018-06-27 07:38:09', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b333ee2dc15b03e4', 'ProductImage', '1', 'image', NULL, NULL),
('5b685596690e2ef3a', 'Flyer', 0, 'text/plain', 0, NULL, '2018-08-06 14:05:10', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b6855991b4da4904', 'ProductAssets', '1', 'file', NULL, NULL),
('5b6941d4e04ef5766', 'Ebay. 2018-08-07 06:56:05.zip', 0, 'application/zip', NULL, NULL, '2018-08-07 06:56:05', 'Export Channel data as zip archive', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b69420ca3a67412d', 'Export Basic Catalog Ebay. 2018-08-07 06:54:04.zip', 0, 'application/zip', NULL, NULL, '2018-08-07 06:54:04', 'Export zip file by export feed', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b69420d34f700880', 'Export Basic Catalog Ebay. 2018-08-07 06:54:05.zip', 0, 'application/zip', NULL, NULL, '2018-08-07 06:54:05', 'Export zip file by export feed', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b69420d6c29c8cf4', 'Export Basic Catalog Image Ebay. 2018-08-07 06:54:05.zip', 0, 'application/zip', NULL, NULL, '2018-08-07 06:54:05', 'Export zip file by export feed', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b69420d78a092cb1', 'Export Basic Catalog Assets Ebay. 2018-08-07 06:54:05.zip', 0, 'application/zip', NULL, NULL, '2018-08-07 06:54:05', 'Export zip file by export feed', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b694248d88e97786', 'Export Product Image Ebay. 2018-08-07 06:55:04.csv', 0, 'text/csv', NULL, NULL, '2018-08-07 06:55:04', 'Export File by export feed', 'ExportFeedCsv', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b694249235acdbba', 'Export Simple Product Ebay. 2018-08-07 06:55:05.csv', 0, 'text/csv', NULL, NULL, '2018-08-07 06:55:05', 'Export File by export feed', 'ExportFeedCsv', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b7bbab6e79e6c423', 'Retailer. 2018-08-21 07:12:04.zip', 0, 'application/zip', NULL, NULL, '2018-08-21 07:12:04', 'Export Channel data as zip archive', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b7bbacd4e525f1a0', 'Export Basic Catalog Ebay. 2018-08-21 07:10:05.zip', 0, 'application/zip', NULL, NULL, '2018-08-21 07:10:05', 'Export zip file by export feed', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b7bbacd6ce3b3377', 'Export Basic Catalog Image Ebay. 2018-08-21 07:10:05.zip', 0, 'application/zip', NULL, NULL, '2018-08-21 07:10:05', 'Export zip file by export feed', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b7bbacd867ed1aed', 'Export Basic Catalog Assets Ebay. 2018-08-21 07:10:05.zip', 0, 'application/zip', NULL, NULL, '2018-08-21 07:10:05', 'Export zip file by export feed', 'ExportZip', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b7bbacd8a8c1afcc', 'Export Product Image Ebay. 2018-08-21 07:10:05.csv', 0, 'text/csv', NULL, NULL, '2018-08-21 07:10:05', 'Export File by export feed', 'ExportFeedCsv', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b7bbb083d868fbac', 'Export Simple Product Ebay. 2018-08-21 07:11:04.csv', 0, 'text/csv', NULL, NULL, '2018-08-21 07:11:04', 'Export File by export feed', 'ExportFeedCsv', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b86340220da61ebf', '5ae2b6e345188bb0b_x-large.jpg', 0, 'image/jpeg', 32265, NULL, '2018-08-29 05:49:54', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b863405a14cb44b1', 'CategoryImage', '1', 'image', NULL, NULL),
('5b8634423ef81065d', '5ae2bdfbc40af441d_x-large.jpg', 0, 'image/jpeg', 10520, NULL, '2018-08-29 05:50:58', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b8634441199c0eaa', 'CategoryImage', '1', 'image', NULL, NULL),
('5b86377fb4e95d27a', 'canon-powershot-sx420-is-digital-camera-cameralk_4_.png', 0, 'image/png', 632304, NULL, '2018-08-29 06:04:47', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b863781ae043b945', 'CategoryImage', '1', 'image', NULL, NULL),
('5b88ff5b6323d2df1', 'Export Simple Product Ebay. 2018-08-31 08:42:03.csv', 0, 'text/csv', NULL, NULL, '2018-08-31 08:42:03', 'Export File by export feed', 'ExportFeedCsv', NULL, 0, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL),
('5b910f63f29274f07', '2 продукта.csv', 0, 'text/csv', 5571, NULL, '2018-09-06 11:28:35', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'ImportJob', '5b910d520c3fe4642', 'importFile', NULL, NULL),
('5b910fd0c4af120d1', '1111.csv', 0, 'text/csv', 2918, NULL, '2018-09-06 11:30:24', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b910fa7721aa1d9b', 'ImportFeed', '1', 'file', NULL, NULL),
('5b910fd1255d9350c', 'import_csv_file 1111.csv', 0, 'text/csv', NULL, NULL, '2018-09-06 11:30:25', NULL, NULL, NULL, 0, '5b910fa7721aa1d9b', 'ImportFeed', '5b910fd0c4af120d1', 'Attachment', '1', NULL, NULL, NULL),
('5b910fd12561ad814', 'import_csv_file 1111.csv', 0, 'text/csv', NULL, NULL, '2018-09-06 11:30:25', NULL, NULL, NULL, 0, '5b910fa7721aa1d9b', 'ImportFeed', '5b910fd0c4af120d1', 'Attachment', '1', NULL, NULL, NULL),
('5b920e2192a12d0e6', 'Product.csv', 0, 'text/csv', 954, NULL, '2018-09-07 05:35:29', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'ImportFeed', '1', 'file', NULL, NULL),
('5b920e21cf4637282', 'import_csv_file Product.csv', 0, 'text/csv', NULL, NULL, '2018-09-07 05:35:29', NULL, NULL, NULL, 0, '5b920e01bac6648cf', 'ImportFeed', '5b920e2192a12d0e6', 'Attachment', '1', NULL, NULL, NULL),
('5b920e85ada3c6305', 'Product.csv', 0, 'text/csv', 843, NULL, '2018-09-07 05:37:09', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b920e01bac6648cf', 'ImportFeed', '1', 'file', NULL, NULL),
('5b920e85ee733094f', 'import_csv_file Product.csv', 0, 'text/csv', NULL, NULL, '2018-09-07 05:37:09', NULL, NULL, NULL, 0, '5b920e01bac6648cf', 'ImportFeed', '5b920e85ada3c6305', 'Attachment', '1', NULL, NULL, NULL),
('5b920ee2c8baa7e31', 'import_csv_file Product.csv', 0, 'text/csv', NULL, NULL, '2018-09-07 05:38:42', NULL, NULL, NULL, 0, '5b920e01bac6648cf', 'ImportFeed', '5b920e85ada3c6305', 'Attachment', '1', NULL, NULL, NULL),
('5b920f17b23308932', 'Product.csv', 0, 'text/csv', 843, NULL, '2018-09-07 05:39:35', 'Attachment', NULL, NULL, 0, NULL, NULL, '5b920f1a5b1e6039f', 'ImportJob', '1', 'importFile', NULL, NULL),
('5b920f1a605fa1461', 'import_csv_file Product.csv', 0, 'text/csv', NULL, NULL, '2018-09-07 05:39:38', NULL, NULL, NULL, 0, '5b920f1a5b1e6039f', 'ImportJob', '5b920f17b23308932', 'Attachment', '1', NULL, NULL, NULL),
('5be98269996c9b07e', '2018-11-12_15-38-22.png', 0, 'image/png', 298280, NULL, '2018-11-12 13:38:49', 'Attachment', NULL, NULL, 0, NULL, NULL, '5be9826b390f08b8d', 'ProductImage', '1', 'image', NULL, NULL),
('5be982d7c313590ab', '2018-11-12_15-40-06.png', 0, 'image/png', 429639, NULL, '2018-11-12 13:40:39', 'Attachment', NULL, NULL, 0, NULL, NULL, '5be982d897076a3b0', 'ProductImage', '1', 'image', NULL, NULL),
('5bed63dc1087ef3d6', '688720_0.jpg', 0, 'image/jpeg', 23910, NULL, '2018-11-15 12:17:32', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed63e3a705cf72f', 'ProductImage', '1', 'image', NULL, NULL),
('5bed645e2bf46c0a9', 'canon_eos_5d_mark3_24_105_review_images_961819448.jpg', 0, 'image/jpeg', 292854, NULL, '2018-11-15 12:19:42', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'ProductImage', '1', 'image', NULL, NULL),
('5bed646d328a1599a', 'canon_eos_5d_mark3_24_105_review_images_961819448.jpg', 0, 'image/jpeg', 292854, NULL, '2018-11-15 12:19:57', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed646ec6ca9570e', 'ProductImage', '1', 'image', NULL, NULL),
('5bed657e99c0eb660', 'canon_eos_1100d_18_55_kit_images_3635339.jpg', 0, 'image/jpeg', 65685, NULL, '2018-11-15 12:24:30', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed6580a8d46176f', 'ProductImage', '1', 'image', NULL, NULL),
('5bed67bd1eae5e2b3', '2018-11-09_09-08-11.png', 0, 'image/png', 528801, NULL, '2018-11-15 12:34:05', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed67bf2e2bdaf51', 'ProductImage', '1', 'image', NULL, NULL),
('5bed68494bd25fc19', '2018-11-09_09-08-11.png', 0, 'image/png', 528801, NULL, '2018-11-15 12:36:25', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed68511c9e7c197', 'ProductImage', '1', 'image', NULL, NULL),
('5bed693a58cbd9c7b', '2018-11-09_10-13-35.jpg', 0, 'image/jpeg', 193538, NULL, '2018-11-15 12:40:26', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed695056e302b98', 'ProductImage', '1', 'image', NULL, NULL),
('5bed6a554648ee7f6', '57217833_images_7953489093.jpg', 0, 'image/jpeg', 13964, NULL, '2018-11-15 12:45:09', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5bed6a58da966e6c7', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5bed6a55c353dbcf4', '57217833_images_7953489303.jpg', 0, 'image/jpeg', 79019, NULL, '2018-11-15 12:45:09', 'Attachment', NULL, NULL, 0, NULL, 'ProductImage', '5bed6a59033bd56f2', 'ProductImage', '1', 'imagesMultiple', NULL, NULL),
('5bed73687c6dfdece', 'apple-iphone-x-64gb-silver-.jpg', 0, 'image/jpeg', 104745, NULL, '2018-11-15 13:23:52', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed736ae6b9f4eba', 'ProductImage', '1', 'image', NULL, NULL),
('5bed73e25aca15c3c', 'Apple iPhone X 64GB Space Gray.png', 0, 'image/png', 12044, NULL, '2018-11-15 13:25:54', 'Attachment', NULL, NULL, 0, NULL, NULL, '5bed73f6617c233ea', 'ProductImage', '1', 'image', NULL, NULL),
('5ca49fd1591794873', 'treo_pim_logo_white.svg', 0, 'image/svg+xml', 2643, NULL, '2019-04-03 11:58:09', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '5bd303861f3553551', 'companyLogo', NULL, NULL),
('5ca4c7e5a311a6c75', 'treo_pim_logo_346-64px.png', 0, 'image/png', 6847, NULL, '2019-04-03 14:49:09', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4c8e3c9f8fdd05', 'treo_pim_white_logo.svg', 0, 'image/svg+xml', 418751, NULL, '2019-04-03 14:53:23', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4c9b4e242205af', 'treo_pim_logo_white_346-64px.png', 0, 'image/png', 6829, NULL, '2019-04-03 14:56:52', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4ca988b25641a8', 'treo_pim_logo_white_109-20px.png', 0, 'image/png', 4870, NULL, '2019-04-03 15:00:40', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4caae9f4345740', 'treo_pim_logo_white_346-64px.png', 0, 'image/png', 6829, NULL, '2019-04-03 15:01:02', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4cad39e49d9639', 'treo_pim_logo_white_109-20px.png', 0, 'image/png', 4870, NULL, '2019-04-03 15:01:39', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4cae793374da1c', 'treo_pim_logo_white_346-64px.png', 0, 'image/png', 6829, NULL, '2019-04-03 15:01:59', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4cafab7eb30394', 'treo_pim_logo_white_109-20px.png', 0, 'image/png', 4870, NULL, '2019-04-03 15:02:18', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4cb1347726dfbc', 'treo_pim_logo_white_109-20px.png', 0, 'image/png', 4870, NULL, '2019-04-03 15:02:43', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4cb41a45ffe353', 'treo_pim_white_logo.svg', 0, 'image/svg+xml', 418751, NULL, '2019-04-03 15:03:29', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4cb52900a751ff', 'treo_pim_logo.svg', 0, 'image/svg+xml', 418980, NULL, '2019-04-03 15:03:46', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca4cb64214e4102c', 'treo_pim_logo_white_346-64px.png', 0, 'image/png', 6829, NULL, '2019-04-03 15:04:04', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5ca70ce9cb45dd062', 'treo_pim_logo_white1-01.png', 0, 'image/png', 5633, NULL, '2019-04-05 08:08:09', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Settings', '1', 'companyLogo', NULL, NULL),
('5d65218a3c2469172', '6581.970.jpg', 0, 'image/jpeg', 8943, NULL, '2019-08-27 12:26:50', 'Attachment', 'UploadDir', 'mp/6v/m0', 0, NULL, NULL, '59fb0aa27855b0afd', 'Product', '1', 'image', NULL, NULL),
('5d65230d3d68d06fd', 'apple-iphone-x-serebristyj_1_jnwj-l7.png', 0, 'image/png', 45443, NULL, '2019-08-27 12:33:17', 'Attachment', 'UploadDir', 'se/ra/7o', 0, NULL, NULL, '5d6523294cfc545d7', 'ProductImage', '1', 'image', NULL, NULL),
('5d65236fded3db5fa', 'apple-iphone-x-serebristyj_1_jnwj-l7.png', 0, 'image/png', 140280, NULL, '2019-08-27 12:34:55', 'Attachment', NULL, 'bj/rl/lc', 0, NULL, NULL, NULL, 'ProductImage', '1', 'image', NULL, NULL),
('5d6523817bf9ab8c5', '1805535648_novyj-apple-iphone.jpg', 0, 'image/jpeg', 140280, NULL, '2019-08-27 12:35:13', 'Attachment', 'UploadDir', '0x/4a/rv', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5d65239e1bba1c89a', 'apple-iphone-x-64gb-space-gray-mqac2-83492969374929_small6.jpg', 0, 'image/jpeg', 11324, NULL, '2019-08-27 12:35:42', 'Attachment', 'UploadDir', 'i6/3j/sc', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5d652424763aadb92', '517ab8933a68aba57613c964a6e9d16e-700x700.jpg', 0, 'image/jpeg', 114282, NULL, '2019-08-27 12:37:56', 'Attachment', 'UploadDir', 'hx/iw/ve', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5d6524721e0d7ef31', 'f047bde014e6e94feee40669d61fe931-700x700.jpg', 0, 'image/jpeg', 83134, NULL, '2019-08-27 12:39:14', 'Attachment', 'UploadDir', 'iq/9y/xr', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5d652494b88e13cfa', 'iphone-x-space-gray-700x700.jpg', 0, 'image/jpeg', 157517, NULL, '2019-08-27 12:39:48', 'Attachment', 'UploadDir', 'o8/4m/ep', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5d652dc48edb3a614', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover.jpg', 0, 'image/jpeg', 58614, NULL, '2019-08-27 13:19:00', 'Attachment', 'UploadDir', 'ba/zm/8j', 0, NULL, 'ProductImage', '59fb152fe4a37088e', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d652dc496d3f0eb5', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for.jpg', 0, 'image/jpeg', 100324, NULL, '2019-08-27 13:19:00', 'Attachment', 'UploadDir', 'ji/si/wf', 0, NULL, 'ProductImage', '59fb152fe4a37088e', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d652e65997f165db', '57217833_images_7953489093.jpg', 0, 'image/jpeg', 13964, NULL, '2019-08-27 13:21:41', 'Attachment', 'UploadDir', 'j0/p1/mm', 0, NULL, 'ProductImage', '5be98924b15087ff5', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d652e65ac543fab4', '57217833_images_7953489303.jpg', 0, 'image/jpeg', 79019, NULL, '2019-08-27 13:21:41', 'Attachment', 'UploadDir', 'zr/i8/t4', 0, NULL, 'ProductImage', '5be98924b15087ff5', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d652f757b88d8e71', '688720_0.jpg', 0, 'image/jpeg', 23910, NULL, '2019-08-27 13:26:13', 'Attachment', 'UploadDir', '84/t0/h5', 0, NULL, 'ProductImage', '59b0e83c603a1b9c8', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d652f75863b67985', '71fVj87ziQL._SL1500_.jpg', 0, 'image/jpeg', 234826, NULL, '2019-08-27 13:26:13', 'Attachment', 'UploadDir', 'tp/px/8g', 0, NULL, 'ProductImage', '5da04df6a70163bbd', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d653714a2302b8ae', 'philips_46pfl8007k_.jpg', 0, 'image/jpeg', 9529, NULL, '2019-08-27 13:58:44', 'Attachment', 'UploadDir', 'y1/vf/re', 0, NULL, 'ProductImage', '59fad6841f243119b', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d653714c71d013c4', 'Philips-46PFL8007K-12-2-large.jpg', 0, 'image/jpeg', 103226, NULL, '2019-08-27 13:58:44', 'Attachment', 'UploadDir', '2i/ii/6f', 0, NULL, 'ProductImage', '5da04df6ae78479e0', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d653714cba48fc2e', 'Philips-46PFL8007K-12-1-large.jpg', 0, 'image/jpeg', 206560, NULL, '2019-08-27 13:58:44', 'Attachment', 'UploadDir', '6b/sn/ol', 0, NULL, 'ProductImage', '5da04df6b4b2fc5b1', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d653714d5241190b', 'U0040458_big.jpg', 0, 'image/jpeg', 91204, NULL, '2019-08-27 13:58:44', 'Attachment', 'UploadDir', 'zc/vq/be', 0, NULL, 'ProductImage', '5da04df6b1496e05d', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d653779effd7a4a5', 'LED5500_NYCskyline_Frt_2.jpg', 0, 'image/jpeg', 25372, NULL, '2019-08-27 14:00:25', 'Attachment', 'UploadDir', 'ma/vc/se', 0, NULL, 'ProductImage', '5b8649f0dae076eb0', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d65377a038969c5e', '2018-11-09_10-13-35.jpg', 0, 'image/jpeg', 193538, NULL, '2019-08-27 14:00:26', 'Attachment', 'UploadDir', 'tu/v0/0w', 0, NULL, 'ProductImage', '5b8649f0dae076eb0', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d6616aa282a239e6', '365411.jpg', 0, 'image/jpeg', 47102, NULL, '2019-08-28 05:52:42', 'Attachment', 'UploadDir', 'tb/2w/ky', 0, NULL, 'ProductImage', '5da04df7337d654d8', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d6616aa28a890592', '1111493_0.jpg', 0, 'image/jpeg', 31464, NULL, '2019-08-28 05:52:42', 'Attachment', 'UploadDir', 'eg/ct/fi', 0, NULL, 'ProductImage', '5a9e93d0e1e4fd1b9', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d6616aa3ba07dac2', 'canon_eos_1100d_18_55_kit_images_3635339.jpg', 0, 'image/jpeg', 65685, NULL, '2019-08-28 05:52:42', 'Attachment', 'UploadDir', 'fc/wi/sl', 0, NULL, 'ProductImage', '5da057f67fe19735b', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d6617aeceea352f8', 'Canon EOS 5D Mark III_1.jpg', 0, 'image/jpeg', 15850, NULL, '2019-08-28 05:57:02', 'Attachment', 'UploadDir', 'g4/sc/m5', 0, NULL, 'ProductImage', '5da04df709ba487ea', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d6617af0dc11f7a6', 'Canon EOS 5D Mark III_2.png', 0, 'image/png', 324404, NULL, '2019-08-28 05:57:03', 'Attachment', 'UploadDir', 'np/00/qy', 0, NULL, 'ProductImage', '59fb141abf37aef5e', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d6617af418051a33', 'Canon EOS 5D Mark III.jpg', 0, 'image/jpeg', 631252, NULL, '2019-08-28 05:57:03', 'Attachment', 'UploadDir', '05/13/oy', 0, NULL, 'ProductImage', '5da04df71d2dccb13', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d6618bc08ceed124', 'Canon EOS 5D Mark IV 24-105mm.jpg', 0, 'image/jpeg', 382361, NULL, '2019-08-28 06:01:32', 'Attachment', 'UploadDir', 'd4/hc/mz', 0, NULL, 'ProductImage', '5be971728d44f1a11', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d6618bc17ae115c5', 'Canon EOS 5D Mark IV 24-105mm_1.jpg', 0, 'image/jpeg', 139566, NULL, '2019-08-28 06:01:32', 'Attachment', 'UploadDir', '3d/l6/bc', 0, NULL, 'ProductImage', '5be971728d44f1a11', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d6618bc31b322ce3', 'Canon EOS 5D Mark IV 24-105mm_2.jpg', 0, 'image/jpeg', 332680, NULL, '2019-08-28 06:01:32', 'Attachment', 'UploadDir', 't2/z3/db', 0, NULL, 'ProductImage', '5be971728d44f1a11', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d79da046ccb430b0', 'iPhone-x.jpg', 0, 'image/jpeg', 99646, NULL, '2019-09-12 05:39:16', 'Attachment', 'UploadDir', '8l/24/fe', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5d79dabe18b264823', 'iPhone-x2.jpg', 0, 'image/jpeg', 55341, NULL, '2019-09-12 05:42:22', 'Attachment', 'UploadDir', '6t/zh/zv', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5d79decdb13b0ef11', '6581.970.jpg', 0, 'image/jpeg', 37226, NULL, '2019-09-12 05:59:41', 'Attachment', 'UploadDir', 'yh/15/96', 0, NULL, 'ProductImage', '59fb0e05a0c46a91a', 'Product', '1', 'imagesMultiple', NULL, NULL),
('5d79decdbcfbefd03', 'iphone-x-64gb-28space-gray-2f-silver-29-500x500.png', 0, 'image/png', 100222, NULL, '2019-09-12 05:59:41', 'Attachment', 'UploadDir', 'jm/vd/yt', 0, NULL, 'ProductImage', '5da04df6ccc51e1a8', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5d79decddaa9b7396', '1.png', 0, 'image/png', 94458, NULL, '2019-09-12 05:59:41', 'Attachment', 'UploadDir', 'ib/7d/59', 0, NULL, 'ProductImage', '5da04df6ce4f56d72', 'PimImage', '1', 'imagesMultiple', NULL, NULL),
('5da04df6c81f0c046', '2019-08-27_15-38-20.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-11 09:40:06', 'Attachment', 'UploadDir', 'xj/62/5v', 0, NULL, NULL, '59fb0aa27855b0afd', 'Product', 'system', 'image', NULL, NULL),
('5da04df6e65a5f21c', '2019-08-27_15-38-20.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-11 09:40:06', 'Attachment', 'UploadDir', 'ti/zr/yj', 0, NULL, NULL, '5da95464266aa342e', 'Product', 'system', 'image', NULL, NULL),
('5da04df6eff3e4257', '2019-08-27_15-36-47.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-11 09:40:06', 'Attachment', 'UploadDir', 'h1/p5/or', 0, NULL, NULL, '5da95464266aa342e', 'Product', 'system', 'image', NULL, NULL),
('5da04df71b250e606', '24461_4_l.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-11 09:40:07', 'Attachment', 'UploadDir', '4x/6n/g0', 0, NULL, NULL, '5da04df70f499c4f0', 'PimImage', 'system', 'image', NULL, NULL),
('5da0547a4b080c007', '3D-apple-iphone-x-color-model_Z.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-11 10:07:54', 'Attachment', 'UploadDir', '54/xh/f7', 0, NULL, NULL, '59fb0dc6f3fd265c9', 'Category', '1', 'image', NULL, NULL),
('5da0555c4a53d7138', '1180247-200.png', 0, 'image/png', NULL, NULL, '2019-10-11 10:11:40', 'Attachment', 'UploadDir', 'br/td/3x', 0, NULL, NULL, '5b7bc409a1e41e93c', 'Category', '1', 'image', NULL, NULL),
('5da055a2bc3e1c972', 'set-of-modern-digital-devices-icons-vector-id926686744?k=6&m=926686744&s=612x612&w=0&h=5sK3uelC-t--j0vfHIbiCaOHM-kR39W9m0p8kN-Ty5k=', 0, 'image/jpeg', NULL, NULL, '2019-10-11 10:12:50', 'Attachment', 'UploadDir', 'o5/h2/mz', 0, NULL, NULL, '5b7bc409a1e41e93c', 'Category', '1', 'image', NULL, NULL),
('5da055ea19e5fd82a', 'canon_camera_331.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-11 10:14:02', 'Attachment', 'UploadDir', 'nr/zy/0p', 0, NULL, NULL, '59b252808b342fdde', 'Category', '1', 'image', NULL, NULL),
('5da057a6a2f1d9666', 'tv-vector-icon-12.jpg', 0, 'image/png', NULL, NULL, '2019-10-11 10:21:26', 'Attachment', 'UploadDir', 'vt/9r/9a', 0, NULL, NULL, '59b2527192bb1f16c', 'Category', '1', 'image', NULL, NULL),
('5da057cfd3d429535', 'Projector-512.png', 0, 'image/png', NULL, NULL, '2019-10-11 10:22:07', 'Attachment', 'UploadDir', '81/bv/g2', 0, NULL, NULL, '59b2527192bb1f16c', 'Category', '1', 'image', NULL, NULL);
INSERT INTO `attachment` (`id`, `name`, `deleted`, `type`, `size`, `source_id`, `created_at`, `role`, `storage`, `storage_file_path`, `global`, `parent_id`, `parent_type`, `related_id`, `related_type`, `created_by_id`, `field`, `tmp_path`, `hash_md5`) VALUES
('5da05ead4d5716020', 'professional-audiovisual-industry-computer-icons-video-advertising-clip-art-audio-cassette.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-11 10:51:25', 'Attachment', 'UploadDir', 'rg/vc/74', 0, NULL, NULL, '59b25290f3d0bcb38', 'Category', '1', 'image', NULL, NULL),
('5da05ed89f08bc68f', 'Scanner-512.png', 0, 'image/png', NULL, NULL, '2019-10-11 10:52:08', 'Attachment', 'UploadDir', 'e9/gl/jh', 0, NULL, NULL, '59b2529a3f5a673f4', 'Category', '1', 'image', NULL, NULL),
('5da05f046c856567f', 'print-512.png', 0, 'image/png', NULL, NULL, '2019-10-11 10:52:52', 'Attachment', 'UploadDir', 'th/nm/g2', 0, NULL, NULL, '59b2529a3f5a673f4', 'Category', '1', 'image', NULL, NULL),
('5da9544a7e6126a8d', 'iPhone-x2.jpg', 0, 'image/jpeg', 55341, NULL, '2019-10-18 05:57:30', 'Attachment', 'UploadDir', 'f3/qo/8d', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', NULL, NULL, NULL),
('5da970bb75c70ed05', '71iO2R%2BCLjL._AC_SX679_.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-18 07:58:51', 'Attachment', 'UploadDir', '3e/x3/1l', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5da970da37002c454', '36d09a0bbc972b751327e394380ce322.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-18 07:59:22', 'Attachment', 'UploadDir', 'mx/0v/ad', 0, NULL, NULL, '5da95464266aa342e', 'Product', '1', 'image', NULL, NULL),
('5da970f6a402cad39', '71k2q0WXNYL._AC_SX425_.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-18 07:59:50', 'Attachment', 'UploadDir', '9d/ck/ku', 0, NULL, NULL, '5da970f686ae1095d', 'PimImage', '1', 'image', NULL, NULL),
('5da9713f1887572b0', '9306590910be32830feca743b4e29bb0.jpg', 0, 'image/jpeg', NULL, NULL, '2019-10-18 08:01:03', 'Attachment', 'UploadDir', 'pu/91/4w', 0, NULL, NULL, '5da9713eeb3e73952', 'PimImage', '1', 'image', NULL, NULL),
('5f75a22695e8057c6', '1', 1, 'text/plain', 59243, NULL, '2020-10-01 09:32:22', 'Attachment', 'DAMUploadDir', NULL, 0, NULL, NULL, NULL, 'Asset', '1', 'file', '/tmp/5f75a22695eaagAzM6N', 'd688e77ac59f3298ec2cf18f4571f9e0'),
('5f75a2549e2bc2763', '1', 1, 'text/plain', 59243, NULL, '2020-10-01 09:33:08', 'Attachment', 'DAMUploadDir', NULL, 0, NULL, NULL, NULL, 'Asset', '1', 'file', '/tmp/5f75a2549e2d18DioCF', 'd688e77ac59f3298ec2cf18f4571f9e0'),
('5f75a26f94e78a657', '1.jpg', 0, 'image/jpeg', 59243, NULL, '2020-10-01 09:33:35', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Asset', '1', 'file', '/tmp/5f75a26f94e8eq2Vybw', 'd688e77ac59f3298ec2cf18f4571f9e0'),
('5f75a2fc1aa28778f', '1.jpg', 0, 'image/jpeg', 59243, NULL, '2020-10-01 09:35:56', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/ativy', 0, NULL, NULL, '5f75a3050b22d418c', 'Asset', '1', 'file', NULL, 'd688e77ac59f3298ec2cf18f4571f9e0'),
('5f75a34ca6acffb73', '2.jpg', 0, 'image/jpeg', 323597, NULL, '2020-10-01 09:37:16', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/lu445', 0, NULL, NULL, '5f75a3605cc30e8dc', 'Asset', '1', 'file', NULL, '583a2e0b50c5cc3850de653529d2f484'),
('5f75a36cc19e83f46', '3.jpg', 0, 'image/jpeg', 38227, NULL, '2020-10-01 09:37:48', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/0xefr', 0, NULL, NULL, '5f75a377a0d34c16c', 'Asset', '1', 'file', NULL, '292305399fd0e22ba451c39f73cb7491'),
('5f75a39f3ad950d6f', '4.jpg', 0, 'image/jpeg', 11918, NULL, '2020-10-01 09:38:39', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/7q0xd', 0, NULL, NULL, '5f75a3a938c6ac431', 'Asset', '1', 'file', NULL, 'c0d66f72f1089dd7ff054090a41a6ee7'),
('5f75a430b5df63b3d', '5.jpg', 0, 'image/jpeg', 8943, NULL, '2020-10-01 09:41:04', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/sy0dm', 0, NULL, NULL, '5f75a43b83e5efcb7', 'Asset', '1', 'file', NULL, '6fdf6c2d5bb03b86ca5c331adf9e74ec'),
('5f75a4448776f8dc9', '6.jpg', 0, 'image/jpeg', 35516, NULL, '2020-10-01 09:41:24', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/zvh3o', 0, NULL, NULL, '5f75a44ce8e89c5df', 'Asset', '1', 'file', NULL, '4b18935f37b4ef45a1736ce1f0cb333f'),
('5f75a458890284911', '7.jpg', 0, 'image/jpeg', 83134, NULL, '2020-10-01 09:41:44', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/x96er', 0, NULL, NULL, '5f75a46269a80a836', 'Asset', '1', 'file', NULL, '4e179ac636a8f0d72614c7f78928822b'),
('5f75a4bcbc8432490', '8.jpg', 0, 'image/jpeg', 37226, NULL, '2020-10-01 09:43:24', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/avf4v', 0, NULL, NULL, '5f75a4c7e8435c65d', 'Asset', '1', 'file', NULL, 'c2b005832b991bf75aa2d3638bcd3902'),
('5f75a4d71f66f7630', '9.png', 0, 'image/png', 100222, NULL, '2020-10-01 09:43:51', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/er1kw', 0, NULL, NULL, '5f75a4e49314109ce', 'Asset', '1', 'file', NULL, '9e40e02a1ab55c8accbcb6d02043adcf'),
('5f75a4eb98c61db58', '10.png', 0, 'image/png', 94458, NULL, '2020-10-01 09:44:11', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/i9bw5', 0, NULL, NULL, '5f75a4f59f8747668', 'Asset', '1', 'file', NULL, '83ea48f99127b5790629178bd1a75c83'),
('5f75a5380c2b5aa61', 'canon_eos_1100d_18_55_kit_images_3635339.jpg', 0, 'image/jpeg', 65685, NULL, '2020-10-01 09:45:28', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/exesq', 0, NULL, NULL, '5f75a54239b1e04d2', 'Asset', '1', 'file', NULL, 'a60f20dde7e0378a92b3385536f41c13'),
('5f75a54e48b12d2fe', '1111493_0.jpg', 0, 'image/jpeg', 31464, NULL, '2020-10-01 09:45:50', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/dggei', 0, NULL, NULL, '5f75a557d1f002493', 'Asset', '1', 'file', NULL, '9f340e2c4b194a63b16a0e1dad75ad85'),
('5f75a5608d2c3430e', '365411.jpg', 0, 'image/jpeg', 47102, NULL, '2020-10-01 09:46:08', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/tit7c', 0, NULL, NULL, '5f75a56d46299d70a', 'Asset', '1', 'file', NULL, '8656d2e3e67c9e127d75b1a5a8453a91'),
('5f75a5d3c93abd30a', 'Canon EOS 5D Mark III.jpg', 1, 'image/jpeg', 631252, NULL, '2020-10-01 09:48:03', 'Attachment', 'DAMUploadDir', NULL, 0, NULL, NULL, NULL, 'Asset', '1', 'file', '/tmp/5f75a5d3c93c3el3ioe', '6b7f91c06f516dc07b24ea047f3a45ee'),
('5f75a5e41cad5b619', 'Canon EOS 5D Mark III_1.jpg', 1, 'image/jpeg', 15850, NULL, '2020-10-01 09:48:20', 'Attachment', 'DAMUploadDir', NULL, 0, NULL, NULL, NULL, 'Asset', '1', 'file', '/tmp/5f75a5e41caed3Fqm7W', 'd987430c7304a67c66bb3219fdf17c54'),
('5f75a5fc8987d4aa2', 'Canon EOS 5D Mark III.jpg', 1, 'image/jpeg', 631252, NULL, '2020-10-01 09:48:44', 'Attachment', 'DAMUploadDir', NULL, 0, NULL, NULL, NULL, 'Asset', '1', 'file', '/tmp/5f75a5fc898934YGJdx', '6b7f91c06f516dc07b24ea047f3a45ee'),
('5f75a6084d0c49f48', 'Canon EOS 5D Mark III.jpg', 0, 'image/jpeg', 631252, NULL, '2020-10-01 09:48:56', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/xrhpo', 0, NULL, NULL, '5f75a615755ec81df', 'Asset', '1', 'file', NULL, '6b7f91c06f516dc07b24ea047f3a45ee'),
('5f75a631d4ea3f9f6', 'Canon EOS 5D Mark III_2.png', 0, 'image/png', 324404, NULL, '2020-10-01 09:49:37', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/8dbuh', 0, NULL, NULL, '5f75a63bbdfdd0cc2', 'Asset', '1', 'file', NULL, 'bda6c6ce04f313c6af8dce6aefdb27a6'),
('5f75a643219c1d467', 'Canon EOS 5D Mark III_1.jpg', 0, 'image/jpeg', 15850, NULL, '2020-10-01 09:49:55', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/h8e2m', 0, NULL, NULL, '5f75a64e769dd37c1', 'Asset', '1', 'file', NULL, 'd987430c7304a67c66bb3219fdf17c54'),
('5f75a67aada9ded1d', 'CAENBOO-6D-70D-60D-Camera-Bag-Soft-Silicone-Rubber-Protective-Camera-Body-Cover-Case-Skin-for.jpg', 0, 'image/jpeg', 100324, NULL, '2020-10-01 09:50:50', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/ffghs', 0, NULL, NULL, '5f75a685d89ef7df9', 'Asset', '1', 'file', NULL, 'abc3e1609d8c5d38d110a80148445a61'),
('5f75a68e0f1ac294a', 'High-Quality-SLR-Camera-Bag-for-Canon-EOS-5D-Mark-III-Lightweight-Camera-Bag-Case-Cover.jpg', 0, 'image/jpeg', 58614, NULL, '2020-10-01 09:51:10', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/4x3qi', 0, NULL, NULL, '5f75a69a8849c2bbe', 'Asset', '1', 'file', NULL, '241afd164393969f6894e008fd5248ea'),
('5f75a6d48444aca15', 'Canon EOS 5D Mark IV 24-105mm.jpg', 0, 'image/jpeg', 382361, NULL, '2020-10-01 09:52:20', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/z6a3x', 0, NULL, NULL, '5f75a6dee4ac8adf5', 'Asset', '1', 'file', NULL, 'dfb56f344eb87c08db9baf8052f9c5e7'),
('5f75a6e66b2776860', 'Canon EOS 5D Mark IV 24-105mm_1.jpg', 0, 'image/jpeg', 139566, NULL, '2020-10-01 09:52:38', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/1c7pd', 0, NULL, NULL, '5f75a6f0dee206198', 'Asset', '1', 'file', NULL, '70c28f7a5b0e6aa04388db76d4d43d11'),
('5f75a6f925975b6b1', 'Canon EOS 5D Mark IV 24-105mm_2.jpg', 0, 'image/jpeg', 332680, NULL, '2020-10-01 09:52:57', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/b0w36', 0, NULL, NULL, '5f75a7056e8b6953a', 'Asset', '1', 'file', NULL, '2f01071b7560f20c5531970c9b201341'),
('5f75a7437572382c4', 'philips_46pfl8007k_.jpg', 0, 'image/jpeg', 9529, NULL, '2020-10-01 09:54:11', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/nj9uf', 0, NULL, NULL, '5f75a74de1719d808', 'Asset', '1', 'file', NULL, '7a08035b6e2b90054edb6b0fe1280ed9'),
('5f75a755ac4ed5c99', 'Philips-46PFL8007K-12-2-large.jpg', 0, 'image/jpeg', 103226, NULL, '2020-10-01 09:54:29', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/vv07e', 0, NULL, NULL, '5f75a75fd7bb693c2', 'Asset', '1', 'file', NULL, 'f7202d7cb481da7489c50a98cfb65c2b'),
('5f75a766d4d031a4c', 'U0040458_big.jpg', 0, 'image/jpeg', 91204, NULL, '2020-10-01 09:54:46', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/bllq9', 0, NULL, NULL, '5f75a76fe82a4304b', 'Asset', '1', 'file', NULL, 'be5d335ee8b41c95eade73b315df2ec7'),
('5f75a7770db9fe746', 'Philips-46PFL8007K-12-1-large.jpg', 0, 'image/jpeg', 206560, NULL, '2020-10-01 09:55:03', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/6pcu1', 0, NULL, NULL, '5f75a78031d0e5b93', 'Asset', '1', 'file', NULL, 'be908e798e2db306135c950502f3a466'),
('5f75a86f71eb82c77', '2018-11-09_10-13-35.jpg', 0, 'image/jpeg', 193538, NULL, '2020-10-01 09:59:11', 'Attachment', NULL, NULL, 0, NULL, NULL, NULL, 'Asset', '1', 'file', '/tmp/5f75a86f71ecdHg490K', '7c129701464f533e976a9bae53a84aae'),
('5f75a882d560f4973', '2018-11-09_10-13-35.jpg', 0, 'image/jpeg', 193538, NULL, '2020-10-01 09:59:30', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/pqwc5', 0, NULL, NULL, '5f75a8a12820880b4', 'Asset', '1', 'file', NULL, '7c129701464f533e976a9bae53a84aae'),
('5f75a88a12eee8c48', 'LED5500_NYCskyline_Frt_2.jpg', 0, 'image/jpeg', 25372, NULL, '2020-10-01 09:59:38', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/0hiok', 0, NULL, NULL, '5f75a8a1279629d25', 'Asset', '1', 'file', NULL, '7d645cd540455bf886c5c8dd3efc9ed2'),
('5f75a8ca99c339b79', '688720_0.jpg', 0, 'image/jpeg', 23910, NULL, '2020-10-01 10:00:42', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/lyh2m', 0, NULL, NULL, '5f75a8d40d5627635', 'Asset', '1', 'file', NULL, '8a872f2befd0f4098908420f520977fd'),
('5f75a8dc9309a1fc2', '71fVj87ziQL._SL1500_.jpg', 0, 'image/jpeg', 234826, NULL, '2020-10-01 10:01:00', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/xusob', 0, NULL, NULL, '5f75a8e82157d66cf', 'Asset', '1', 'file', NULL, 'c6df10e17ee6c849fe167e5807e23422'),
('5f75a93d1919f38de', '57217833_images_7953489093.jpg', 0, 'image/jpeg', 13964, NULL, '2020-10-01 10:02:37', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/0pjnq', 0, NULL, NULL, '5f75a945b56e69fb0', 'Asset', '1', 'file', NULL, '217cdfc2408e55b1e6b30a2c902c788a'),
('5f75a9527609717bd', '57217833_images_7953489303.jpg', 0, 'image/jpeg', 79019, NULL, '2020-10-01 10:02:58', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/x4u4g', 0, NULL, NULL, '5f75a95fb9190a1e4', 'Asset', '1', 'file', NULL, '41661d04ca269789a0281da09185153e'),
('5f75a9913b6b2f8c9', '3D-apple-iphone-x-color-model_Z.jpg', 0, 'image/jpeg', 562734, NULL, '2020-10-01 10:04:01', 'Attachment', 'DAMUploadDir', 'leu4h/xy7m6/nx2yg/4fgv7/tbtaw/v8pix', 0, NULL, NULL, '5f75a99993608e33a', 'Asset', '1', 'file', NULL, '2689780e87d45f54455e6c2b28f531ba');

-- --------------------------------------------------------

--
-- Структура таблицы `attribute`
--
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
                             `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             `deleted` tinyint(1) DEFAULT '0',
                             `created_at` datetime DEFAULT NULL,
                             `modified_at` datetime DEFAULT NULL,
                             `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'text',
                             `type_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                             `is_system` tinyint(1) NOT NULL DEFAULT '0',
                             `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `attribute_group_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             `type_value_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                             `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             `type_value_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                             `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `sort_order` int(11) DEFAULT NULL,
                             `is_multilang` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `deleted`, `created_at`, `modified_at`, `type`, `type_value`, `is_system`, `created_by_id`, `modified_by_id`, `attribute_group_id`, `name_en_us`, `type_value_en_us`, `name_de_de`, `type_value_de_de`, `code`, `owner_user_id`, `assigned_user_id`, `sort_order`, `is_multilang`) VALUES
('59af94a4915c4b061', 'Maximum scan size', 0, '2017-09-06 06:24:36', '2018-08-07 06:24:44', 'float', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Maximum scan size', NULL, 'Maximum scan size', NULL, 'maximum_scan_size', NULL, NULL, 6, 0),
('59af94b0b8671011f', 'Color scanning', 0, '2017-09-06 06:24:48', '2018-08-07 06:24:31', 'bool', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Color scanning', NULL, 'Color scanning', NULL, 'color_scanning', NULL, NULL, 7, 0),
('59af9596ccdeaffc0', 'Maximum print size', 0, '2017-09-06 06:28:38', '2018-08-07 06:22:54', 'enum', '[\"210 x 1219 mm\",\"215 x 355 mm\",\"216 x 406.4 mm\",\"216 x 432 mm\",\"297 x 432 mm\",\"A3 (297 x 420 mm)\",\"A4 (210 x 297 mm)\",\"A4 \\/ Letter (216 x 297 mm)\",\"DIN A3 (310 x 437 mm)\",\"Legal (216 x 356 mm)\"]', 0, '1', '1', '59a81d3e3f4220080', 'Maximum print size', NULL, 'Maximum print size', NULL, 'maximum_print_size', NULL, NULL, 8, 0),
('59af95ec43c8ba01b', 'Total megapixels', 0, '2017-09-06 06:30:04', '2019-08-28 05:40:41', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Total megapixels', NULL, 'Total megapixels', NULL, 'total_megapixels', '1', NULL, 9, 0),
('59af95f809c136524', 'Optical zoom', 0, '2017-09-06 06:30:16', '2018-08-07 06:21:23', 'int', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Optical zoom', NULL, 'Optical zoom', NULL, 'optical_zoom', NULL, NULL, 10, 0),
('59af9604308c2e8de', 'Image stabilizer', 0, '2017-09-06 06:30:28', '2018-08-07 06:21:06', 'bool', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Image stabilizer', NULL, 'Image stabilizer', NULL, 'image_stabilizer', NULL, NULL, 11, 0),
('59af9653e337b5aed', 'Camera type', 0, '2017-09-06 06:31:47', '2019-08-28 05:37:23', 'enum', '[\"\",\"Bridge\",\"Compact\",\"MILC\",\"MILC Body\",\"SLR Body\",\"SLR Kit\"]', 0, '1', '1', '59a81d3e3f4220080', 'Camera type', NULL, 'Camera type', NULL, 'camera_type', '1', NULL, 12, 0),
('59af9676e3a057991', 'Total Harmonic Distortion (THD)', 0, '2017-09-06 06:32:22', '2018-08-07 06:19:44', 'int', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Total Harmonic Distortion (THD)', NULL, 'Total Harmonic Distortion (THD)', NULL, 'total_harmonic_distortion', NULL, NULL, 13, 0),
('59af968260dcb66a2', 'Signal-to-Noise Ratio (SNR)', 0, '2017-09-06 06:32:34', '2018-08-07 06:19:17', 'int', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Signal-to-Noise Ratio (SNR)', NULL, 'Signal-to-Noise Ratio (SNR)', NULL, 'signal_to_noise_ratio', NULL, NULL, 14, 0),
('59af96a550f14e257', 'Headphone connectivity', 0, '2017-09-06 06:33:09', '2018-08-07 06:18:08', 'enum', '[\"6.3mm\"]', 0, '1', '1', '59a81d3e3f4220080', 'Headphone connectivity', NULL, 'Headphone connectivity', NULL, 'headphone_connectivity', NULL, NULL, 15, 0),
('59af96fe0a24a4ce0', 'Maximum video resolution', 0, '2017-09-06 06:34:38', '2018-08-07 06:17:50', 'enum', '[\"\",\"1280 x 1024\",\"1280 x 720\",\"1280 x 960\",\"1600 x 1200\",\"1920 x 1080\",\"2560 x 1920\",\"2560 x 2048\",\"320 x 240\",\"640 x 480\",\"800 x 600\"]', 0, '1', '1', '59a81d3e3f4220080', 'Maximum video resolution', NULL, 'Maximum video resolution', NULL, 'maximum_video_resolution', NULL, NULL, 16, 0),
('59af970a496c620f7', 'Maximum frame rate', 0, '2017-09-06 06:34:50', '2018-08-07 06:17:35', 'float', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Maximum frame rate', NULL, 'Maximum frame rate', NULL, 'maximum_frame_rate', NULL, NULL, 17, 0),
('59af9742e13e33219', 'All-in-one functions', 0, '2017-09-06 06:35:46', '2018-08-07 06:17:10', 'multiEnum', '[\"copy\",\"fax\",\"N\",\"print\",\"scan\"]', 0, '1', '1', '59a81d3e3f4220080', 'All-in-one functions', NULL, 'All-in-one functions', NULL, 'all_in_one_functions', NULL, NULL, 18, 0),
('59af9752c3df9518b', 'Display sRGB', 0, '2017-09-06 06:36:02', '2018-08-07 06:16:50', 'bool', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Display sRGB', NULL, 'Display sRGB', NULL, 'display_srgb', NULL, NULL, 19, 0),
('59af97763aae4daef', 'Effective viewing area', 0, '2017-09-06 06:36:38', '2018-08-07 06:16:04', 'float', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Effective viewing area', NULL, 'Effective viewing area', NULL, 'effective_viewing_area', NULL, NULL, 20, 0),
('59af97877a951c8ce', 'Model name', 0, '2017-09-06 06:36:55', '2018-08-07 06:15:51', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Model name', NULL, 'Model name', NULL, 'model_name', NULL, NULL, 22, 0),
('59af97941e37fd6b2', 'Maximum image resolution', 0, '2017-09-06 06:37:08', '2018-08-07 06:15:37', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Maximum image resolution', NULL, 'Maximum image resolution', NULL, 'maximum_image_resolution', NULL, NULL, 23, 0),
('59af979e5c1a7cd31', 'Still image resolution(s)', 0, '2017-09-06 06:37:18', '2018-08-07 06:15:15', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Still image resolution(s)', NULL, 'Still image resolution(s)', NULL, 'still_image_resolution', NULL, NULL, 24, 0),
('59af97a95618763b6', 'Supported aspect ratios', 0, '2017-09-06 06:37:29', '2018-08-07 05:58:21', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Supported aspect ratios', NULL, 'Supported aspect ratios', NULL, 'supported_aspect_ratios', NULL, NULL, 25, 0),
('59af97b2348a0ec9e', 'Supported image format', 0, '2017-09-06 06:37:38', '2018-08-07 05:58:00', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Supported image format', NULL, 'Supported image format', NULL, 'supported_image_format', NULL, NULL, 26, 0),
('59af97baa662562f5', 'Lens mount interface', 0, '2017-09-06 06:37:46', '2018-08-07 05:57:40', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Lens mount interface', NULL, 'Lens mount interface', NULL, 'lens_mount_interface', NULL, NULL, 27, 0),
('59af97c31b50de66c', 'Focus', 0, '2017-09-06 06:37:55', '2018-08-07 05:57:27', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Focus', NULL, 'Focus', NULL, 'focus', NULL, NULL, 28, 0),
('59af97cb9253aecee', 'Focus adjustment', 0, '2017-09-06 06:38:03', '2018-08-07 05:57:16', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Focus adjustment', NULL, 'Focus adjustment', NULL, 'focus_adjustment', NULL, NULL, 29, 0),
('59af97d3795b75f07', 'Auto focus modes', 0, '2017-09-06 06:38:11', '2018-08-07 05:57:02', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Auto focus modes', NULL, 'Auto focus modes', NULL, 'auto_focus_modes', NULL, NULL, 30, 0),
('59af97de8c0a4e121', 'Auto focus points', 0, '2017-09-06 06:38:22', '2018-08-07 05:56:47', 'int', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Auto focus points', NULL, 'Auto focus points', NULL, 'auto_focus_points', NULL, NULL, 31, 0),
('59af97e8832b39535', 'Auto focus lock', 0, '2017-09-06 06:38:32', '2018-08-07 05:56:27', 'bool', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Auto focus lock', NULL, 'Auto focus lock', NULL, 'auto_focus_lock', NULL, NULL, 32, 0),
('59af97f1b9358224f', 'Auto focus beam', 0, '2017-09-06 06:38:41', '2018-08-07 05:56:12', 'bool', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Auto focus beam', NULL, 'Auto focus beam', NULL, 'auto_focus_beam', NULL, NULL, 33, 0),
('59af97fdb6738b14f', 'Iso sensitivity', 0, '2017-09-06 06:38:53', '2018-08-07 05:55:54', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Iso sensitivity', NULL, 'Iso sensitivity', NULL, 'iso_sensitivity', NULL, NULL, 34, 0),
('59af98062e3d1cba2', 'Light exposure modes', 0, '2017-09-06 06:39:02', '2018-08-07 05:55:42', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Light exposure modes', NULL, 'Light exposure modes', NULL, 'light_exposure_modes', NULL, NULL, 35, 0),
('59af980da501d1de5', 'Light exposure corrections', 0, '2017-09-06 06:39:09', '2018-08-07 05:55:21', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Light exposure corrections', NULL, 'Light exposure corrections', NULL, 'light_exposure_corrections', NULL, NULL, 36, 0),
('59af9815efd1a780d', 'Light metering', 0, '2017-09-06 06:39:17', '2018-08-07 05:53:35', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Light metering', NULL, 'Light metering', NULL, 'light_metering', NULL, NULL, 37, 0),
('59af98286e2a9699f', 'Auto exposure', 0, '2017-09-06 06:39:36', '2018-08-07 05:53:22', 'bool', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Auto exposure', NULL, 'Auto exposure', NULL, 'auto_exposure', NULL, NULL, 38, 0),
('59af98341c1ef6e9c', 'ISO sensitivity (max)', 0, '2017-09-06 06:39:48', '2018-08-07 05:53:08', 'int', NULL, 0, '1', '1', '59a81d3e3f4220080', 'ISO sensitivity (max)', NULL, 'ISO sensitivity (max)', NULL, 'sensitivity_max', NULL, NULL, 39, 0),
('59af984349a116a24', 'ISO sensitivity (min)', 0, '2017-09-06 06:40:03', '2018-08-07 05:52:48', 'int', NULL, 0, '1', '1', '59a81d3e3f4220080', 'ISO sensitivity (min)', NULL, 'ISO sensitivity (min)', NULL, 'sensitivity_min', NULL, NULL, 40, 0),
('59af98af10649a2a0', 'T-Shirt style', 0, '2017-09-06 06:41:51', '2018-08-07 05:52:29', 'multiEnum', '[\"Turtleneck\",\"V neck\",\"Sport wear\",\"Crewneck\",\"Long sleeve\",\"Short sleeve\"]', 0, '1', '1', '59a81d5c78bd745fa', 'T-Shirt style', NULL, 'T-Shirt style', NULL, 't_shirt_style', NULL, NULL, 0, 0),
('59af99104a1bca5b7', 'Container material', 0, '2017-09-06 06:43:28', '2018-08-07 05:52:11', 'enum', '[\"Earthenware\",\"Porcelain\",\"Ceramic\"]', 0, '1', '1', '59a81d811c495304c', 'Container material', NULL, 'Container material', NULL, 'container_material', NULL, NULL, 0, 0),
('59af994e3af75d99f', 'T-Shirt material', 0, '2017-09-06 06:44:30', '2019-10-11 10:59:55', 'enum', '[\"100% Cotton\",\"Polyester\",\"Poly\\/Cotton\",\"Wool\",\"Organic Cotton\"]', 0, '1', '1', '59a81d811c495304c', 'T-Shirt material', '[\"100% Cotton\",\"Polyester\",\"Poly\\/Cotton\",\"Wool\",\"Organic Cotton\"]', 'T-Shirt material', '[\"100% Baumwolle\",\"Polyester\",\"Poly \\/ Baumwolle\",\"Wolle\",\"Bio-Baumwolle\"]', 't_shirt_material', '5bbaf1daea9ee8a6b', '5bbaf1daea9ee8a6b', 0, 1),
('59af9a2b5860a9910', 'Color', 0, '2017-09-06 06:48:11', '2019-10-11 11:17:16', 'enum', '[\"White\",\"Black\",\"Silver\",\"Grey\",\"Space Gray\",\"Blue\",\"Purple\",\"Orange\"]', 0, '1', '1', '59a81d3e3f4220080', 'Color', '[\"White\",\"Black\",\"Silver\",\"Grey\",\"Space Gray\",\"Blue\",\"Purple\",\"Orange\"]', 'Color', '[\"Weiß\",\"Schwarz\",\"Silber\",\"Grau\",\"Leerraumgrau\",\"Blau\",\"Lila\",\"Orange\"]', 'color', '1', '1', 4, 1),
('59af9a775b18e6e8a', 'Secondary color', 0, '2017-09-06 06:49:27', '2019-10-11 11:01:59', 'enum', '[\"White\",\"Black\",\"Grey\",\"Yellow\",\"Orange\",\"Red\",\"Green\",\"Blue\",\"Purple\"]', 0, '1', '1', '59a81d98d5a1a2d65', 'Secondary color', '[\"White\",\"Black\",\"Grey\",\"Yellow\",\"Orange\",\"Red\",\"Green\",\"Blue\",\"Purple\"]', 'Secondary color', '[\"Weiß\",\"Schwarz\",\"Grau\",\"Gelb\",\"Orange\",\"Rot\",\"Grün\",\"Blau\",\"Lila\"]', 'secondary_color', '1', '1', 0, 1),
('59af9ac4994425b18', 'Clothing size', 0, '2017-09-06 06:50:44', '2018-08-07 05:43:20', 'enum', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"XXL\"]', 0, '1', '1', '59a81da8a1844d9ac', 'Clothing size', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"XXL\"]', 'Clothing size', '[\"XS\",\"S\",\"M\",\"L\",\"XL\",\"XXL\"]', 'clothing_size', NULL, NULL, 0, 1),
('59afa1e6473c5052e', 'Release date', 0, '2017-09-06 07:21:10', '2018-08-07 05:42:33', 'date', NULL, 0, '1', '1', '59afa1e3c36727079', 'Release date', NULL, 'Release date', NULL, 'release_date', NULL, NULL, 0, 0),
('59afa5a73160cfceb', 'Response time (ms)', 0, '2017-09-06 07:37:11', '2018-08-07 05:42:17', 'int', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Response time (ms)', NULL, 'Response time (ms)', NULL, 'response_time', NULL, NULL, 41, 0),
('59b0e7e45986c95ed', 'Hard Drive Size', 0, '2017-09-07 06:32:04', '2018-08-07 05:42:00', 'enum', '[\"\",\"2\",\"4\",\"8\",\"16\",\"32\"]', 0, '1', '1', '59a81d3e3f4220080', 'Hard Drive Size', '[\"\",\"2\",\"4\",\"8\",\"16\",\"32\"]', 'Hard Drive Size', '[\"\",\"2\",\"4\",\"8\",\"16\",\"32\"]', 'hard_drive_size', NULL, NULL, 42, 1),
('59b8d28e1fc5ea814', 'Sensor type', 0, '2017-09-13 06:39:10', '2018-08-07 05:40:47', 'enum', '[\"\",\"CCD\",\"CMOS\"]', 0, '1', '1', '59a81d3e3f4220080', 'Sensor type', '[\"\",\"CCD\",\"CMOS\"]', 'Sensor type', '[\"\",\"CCD\",\"CMOS\"]', 'sensor_type', NULL, NULL, 43, 1),
('59b8d31e3421a3e70', 'Power requirements', 0, '2017-09-13 06:41:34', '2018-08-07 05:40:24', 'text', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Power requirements', NULL, 'Power requirements', NULL, 'power_requirements', NULL, NULL, 44, 1),
('59fb0c27979555659', 'Display', 0, '2017-11-02 12:14:31', '2018-08-07 05:37:57', 'text', NULL, 0, '1', '1', NULL, 'Display', NULL, 'Display', NULL, 'display', NULL, NULL, 0, 0),
('59fb0c6e61011344a', 'Splash, Water, and Dust Resistant', 0, '2017-11-02 12:15:42', '2018-08-07 05:35:31', 'bool', NULL, 0, '1', '1', '59a81d3e3f4220080', 'Splash, Water, and Dust Resistant', NULL, 'Splash, Water, and Dust Resistant', NULL, 'splash', NULL, NULL, 45, 0),
('59fb0ccd333d23a8c', 'Chip', 0, '2017-11-02 12:17:17', '2019-10-18 06:04:58', 'enum', '[\"A11 Bionic chip with Neural Engine\",\"A12 Bionic chip with second-generation Neural Engine\",\"A13 Bionic chip with third-generation Neural Engine\"]', 0, '1', '1', '59a81da8a1844d9ac', 'Chip', NULL, 'Chip', NULL, 'chip', '1', '1', 0, 0),
('59fb1561962e5d354', 'Material', 0, '2017-11-02 12:53:53', '2018-08-07 05:34:18', 'text', NULL, 0, '1', '1', '59a81dc553f7864b2', 'Material', NULL, 'Material', NULL, 'material', NULL, NULL, 0, 0),
('5be548d57b74b3154', 'Alternative Description', 0, '2018-11-09 08:44:05', '2018-11-16 09:33:06', 'wysiwyg', NULL, 0, '1', '1', '59afa1e3c36727079', 'Alternative Description', NULL, 'Alternative Beschreibung', NULL, 'alternative_description', '1', '1', 0, 1),
('5ccac8c86f70fdfca', 'Display diagonal', 0, '2019-05-02 10:39:04', '2019-05-02 10:44:55', 'unit', '[\"Length\"]', 0, '1', '1', '59a81d3e3f4220080', 'Display diagonal', NULL, 'Display diagonal', NULL, 'display_diagonal', '1', '1', 3, 0),
('5ccacdf261f84e415', 'Guaranty', 0, '2019-05-02 11:01:06', '2019-05-02 11:02:14', 'unit', '[\"Long intervals of time\"]', 0, '1', '1', '59afa1e3c36727079', 'Guaranty', NULL, 'Garantie', NULL, 'guaranty', '1', '1', 0, 0),
('5ccae1b3e6f8a4e69', 'Height', 0, '2019-05-02 12:25:23', '2019-05-02 12:25:23', 'unit', '[\"Length\"]', 0, '1', NULL, '59a81d3e3f4220080', 'Height', NULL, 'Höhe', NULL, 'height', '1', '1', 0, 0),
('5ccae20aa0a45800c', 'Width', 0, '2019-05-02 12:26:50', '2019-05-02 12:26:50', 'unit', '[\"Length\"]', 0, '1', NULL, '59a81d3e3f4220080', 'Width', NULL, 'Breite', NULL, 'width', '1', '1', 1, 0),
('5ccbe2234e379b94d', 'Weight', 0, '2019-05-03 06:39:31', '2019-05-03 06:39:31', 'unit', '[\"Mass\"]', 0, '1', NULL, '59a81d3e3f4220080', 'Weight', NULL, 'Gewicht', NULL, 'weight', '1', '1', 2, 0),
('5da06321d29c43dc2', 'Case color', 0, '2019-10-11 11:10:25', '2019-10-11 11:14:56', 'multiEnum', '[\"White\",\"Black\",\"Gray\",\"Silver\",\"Red\",\"Yellow\",\"Space Gray\",\"Dark Green\",\"Light Blue\"]', 0, '1', '1', '59a81d3e3f4220080', 'Case color', '[\"White\",\"Black\",\"Gray\",\"Silver\",\"Red\",\"Yellow\",\"Space Gray\",\"Dark Green\",\"Light Blue\"]', 'Case color', '[\"Weiß\",\"Schwarz\",\"Grau\",\"Silber\",\"Rot\",\"Gelb\",\"Leerraumgrau\",\"Dunkelgrün\",\"Hellblau\"]', 'case_color_me', '1', '1', 46, 1),
('5da957f710ec09052', 'Authentication', 0, '2019-10-18 06:13:11', '2019-10-18 06:13:49', 'enum', '[\"Touch ID\",\"Face ID\",\"Touch ID and Face ID\"]', 0, '1', '1', '59a81d3e3f4220080', 'Authentication', NULL, 'Authentication', NULL, 'authentication', '1', '1', 5, 0),
('5da95efe7051f42de', 'Capacity', 0, '2019-10-18 06:43:10', '2019-10-18 08:49:08', 'multiEnum', '[\"32GB\",\"64GB\",\"128GB\",\"256GB\"]', 0, '1', '1', '59a81d3e3f4220080', 'Capacity', NULL, 'Kapazität', NULL, 'capacity', '1', '1', 21, 0),
('5dd25b9263d143109', 'Connectivity and Features', 0, '2019-11-18 08:51:30', '2019-11-18 12:42:26', 'multiEnum', '[\"Lightning\",\"Bluetooth\",\"3G\",\"4G\",\"NFC\",\"Wi-Fi\",\"Smart TV\"]', 0, '1', '1', '59a81d3e3f4220080', 'Connectivity and Features', '[\"Lightning\",\"Bluetooth\",\"3G\",\"4G\",\"NFC\",\"Wi-Fi\",\"Smart TV\"]', 'Konnektivität und Funktionen', '[\"Blitz\",\"Bluetooth\",\"3G\",\"4G\",\"NFC\",\"W-lan\",\"Smart-TV\"]', 'connectivity', '1', '1', 47, 1),
('5dd25e12a6456e268', 'Particularities', 0, '2019-11-18 09:02:10', '2019-11-18 09:02:10', 'multiEnum', '[\"Face recognition\",\"Touchscreen\",\"Autofocus\"]', 0, '1', NULL, '59a81d5c78bd745fa', 'Particularities', '[\"Face recognition\",\"Touchscreen\",\"Autofocus\"]', 'Besonderheiten', '[\"Gesichtserkennung\",\"Sensorbildschirm\",\"Autofokus\"]', 'particularities', '1', '1', 48, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `attribute_group`
--
DROP TABLE IF EXISTS `attribute_group`;
CREATE TABLE `attribute_group` (
                                   `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                                   `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `deleted` tinyint(1) DEFAULT '0',
                                   `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                   `is_active` tinyint(1) NOT NULL DEFAULT '1',
                                   `created_at` datetime DEFAULT NULL,
                                   `modified_at` datetime DEFAULT NULL,
                                   `sort_order` int(11) DEFAULT '0',
                                   `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                   `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                   `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `description_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                   `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `description_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                   `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                   `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `attribute_group`
--

INSERT INTO `attribute_group` (`id`, `name`, `deleted`, `description`, `is_active`, `created_at`, `modified_at`, `sort_order`, `created_by_id`, `modified_by_id`, `name_en_us`, `description_en_us`, `name_de_de`, `description_de_de`, `code`, `owner_user_id`, `assigned_user_id`) VALUES
('59a81d3e3f4220080', 'Technical', 0, '', 1, '2017-08-31 14:29:18', '2019-10-11 11:16:27', 0, '1', '1', 'Technical', '', 'Technisch', '', 'technical', '1', '1'),
('59a81d5c78bd745fa', 'Design', 0, '', 1, '2017-08-31 14:29:48', '2018-08-07 06:46:50', 7, '1', '1', 'Design', '', 'Design', '', 'design', NULL, NULL),
('59a81d811c495304c', 'Manufacturing', 0, '', 1, '2017-08-31 14:30:25', '2018-11-15 13:57:46', 4, '1', '1', 'Manufacturing', '', 'Herstellung', '', 'manufacturing', NULL, NULL),
('59a81d98d5a1a2d65', 'Color', 0, '', 1, '2017-08-31 14:30:48', '2019-10-11 11:16:18', 1, '1', '1', 'Color', '', 'Farbe', '', 'color', '1', '1'),
('59a81da8a1844d9ac', 'Size', 0, '', 1, '2017-08-31 14:31:04', '2018-11-15 13:57:16', 6, '1', '1', 'Size', '', 'Größe', '', 'size', NULL, NULL),
('59a81dc553f7864b2', 'Other', 0, '', 1, '2017-08-31 14:31:33', '2018-11-15 13:57:04', 9, '1', '1', 'Other', '', 'Andere', '', 'other', NULL, NULL),
('59afa1e3c36727079', 'Marketing', 0, '', 1, '2017-09-06 07:21:07', '2018-08-07 06:39:56', 3, '1', '1', 'Marketing', '', 'Marketing', '', 'marketing', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
                         `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                         `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                         `deleted` tinyint(1) DEFAULT '0',
                         `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                         `is_active` tinyint(1) NOT NULL DEFAULT '0',
                         `created_at` datetime DEFAULT NULL,
                         `modified_at` datetime DEFAULT NULL,
                         `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                         `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                         `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `description_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                         `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `description_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                         `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                         `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `name`, `deleted`, `description`, `is_active`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `name_en_us`, `description_en_us`, `name_de_de`, `description_de_de`, `code`, `owner_user_id`, `assigned_user_id`) VALUES
('59a9044093a3b6e6b', '3GO', 0, '', 1, '2017-09-01 06:54:56', '2018-08-07 06:48:41', '1', '1', '3GO', '', '3GO', '', '3go', NULL, NULL),
('59a9044f95d9956f8', '3M', 0, '', 1, '2017-09-01 06:55:11', '2018-08-07 06:48:32', '1', '1', '3M', '', '3M', '', '3m', NULL, NULL),
('59a9045d1817c92b2', 'A4Tech', 0, '', 1, '2017-09-01 06:55:25', '2018-08-07 06:48:24', '1', '1', 'A4Tech', '', 'A4Tech', '', 'a4tech', NULL, NULL),
('59a90466ddbefe332', 'ASUS', 0, '', 1, '2017-09-01 06:55:34', '2018-08-07 06:48:15', '1', '1', 'ASUS', '', 'ASUS', '', 'asus', NULL, NULL),
('59a90471799ba7c36', 'Acer', 0, '', 1, '2017-09-01 06:55:45', '2018-08-07 06:48:08', '1', '1', 'Acer', '', 'Acer', '', 'acer', NULL, NULL),
('59a9047d5c52233e4', 'Canon', 0, '', 1, '2017-09-01 06:55:57', '2018-08-07 06:47:51', '1', '1', 'Canon', '', 'Canon', '', 'canon', NULL, NULL),
('59a90486d5f2602fb', 'Cisco', 0, '', 1, '2017-09-01 06:56:06', '2018-08-07 06:47:41', '1', '1', 'Cisco', '', 'Cisco', '', 'cisco', NULL, NULL),
('59a904910b2891944', 'Conceptronic', 0, '', 1, '2017-09-01 06:56:17', '2018-08-07 06:47:31', '1', '1', 'Conceptronic', '', 'Conceptronic', '', 'conceptronic', NULL, NULL),
('59a9049c8ca94f8e4', 'D-Link', 0, '', 1, '2017-09-01 06:56:28', '2018-08-07 06:47:22', '1', '1', 'D-Link', '', 'D-Link', '', 'd_link', NULL, NULL),
('59a904a55b3a15524', 'DELL', 0, '', 1, '2017-09-01 06:56:37', '2018-08-07 06:47:14', '1', '1', 'DELL', '', 'DELL', '', 'dell', NULL, NULL),
('59a904b41ee8444c6', 'Fujifilm', 0, '', 1, '2017-09-01 06:56:52', '2018-08-07 06:47:07', '1', '1', 'Fujifilm', '', 'Fujifilm', '', 'fujifilm', NULL, NULL),
('59a904be6b80d879a', 'Fujitsu', 0, '', 1, '2017-09-01 06:57:02', '2018-08-07 06:46:58', '1', '1', 'Fujitsu', '', 'Fujitsu', '', 'fujitsu', NULL, NULL),
('59a904cde1cb98bad', 'Gigabyte', 0, '', 1, '2017-09-01 06:57:17', '2018-08-07 06:46:50', '1', '1', 'Gigabyte', '', 'Gigabyte', '', 'gigabyte', NULL, NULL),
('59a904e08bddd179e', 'HP', 0, '', 1, '2017-09-01 06:57:36', '2018-08-07 06:46:39', '1', '1', 'HP', '', 'HP', '', 'hp', NULL, NULL),
('59a90512a63769e2a', 'IBM', 0, '', 1, '2017-09-01 06:58:26', '2018-08-07 06:46:31', '1', '1', 'IBM', '', 'IBM', '', 'ibm', NULL, NULL),
('59a90547735ab5680', 'ION Audio', 0, '', 1, '2017-09-01 06:59:19', '2018-08-07 06:46:22', '1', '1', 'ION Audio', '', 'ION Audio', '', 'ion_audio', NULL, NULL),
('59a905df639eb70ba', 'ION', 0, '', 1, '2017-09-01 07:01:51', '2018-08-07 06:46:11', '1', '1', 'ION', '', 'ION', '', 'ion', NULL, NULL),
('59a905fad3e538957', 'Kodak', 0, '', 1, '2017-09-01 07:02:18', '2018-08-07 06:46:04', '1', '1', 'Kodak', '', 'Kodak', '', 'kodak', NULL, NULL),
('59a906074b664ce7f', 'Kyocera', 0, '', 1, '2017-09-01 07:02:31', '2018-08-07 06:45:55', '1', '1', 'Kyocera', '', 'Kyocera', '', 'kyocera', NULL, NULL),
('59a90610f31f607c5', 'LG', 0, '', 1, '2017-09-01 07:02:40', '2018-08-07 06:45:45', '1', '1', 'LG', '', 'LG', '', 'lg', NULL, NULL),
('59a90653cc098d739', 'Lenovo', 0, '', 1, '2017-09-01 07:03:47', '2018-08-07 06:45:38', '1', '1', 'Lenovo', '', 'Lenovo', '', 'lenovo', NULL, NULL),
('59a9065e9a31b7e8d', 'Logitech', 0, '', 1, '2017-09-01 07:03:58', '2018-08-07 06:45:29', '1', '1', 'Logitech', '', 'Logitech', '', 'logitech', NULL, NULL),
('59a9066b90aacfc2e', 'Microsoft', 0, '', 1, '2017-09-01 07:04:11', '2018-08-07 06:45:17', '1', '1', 'Microsoft', '', 'Microsoft', '', 'microsoft', NULL, NULL),
('59a9067d123574e28', 'Philips', 0, '', 1, '2017-09-01 07:04:29', '2018-08-07 06:45:03', '1', '1', 'Philips', '', 'Philips', '', 'philips', NULL, NULL),
('59a906879cbf1b168', 'Razer', 0, '', 1, '2017-09-01 07:04:39', '2018-08-07 06:44:53', '1', '1', 'Razer', '', 'Razer', '', 'razer', NULL, NULL),
('59a9069446cb01c2b', 'Samsung', 0, '', 1, '2017-09-01 07:04:52', '2018-08-07 06:44:44', '1', '1', 'Samsung', '', 'Samsung', '', 'samsung', NULL, NULL),
('59a9069ecab743128', 'Sony', 0, '', 1, '2017-09-01 07:05:02', '2018-08-07 06:44:35', '1', '1', 'Sony', '', 'Sony', '', 'sony', NULL, NULL),
('59a906a8b458b2518', 'Speed-Link', 0, '', 1, '2017-09-01 07:05:12', '2018-08-07 06:44:05', '1', '1', 'Speed-Link', '', 'Speed-Link', '', 'speed_link', NULL, NULL),
('59a906b27d38c81ec', 'TDK', 0, '', 1, '2017-09-01 07:05:22', '2018-08-07 06:43:52', '1', '1', 'TDK', '', 'TDK', '', 'tdk', NULL, NULL),
('59a906c07be741caf', 'Toshiba', 0, '', 1, '2017-09-01 07:05:36', '2018-08-07 06:43:43', '1', '1', 'Toshiba', '', 'Toshiba', '', 'toshiba', NULL, NULL),
('59a906cd9480db998', 'Verbatim', 0, '', 1, '2017-09-01 07:05:49', '2018-08-07 06:43:10', '1', '1', 'Verbatim', '', 'Verbatim', '', 'verbatim', NULL, NULL),
('59a906d9b46f70f71', 'Viewsonic', 0, '', 1, '2017-09-01 07:06:01', '2018-08-07 06:43:00', '1', '1', 'Viewsonic', '', 'Viewsonic', '', 'viewsonic', NULL, NULL),
('59a915db40a9d4a26', 'Trust', 0, '', 1, '2017-09-01 08:10:03', '2018-08-07 06:42:50', '1', '1', 'Trust', '', 'Trust', '', 'trust', NULL, NULL),
('59a917d34f1febfe0', 'Lexmark', 0, '', 1, '2017-09-01 08:18:27', '2018-08-07 06:42:36', '1', '1', 'Lexmark', '', 'Lexmark', '', 'lexmark', NULL, NULL),
('59a918099ee78d916', 'Xerox', 0, '', 1, '2017-09-01 08:19:21', '2018-08-07 06:42:26', '1', '1', 'Xerox', '', 'Xerox', '', 'xerox', NULL, NULL),
('59a9183a8289b0949', 'OKI', 0, '', 1, '2017-09-01 08:20:10', '2018-08-07 06:42:17', '1', '1', 'OKI', '', 'OKI', '', 'oki', NULL, NULL),
('59a918942a2a25516', 'Ricoh', 0, '', 1, '2017-09-01 08:21:40', '2018-08-07 06:42:04', '1', '1', 'Ricoh', '', 'Ricoh', '', 'ricoh', NULL, NULL),
('59b0e83a4c7c3d436', 'SanDisk', 0, '', 1, '2017-09-07 06:33:30', '2018-08-07 06:41:54', '1', '1', 'SanDisk', '', 'SanDisk', '', 'sandisk', NULL, NULL),
('59fb0a9d8e5a74a48', 'Apple', 0, '', 1, '2017-11-02 12:07:57', '2018-10-17 17:20:06', '1', '5bbaf1daea9ee8a6b', 'Apple', '', 'Apple', '', 'apple', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
                           `id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
                           `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                           `deleted` tinyint(1) DEFAULT '0',
                           `description` longtext COLLATE utf8mb4_unicode_ci,
                           `created_at` datetime DEFAULT NULL,
                           `modified_at` datetime DEFAULT NULL,
                           `is_active` tinyint(1) NOT NULL DEFAULT '0',
                           `name_de_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `name_en_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `description_de_de` longtext COLLATE utf8mb4_unicode_ci,
                           `description_en_us` longtext COLLATE utf8mb4_unicode_ci,
                           `created_by_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                           `modified_by_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                           `assigned_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                           `owner_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                           `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `deleted`, `description`, `created_at`, `modified_at`, `is_active`, `name_de_de`, `name_en_us`, `description_de_de`, `description_en_us`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `owner_user_id`, `code`) VALUES
('5b68537031382fafd', 'Electonics', 0, '', '2018-08-06 13:56:00', '2018-09-10 07:30:30', 1, 'Electonics', 'Electonics', '', '', '1', '1', '1', '1', 'electonics'),
('5b68539dac54115ed', 'Old Сatalog 2011', 0, '', '2018-08-06 13:56:45', '2018-09-10 07:30:43', 1, 'Old Сatalog 2011', 'Old Сatalog 2011', '', '', '1', '1', '1', '1', 'old_catalog_2011'),
('5d6519223c5d63a8a', 'Main catalog', 0, 'Auto generated catalog by migration.', '2019-08-27 11:50:58', '2019-08-27 11:50:58', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'main_catalog_migration');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_category`
--
DROP TABLE IF EXISTS `catalog_category`;
CREATE TABLE `catalog_category` (
                                    `id` int(11) NOT NULL,
                                    `catalog_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `category_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalog_category`
--

INSERT INTO `catalog_category` (`id`, `catalog_id`, `category_id`, `deleted`) VALUES
(7, '5d6519223c5d63a8a', '59b2571ce3cee452e', 0),
(8, '5d6519223c5d63a8a', '5b8904399ed296444', 0),
(9, '5b68539dac54115ed', '5b8904399ed296444', 0),
(10, '5b68537031382fafd', '59b2571ce3cee452e', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
                            `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                            `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `deleted` tinyint(1) DEFAULT '0',
                            `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                            `is_active` tinyint(1) NOT NULL DEFAULT '0',
                            `created_at` datetime DEFAULT NULL,
                            `modified_at` datetime DEFAULT NULL,
                            `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                            `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                            `category_parent_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                            `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `description_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                            `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `description_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                            `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `category_route` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                            `category_route_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                            `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                            `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                            `sort_order` int(11) DEFAULT NULL,
                            `image_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `deleted`, `description`, `is_active`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `category_parent_id`, `name_en_us`, `description_en_us`, `name_de_de`, `description_de_de`, `code`, `category_route`, `category_route_name`, `owner_user_id`, `assigned_user_id`, `sort_order`, `image_id`) VALUES
('59b2527192bb1f16c', 'TVs and projectors', 0, '', 1, '2017-09-08 08:18:57', '2019-10-11 10:22:13', '1', '1', '59b2571ce3cee452e', 'TVs and projectors', '', 'TVs and projectors', '', 'tvs_and_projectors', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, NULL),
('59b252808b342fdde', 'Cameras', 0, '', 1, '2017-09-08 08:19:12', '2019-10-11 10:22:46', '1', '1', '59b2571ce3cee452e', 'Cameras', '', 'Cameras', '', 'cameras', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, NULL),
('59b25290f3d0bcb38', 'Audio and Video', 0, '', 1, '2017-09-08 08:19:28', '2019-10-11 10:51:25', '1', '1', '59b2571ce3cee452e', 'Audio and Video', '', 'Audio and Video', '', 'audio_and_video', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, NULL),
('59b2529a3f5a673f4', 'Print and scan', 0, '', 1, '2017-09-08 08:19:38', '2019-10-11 10:52:54', '1', '1', '59b2571ce3cee452e', 'Print and scan', '', 'Print and scan', '', 'print_and_scan', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, NULL),
('59b252a2b124ee21b', 'Clothes', 0, '', 1, '2017-09-08 08:19:46', '2019-08-28 19:40:28', '1', '1', '59b2571ce3cee452e', 'Clothes', '', NULL, NULL, 'clothes', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, NULL),
('59b252b0d94ff61c2', 'Office', 0, '', 1, '2017-09-08 08:20:00', '2019-08-28 19:40:28', '1', '1', '59b2571ce3cee452e', 'Office', '', 'Office', '', 'office', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, NULL),
('59b252e2dc2927f26', 'PC Monitors', 0, '', 1, '2017-09-08 08:20:50', '2019-08-28 19:40:28', '1', '1', '59b2527192bb1f16c', 'PC Monitors', '', 'PC Monitors', '', 'pc_monitors', '|59b2571ce3cee452e|59b2527192bb1f16c|', 'Master category > TVs and projectors', '1', NULL, NULL, NULL),
('59b252ee34ef870a3', 'LED TVs', 0, '', 1, '2017-09-08 08:21:02', '2019-08-28 19:40:28', '1', '1', '59b2527192bb1f16c', 'LED TVs', '', 'LED TVs', '', 'led_tvs', '|59b2571ce3cee452e|59b2527192bb1f16c|', 'Master category > TVs and projectors', '1', NULL, NULL, NULL),
('59b253032d5f8c076', 'Digital cameras', 0, '', 1, '2017-09-08 08:21:23', '2019-10-11 10:14:02', '1', '1', '59b252808b342fdde', 'Digital cameras', '', 'Digital cameras', '', 'digital_cameras', '|59b2571ce3cee452e|59b252808b342fdde|', 'Master category > Cameras', '1', NULL, NULL, NULL),
('59b2530cdb54f6a6f', 'Camcorders', 0, '', 1, '2017-09-08 08:21:32', '2019-08-28 19:40:28', '1', '1', '59b252808b342fdde', 'Camcorders', '', 'Camcorders', '', 'camcorders', '|59b2571ce3cee452e|59b252808b342fdde|', 'Master category > Cameras', '1', NULL, NULL, NULL),
('59b2531bb7fdfa60e', 'Webcams', 0, '', 1, '2017-09-08 08:21:47', '2019-08-28 19:40:28', '1', '1', '59b252808b342fdde', 'Webcams', '', 'Webcams', '', 'webcams', '|59b2571ce3cee452e|59b252808b342fdde|', 'Master category > Cameras', '1', NULL, NULL, NULL),
('59b2533c1873c3bcf', 'Headphones', 0, '', 1, '2017-09-08 08:22:20', '2019-08-28 19:40:28', '1', '1', '59b25290f3d0bcb38', 'Headphones', '', 'Headphones', '', 'headphones', '|59b2571ce3cee452e|59b25290f3d0bcb38|', 'Master category > Audio and Video', '1', NULL, NULL, NULL),
('59b2534609ea5a298', 'MP3 players', 0, '', 1, '2017-09-08 08:22:30', '2019-08-28 19:40:28', '1', '1', '59b25290f3d0bcb38', 'MP3 players', '', 'MP3 players', '', 'mp3_players', '|59b2571ce3cee452e|59b25290f3d0bcb38|', 'Master category > Audio and Video', '1', NULL, NULL, NULL),
('59b2534f7de45df75', 'Loudspeakers', 0, '', 1, '2017-09-08 08:22:39', '2019-08-28 19:40:28', '1', '1', '59b25290f3d0bcb38', 'Loudspeakers', '', 'Loudspeakers', '', 'loudspeakers', '|59b2571ce3cee452e|59b25290f3d0bcb38|', 'Master category > Audio and Video', '1', NULL, NULL, NULL),
('59b2537aab4d6f537', 'Multifunctionals', 0, '', 1, '2017-09-08 08:23:22', '2019-08-28 19:40:28', '1', '1', '59b2529a3f5a673f4', 'Multifunctionals', '', 'Multifunctionals', '', 'multifunctionals', '|59b2571ce3cee452e|59b2529a3f5a673f4|', 'Master category > Print and scan', '1', NULL, NULL, NULL),
('59b2538737389fed5', 'Laser and LED printers', 0, '', 1, '2017-09-08 08:23:35', '2019-08-28 19:40:28', '1', '1', '59b2529a3f5a673f4', 'Laser and LED printers', '', 'Laser and LED printers', '', 'laser_and_led_printers', '|59b2571ce3cee452e|59b2529a3f5a673f4|', 'Master category > Print and scan', '1', NULL, NULL, NULL),
('59b2539197b66a8a2', 'Scanners', 0, '', 1, '2017-09-08 08:23:45', '2019-08-28 19:40:28', '1', '1', '59b2529a3f5a673f4', 'Scanners', '', 'Scanners', '', 'scanners', '|59b2571ce3cee452e|59b2529a3f5a673f4|', 'Master category > Print and scan', '1', NULL, NULL, NULL),
('59b253dda755231ab', 'Pants', 0, '', 1, '2017-09-08 08:25:01', '2019-08-28 19:40:28', '1', '1', '59b252a2b124ee21b', 'Pants', '', 'Pants', '', 'pants', '|59b2571ce3cee452e|59b252a2b124ee21b|', 'Master category > Clothes', '1', NULL, NULL, NULL),
('59b253eab7164ee27', 'Shoes', 0, '', 1, '2017-09-08 08:25:14', '2019-08-28 19:40:28', '1', '1', '59b252a2b124ee21b', 'Shoes', '', 'Shoes', '', 'shoes', '|59b2571ce3cee452e|59b252a2b124ee21b|', 'Master category > Clothes', '1', NULL, NULL, NULL),
('59b253f9929de5762', 'Accessories', 0, '', 1, '2017-09-08 08:25:29', '2019-08-28 19:40:28', '1', '1', '59b252a2b124ee21b', 'Accessories', '', 'Accessories', NULL, 'accessories', '|59b2571ce3cee452e|59b252a2b124ee21b|', 'Master category > Clothes', '1', NULL, NULL, NULL),
('59b2540571729396d', 'Sweat', 0, '', 1, '2017-09-08 08:25:41', '2019-08-28 19:40:28', '1', '1', '59b252a2b124ee21b', 'Sweat', '', 'Sweat', '', 'sweat', '|59b2571ce3cee452e|59b252a2b124ee21b|', 'Master category > Clothes', '1', NULL, NULL, NULL),
('59b2540de36e516e0', 'Coats', 0, '', 1, '2017-09-08 08:25:49', '2019-08-28 19:40:28', '1', '1', '59b252a2b124ee21b', 'Coats', '', 'Coats', '', 'coats', '|59b2571ce3cee452e|59b252a2b124ee21b|', 'Master category > Clothes', '1', NULL, NULL, NULL),
('59b254182cebbf151', 'Underwear', 0, '', 1, '2017-09-08 08:26:00', '2019-08-28 19:40:28', '1', '1', '59b252a2b124ee21b', 'Underwear', '', 'Underwear', '', 'underwear', '|59b2571ce3cee452e|59b252a2b124ee21b|', 'Master category > Clothes', '1', NULL, NULL, NULL),
('59b25422256590e75', 'T-Shirts', 0, '', 1, '2017-09-08 08:26:10', '2019-08-28 19:40:28', '1', '1', '59b252a2b124ee21b', 'T-Shirts', '', 'T-Shirts', '', 't_shirts', '|59b2571ce3cee452e|59b252a2b124ee21b|', 'Master category > Clothes', '1', NULL, NULL, NULL),
('59b25441b81634b83', 'Jeans', 0, '', 1, '2017-09-08 08:26:41', '2019-08-28 19:40:28', '1', '1', '59b253dda755231ab', 'Jeans', '', 'Jeans', '', 'jeans', '|59b2571ce3cee452e|59b252a2b124ee21b|59b253dda755231ab|', 'Master category > Clothes > Pants', '1', NULL, NULL, NULL),
('59b2547aa3ea17115', 'Caps', 0, '', 1, '2017-09-08 08:27:38', '2019-08-28 19:40:28', '1', '1', '59b253f9929de5762', 'Caps', '', 'Caps', '', 'caps', '|59b2571ce3cee452e|59b252a2b124ee21b|59b253f9929de5762|', 'Master category > Clothes > Accessories', '1', NULL, NULL, NULL),
('59b25484d589bbf2e', 'Ties', 0, '', 1, '2017-09-08 08:27:48', '2019-08-28 19:40:28', '1', '1', '59b253f9929de5762', 'Ties', '', 'Ties', '', 'ties', '|59b2571ce3cee452e|59b252a2b124ee21b|59b253f9929de5762|', 'Master category > Clothes > Accessories', '1', NULL, NULL, NULL),
('59b2548fb6743bbda', 'Gloves', 0, '', 1, '2017-09-08 08:27:59', '2019-08-28 19:40:28', '1', '1', '59b253f9929de5762', 'Gloves', '', 'Gloves', '', 'gloves', '|59b2571ce3cee452e|59b252a2b124ee21b|59b253f9929de5762|', 'Master category > Clothes > Accessories', '1', NULL, NULL, NULL),
('59b2549a31be09272', 'Belts', 0, '', 1, '2017-09-08 08:28:10', '2019-08-28 19:40:28', '1', '1', '59b253f9929de5762', 'Belts', '', 'Belts', '', 'belts', '|59b2571ce3cee452e|59b252a2b124ee21b|59b253f9929de5762|', 'Master category > Clothes > Accessories', '1', NULL, NULL, NULL),
('59b254c53f0073e81', 'Office furnitures', 0, '', 1, '2017-09-08 08:28:53', '2019-08-28 19:40:28', '1', '1', '59b252b0d94ff61c2', 'Office furnitures', '', 'Office furnitures', '', 'office_furnitures', '|59b2571ce3cee452e|59b252b0d94ff61c2|', 'Master category > Office', '1', NULL, NULL, NULL),
('59b254cf5bf26eda4', 'Stationery', 0, '', 1, '2017-09-08 08:29:03', '2019-08-28 19:40:28', '1', '1', '59b252b0d94ff61c2', 'Stationery', '', 'Stationery', '', 'stationery', '|59b2571ce3cee452e|59b252b0d94ff61c2|', 'Master category > Office', '1', NULL, NULL, NULL),
('59b254dd6d700d157', 'Desk supplies', 0, '', 1, '2017-09-08 08:29:17', '2019-08-28 19:40:28', '1', '1', '59b252b0d94ff61c2', 'Desk supplies', '', 'Desk supplies', '', 'desk_supplies', '|59b2571ce3cee452e|59b252b0d94ff61c2|', 'Master category > Office', '1', NULL, NULL, NULL),
('59b254e5e8a55b860', 'Goodies', 0, '', 1, '2017-09-08 08:29:25', '2019-08-28 19:40:28', '1', '1', '59b252b0d94ff61c2', 'Goodies', '', 'Goodies', '', 'goodies', '|59b2571ce3cee452e|59b252b0d94ff61c2|', 'Master category > Office', '1', NULL, NULL, NULL),
('59b25503f0d452b0f', 'Desk chairs', 0, '', 1, '2017-09-08 08:29:55', '2019-08-28 19:40:28', '1', '1', '59b254c53f0073e81', 'Desk chairs', '', 'Desk chairs', '', 'desk_chairs', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254c53f0073e81|', 'Master category > Office > Office furnitures', '1', NULL, NULL, NULL),
('59b255109f5eab388', 'Office tables', 0, '', 1, '2017-09-08 08:30:08', '2019-08-28 19:40:28', '1', '1', '59b254c53f0073e81', 'Office tables', '', 'Office tables', '', 'office_tables', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254c53f0073e81|', 'Master category > Office > Office furnitures', '1', NULL, NULL, NULL),
('59b2553077628ecc3', 'Notebooks', 0, '', 1, '2017-09-08 08:30:40', '2019-08-28 19:40:28', '1', '1', '59b254cf5bf26eda4', 'Notebooks', '', 'Notebooks', '', 'notebooks', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254cf5bf26eda4|', 'Master category > Office > Stationery', '1', NULL, NULL, NULL),
('59b2553ade65e33bb', 'Cards', 0, '', 1, '2017-09-08 08:30:50', '2019-08-28 19:40:28', '1', '1', '59b254cf5bf26eda4', 'Cards', '', 'Cards', '', 'cards', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254cf5bf26eda4|', 'Master category > Office > Stationery', '1', NULL, NULL, NULL),
('59b25546a6077ede0', 'Envelopes', 0, '', 1, '2017-09-08 08:31:02', '2019-08-28 19:40:28', '1', '1', '59b254cf5bf26eda4', 'Envelopes', '', 'Envelopes', '', 'envelopes', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254cf5bf26eda4|', 'Master category > Office > Stationery', '1', NULL, NULL, NULL),
('59b2560385e8d0590', 'Markers', 0, '', 1, '2017-09-08 08:34:11', '2019-08-28 19:40:28', '1', '1', '59b254dd6d700d157', 'Markers', '', 'Markers', '', 'markers', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254dd6d700d157|', 'Master category > Office > Desk supplies', '1', NULL, NULL, NULL),
('59b256140258e08e7', 'Erasers', 0, '', 1, '2017-09-08 08:34:28', '2019-08-28 19:40:28', '1', '1', '59b254dd6d700d157', 'Erasers', '', 'Erasers', '', 'erasers', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254dd6d700d157|', 'Master category > Office > Desk supplies', '1', NULL, NULL, NULL),
('59b2561e3ef8741b0', 'Pens', 0, '', 1, '2017-09-08 08:34:38', '2019-08-28 19:40:28', '1', '1', '59b254dd6d700d157', 'Pens', '', 'Pens', '', 'pens', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254dd6d700d157|', 'Master category > Office > Desk supplies', '1', NULL, NULL, NULL),
('59b2564626f896ea0', 'Stamps', 0, '', 1, '2017-09-08 08:35:18', '2019-08-28 19:40:28', '1', '1', '59b254dd6d700d157', 'Stamps', '', 'Stamps', '', 'stamps', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254dd6d700d157|', 'Master category > Office > Desk supplies', '1', NULL, NULL, NULL),
('59b256541dff18af4', 'Adhesives', 0, '', 1, '2017-09-08 08:35:32', '2019-08-28 19:40:28', '1', '1', '59b254dd6d700d157', 'Adhesives', '', 'Adhesives', '', 'adhesives', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254dd6d700d157|', 'Master category > Office > Desk supplies', '1', NULL, NULL, NULL),
('59b2567f94fc21726', 'Stickers', 0, '', 1, '2017-09-08 08:36:15', '2019-08-28 19:40:28', '1', '1', '59b254e5e8a55b860', 'Stickers', '', 'Stickers', '', 'stickers', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254e5e8a55b860|', 'Master category > Office > Goodies', '1', NULL, NULL, NULL),
('59b25689723d2a677', 'Casino chips', 0, '', 1, '2017-09-08 08:36:25', '2019-08-28 19:40:28', '1', '1', '59b254e5e8a55b860', 'Casino chips', '', 'Casino chips', '', 'casino_chips', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254e5e8a55b860|', 'Master category > Office > Goodies', '1', NULL, NULL, NULL),
('59b2569ba8768d7d4', 'Accessories', 0, '', 1, '2017-09-08 08:36:43', '2019-08-28 19:40:28', '1', '1', '59b254e5e8a55b860', 'Accessories', '', 'Zubehör', '', 'accessories1', '|59b2571ce3cee452e|59b252b0d94ff61c2|59b254e5e8a55b860|', 'Master category > Office > Goodies', '1', NULL, NULL, NULL),
('59b2571ce3cee452e', 'Master category', 0, '', 1, '2017-09-08 08:38:52', '2019-08-28 19:40:37', '1', '1', NULL, 'Master category', '', 'Master kategorie', '', 'master_category', '', '', '1', NULL, NULL, NULL),
('59fb0dc6f3fd265c9', 'Phones', 0, '', 1, '2017-11-02 12:21:27', '2020-10-01 10:04:10', '1', '1', '59b2571ce3cee452e', 'Phones', '', 'Phones', '', 'phones', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, '5f75a9913b6b2f8c9'),
('5b7bc409a1e41e93c', 'Electonics', 0, '', 1, '2018-08-21 07:49:29', '2019-10-11 10:12:53', '1', '1', '59b2571ce3cee452e', 'Electonics', '', 'Electonics', '', 'electonics', '|59b2571ce3cee452e|', 'Master category', '1', NULL, NULL, NULL),
('5b8904399ed296444', 'Old Products', 0, '', 1, '2018-08-31 09:02:49', '2018-08-31 10:49:51', '1', '1', NULL, 'Old Products', '', 'Old Products', '', 'old_products', '', '', '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `category_asset`
--
DROP TABLE IF EXISTS `category_asset`;
CREATE TABLE `category_asset` (
                                  `id` int(11) NOT NULL,
                                  `asset_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `category_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_asset`
--

INSERT INTO `category_asset` (`id`, `asset_id`, `category_id`, `deleted`) VALUES
(1, '5f75a99993608e33a', '59fb0dc6f3fd265c9', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `channel`
--
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
                           `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                           `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `deleted` tinyint(1) DEFAULT '0',
                           `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `is_active` tinyint(1) NOT NULL DEFAULT '0',
                           `created_at` datetime DEFAULT NULL,
                           `modified_at` datetime DEFAULT NULL,
                           `locales` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `description_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `description_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `currencies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `channel`
--

INSERT INTO `channel` (`id`, `name`, `deleted`, `description`, `is_active`, `created_at`, `modified_at`, `locales`, `created_by_id`, `modified_by_id`, `name_en_us`, `description_en_us`, `name_de_de`, `description_de_de`, `currencies`, `code`, `owner_user_id`, `assigned_user_id`) VALUES
('5971b7857670e1789', 'OXID EE Shop', 0, '', 1, '2017-07-21 08:12:53', '2020-10-01 09:27:44', '[\"de_DE\",\"en_US\"]', '1', '1', 'OXID EE Shop', '', 'OXID EE Shop', '', '[\"USD\",\"EUR\"]', 'oxid_ee_shop', '5b910d520c3fe4642', '1'),
('59a81f80ae0ce8ecb', 'Amazon DE', 0, '', 1, '2017-08-31 14:38:56', '2020-10-01 09:27:44', '[\"de_DE\"]', '1', '1', 'Amazon DE', '', NULL, NULL, '[\"USD\",\"EUR\"]', 'amazon_de', '5b910d520c3fe4642', '1'),
('59a81f8c56f59622d', 'Amazon EN', 0, '', 1, '2017-08-31 14:39:08', '2020-10-01 09:27:44', '[\"en_US\"]', '1', '1', 'Amazon EN', '', NULL, NULL, '[\"USD\"]', 'amazon_en', '5b910d520c3fe4642', '1'),
('59a81fa552e62a6aa', 'Retailer', 0, '', 1, '2017-08-31 14:39:33', '2020-10-01 09:27:44', '[\"en_US\",\"de_DE\"]', '1', '1', 'Retailer', '', 'Retailer', '', '[\"EUR\",\"USD\"]', 'retailer', '5b6807ebe42c89d66', '5b6807ebe42c89d66'),
('59ba3d074e36186d4', 'Wholesales', 0, '', 1, '2017-09-14 08:25:43', '2020-10-01 09:27:44', '[\"de_DE\"]', '1', '1', 'Wholesales', '', 'Wholesales', '', '[\"EUR\",\"USD\"]', 'wholesales', '5b910d520c3fe4642', '1'),
('5a144ccfe86acdda7', 'Magento 2 Shop', 0, '', 1, '2017-11-21 15:57:03', '2020-10-01 09:27:44', '[\"de_DE\",\"en_US\"]', '1', '1', 'Magento 2 Shop', '', 'Magento 2 Shop', '', '[\"EUR\",\"USD\"]', 'magento', '5b910d520c3fe4642', '1'),
('5b7bba2f2f257d218', 'VIP Wholesales', 0, '', 1, '2018-08-21 07:07:27', '2020-10-01 09:27:44', '[\"de_DE\"]', '1', '1', 'VIP Wholesales', '', 'VIP Wholesales', '', '[\"EUR\",\"USD\"]', 'vip_wholesales', '5b910d520c3fe4642', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `collection`
--
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
                              `id` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
                              `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `deleted` tinyint(1) DEFAULT '0',
                              `description` mediumtext COLLATE utf8mb4_unicode_ci,
                              `created_at` datetime DEFAULT NULL,
                              `modified_at` datetime DEFAULT NULL,
                              `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `is_active` tinyint(1) NOT NULL DEFAULT '0',
                              `created_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `modified_by_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `assigned_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `owner_user_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `collection`
--

INSERT INTO `collection` (`id`, `name`, `deleted`, `description`, `created_at`, `modified_at`, `code`, `is_active`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `owner_user_id`) VALUES
('5f75a13b112f2f5ba', 'Main', 0, '', '2020-10-01 09:28:27', '2020-10-01 09:28:27', 'main', 1, '1', NULL, '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
                           `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                           `deleted` tinyint(1) DEFAULT '0',
                           `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `account_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `do_not_call` tinyint(1) NOT NULL DEFAULT '0',
                           `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `address_postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `created_at` datetime DEFAULT NULL,
                           `modified_at` datetime DEFAULT NULL,
                           `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `deleted`, `salutation_name`, `first_name`, `last_name`, `account_id`, `description`, `do_not_call`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postal_code`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('59b62e3bbb387a965', 0, '', 'John', 'Doe', NULL, '', 0, '', '', '', '', '', '2017-09-11 06:33:31', '2017-11-01 07:46:22', '1', '1', NULL),
('5b68563817b1dbd0b', 0, 'Mr.', 'Retailer', 'Retailer', '5b6856208df9c890a', '', 0, '', '', '', '', '', '2018-08-06 14:07:52', '2018-09-06 11:13:24', '1', '1', NULL),
('5b910d35ecf9383b9', 0, 'Mrs.', 'Supplier', 'Supplier', '5b910d204446f4221', '', 0, NULL, '', NULL, '', NULL, '2018-09-06 11:19:17', '2018-09-06 11:19:17', '1', NULL, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
                            `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                            `deleted` tinyint(1) DEFAULT '0',
                            `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `deleted`, `rate`) VALUES
('EUR', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `email_template`
--
DROP TABLE IF EXISTS `email_template`;
CREATE TABLE `email_template` (
                                  `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                                  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `deleted` tinyint(1) DEFAULT '0',
                                  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                  `is_html` tinyint(1) NOT NULL DEFAULT '1',
                                  `one_off` tinyint(1) NOT NULL DEFAULT '0',
                                  `created_at` datetime DEFAULT NULL,
                                  `modified_at` datetime DEFAULT NULL,
                                  `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `category_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `email_template`
--

INSERT INTO `email_template` (`id`, `name`, `deleted`, `subject`, `body`, `is_html`, `one_off`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `category_id`) VALUES
('58ff5ebf327835267', 'Case-to-Email auto-reply', 0, 'Case has been created', '<p>{Person.name},</p><p>Case \'{Case.name}\' has been created with number {Case.number} and assigned to {User.name}.</p>', 1, 0, '2017-04-25 14:35:43', '2017-04-25 14:35:43', 'system', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `entity_email_address`
--
DROP TABLE IF EXISTS `entity_email_address`;
CREATE TABLE `entity_email_address` (
                                        `id` int(11) NOT NULL,
                                        `entity_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                        `email_address_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                        `entity_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                                        `primary` tinyint(1) DEFAULT '0',
                                        `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `entity_email_address`
--

INSERT INTO `entity_email_address` (`id`, `entity_id`, `email_address_id`, `entity_type`, `primary`, `deleted`) VALUES
(1, '5959ec923589d4818', '5959ec92372020a0b', 'User', 1, 0),
(2, '59c4adb5cf6733c25', '59c4adb5d0bb6ee05', 'User', 1, 0),
(3, '5b6856208df9c890a', '5b6856208f475f9fc', 'Account', 1, 0),
(4, '5b68563817b1dbd0b', '5b6856208f475f9fc', 'Contact', 1, 0),
(5, '5b6807ebe42c89d66', '5b6856208f475f9fc', 'User', 1, 0),
(6, '5b910d204446f4221', '5b910d2045955fc37', 'Account', 1, 0),
(7, '5b910d35ecf9383b9', '5b910d2045955fc37', 'Contact', 1, 0),
(8, '5b910d520c3fe4642', '5b910d2045955fc37', 'User', 1, 0),
(9, '5bd303861f3553551', '5bd3038622a13f657', 'User', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `entity_team`
--
DROP TABLE IF EXISTS `entity_team`;
CREATE TABLE `entity_team` (
                               `id` int(11) NOT NULL,
                               `entity_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `team_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `entity_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `entity_team`
--

INSERT INTO `entity_team` (`id`, `entity_id`, `team_id`, `entity_type`, `deleted`) VALUES
(1, '595e602361a492e04', '595e5a09d4ccfabea', 'PimCategory', 0),
(2, '595e604a3af0112fd', '595e5a1598129c77c', 'PimCategory', 0),
(7, '595e604a3af0112fd', '595e64a09c741e616', 'PimCategory', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `measuring_unit`
--
DROP TABLE IF EXISTS `measuring_unit`;
CREATE TABLE `measuring_unit` (
                                  `id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
                                  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `deleted` tinyint(1) DEFAULT '0',
                                  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `created_at` datetime DEFAULT NULL,
                                  `modified_at` datetime DEFAULT NULL,
                                  `name_de_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `name_en_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `unit_de_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `unit_en_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `created_by_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `modified_by_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `owner_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `assigned_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `measuring_unit`
--

INSERT INTO `measuring_unit` (`id`, `name`, `deleted`, `unit`, `created_at`, `modified_at`, `name_de_de`, `name_en_us`, `unit_de_de`, `unit_en_us`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`) VALUES
('5b6be3380cb98eb92', 'Package', 0, 'pcs', '2018-08-09 06:46:16', '2018-08-09 06:46:16', 'Package', 'Package', 'pcs', 'pcs', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `packaging`
--
DROP TABLE IF EXISTS `packaging`;
CREATE TABLE `packaging` (
                             `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             `deleted` tinyint(1) DEFAULT '0',
                             `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                             `price` double DEFAULT NULL,
                             `is_active` tinyint(1) NOT NULL DEFAULT '0',
                             `created_at` datetime DEFAULT NULL,
                             `modified_at` datetime DEFAULT NULL,
                             `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `packaging`
--

INSERT INTO `packaging` (`id`, `name`, `deleted`, `description`, `price`, `is_active`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`) VALUES
('5d9ec8aca28defa34', 'Box', 0, '', NULL, 1, '2019-10-10 05:59:08', '2019-10-10 05:59:08', '1', NULL, '1', '1'),
('5d9ec8b7277a32880', 'Small Carton Box', 0, '', NULL, 1, '2019-10-10 05:59:19', '2019-10-10 05:59:19', '1', NULL, '1', '1'),
('5d9ec8c1214877f29', 'Large Carton Box', 0, '', NULL, 1, '2019-10-10 05:59:29', '2019-10-10 05:59:29', '1', NULL, '1', '1'),
('5d9ec8c94bda4af00', 'Paper Bag', 0, '', NULL, 1, '2019-10-10 05:59:37', '2019-10-10 05:59:37', '1', NULL, '1', '1'),
('5d9ec8d0b0ac7bcac', 'Bottle', 0, '', NULL, 1, '2019-10-10 05:59:44', '2019-10-10 05:59:44', '1', NULL, '1', '1'),
('5d9ec8d74130017dc', 'Roll', 0, '', NULL, 1, '2019-10-10 05:59:51', '2019-10-10 05:59:51', '1', NULL, '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `portal`
--
DROP TABLE IF EXISTS `portal`;
CREATE TABLE `portal` (
                          `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                          `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `deleted` tinyint(1) DEFAULT '0',
                          `custom_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `is_active` tinyint(1) NOT NULL DEFAULT '1',
                          `tab_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                          `quick_create_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                          `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `time_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `week_start` int(11) DEFAULT '-1',
                          `default_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `dashboard_layout` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                          `dashlets_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                          `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `modified_at` datetime DEFAULT NULL,
                          `created_at` datetime DEFAULT NULL,
                          `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `logo_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `company_logo_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `portal`
--

INSERT INTO `portal` (`id`, `name`, `deleted`, `custom_id`, `is_active`, `tab_list`, `quick_create_list`, `theme`, `language`, `time_zone`, `date_format`, `time_format`, `week_start`, `default_currency`, `dashboard_layout`, `dashlets_options`, `custom_url`, `modified_at`, `created_at`, `modified_by_id`, `created_by_id`, `logo_id`, `company_logo_id`) VALUES
('5b4eec4be7175d965', 'Retailer Portal', 0, 'retalier', 1, '[\"Document\",\"KnowledgeBaseArticle\",\"Attribute\",\"AttributeGroup\",\"Brand\",\"Category\",\"Product\",\"ProductFamily\"]', '[]', '', '', '', '', '', -1, '', '[{\"name\":\"My Espo\",\"layout\":[{\"id\":\"d91643\",\"name\":\"GeneralStatistics\",\"x\":0,\"y\":0,\"width\":2,\"height\":3},{\"id\":\"d760409\",\"name\":\"ProductStatusOverview\",\"x\":2,\"y\":0,\"width\":2,\"height\":2},{\"id\":\"d190301\",\"name\":\"ProductsByStatus\",\"x\":2,\"y\":2,\"width\":2,\"height\":2}]}]', '{}', '', '2019-03-14 14:15:31', '2018-07-18 07:29:15', '1', '1', NULL, NULL),
('5b910a8ec465248a7', 'Supplier Portal', 0, NULL, 1, '[\"Document\",\"KnowledgeBaseArticle\",\"Attribute\",\"AttributeGroup\",\"Brand\",\"Category\",\"Product\",\"ProductFamily\"]', '[]', '', '', '', '', '', -1, '', '[{\"name\":\"My Espo\",\"layout\":[{\"id\":\"d4491\",\"name\":\"ProductsByTag\",\"x\":2,\"y\":0,\"width\":2,\"height\":2},{\"id\":\"d739301\",\"name\":\"ProductStatusOverview\",\"x\":2,\"y\":2,\"width\":2,\"height\":2},{\"id\":\"d155824\",\"name\":\"GeneralStatistics\",\"x\":0,\"y\":0,\"width\":2,\"height\":4}]}]', '{}', NULL, '2019-03-14 14:16:11', '2018-09-06 11:07:58', '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `portal_portal_role`
--
DROP TABLE IF EXISTS `portal_portal_role`;
CREATE TABLE `portal_portal_role` (
                                      `id` int(11) NOT NULL,
                                      `portal_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `portal_role_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                      `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `portal_portal_role`
--

INSERT INTO `portal_portal_role` (`id`, `portal_id`, `portal_role_id`, `deleted`) VALUES
(1, '5b4eec4be7175d965', '5b4eec42649ccd705', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `portal_role`
--
DROP TABLE IF EXISTS `portal_role`;
CREATE TABLE `portal_role` (
                               `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                               `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `deleted` tinyint(1) DEFAULT '0',
                               `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                               `field_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                               `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `portal_role`
--

INSERT INTO `portal_role` (`id`, `name`, `deleted`, `data`, `field_data`, `export_permission`) VALUES
('5b4eec42649ccd705', 'Retailer role', 0, '{\"Account\":{\"create\":\"no\",\"read\":\"account\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"no\"},\"AttributeGroup\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Attribute\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Brand\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Category\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Channel\":{\"create\":\"no\",\"read\":\"own\",\"edit\":\"no\",\"delete\":\"no\"},\"ProductFamily\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Product\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"no\"}}', '{\"Account\":{},\"Association\":{},\"AttributeGroup\":{},\"Attribute\":{},\"Brand\":{},\"Call\":{},\"Catalog\":{},\"Category\":{},\"Channel\":{},\"Contact\":{},\"Country\":{},\"Email\":{},\"PimImage\":{},\"Lead\":{},\"MeasuringUnit\":{},\"Meeting\":{},\"Packaging\":{},\"ProductFamily\":{},\"ProductSerie\":{},\"Product\":{\"image\":{\"read\":\"no\",\"edit\":\"no\"}},\"QueueItem\":{},\"Task\":{},\"Tax\":{},\"Template\":{}}', 'yes'),
('5b910d983ba8b0dd7', 'Supplier role', 0, '{\"Account\":{\"create\":\"no\",\"read\":\"account\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"no\"},\"AttributeGroup\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Attribute\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Brand\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Category\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Channel\":{\"create\":\"no\",\"read\":\"own\",\"edit\":\"no\",\"delete\":\"no\"},\"ProductFamily\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Product\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"no\"}}', '{\"Account\":{},\"Association\":{},\"AttributeGroup\":{},\"Attribute\":{},\"Brand\":{},\"Call\":{},\"Catalog\":{},\"Category\":{},\"Channel\":{},\"Contact\":{},\"Country\":{},\"Email\":{},\"PimImage\":{},\"Lead\":{},\"MeasuringUnit\":{},\"Meeting\":{},\"Packaging\":{},\"ProductFamily\":{},\"ProductSerie\":{},\"Product\":{\"image\":{\"read\":\"no\",\"edit\":\"no\"}},\"QueueItem\":{},\"Task\":{},\"Tax\":{},\"Template\":{}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `portal_role_user`
--

DROP TABLE IF EXISTS `portal_role_user`;
CREATE TABLE `portal_role_user` (
                                    `id` int(11) NOT NULL,
                                    `portal_role_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `portal_role_user`
--

INSERT INTO `portal_role_user` (`id`, `portal_role_id`, `user_id`, `deleted`) VALUES
(1, '5b4eec42649ccd705', '5b6807ebe42c89d66', 0),
(2, '5b910d983ba8b0dd7', '5b910d520c3fe4642', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `portal_user`
--
DROP TABLE IF EXISTS `portal_user`;
CREATE TABLE `portal_user` (
                               `id` int(11) NOT NULL,
                               `portal_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                               `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `portal_user`
--

INSERT INTO `portal_user` (`id`, `portal_id`, `user_id`, `deleted`) VALUES
(1, '5b4eec4be7175d965', '5b6807ebe42c89d66', 0),
(2, '5b910a8ec465248a7', '5b910d520c3fe4642', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `preferences`
--
DROP TABLE IF EXISTS `preferences`;
CREATE TABLE `preferences` (
                               `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                               `data` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `preferences`
--

INSERT INTO `preferences` (`id`, `data`) VALUES
('1', '{\n    \"id\": \"1\",\n    \"timeZone\": \"UTC\",\n    \"dateFormat\": \"DD.MM.YYYY\",\n    \"timeFormat\": \"HH:mm\",\n    \"weekStart\": 1,\n    \"defaultCurrency\": \"\",\n    \"thousandSeparator\": \",\",\n    \"decimalMark\": \".\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"TreoPIM Product\",\n            \"layout\": [\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 2,\n                    \"y\": 4,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d116436\",\n                    \"name\": \"Channels\",\n                    \"x\": 0,\n                    \"y\": 4,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d964187\",\n                    \"name\": \"GeneralStatistics\",\n                    \"x\": 2,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d68503\",\n                    \"name\": \"ProductStatusOverview\",\n                    \"x\": 0,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d709963\",\n                    \"name\": \"ProductsByStatus\",\n                    \"x\": 2,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d603234\",\n                    \"name\": \"ProductsByTag\",\n                    \"x\": 0,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 2\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {},\n    \"smtpServer\": \"\",\n    \"smtpPort\": 25,\n    \"smtpAuth\": false,\n    \"smtpSecurity\": \"\",\n    \"smtpUsername\": \"admin\",\n    \"language\": \"en_US\",\n    \"exportDelimiter\": \";\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"signature\": null,\n    \"theme\": \"\",\n    \"useCustomTabList\": false,\n    \"tabList\": [],\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": false,\n    \"doNotFillAssignedUserIfNotRequired\": false,\n    \"followEntityOnStreamPost\": true,\n    \"followCreatedEntities\": false,\n    \"followCreatedEntityTypeList\": [],\n    \"emailUseExternalClient\": false,\n    \"scopeColorsDisabled\": false,\n    \"tabColorsDisabled\": false\n}'),
('59199279064fd99a1', '{\n    \"id\": \"59199279064fd99a1\",\n    \"timeZone\": \"\",\n    \"dateFormat\": \"\",\n    \"timeFormat\": \"\",\n    \"weekStart\": -1,\n    \"defaultCurrency\": \"\",\n    \"thousandSeparator\": \",\",\n    \"decimalMark\": \".\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": 0,\n                    \"width\": 4,\n                    \"height\": 4\n                },\n                {\n                    \"id\": \"default-tasks\",\n                    \"name\": \"Tasks\",\n                    \"x\": 2,\n                    \"y\": 4,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"default-activities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": 6,\n                    \"width\": 2,\n                    \"height\": 2\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {},\n    \"smtpServer\": \"\",\n    \"smtpPort\": 25,\n    \"smtpAuth\": false,\n    \"smtpSecurity\": \"\",\n    \"language\": \"\",\n    \"exportDelimiter\": \";\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"signature\": \"<p><br><\\/p>\",\n    \"defaultReminders\": [],\n    \"theme\": \"HazyblueVertical\",\n    \"useCustomTabList\": true,\n    \"tabList\": [\n        \"AttributeGroup\",\n        \"Case\",\n        \"Channel\",\n        \"ChannelProduct\",\n        \"Country\",\n        \"Category\"\n    ],\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": false,\n    \"doNotFillAssignedUserIfNotRequired\": false,\n    \"followEntityOnStreamPost\": true\n}'),
('5959ec923589d4818', '{\n    \"id\": \"5959ec923589d4818\",\n    \"timeZone\": \"\",\n    \"dateFormat\": \"\",\n    \"timeFormat\": \"\",\n    \"weekStart\": -1,\n    \"defaultCurrency\": \"\",\n    \"thousandSeparator\": \",\",\n    \"decimalMark\": \".\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"default-activities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 4\n                },\n                {\n                    \"id\": \"default-tasks\",\n                    \"name\": \"Tasks\",\n                    \"x\": 2,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 2\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {},\n    \"smtpServer\": \"\",\n    \"smtpPort\": 25,\n    \"smtpAuth\": false,\n    \"smtpSecurity\": \"\",\n    \"language\": \"en_US\",\n    \"exportDelimiter\": \";\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"signature\": \"<p><br><\\/p>\",\n    \"defaultReminders\": [],\n    \"theme\": \"\",\n    \"useCustomTabList\": false,\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": false,\n    \"doNotFillAssignedUserIfNotRequired\": false,\n    \"followEntityOnStreamPost\": true\n}'),
('59c4adb5cf6733c25', '{\n    \"id\": \"59c4adb5cf6733c25\",\n    \"timeZone\": \"\",\n    \"dateFormat\": \"\",\n    \"timeFormat\": \"\",\n    \"weekStart\": -1,\n    \"defaultCurrency\": \"\",\n    \"thousandSeparator\": \",\",\n    \"decimalMark\": \".\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": 0,\n                    \"width\": 4,\n                    \"height\": 4\n                },\n                {\n                    \"id\": \"default-tasks\",\n                    \"name\": \"Tasks\",\n                    \"x\": 2,\n                    \"y\": 4,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"default-activities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": 6,\n                    \"width\": 2,\n                    \"height\": 2\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {},\n    \"smtpServer\": \"\",\n    \"smtpPort\": 25,\n    \"smtpAuth\": false,\n    \"smtpSecurity\": \"\",\n    \"language\": \"\",\n    \"exportDelimiter\": \";\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"signature\": \"<p><br><\\/p>\",\n    \"defaultReminders\": [],\n    \"theme\": \"HazyblueVertical\",\n    \"useCustomTabList\": false,\n    \"tabList\": [\n        \"Contact\",\n        \"Category\",\n        {\n            \"name\": \"_delimiter_8062b4c6\",\n            \"items\": [\n                \"Account\",\n                \"Calendar\"\n            ]\n        }\n    ],\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": false,\n    \"doNotFillAssignedUserIfNotRequired\": false,\n    \"followEntityOnStreamPost\": true\n}'),
('5b6807ebe42c89d66', '{\n    \"id\": \"5b6807ebe42c89d66\",\n    \"timeZone\": \"\",\n    \"dateFormat\": \"\",\n    \"timeFormat\": \"\",\n    \"weekStart\": -1,\n    \"defaultCurrency\": \"\",\n    \"thousandSeparator\": \"\",\n    \"decimalMark\": \",\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"defaultActivities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"defaultStream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 4\n                },\n                {\n                    \"id\": \"defaultTasks\",\n                    \"name\": \"Tasks\",\n                    \"x\": 2,\n                    \"y\": 4,\n                    \"width\": 2,\n                    \"height\": 2\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {\n        \"defaultStream\": {\n            \"displayRecords\": 10\n        }\n    },\n    \"smtpPort\": 25,\n    \"smtpAuth\": false,\n    \"language\": \"\",\n    \"exportDelimiter\": \";\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"theme\": \"\",\n    \"useCustomTabList\": false,\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": false,\n    \"followEntityOnStreamPost\": true,\n    \"followCreatedEntities\": false\n}'),
('5bbaf1daea9ee8a6b', '{\n    \"id\": \"5bbaf1daea9ee8a6b\",\n    \"dateFormat\": \"\",\n    \"timeFormat\": \"\",\n    \"weekStart\": -1,\n    \"defaultCurrency\": \"\",\n    \"thousandSeparator\": \"\",\n    \"decimalMark\": \",\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": 4,\n                    \"width\": 2,\n                    \"height\": 4\n                },\n                {\n                    \"id\": \"default-tasks\",\n                    \"name\": \"Tasks\",\n                    \"x\": 2,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"default-activities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d169350\",\n                    \"name\": \"Leads\",\n                    \"x\": 0,\n                    \"y\": 2,\n                    \"width\": 2,\n                    \"height\": 2\n                },\n                {\n                    \"id\": \"d824340\",\n                    \"name\": \"Calls\",\n                    \"x\": 0,\n                    \"y\": 0,\n                    \"width\": 2,\n                    \"height\": 2\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {},\n    \"smtpPort\": 25,\n    \"smtpAuth\": false,\n    \"language\": \"en_US\",\n    \"exportDelimiter\": \";\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"useCustomTabList\": false,\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": false,\n    \"followEntityOnStreamPost\": true,\n    \"followCreatedEntities\": false,\n    \"receiveNewSystemVersionNotifications\": true,\n    \"receiveNewModuleVersionNotifications\": true,\n    \"receiveNewModuleNotifications\": true,\n    \"receiveInstallDeleteModuleNotifications\": true\n}');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
                           `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                           `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `deleted` tinyint(1) DEFAULT '0',
                           `created_at` datetime DEFAULT NULL,
                           `modified_at` datetime DEFAULT NULL,
                           `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `is_active` tinyint(1) NOT NULL DEFAULT '0',
                           `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'simpleProduct',
                           `amount` double DEFAULT '0',
                           `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `product_family_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `brand_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `product_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'draft',
                           `price` double DEFAULT NULL,
                           `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `price_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `tax_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `ean` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `mpn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `packaging_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `uvp` double DEFAULT '0',
                           `tag` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'default={[]}',
                           `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `final_price` double DEFAULT NULL,
                           `final_price_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `long_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `long_description_de_de` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `long_description_en_us` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `product_serie_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `catalog_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `base_price_amount` double DEFAULT '0',
                           `packed_amount` double DEFAULT '0',
                           `measuring_unit_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                           `delivery_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `delivery_status_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `delivery_status_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `supplied` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `supplied_de_de` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `supplied_en_us` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                           `image_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `deleted`, `created_at`, `modified_at`, `sku`, `is_active`, `type`, `amount`, `created_by_id`, `modified_by_id`, `product_family_id`, `brand_id`, `name_en_us`, `name_de_de`, `product_status`, `price`, `currency`, `price_currency`, `tax_id`, `ean`, `mpn`, `packaging_id`, `uvp`, `tag`, `owner_user_id`, `assigned_user_id`, `final_price`, `final_price_currency`, `long_description`, `long_description_de_de`, `long_description_en_us`, `product_serie_id`, `data`, `catalog_id`, `base_price_amount`, `packed_amount`, `measuring_unit_id`, `delivery_status`, `delivery_status_de_de`, `delivery_status_en_us`, `supplied`, `supplied_de_de`, `supplied_en_us`, `image_id`) VALUES
('59a90c862458bd976', 'Philips 46PFL8007T Gray', 0, '2017-09-01 07:30:14', '2020-10-01 09:58:40', '13841946', 1, 'simpleProduct', 0, '1', '1', '59a81e767a1f2da77', '59a9067d123574e28', 'Philips 46PFL8007T Gray', 'Philips 46PFL8007T Grau', 'ready', 450, NULL, 'USD', '5a9e93a949d5ff3fa', '', '', '5d9ec8c1214877f29', 0, '[\"green\",\"red\",\"your_tag2\"]', '1', '1', 555, 'EUR', '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p>', '<p>Full HD 3D und Ambilight Smart TV. Entdecken Sie die Welt der Online-Inhalte mit dem intelligenten LED-Fernseher&nbsp;<b>Philips 46PFL8007</b>&nbsp;mit 3D. Informieren Sie sich über die unendlichen Möglichkeiten von Smart TV Premium, chatten Sie mit der mitgelieferten Kamera über TV über Skype und steuern Sie Ihren Fernseher mit einer einzigartigen Fernbedienung mit integrierter Tastatur und Laserpointer.</p><p><b>Entdecken Sie die Welt der Online-Inhalte mit Smart TV Premium:</b><br></p><ul><li>Eingebautes WLAN-Modul für die drahtlose Verbindung von Smart TV<br></li><li>Viele Internetanwendungen, Videoverleih und Live-Streaming</li><li>Steuern Sie Ihren Fernseher mit einem Smartphone, Tablet oder einer Tastatur</li><li>Suchen, Programmieren, Aufnehmen und Unterbrechen der Fernsehwiedergabe</li><li>Mit Wi-Fi Smart Screen können Sie fernsehen, wo immer Sie möchten</li><li>Möglichkeit, Sprach- und Videoanrufe über Skype direkt am Fernsehgerät zu tätigen</li></ul><p><b>Erstaunliche Qualität:</b><br></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video<br></li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p><b>2D zu 3D Konvertierung.&nbsp;</b>Sehen Sie sich alle Filme in natürlicher und stabiler 3D-Qualität an - sogar die alten Schwarz-Weiß-Klassiker. Mit den Philips Technologien können Sie auf Knopfdruck jeden 2D-Inhalt in Echtzeit in 3D konvertieren. Sie helfen, eine konstante Tiefe der Anzeige von Untertiteln beizubehalten und verhindern Fehler, wie das Auftreten von Hintergrundobjekten im Vordergrund.</p>', '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p>', NULL, NULL, '5b68537031382fafd', 0, 0, NULL, 'Standard', 'Standard', 'Standard', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '5f75a766d4d031a4c'),
('59a91396e7971debe', 'Canon EOS 5D Mark III + EF 24-105 F4L IS USM', 0, '2017-09-01 08:00:22', '2020-10-01 09:49:09', '13605290', 1, 'simpleProduct', 111, '1', '1', '59a81e31e90918ce4', '59a9047d5c52233e4', 'Canon EOS 5D Mark III + EF 24-105 F4L IS USM', 'Canon EOS 5D Mark III + EF 24-105 F4L IS USM', 'draft', 550, NULL, 'USD', '5a9e93a949d5ff3fa', '4321441222321', '24105', '5d9ec8b7277a32880', 0, '[\"yellow\",\"green\"]', '5b910d520c3fe4642', '5b910d520c3fe4642', 550, 'EUR', '<p><b>The EOS 5D Mark III</b>&nbsp;is a full-frame 22.3 megapixel single-lens digital SLR with 61-point AF and 6 frames per second continuous shooting speed. Take high-quality Full HD movies with manual control of all parameters from frame rate to sound.&nbsp;</p><p><b>Full-frame 22.3-megapixel sensor.&nbsp;</b>Take high-quality high-resolution images with the 22.3 Megapixel CMOS sensor and DIGIC 5+ image processing. Colors are bright, but natural, and even in dark and bright areas, there is a good detail.</p><p><b>High-speed continuous shooting</b>. Keep track of the shooting speed at 6 frames/sec. and instant recording up to 16270 continuously captured JPEG images to UDMA7.</p><p><b>61-point autofocus on a wide area.</b>&nbsp;Quick and accurate focus even on objects outside the central area with a 61-point focusing system on a wide area. 41 cross-type sensors (five of which are ultra-sensitive, double-cross type) provide extremely accurate tracking of moving objects.</p><p><b>Advantages:&nbsp;</b></p><ul><li>22.3-megapixel full-frame sensor<br></li><li>61-point autofocus</li><li>Continuous shooting at 6 fps.</li><li>ISO sensitivity in the range 100-25600 with the ability to expand to ISO 102400.</li><li>Full-HD video with manual control</li><li>Uncompressed HDMI in Full HD 8bit 4.2.2</li><li>14-bit DIGIC 5+ processor</li><li>Protection against adverse weather conditions</li><li>Display size 8.11 cm (3.2 inches) with a resolution of 1,040,000 points.</li><li>HDR mode</li></ul>', '<p><b>Die EOS 5D Mark III&nbsp;</b>ist ein 22,3-Megapixel-Digital-SLR mit Einzelbildobjektiv und Einzelbildobjekten mit 61 Bildpunkten und 6 Bildern pro Sekunde. Nehmen Sie hochwertige Full-HD-Filme mit manueller Steuerung aller Parameter von der Bildrate bis zum Klang auf.&nbsp;</p><p><b>22.3-Megapixel-Sensor</b>&nbsp;<b>im Vollformat.</b>&nbsp;Nehmen Sie mit dem 22,3-Megapixel-CMOS-Sensor und der Bildverarbeitung DIGIC 5+ hochauflösende Bilder in hoher Qualität auf. Die Farben sind hell, aber natürlich, und selbst in dunklen und hellen Bereichen gibt es ein gutes Detail.</p><p><b>Schnelle Serienaufnahme.&nbsp;</b>Verfolgen Sie die Aufnahmegeschwindigkeit mit 6 Bildern / Sek. und sofortige Aufnahme von bis zu 16270 kontinuierlich aufgenommenen JPEG-Bildern auf UDMA 7.</p><p><b>Autofokus mit 61 Punkten in einem weiten Bereich.&nbsp;</b>Schneller und präziser Fokus auch auf Objekte außerhalb des zentralen Bereichs mit einem 61-Punkt-Fokussiersystem in einem weiten Bereich. 41 Kreuzsensoren (von denen fünf extrem empfindlich sind und vom Typ Doppelkreuz sind) ermöglichen die äußerst präzise Erfassung von sich bewegenden Objekten.</p><p><b>Vorteile:</b></p><ul><li>22,3-Megapixel-Vollbildsensor<br></li><li>Autofokus mit 61 Punkten<br></li><li>Serienaufnahmen mit 6 Bildern pro Sekunde.</li><li>ISO-Empfindlichkeit im Bereich 100-25600 mit Erweiterungsmöglichkeit auf ISO 102400.</li><li>Full-HD-Video mit manueller Steuerung</li><li>Unkomprimiertes HDMI in Full HD 8bit 4.2.2</li><li>14-Bit-Prozessor DIGIC 5+</li><li>Schutz vor widrigen Witterungsbedingungen</li><li>Displaygröße 8,11 cm (3,2 Zoll) mit einer Auflösung von 1.040.000 Punkten.</li><li>HDR-Modus</li></ul>', '<p><b>The EOS 5D Mark III</b>&nbsp;is a full-frame 22.3 megapixel single-lens digital SLR with 61-point AF and 6 frames per second continuous shooting speed. Take high-quality Full HD movies with manual control of all parameters from frame rate to sound.&nbsp;</p><p><b>Full-frame 22.3-megapixel sensor.&nbsp;</b>Take high-quality high-resolution images with the 22.3 Megapixel CMOS sensor and DIGIC 5+ image processing. Colors are bright, but natural, and even in dark and bright areas, there is a good detail.</p><p><b>High-speed continuous shooting</b>. Keep track of the shooting speed at 6 frames/sec. and instant recording up to 16270 continuously captured JPEG images to UDMA7.</p><p><b>61-point autofocus on a wide area.</b>&nbsp;Quick and accurate focus even on objects outside the central area with a 61-point focusing system on a wide area. 41 cross-type sensors (five of which are ultra-sensitive, double-cross type) provide extremely accurate tracking of moving objects.</p><p><b>Advantages:&nbsp;</b></p><ul><li>22.3-megapixel full-frame sensor<br></li><li>61-point autofocus</li><li>Continuous shooting at 6 fps.</li><li>ISO sensitivity in the range 100-25600 with the ability to expand to ISO 102400.</li><li>Full-HD video with manual control</li><li>Uncompressed HDMI in Full HD 8bit 4.2.2</li><li>14-bit DIGIC 5+ processor</li><li>Protection against adverse weather conditions</li><li>Display size 8.11 cm (3.2 inches) with a resolution of 1,040,000 points.</li><li>HDR mode</li></ul>', NULL, NULL, '5b68537031382fafd', 0, 0, NULL, 'If out of Stock, not orderable', 'If out of Stock, not orderable', 'If out of Stock, not orderable', '[\"Charger\",\"Battery\",\"Lens\",\"Documentation\"]', '[\"Charger\",\"Battery\",\"Lens\",\"Documentation\"]', '[\"Charger\",\"Battery\",\"Lens\",\"Documentation\"]', '5f75a6084d0c49f48'),
('59b0e83c603a1b9c8', 'SDSDUNC-032G SDHC Ultra Class 10 UHS-I', 0, '2017-09-07 06:33:32', '2020-10-01 10:01:56', 'B014IX0202', 1, 'simpleProduct', 123, '1', '1', '59b0e4dc9080edfa7', '59b0e83a4c7c3d436', 'SDSDUNC-032G SDHC Ultra Class 10 UHS-I', 'SDSDUNC-032G SDHC Ultra Class 10 UHS-I', 'notReady', 2.15, NULL, 'USD', '5a9e93a949d5ff3fa', '5565423246742', '032G', '5d9ec8c94bda4af00', 0, '[\"your_tag1\",\"red\"]', '1', '1', 2.15, 'EUR', '<p>Now, the quality of Full HD photos and videos on compact photo or video cameras will be even better.&nbsp;<b>SanDisk Ultra SDHC UHS-I&nbsp;</b>memory cards reduce download time and also provide the performance needed to take and save 32GB of high-quality Full HD photo and video. The high speed of reading (up to 80 MB / s) greatly reduces the time taken to transfer photos and videos from a card to a computer.</p><p>The&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;memory cards meet the 10 speed class in Full HD video mode (1080p). Convenience and high quality video capture of any events, whether it is a family holiday, whether it is a sports match or a school performance.</p><p>The&nbsp;<b>32GB SanDisk Ultra SDHC UHS-I</b>&nbsp;memory card lets you take more photos and videos without changing cards or transferring files to your computer.</p><p>Memory Cards&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;- waterproof, impact resistant, resistant to temperature fluctuations and exposure to X-rays. Do not be afraid to take pictures near the pool or take pre-flight inspection at the airport: with expensive photos you will not happen.</p>', '<p>Die Qualität von Full-HD-Fotos und -Videos auf kompakten Foto- oder Videokameras wird jetzt noch besser. Die UHD-I-Speicherkarten von&nbsp;<b>SanDisk Ultra SDHC</b>&nbsp;verkürzen die Downloadzeit und bieten auch die Leistung, die erforderlich ist, um 32 GB hochwertiges Full HD-Foto und Video aufzunehmen und zu sparen. Die hohe Lesegeschwindigkeit (bis zu 80 MB / s) verringert die Zeit, die zum Übertragen von Fotos und Videos von einer Karte auf einen Computer benötigt wird, erheblich.</p><p>Die&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>-Speicherkarten entsprechen der 10-Geschwindigkeitsklasse im Full HD-Videomodus (1080p). Bequemlichkeit und qualitativ hochwertige Videoaufzeichnung von Ereignissen, ob Familienurlaub, Sportveranstaltung oder Schulaufführung.</p><p>Mit der&nbsp;<b>32-GB-SanDisk Ultra SDHC-UHS-I</b>-Speicherkarte können Sie mehr Fotos und Videos aufnehmen, ohne die Karte zu wechseln oder Dateien auf Ihren Computer zu übertragen.</p><p>Speicherkarten&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;- wasserdicht, schlagfest, beständig gegen Temperaturschwankungen und Röntgenstrahlung. Scheuen Sie sich nicht, in der Nähe des Pools zu fotografieren oder sich vor dem Flug am Flughafen zu inspizieren: Bei teuren Fotos werden Sie nicht vorkommen.</p>', '<p>Now, the quality of Full HD photos and videos on compact photo or video cameras will be even better.&nbsp;<b>SanDisk Ultra SDHC UHS-I&nbsp;</b>memory cards reduce download time and also provide the performance needed to take and save 32GB of high-quality Full HD photo and video. The high speed of reading (up to 80 MB / s) greatly reduces the time taken to transfer photos and videos from a card to a computer.</p><p>The&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;memory cards meet the 10 speed class in Full HD video mode (1080p). Convenience and high quality video capture of any events, whether it is a family holiday, whether it is a sports match or a school performance.</p><p>The&nbsp;<b>32GB SanDisk Ultra SDHC UHS-I</b>&nbsp;memory card lets you take more photos and videos without changing cards or transferring files to your computer.</p><p>Memory Cards&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;- waterproof, impact resistant, resistant to temperature fluctuations and exposure to X-rays. Do not be afraid to take pictures near the pool or take pre-flight inspection at the airport: with expensive photos you will not happen.</p>', NULL, NULL, '5d6519223c5d63a8a', 0, 0, NULL, 'External Storehouse', 'External Storehouse', 'External Storehouse', NULL, NULL, NULL, '5f75a8dc9309a1fc2'),
('59fad6841f243119b', 'Philips 46PFL8007T Black', 0, '2017-11-02 08:25:40', '2020-10-01 09:54:22', '13841947', 1, 'simpleProduct', 0, '1', '1', '59a81e767a1f2da77', '59a9067d123574e28', 'Philips 46PFL8007T Black', 'Philips 46PFL8007T Schwarz', 'notReady', 450, NULL, 'USD', '5a9e93a949d5ff3fa', '', '', '5d9ec8c1214877f29', 0, '[\"your_tag1\",\"red\",\"green\"]', '1', '1', 560, 'EUR', '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p>', '<p>Full HD 3D und Ambilight Smart TV. Entdecken Sie die Welt der Online-Inhalte mit dem intelligenten LED-Fernseher&nbsp;<b>Philips 46PFL8007</b>&nbsp;mit 3D. Informieren Sie sich über die unendlichen Möglichkeiten von Smart TV Premium, chatten Sie mit der mitgelieferten Kamera über TV über Skype und steuern Sie Ihren Fernseher mit einer einzigartigen Fernbedienung mit integrierter Tastatur und Laserpointer.</p><p><b>Entdecken Sie die Welt der Online-Inhalte mit Smart TV Premium:</b><br></p><ul><li>Eingebautes WLAN-Modul für die drahtlose Verbindung von Smart TV<br></li><li>Viele Internetanwendungen, Videoverleih und Live-Streaming</li><li>Steuern Sie Ihren Fernseher mit einem Smartphone, Tablet oder einer Tastatur</li><li>Suchen, Programmieren, Aufnehmen und Unterbrechen der Fernsehwiedergabe</li><li>Mit Wi-Fi Smart Screen können Sie fernsehen, wo immer Sie möchten</li><li>Möglichkeit, Sprach- und Videoanrufe über Skype direkt am Fernsehgerät zu tätigen</li></ul><p><b>Erstaunliche Qualität:</b><br></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video<br></li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p><b>2D zu 3D Konvertierung.&nbsp;</b>Sehen Sie sich alle Filme in natürlicher und stabiler 3D-Qualität an - sogar die alten Schwarz-Weiß-Klassiker. Mit den Philips Technologien können Sie auf Knopfdruck jeden 2D-Inhalt in Echtzeit in 3D konvertieren. Sie helfen, eine konstante Tiefe der Anzeige von Untertiteln beizubehalten und verhindern Fehler, wie das Auftreten von Hintergrundobjekten im Vordergrund.</p>', '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p>', NULL, NULL, '5b68537031382fafd', 0, 0, NULL, 'If out of Stock, offline', 'If out of Stock, offline', 'If out of Stock, offline', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '5f75a7437572382c4'),
('59fb0aa27855b0afd', 'Apple iPhone X 64GB Silver', 0, '2017-11-02 12:08:02', '2020-10-01 09:42:21', '3281sv', 1, 'simpleProduct', 100, '1', '1', '59fb0a8658e98de76', '59fb0a9d8e5a74a48', 'Apple iPhone X 64GB Silver', 'Apple iPhone X 64GB Silber', 'reviewed', 950, NULL, 'USD', '5a9e93a949d5ff3fa', 'B07754YL4MSV', '', '5d9ec8aca28defa34', 0, '[\"red\",\"your_tag1\",\"your_tag2\",\"yellow\"]', '5b6807ebe42c89d66', '5b6807ebe42c89d66', 1250, 'EUR', '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p style=\"margin-bottom: 9.5px;\"><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p>', '<p><b>Design und Anzeige.&nbsp;</b>Wie erstelle ich ein hochintelligentes Gerät, dessen Körper und Anzeige ein Ganzes bilden? Diese Frage haben wir uns bei der Entwicklung des allerersten iPhone gestellt. Mit dem iPhone X haben wir es wieder gelöst.</p><p><b>Vorstellung des Super-Retina-Displays. Die Arbeit der Ingenieurkunst</b>. Die OLED-Technologie im Super Retina HD-Display wurde stark verbessert. Wir haben sie an unsere höchsten Standards angepasst und ein HDR-Display mit einem Kontrast von 1.000.000: 1, hoher Auflösung und beeindruckender Helligkeit, erweitertem Farbraum und unübertroffener Farbgenauigkeit geschaffen.</p><p><b>Gesichts-ID.&nbsp;</b>Es scheint, dass es einfacher und natürlicher zu berühren ist? Vielleicht einen Blick? Diese Idee bildete die Grundlage von Face ID, einem leistungsfähigen und sicheren Authentifizierungssystem. Sie können das Gerät schnell und einfach entsperren und Einkäufe bezahlen. Und es ist noch komfortabler als Touch ID.</p><p><b>Kamera TrueDepth.&nbsp;</b>Wie viele innovative Ideen können auf kleinem Raum umgesetzt werden? Es stellt sich viel heraus. TrueDepth ist ein ganzes System von High-Tech-Kameras und Sensoren, mit denen das iPhone X einzigartige neue Funktionen hat.</p><p style=\"margin-bottom: 9.5px;\"><b>12-Megapixel-Dual-Kamera.&nbsp;</b>Kann die Kamera mehr als das menschliche Auge sehen? Um dies zu lernen, haben wir eine leistungsstarke Kamera mit optischer Bildstabilisierung verwendet und die fortschrittliche Technologie des maschinellen Lernens des A11 Bionic-Prozessors hinzugefügt. Das Ergebnis ist eine Kamera, die mehr sieht und mehr kann.</p>', '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p style=\"margin-bottom: 9.5px;\"><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p>', NULL, NULL, '5d6519223c5d63a8a', 0, 0, NULL, 'If out of Stock, not orderable', 'If out of Stock, not orderable', 'If out of Stock, not orderable', '[\"Headset\",\"Charger\",\"Documentation\"]', '[\"Headset\",\"Charger\",\"Documentation\"]', '[\"Headset\",\"Charger\",\"Documentation\"]', '5f75a430b5df63b3d'),
('59fb0e05a0c46a91a', 'Apple iPhone X 64GB Space Gray', 0, '2017-11-02 12:22:29', '2020-10-01 09:43:36', '328108', 0, 'simpleProduct', 5, '1', '1', '59fb0a8658e98de76', '59fb0a9d8e5a74a48', 'Apple iPhone X 64GB Space Gray', 'Apple iPhone X 64GB Leerraum grau', 'reviewed', 950, NULL, 'USD', '5a9e93a949d5ff3fa', '', '', '5d9ec8aca28defa34', 0, '[\"red\",\"green\",\"yellow\",\"your_tag2\"]', '5b6807ebe42c89d66', '5b6807ebe42c89d66', 1250, 'EUR', '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p>', '<p><b>Design und Anzeige.&nbsp;</b>Wie erstelle ich ein hochintelligentes Gerät, dessen Körper und Anzeige ein Ganzes bilden? Diese Frage haben wir uns bei der Entwicklung des allerersten iPhone gestellt. Mit dem iPhone X haben wir es wieder gelöst.</p><p><b>Vorstellung des Super-Retina-Displays. Die Arbeit der Ingenieurkunst</b>. Die OLED-Technologie im Super Retina HD-Display wurde stark verbessert. Wir haben sie an unsere höchsten Standards angepasst und ein HDR-Display mit einem Kontrast von 1.000.000: 1, hoher Auflösung und beeindruckender Helligkeit, erweitertem Farbraum und unübertroffener Farbgenauigkeit geschaffen.</p><p><b>Gesichts-ID.&nbsp;</b>Es scheint, dass es einfacher und natürlicher zu berühren ist? Vielleicht einen Blick? Diese Idee bildete die Grundlage von Face ID, einem leistungsfähigen und sicheren Authentifizierungssystem. Sie können das Gerät schnell und einfach entsperren und Einkäufe bezahlen. Und es ist noch komfortabler als Touch ID.</p><p><b>Kamera TrueDepth.&nbsp;</b>Wie viele innovative Ideen können auf kleinem Raum umgesetzt werden? Es stellt sich viel heraus. TrueDepth ist ein ganzes System von High-Tech-Kameras und Sensoren, mit denen das iPhone X einzigartige neue Funktionen hat.</p><p style=\"margin-bottom: 9.5px;\"><b>12-Megapixel-Dual-Kamera.&nbsp;</b>Kann die Kamera mehr als das menschliche Auge sehen? Um dies zu lernen, haben wir eine leistungsstarke Kamera mit optischer Bildstabilisierung verwendet und die fortschrittliche Technologie des maschinellen Lernens des A11 Bionic-Prozessors hinzugefügt. Das Ergebnis ist eine Kamera, die mehr sieht und mehr kann.</p>', '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p>', NULL, NULL, '5d6519223c5d63a8a', 0, 0, NULL, 'External Storehouse', 'External Storehouse', 'External Storehouse', '[\"Headset\",\"Charger\",\"Documentation\"]', '[\"Headset\",\"Charger\",\"Documentation\"]', '[\"Headset\",\"Charger\",\"Documentation\"]', '5f75a4bcbc8432490'),
('59fb152fe4a37088e', 'Canon eos 5d mark III case', 0, '2017-11-02 12:53:03', '2020-10-01 09:51:02', '369852147', 1, 'simpleProduct', 50, '1', '1', '5cb6e3a0b4208e9ec', NULL, 'Canon eos 5d mark III case', 'Canon eos 5d mark III case', 'reviewed', 10, NULL, 'USD', NULL, '', '', '5d9ec8b7277a32880', 0, '[\"your_tag1\",\"blue\",\"red\"]', '5b910d520c3fe4642', '5b910d520c3fe4642', 12, 'EUR', '<p>Protective Silicone Case for&nbsp;<b>Canon 5D Mark III, 5Ds, 5Dr</b>.</p><p>Protect your digital camera from dust, fingerprints and scratches.</p><p>This silicone case is fully compatible with this camera model! Well dressed and very functional.</p><p>Ensure the safety of your camera and give an exclusive look.</p>', '<p>Schutzhülle aus Silikon für&nbsp;<b>Canon 5D Mark III, 5Ds, 5Dr.</b></p><p>Schützen Sie Ihre Digitalkamera vor Staub, Fingerabdrücken und Kratzern.</p><p>Diese Silikonhülle ist voll kompatibel mit diesem Kameramodell! Gut gekleidet und sehr funktionell.</p><p>Stellen Sie die Sicherheit Ihrer Kamera sicher und verleihen Sie einen exklusiven Look.</p>', '<p>Protective Silicone Case for&nbsp;<b>Canon 5D Mark III, 5Ds, 5Dr</b>.</p><p>Protect your digital camera from dust, fingerprints and scratches.</p><p>This silicone case is fully compatible with this camera model! Well dressed and very functional.</p><p>Ensure the safety of your camera and give an exclusive look.</p>', NULL, NULL, '5d6519223c5d63a8a', 0, 0, NULL, 'Standard', 'Standard', 'Standard', '[]', '[]', '[]', '5f75a67aada9ded1d'),
('5a9e93d0e1e4fd1b9', 'Canon EOS 1100D', 0, '2018-03-06 13:12:48', '2020-10-01 09:45:38', 'canon_1100D', 0, 'simpleProduct', 1, '1', '1', '59a81e31e90918ce4', '59a9047d5c52233e4', 'Canon EOS 1100D', 'Canon EOS 1100D', 'reviewed', 346.94, NULL, 'EUR', '5a9e93a949d5ff3fa', '5553442231211', '1100D', '5d9ec8b7277a32880', 399, '[\"yellow\",\"red\",\"your_tag2\"]', '5b910d520c3fe4642', '5bbaf1daea9ee8a6b', 346.94, 'EUR', '<p><b>The Canon EOS 1100D</b>&nbsp;is a lightweight and compact digital SLR camera with the ability to record full high definition video (HD).</p><div>Step to the unsurpassed photo quality with an APS-C sensor of&nbsp;<b>12 million pixels</b>&nbsp;and a 14-bit&nbsp;<b>DIGIC 4</b>&nbsp;processor. The camera has an ISO sensitivity range of up to 6400, which allows you to take clear pictures even in low light conditions.</div><div>The camera can shoot&nbsp;<b>high-resolution video</b>&nbsp;at a speed of 25 or 30 frames per second, with automatic exposure adjustment, which allows you to concentrate on the event being filmed.</div><div><b>9-point autofocus system</b>&nbsp;allows you to quickly focus on both static objects and moving. The center point of the cross type, sensitive to horizontal and vertical lines.</div><div><b>The 63-zone metering sensor</b>&nbsp;divides the scene into 63 areas to analyze and find the optimal combination of shutter speed, aperture and ISO.</div><div>A large and clear&nbsp;<b>2.7-inch display</b>&nbsp;(230,000 dots) makes it easy to compose a shot, view captured images, and move comfortably through the camera menu.</div><div>A wide fleet of EF and EF-S optics and optional accessories are available for the camera, recognized by many professionals around the world.</div><div><div>This model is ideal for a person who has just started shooting with a digital SLR camera, as the menu contains a brief description of each key setting and its purpose, which helps beginners to get acquainted with the&nbsp;<b>EOS 1100D</b>&nbsp;while working with it.</div><div><b>The Basic +</b>&nbsp;technology allows you to customize the basic auto settings in accordance with the light and environment.</div></div>', '<p><b>Die Canon EOS 1100D</b>&nbsp;ist eine leichte und kompakte digitale Spiegelreflexkamera mit der Fähigkeit, High-Definition-Video (HD) aufzunehmen.<br></p><div>Steigern Sie die unübertroffene Fotoqualität mit einem APS-C-Sensor mit&nbsp;<b>12 Millionen Pixel</b>&nbsp;und einem 14-Bit-Prozessor&nbsp;<b>DIGIC 4</b>. Die Kamera verfügt über eine ISO-Empfindlichkeit von bis zu 6400. Damit können Sie auch bei schlechten Lichtverhältnissen klare Bilder aufnehmen.</div><div>Die Kamera kann<b>&nbsp;hochauflösende Videos</b>&nbsp;mit einer Geschwindigkeit von 25 oder 30 Bildern pro Sekunde aufnehmen. Die Belichtungseinstellung erfolgt automatisch, sodass Sie sich auf das aufgenommene Ereignis konzentrieren können.</div><div><b>Mit dem 9-Punkt-Autofokus-System</b>&nbsp;können Sie sowohl statische Objekte als auch Bewegungen schnell scharfstellen. Der Mittelpunkt des Kreuztyps, empfindlich für horizontale und vertikale Linien.</div><div><b>Der Messbereichssensor mit 63 Zonen</b>&nbsp;unterteilt die Szene in 63 Bereiche, um die optimale Kombination aus Verschlusszeit, Blende und ISO zu analysieren.</div><div>Ein großes und übersichtliches&nbsp;<b>2,7-Zoll-Display</b>&nbsp;(230.000 Punkte) erleichtert das Zusammenstellen von Bildern, das Anzeigen von aufgenommenen Bildern und das bequeme Bewegen durch das Kameramenü.</div><div>Für die Kamera steht eine breite Palette von EF- und EF-S-Optiken sowie optionales Zubehör zur Verfügung, das von vielen Fachleuten auf der ganzen Welt anerkannt wird.</div><div><div>Dieses Modell ist ideal für Personen, die gerade erst mit einer digitalen Spiegelreflexkamera fotografiert haben. Das Menü enthält eine kurze Beschreibung jeder Tasteneinstellung und ihres Verwendungszwecks, sodass Anfänger die<b>&nbsp;EOS 1100D</b>&nbsp;während der Arbeit kennenlernen können.</div><div><b>Mit der Basic +</b>&nbsp;Technologie können Sie die grundlegenden automatischen Einstellungen an das Licht und die Umgebung anpassen.</div></div>', '<p><b>The Canon EOS 1100D</b>&nbsp;is a lightweight and compact digital SLR camera with the ability to record full high definition video (HD).</p><div>Step to the unsurpassed photo quality with an APS-C sensor of&nbsp;<b>12 million pixels</b>&nbsp;and a 14-bit&nbsp;<b>DIGIC 4</b>&nbsp;processor. The camera has an ISO sensitivity range of up to 6400, which allows you to take clear pictures even in low light conditions.</div><div>The camera can shoot&nbsp;<b>high-resolution video</b>&nbsp;at a speed of 25 or 30 frames per second, with automatic exposure adjustment, which allows you to concentrate on the event being filmed.</div><div><b>9-point autofocus system</b>&nbsp;allows you to quickly focus on both static objects and moving. The center point of the cross type, sensitive to horizontal and vertical lines.</div><div><b>The 63-zone metering sensor</b>&nbsp;divides the scene into 63 areas to analyze and find the optimal combination of shutter speed, aperture and ISO.</div><div>A large and clear&nbsp;<b>2.7-inch display</b>&nbsp;(230,000 dots) makes it easy to compose a shot, view captured images, and move comfortably through the camera menu.</div><div>A wide fleet of EF and EF-S optics and optional accessories are available for the camera, recognized by many professionals around the world.</div><div><div>This model is ideal for a person who has just started shooting with a digital SLR camera, as the menu contains a brief description of each key setting and its purpose, which helps beginners to get acquainted with the&nbsp;<b>EOS 1100D</b>&nbsp;while working with it.</div><div><b>The Basic +</b>&nbsp;technology allows you to customize the basic auto settings in accordance with the light and environment.</div></div>', NULL, NULL, '5b68537031382fafd', 0, 0, NULL, 'If out of Stock, offline', 'If out of Stock, offline', 'If out of Stock, offline', '[\"Battery\",\"Lens\",\"Charger\",\"Documentation\"]', '[\"Battery\",\"Lens\",\"Charger\",\"Documentation\"]', '[\"Battery\",\"Lens\",\"Charger\",\"Documentation\"]', '5f75a5380c2b5aa61'),
('5ac229e0da6a4b297', 'New Webcam', 0, '2018-04-02 13:02:24', '2019-08-28 19:38:04', 'newwebcam', 1, 'simpleProduct', 0, '1', '1', '59a81f145450ab8e6', NULL, 'New Webcam', 'New Webcam', 'draft', NULL, NULL, NULL, NULL, '', '', NULL, 0, '[\"green\",\"red\",\"your_tag1\"]', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5b68539dac54115ed', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5b8649f0dae076eb0', 'Samsung QE55Q6FNAUXUA', 0, '2018-08-29 07:23:28', '2020-10-01 10:00:01', 'QE55Q6FNAUXUA', 1, 'simpleProduct', 0, '1', '1', '59a81e767a1f2da77', '59a9069446cb01c2b', 'Samsung QE55Q6FNAUXUA', 'Samsung QE55Q6FNAUXUA', 'notReady', 500, NULL, 'EUR', NULL, 'QE55Q6FNAUXUA', '', '5d9ec8c1214877f29', 0, '[\"your_tag1\",\"your_tag2\"]', '1', '1', 800, 'EUR', '<p><b>Excellence in every frame</b></p><p>Samsung TV will open before you a world of incredibly high-quality and highly detailed images with bright and vivid colors. The modern technologies and developments involved in it allow him to impress you. This model has received a matrix with a wide coverage of colors and shades, so that it is capable of transmitting media that does not actually differ from the real world. The TV uses the technology of the extended dynamic range Q HDR 1000. It allows you to display an image on the screen exactly as the director intended, with all the details on the bright and darkened parts of the picture. Peak Illuminator technology will make any dark scene incredibly detailed. Innovative development of Precision Black in tandem with local dimming functionality, provides improved clarity of content display.</p><p><b>It\'s even easier to manage.</b></p><p>This model of the&nbsp;<b>Samsung QEQ6FNAUXUA series</b>&nbsp;is equipped with the One Remote Control universal remote control. With it, you can easily control not only the TV, but also external devices connected to it. The convenient location of the keys and special icons allow you to quickly understand the management. The main advantage of the remote is the support of voice control, which makes interaction with the TV more convenient. Install the Smart View application on your mobile device, which will allow you to use the gadget instead of the remote. In addition, this software allows you to broadcast on your TV any media. Install the application on your computer, and add files to a special folder to play them with just one click.</p><p><b>Smarter than ever</b></p><p>Enjoy watching multimedia content online thanks to the Smart TV functionality on your Samsung TV. It works on the basis of the operating system OS Tizen 3.0, which is characterized by a simple control menu. This will allow you to spend more time viewing media content, rather than searching for it. Smart TV will give you access to a huge database of games, videos and applications.</p><p><b>Incredibly high-quality sound</b></p><p><b>Samsung QEQ6FNAUXUA TV</b>&nbsp;gives you the ability to immerse yourself in the media. It is equipped with a powerful audio system, which is represented by two speakers (2 x 10 W). Due to the design features of this model, the sound remains absolutely clear even at the maximum volume level.</p>', '<p><b>Exzellenz in jedem Rahmen</b></p><p>Samsung TV eröffnet Ihnen eine Welt unglaublich hochwertiger und detailreicher Bilder mit hellen und lebendigen Farben. Dank der modernen Technologien und Entwicklungen kann er Sie beeindrucken. Dieses Modell hat eine Matrix mit einer breiten Palette an Farben und Schattierungen erhalten, so dass es Medien übertragen kann, die sich tatsächlich nicht von der realen Welt unterscheiden. Das Fernsehgerät verwendet die Technologie des erweiterten dynamischen Bereichs Q HDR 1000. Es ermöglicht Ihnen, ein Bild auf dem Bildschirm genau so anzuzeigen, wie es der Regisseur beabsichtigt, mit allen Details zu den hellen und verdunkelten Bildbereichen. Die Peak Illuminator-Technologie macht jede dunkle Szene unglaublich detailliert. Durch die innovative Entwicklung von Precision Black in Kombination mit der lokalen Dimmfunktion wird die Anzeige von Inhalten klarer.</p><p><b>Es ist noch einfacher zu verwalten.</b></p><p>Dieses Modell der&nbsp;<b>Samsung QEQ6FNAUXUA-Serie</b>&nbsp;ist mit der Universalfernbedienung One Remote Control ausgestattet. Damit können Sie nicht nur den Fernseher, sondern auch angeschlossene externe Geräte problemlos steuern. Durch die praktische Anordnung der Tasten und der speziellen Symbole können Sie die Verwaltung schnell verstehen. Der Hauptvorteil der Fernbedienung ist die Unterstützung der Sprachsteuerung, die die Interaktion mit dem Fernsehgerät komfortabler macht. Installieren Sie die Smart View-Anwendung auf Ihrem mobilen Gerät. Dadurch können Sie das Gadget anstelle der Fernbedienung verwenden. Darüber hinaus können Sie mit dieser Software beliebige Medien auf Ihrem Fernsehgerät ausstrahlen. Installieren Sie die Anwendung auf Ihrem Computer und fügen Sie Dateien zu einem speziellen Ordner hinzu, um sie mit einem Klick abzuspielen.</p><p><b>Schlauer als je zuvor</b></p><p>Dank der Smart TV-Funktion Ihres Samsung-Fernsehgeräts können Sie Multimedia-Inhalte online ansehen. Es arbeitet auf Basis des Betriebssystems OS Tizen 3.0, das sich durch ein einfaches Steuerungsmenü auszeichnet. Auf diese Weise können Sie mehr Zeit darauf verwenden, Medieninhalte anzuzeigen, als danach zu suchen. Smart TV ermöglicht Ihnen den Zugriff auf eine riesige Datenbank mit Spielen, Videos und Anwendungen.</p><p><b>Unglaublich hochwertiger Klang</b></p><p><b>Samsung QEQ6FNAUXUA TV</b>&nbsp;gibt Ihnen die Möglichkeit, in die Medien einzutauchen. Es ist mit einem leistungsstarken Audiosystem ausgestattet, das durch zwei Lautsprecher (2 x 10 W) dargestellt wird. Aufgrund der Designmerkmale dieses Modells bleibt der Klang auch bei maximaler Lautstärke absolut klar.</p>', '<p><b>Excellence in every frame</b></p><p>Samsung TV will open before you a world of incredibly high-quality and highly detailed images with bright and vivid colors. The modern technologies and developments involved in it allow him to impress you. This model has received a matrix with a wide coverage of colors and shades, so that it is capable of transmitting media that does not actually differ from the real world. The TV uses the technology of the extended dynamic range Q HDR 1000. It allows you to display an image on the screen exactly as the director intended, with all the details on the bright and darkened parts of the picture. Peak Illuminator technology will make any dark scene incredibly detailed. Innovative development of Precision Black in tandem with local dimming functionality, provides improved clarity of content display.</p><p><b>It\'s even easier to manage.</b></p><p>This model of the&nbsp;<b>Samsung QEQ6FNAUXUA series</b>&nbsp;is equipped with the One Remote Control universal remote control. With it, you can easily control not only the TV, but also external devices connected to it. The convenient location of the keys and special icons allow you to quickly understand the management. The main advantage of the remote is the support of voice control, which makes interaction with the TV more convenient. Install the Smart View application on your mobile device, which will allow you to use the gadget instead of the remote. In addition, this software allows you to broadcast on your TV any media. Install the application on your computer, and add files to a special folder to play them with just one click.</p><p><b>Smarter than ever</b></p><p>Enjoy watching multimedia content online thanks to the Smart TV functionality on your Samsung TV. It works on the basis of the operating system OS Tizen 3.0, which is characterized by a simple control menu. This will allow you to spend more time viewing media content, rather than searching for it. Smart TV will give you access to a huge database of games, videos and applications.</p><p><b>Incredibly high-quality sound</b></p><p><b>Samsung QEQ6FNAUXUA TV</b>&nbsp;gives you the ability to immerse yourself in the media. It is equipped with a powerful audio system, which is represented by two speakers (2 x 10 W). Due to the design features of this model, the sound remains absolutely clear even at the maximum volume level.</p>', NULL, NULL, '5b68539dac54115ed', 0, 0, NULL, 'If out of Stock, not orderable', 'If out of Stock, not orderable', 'If out of Stock, not orderable', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '[\"Remote Control (with batteries)\",\"Power cord\",\"Documentation\"]', '5f75a882d560f4973');
INSERT INTO `product` (`id`, `name`, `deleted`, `created_at`, `modified_at`, `sku`, `is_active`, `type`, `amount`, `created_by_id`, `modified_by_id`, `product_family_id`, `brand_id`, `name_en_us`, `name_de_de`, `product_status`, `price`, `currency`, `price_currency`, `tax_id`, `ean`, `mpn`, `packaging_id`, `uvp`, `tag`, `owner_user_id`, `assigned_user_id`, `final_price`, `final_price_currency`, `long_description`, `long_description_de_de`, `long_description_en_us`, `product_serie_id`, `data`, `catalog_id`, `base_price_amount`, `packed_amount`, `measuring_unit_id`, `delivery_status`, `delivery_status_de_de`, `delivery_status_en_us`, `supplied`, `supplied_de_de`, `supplied_en_us`, `image_id`) VALUES
('5be971728d44f1a11', 'Canon EOS 5D Mark IV 24-105mm IS II USM Black', 0, '2018-11-12 12:26:26', '2020-10-01 09:52:31', '9876599888', 1, 'simpleProduct', 0, '1', '1', '59a81e31e90918ce4', '59a9047d5c52233e4', 'Canon EOS 5D Mark IV 24-105mm IS II USM Black', 'Canon EOS 5D Mark IV 24-105mm IS II USM Schwarz', 'reviewed', 709, NULL, 'EUR', '5a9e93a949d5ff3fa', '1465777372854', '5D-24-105', '5d9ec8b7277a32880', 0, '[\"green\",\"yellow\"]', '1', '1', 865, 'EUR', '<p><b>High detail.&nbsp;</b>For completeness, the 30.4-megapixel CMOS image sensor allows you to create images with a high level of detail and low noise even in brightly lit and highly shaded areas of the frame. Thanks to the improved resolution, the camera transmits the smallest details, and you can crop the frame and create perfect pictures without losing image quality.</p><p>Each of the 30 million pixels EOS 5D Mark IV camera consists of two photodiodes that can be used together or separately. This technology allows you to create files in Dual Pixel RAW (DPRAW) format. This file format contains two images taken from two slightly different angles. When processing the footage using Digital Photo Professional software, the user will be able to apply the data contained in the file of the Dual Pixel RAW format to the micro-adjustment of the position of the maximum sharpness zone.</p><p><b>The transfer of the smallest details.&nbsp;</b>The high-resolution image style, “Fine Detail,” which the 5D Mark IV camera is equipped with, is designed to transmit the maximum amount of detail in the image that was received by a 30.4-megapixel sensor. This setting emphasizes tone transitions and high detail.</p><p>The high-resolution image style has three adjustable sharpness settings, similar to the Unsharp Mask filter in Adobe Photoshop and Canon\'s DPP.</p>', '<p><b>Hohe detail.&nbsp;</b>Der 30,4-Megapixel-CMOS-Bildsensor ermöglicht es Ihnen, auch in hell erleuchteten und stark schattierten Bereichen des Bildes Bilder mit hoher Detailgenauigkeit und geringem Rauschen zu erzeugen. Dank der verbesserten Auflösung überträgt die Kamera kleinste Details. Sie können den Rahmen beschneiden und perfekte Bilder erstellen, ohne die Bildqualität zu beeinträchtigen.</p><p>Jede der 30 Millionen Pixel EOS 5D Mark IV-Kameras besteht aus zwei Fotodioden, die zusammen oder getrennt verwendet werden können. Mit dieser Technologie können Sie Dateien im Dual-Pixel-RAW-Format (DPRAW) erstellen. Dieses Dateiformat enthält zwei Bilder, die aus zwei verschiedenen Blickwinkeln aufgenommen wurden. Bei der Verarbeitung des Filmmaterials mit der Software Digital Photo Professional kann der Benutzer die in der Datei des Dual Pixel RAW-Formats enthaltenen Daten auf die Mikroeinstellung der Position der maximalen Schärfezone anwenden.</p><p><b>Die Übertragung kleinster Details.&nbsp;</b>Der hochauflösende Bildstil „Fine Detail“, mit dem die 5D Mark IV-Kamera ausgestattet ist, überträgt die maximale Detailmenge in dem Bild, das von einem 30,4-Megapixel-Sensor empfangen wurde. Diese Einstellung betont Tonübergänge und hohe Details.</p><p>Der hochauflösende Bildstil verfügt über drei einstellbare Schärfeeinstellungen, ähnlich wie der Filter Unscharfmaskierung in Adobe Photoshop und Canon DPP.</p>', '<p><b>High detail.&nbsp;</b>For completeness, the 30.4-megapixel CMOS image sensor allows you to create images with a high level of detail and low noise even in brightly lit and highly shaded areas of the frame. Thanks to the improved resolution, the camera transmits the smallest details, and you can crop the frame and create perfect pictures without losing image quality.</p><p>Each of the 30 million pixels EOS 5D Mark IV camera consists of two photodiodes that can be used together or separately. This technology allows you to create files in Dual Pixel RAW (DPRAW) format. This file format contains two images taken from two slightly different angles. When processing the footage using Digital Photo Professional software, the user will be able to apply the data contained in the file of the Dual Pixel RAW format to the micro-adjustment of the position of the maximum sharpness zone.</p><p><b>The transfer of the smallest details.&nbsp;</b>The high-resolution image style, “Fine Detail,” which the 5D Mark IV camera is equipped with, is designed to transmit the maximum amount of detail in the image that was received by a 30.4-megapixel sensor. This setting emphasizes tone transitions and high detail.</p><p>The high-resolution image style has three adjustable sharpness settings, similar to the Unsharp Mask filter in Adobe Photoshop and Canon\'s DPP.</p>', NULL, NULL, '5b68537031382fafd', 0, 0, NULL, 'External Storehouse', 'External Storehouse', 'External Storehouse', '[\"Charger\",\"Battery\",\"Lens\",\"Documentation\"]', '[\"Charger\",\"Battery\",\"Lens\",\"Documentation\"]', '[\"Charger\",\"Battery\",\"Lens\",\"Documentation\"]', '5f75a6d48444aca15'),
('5be98924b15087ff5', 'xCase on the iPhone X Silicone Case', 0, '2018-11-12 14:07:32', '2020-10-01 10:02:46', '36418850', 1, 'simpleProduct', 0, '1', '1', '5cb6e3a0b4208e9ec', '59fb0a9d8e5a74a48', 'xCase on the iPhone X Silicone Case', 'xCase für iPhone X Silikonhülle', 'reviewed', 10, NULL, 'EUR', '5a9e93a949d5ff3fa', '', '', '5d9ec8c94bda4af00', 0, '[\"yellow\",\"red\",\"blue\"]', '1', '1', 15, 'EUR', '<p><b>Case cover for the iPhone X Silicone Case sky blue</b>&nbsp;is a fairly good replica of the cover that is available from Apple. This model will allow you to save money considerably, while you will not have enough time. Fully repeating the design and materials of the original, the presented case is made on the basis of silicone, which has a pleasant to the touch surface of heavenly blue. On the inside, there is also a microfiber pad, which will prevent possible scratches, scratches and other traces of wearing this accessory. The case is so simple and perfectly suited to your iPhone 4. The screen is also protected by a small protrusion from the front. Case cover for the iPhone X Silicone Case sky blue is not only a reliable protection against falls and strokes, but also a stylish add-on to your smartphone.<br></p>', '<p>Schutzhülle für das&nbsp;<b>iPhone X Silikonhülle Sky Blue</b>&nbsp;ist eine recht gute Nachbildung des von Apple erhältlichen Schutzdeckels. Mit diesem Modell können Sie erheblich Geld sparen, während Sie nicht genügend Zeit haben. Design und Materialien des Originals werden vollständig wiederholt. Das vorgestellte Gehäuse wurde auf der Basis von Silikon hergestellt, das eine angenehm haptische Oberfläche von himmlischem Blau aufweist. Auf der Innenseite befindet sich auch ein Mikrofaserpad, das mögliche Kratzer, Kratzer und andere Tragespuren dieses Zubehörs verhindert. Die Hülle ist so einfach und perfekt für Ihr iPhone 4 geeignet. Der Bildschirm ist außerdem durch einen kleinen Vorsprung von vorne geschützt. Schutzhülle für das iPhone X Silikonhülle Sky Blue ist nicht nur ein zuverlässiger Schutz vor Stürzen und Schlaganfällen, sondern auch ein stylisches Add-On für Ihr Smartphone.<br></p>', '<p><b>Case cover for the iPhone X Silicone Case sky blue</b>&nbsp;is a fairly good replica of the cover that is available from Apple. This model will allow you to save money considerably, while you will not have enough time. Fully repeating the design and materials of the original, the presented case is made on the basis of silicone, which has a pleasant to the touch surface of heavenly blue. On the inside, there is also a microfiber pad, which will prevent possible scratches, scratches and other traces of wearing this accessory. The case is so simple and perfectly suited to your iPhone 4. The screen is also protected by a small protrusion from the front. Case cover for the iPhone X Silicone Case sky blue is not only a reliable protection against falls and strokes, but also a stylish add-on to your smartphone.<br></p>', NULL, NULL, '5d6519223c5d63a8a', 0, 0, NULL, 'Standard', 'Standard', 'Standard', '[]', '[]', '[]', '5f75a93d1919f38de'),
('5da95464266aa342e', 'Apple iPhone 11 (128GB) - Black', 0, '2019-10-18 05:57:56', '2020-10-01 09:36:28', 'B07XSS3Z9J', 1, 'simpleProduct', 0, '1', '1', '59fb0a8658e98de76', '59fb0a9d8e5a74a48', 'Apple iPhone 11 (128GB) - Black', 'Apple iPhone 11 (128GB) - Schwarz', 'ready', 950, NULL, 'USD', '5a9e93a949d5ff3fa', '', '', '5d9ec8aca28defa34', 0, '[\"blue\",\"yellow\",\"green\",\"red\",\"your_tag1\"]', '5b6807ebe42c89d66', '5b6807ebe42c89d66', 1250, 'EUR', '<p><b>All‑new dual‑camera system. </b>Take your photos from wide to ultra wide. A redesigned interface uses the new Ultra Wide camera to show you what’s happening outside the frame — and lets you capture it. Shoot and edit videos as easily as you do photos. It’s the world’s most popular camera, now with a whole new perspective.</p><p><b>Introducing Night mode.</b> Shooting in low light doesn’t have to be a shot in the dark. Night mode is a new feature that turns on automatically for low‑light photos like you’ve never seen. There’s no need for flash, colors are more natural, and photos are brighter.</p><p><b>All-day battery life.</b> Hardware and software work together to get the most out of your battery. And thanks to fast‑charge capability, you can recharge in less time.</p><p><b>Both iPhone 11 and iPhone 11 Pro have the fastest chip ever in a smartphone.</b> A13 Bionic is so powerful, everything you do is fast and fluid. It also works in the most power‑efficient way possible, so your battery lasts longer. In fact, A13 Bionic is so advanced, it’s years ahead of the pack.</p><p><b>The most secure facial authentication in a smartphone.</b> Face ID lets you unlock your iPhone instantly, and it’s even more secure than Touch ID. With just a glance you can sign in to apps, access accounts, and pay with Apple Pay. And setting it up is quick and simple.</p>', '<p><b>Völlig neues Zwei‑Kamera‑System. </b>Deine Weitwinkelfotos werden jetzt ultraweit. Eine überarbeitete Oberfläche zeigt dir dank neuer Ultraweitwinkel-Kamera, was außerhalb des Bild­ausschnitts passiert – und lässt es dich aufnehmen. Videos kannst du jetzt genauso einfach machen und bearbeiten wie Fotos. Die beliebteste Kamera der Welt, jetzt mit einer ganz neuen Perspektive.</p><p><b>Der neue Nachtmodus.</b> Es gibt keinen Grund mehr, sich vor der Dunkelheit zu fürchten. Der Nacht­modus ist ein neues Feature, das automatisch aktiviert wird, damit du bei wenig Licht Fotos machen kannst wie nie zuvor. Du brauchst keinen Blitz, die Farben sind natürlicher und die Fotos heller.</p><p><b>Batterie für den ganzen Tag.</b> Hardware und Software arbeiten zusammen, um deine Batterie optimal zu nutzen. Und dank Schnelllade­n ist dein iPhone schneller wieder einsatzbereit.</p><p><b>iPhone 11 und iPhone 11 Pro haben beide den schnellsten Smartphone Chip aller Zeiten.</b> Der A13 Bionic ist so leistungss­tark, dass alles schnell und flüssig läuft. Und er arbeitet so effizient wie möglich, damit deine Batterie länger hält. Tatsächlich ist der A13 Bionic so hoch­entwickelt, dass er anderen um Jahre voraus ist.</p><p><b>Die sicherste Gesichts­erkennung in einem Smartphone.</b> Mit Face ID entsperrst du dein iPhone sofort und es ist sogar noch sicherer als Touch ID. Mit einem Blick kannst du dich bei Apps anmelden, in Accounts einloggen und mit Apple Pay bezahlen. Und du kannst es schnell und einfach einrichten.</p>', '<p><b>All‑new dual‑camera system.&nbsp;</b>Take your photos from wide to ultra wide. A redesigned interface uses the new Ultra Wide camera to show you what’s happening outside the frame — and lets you capture it. Shoot and edit videos as easily as you do photos. It’s the world’s most popular camera, now with a whole new perspective.</p><p><b>Introducing Night mode.</b>&nbsp;Shooting in low light doesn’t have to be a shot in the dark. Night mode is a new feature that turns on automatically for low‑light photos like you’ve never seen. There’s no need for flash, colors are more natural, and photos are brighter.</p><p><b>All-day battery life.</b>&nbsp;Hardware and software work together to get the most out of your battery. And thanks to fast‑charge capability, you can recharge in less time.</p><p><b>Both iPhone 11 and iPhone 11 Pro have the fastest chip ever in a smartphone.</b>&nbsp;A13 Bionic is so powerful, everything you do is fast and fluid. It also works in the most power‑efficient way possible, so your battery lasts longer. In fact, A13 Bionic is so advanced, it’s years ahead of the pack.</p><p><b>The most secure facial authentication in a smartphone.</b>&nbsp;Face ID lets you unlock your iPhone instantly, and it’s even more secure than Touch ID. With just a glance you can sign in to apps, access accounts, and pay with Apple Pay. And setting it up is quick and simple.</p>', NULL, NULL, '5d6519223c5d63a8a', 0, 0, NULL, 'Standard', 'Standard', 'Standard', '[\"Headset\",\"Charger\",\"Documentation\"]', '[\"Headset\",\"Charger\",\"Documentation\"]', '[\"Headset\",\"Charger\",\"Documentation\"]', '5f75a2fc1aa28778f');

-- --------------------------------------------------------

--
-- Структура таблицы `product_asset`
--
DROP TABLE IF EXISTS `product_asset`;
CREATE TABLE `product_asset` (
                                 `id` int(11) NOT NULL,
                                 `asset_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `product_id` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_asset`
--

INSERT INTO `product_asset` (`id`, `asset_id`, `product_id`, `deleted`) VALUES
(1, '5f75a3050b22d418c', '5da95464266aa342e', 0),
(2, '5f75a3605cc30e8dc', '5da95464266aa342e', 0),
(3, '5f75a377a0d34c16c', '5da95464266aa342e', 0),
(4, '5f75a3a938c6ac431', '5da95464266aa342e', 0),
(5, '5f75a43b83e5efcb7', '59fb0aa27855b0afd', 0),
(6, '5f75a44ce8e89c5df', '59fb0aa27855b0afd', 0),
(7, '5f75a46269a80a836', '59fb0aa27855b0afd', 0),
(8, '5f75a4c7e8435c65d', '59fb0e05a0c46a91a', 0),
(9, '5f75a4e49314109ce', '59fb0e05a0c46a91a', 0),
(10, '5f75a4f59f8747668', '59fb0e05a0c46a91a', 0),
(11, '5f75a54239b1e04d2', '5a9e93d0e1e4fd1b9', 0),
(12, '5f75a557d1f002493', '5a9e93d0e1e4fd1b9', 0),
(13, '5f75a56d46299d70a', '5a9e93d0e1e4fd1b9', 0),
(14, '5f75a615755ec81df', '59a91396e7971debe', 0),
(15, '5f75a63bbdfdd0cc2', '59a91396e7971debe', 0),
(16, '5f75a64e769dd37c1', '59a91396e7971debe', 0),
(17, '5f75a685d89ef7df9', '59fb152fe4a37088e', 0),
(18, '5f75a69a8849c2bbe', '59fb152fe4a37088e', 0),
(19, '5f75a6dee4ac8adf5', '5be971728d44f1a11', 0),
(20, '5f75a6f0dee206198', '5be971728d44f1a11', 0),
(21, '5f75a7056e8b6953a', '5be971728d44f1a11', 0),
(22, '5f75a74de1719d808', '59fad6841f243119b', 0),
(23, '5f75a75fd7bb693c2', '59fad6841f243119b', 0),
(24, '5f75a76fe82a4304b', '59fad6841f243119b', 0),
(25, '5f75a78031d0e5b93', '59fad6841f243119b', 0),
(26, '5f75a76fe82a4304b', '59a90c862458bd976', 0),
(27, '5f75a75fd7bb693c2', '59a90c862458bd976', 0),
(28, '5f75a74de1719d808', '59a90c862458bd976', 0),
(29, '5f75a78031d0e5b93', '59a90c862458bd976', 0),
(30, '5f75a8a1279629d25', '5b8649f0dae076eb0', 0),
(31, '5f75a8a12820880b4', '5b8649f0dae076eb0', 0),
(32, '5f75a8d40d5627635', '59b0e83c603a1b9c8', 0),
(33, '5f75a8e82157d66cf', '59b0e83c603a1b9c8', 0),
(34, '5f75a945b56e69fb0', '5be98924b15087ff5', 0),
(35, '5f75a95fb9190a1e4', '5be98924b15087ff5', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_attribute_value`
--
DROP TABLE IF EXISTS `product_attribute_value`;
CREATE TABLE `product_attribute_value` (
                                           `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                                           `deleted` tinyint(1) DEFAULT '0',
                                           `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                           `product_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `attribute_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `value_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                           `value_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                           `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `created_at` datetime DEFAULT NULL,
                                           `modified_at` datetime DEFAULT NULL,
                                           `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                           `product_family_attribute_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                           `is_required` tinyint(1) NOT NULL DEFAULT '0',
                                           `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Global',
                                           `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product_attribute_value`
--

INSERT INTO `product_attribute_value` (`id`, `deleted`, `value`, `product_id`, `attribute_id`, `value_en_us`, `value_de_de`, `name`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `data`, `product_family_attribute_id`, `is_required`, `scope`, `image_name`) VALUES
('26056593338531921', 0, 'SLR Kit', '5a9e93d0e1e4fd1b9', '59af9653e337b5aed', '', '', NULL, NULL, '2019-08-28 05:36:11', NULL, '1', NULL, NULL, NULL, '5d651923bc88d191a', 0, 'Channel', NULL),
('26056593338531922', 0, 'MILC Body', '5be971728d44f1a11', '59af9653e337b5aed', '', '', NULL, NULL, '2019-08-28 05:36:11', NULL, '1', NULL, NULL, NULL, '5d651923bc88d191a', 0, 'Channel', NULL),
('26056593338531928', 0, 'Canon eos 5d mark III case', '59fb152fe4a37088e', '59af97877a951c8ce', '', '', NULL, NULL, '2019-08-27 12:48:15', NULL, '1', NULL, NULL, NULL, '5d651923d8e8929e9', 1, 'Channel', NULL),
('26056593338532045', 0, '5.8', '59fb0aa27855b0afd', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-10-18 08:25:46', NULL, '1', '1', '1', '{\"unit\":\"inch\"}', '5d651923d6841b1ee', 0, 'Global', NULL),
('26056593338532046', 0, '5.8', '59fb0e05a0c46a91a', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-10-18 08:26:00', NULL, '1', '1', '1', '{\"unit\":\"inch\"}', '5d651923d6841b1ee', 0, 'Global', NULL),
('26056593338532048', 0, '46.7', '59a90c862458bd976', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-08-27 13:50:22', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923c4020aa9f', 1, 'Channel', NULL),
('26056593338532049', 0, '46.7', '59fad6841f243119b', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-09-13 13:03:16', NULL, '1', '5b6807ebe42c89d66', '5b6807ebe42c89d66', '{\"unit\":\"inch\"}', '5d651923c4020aa9f', 1, 'Channel', NULL),
('26056593338532050', 0, NULL, '59fae2913019a9cdf', '5ccac8c86f70fdfca', NULL, NULL, NULL, NULL, '2019-08-27 13:50:22', NULL, '1', NULL, NULL, NULL, '5d651923c4020aa9f', 1, 'Channel', NULL),
('26056593338532051', 0, '55', '5b8649f0dae076eb0', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-08-27 13:50:22', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923c4020aa9f', 1, 'Channel', NULL),
('26056593338532052', 0, '3.2', '59a91396e7971debe', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-05-02 15:04:07', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923bce0e14d5', 0, 'Global', NULL),
('26056593338532054', 0, '7.7', '5a9e93d0e1e4fd1b9', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-09-13 12:01:32', NULL, '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66', '{\"unit\":\"inch\"}', '5d651923bce0e14d5', 0, 'Global', NULL),
('26056593338532055', 0, '3.2', '5be971728d44f1a11', '5ccac8c86f70fdfca', '', '', NULL, NULL, '2019-05-02 10:49:50', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923bce0e14d5', 0, 'Global', NULL),
('26056593338532056', 0, '7', '59fb152fe4a37088e', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-02 11:05:17', NULL, '1', NULL, NULL, '{\"unit\":\"day\"}', '5d651923d9be79b53', 0, 'Global', NULL),
('26056593338532057', 0, '14', '5be98924b15087ff5', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-03 05:23:41', NULL, '1', NULL, NULL, '{\"unit\":\"day\"}', '5d651923d9be79b53', 0, 'Global', NULL),
('26056593338532058', 0, '12', '59fb0aa27855b0afd', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-02 11:03:32', NULL, '1', NULL, NULL, '{\"unit\":\"month\"}', '5d651923d6c037a84', 0, 'Global', NULL),
('26056593338532059', 0, '12', '59fb0e05a0c46a91a', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-02 14:49:53', NULL, '1', NULL, NULL, '{\"unit\":\"month\"}', '5d651923d6c037a84', 0, 'Global', NULL),
('26056593338532061', 0, '1', '59b0e83c603a1b9c8', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-02 11:08:07', NULL, '1', NULL, NULL, '{\"unit\":\"day\"}', '5d651923d07ab0e0e', 0, 'Global', NULL),
('26056593338532062', 0, '5', '5ac229e0da6a4b297', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-08-27 13:27:35', NULL, '1', NULL, NULL, '{\"unit\":\"year\"}', '5d651923ce1f7fd69', 0, 'Channel', NULL),
('26056593338532063', 0, '12', '59a90c862458bd976', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-09-13 13:10:41', NULL, '1', '1', '5bbaf1daea9ee8a6b', '{\"unit\":\"month\"}', '5d651923c44fb6978', 0, 'Global', NULL),
('26056593338532064', 0, '1', '59fad6841f243119b', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-02 11:07:09', NULL, '1', NULL, NULL, '{\"unit\":\"year\"}', '5d651923c44fb6978', 0, 'Global', NULL),
('26056593338532065', 0, NULL, '59fae2913019a9cdf', '5ccacdf261f84e415', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5d651923c44fb6978', 0, 'Global', NULL),
('26056593338532066', 0, '12', '5b8649f0dae076eb0', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-09-13 13:14:10', NULL, '1', '5b6807ebe42c89d66', '5b6807ebe42c89d66', '{\"unit\":\"month\"}', '5d651923c44fb6978', 0, 'Global', NULL),
('26056593338532067', 0, '2', '59a91396e7971debe', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-02 15:04:07', NULL, '1', NULL, NULL, '{\"unit\":\"year\"}', '5d651923bd37bfb20', 0, 'Global', NULL),
('26056593338532069', 0, '24', '5a9e93d0e1e4fd1b9', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-05-02 15:03:26', NULL, '1', NULL, NULL, '{\"unit\":\"month\"}', '5d651923bd37bfb20', 0, 'Global', NULL),
('26056593338532070', 0, '24', '5be971728d44f1a11', '5ccacdf261f84e415', '', '', NULL, NULL, '2019-09-13 12:50:52', NULL, '1', '5b6807ebe42c89d66', '5b6807ebe42c89d66', '{\"unit\":\"month\"}', '5d651923bd37bfb20', 0, 'Global', NULL),
('26056593338532071', 0, '143.6', '59fb0aa27855b0afd', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-02 14:07:16', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923d7235aa14', 0, 'Global', NULL),
('26056593338532072', 0, '143.6', '59fb0e05a0c46a91a', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-02 14:49:53', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923d7235aa14', 0, 'Global', NULL),
('26056593338532074', 0, '1042', '59a90c862458bd976', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-08-27 13:52:59', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923c48825801', 0, 'Channel', NULL),
('26056593338532075', 0, '1042', '59fad6841f243119b', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-08-27 13:52:59', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923c48825801', 0, 'Channel', NULL),
('26056593338532076', 0, NULL, '59fae2913019a9cdf', '5ccae1b3e6f8a4e69', NULL, NULL, NULL, NULL, '2019-08-27 13:52:59', NULL, '1', NULL, NULL, NULL, '5d651923c48825801', 0, 'Channel', NULL),
('26056593338532077', 0, '1227.1', '5b8649f0dae076eb0', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-08-27 13:52:59', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923c48825801', 0, 'Channel', NULL),
('26056593338532078', 0, '152', '59a91396e7971debe', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-02 15:04:07', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923bd88184d5', 0, 'Global', NULL),
('26056593338532080', 0, '139', '5a9e93d0e1e4fd1b9', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-02 15:03:26', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923bd88184d5', 0, 'Global', NULL),
('26056593338532081', 0, '151', '5be971728d44f1a11', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-02 14:16:43', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923bd88184d5', 0, 'Global', NULL),
('26056593338532082', 0, '70.9', '59fb0aa27855b0afd', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 14:48:49', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923d77941025', 0, 'Global', NULL),
('26056593338532083', 0, '71', '59fb0e05a0c46a91a', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 14:49:53', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923d77941025', 0, 'Global', NULL),
('26056593338532085', 0, '599', '59a90c862458bd976', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 14:21:21', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923c4bc4c59b', 0, 'Global', NULL),
('26056593338532086', 0, '599', '59fad6841f243119b', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-03 05:18:00', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923c4bc4c59b', 0, 'Global', NULL),
('26056593338532087', 0, NULL, '59fae2913019a9cdf', '5ccae20aa0a45800c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5d651923c4bc4c59b', 0, 'Global', NULL),
('26056593338532088', 0, '710.7', '5b8649f0dae076eb0', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-03 05:22:17', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923c4bc4c59b', 0, 'Global', NULL),
('26056593338532089', 0, '116', '59a91396e7971debe', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 15:04:07', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923be3a0ff04', 0, 'Global', NULL),
('26056593338532091', 0, '105', '5a9e93d0e1e4fd1b9', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 15:03:26', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923be3a0ff04', 0, 'Global', NULL),
('26056593338532092', 0, '116', '5be971728d44f1a11', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 15:05:43', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923be3a0ff04', 0, 'Global', NULL),
('26056593338532104', 0, '5.5', '59fb152fe4a37088e', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 14:15:49', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923da04a3ff8', 0, 'Global', NULL),
('26056593338532105', 0, '3.6', '5be98924b15087ff5', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-03 05:23:29', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923da04a3ff8', 0, 'Global', NULL),
('26056593338532106', 0, '7.1', '59fb152fe4a37088e', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-02 15:05:11', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923da422aa82', 0, 'Global', NULL),
('26056593338532107', 0, '7.2', '5be98924b15087ff5', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-03 05:23:29', NULL, '1', NULL, NULL, '{\"unit\":\"inch\"}', '5d651923da422aa82', 0, 'Global', NULL),
('26056593338532108', 0, '32', '59b0e83c603a1b9c8', '5ccae20aa0a45800c', '', '', NULL, NULL, '2019-05-02 14:23:19', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923d1024663b', 0, 'Global', NULL),
('26056593338532109', 0, '24', '59b0e83c603a1b9c8', '5ccae1b3e6f8a4e69', '', '', NULL, NULL, '2019-05-02 14:23:13', NULL, '1', NULL, NULL, '{\"unit\":\"mm\"}', '5d651923d15fddb40', 0, 'Global', NULL),
('26056593338532172', 0, '174', '59fb0aa27855b0afd', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-08-27 12:15:21', NULL, '1', NULL, NULL, '{\"unit\":\"g\"}', '5d651923d7d9c2be0', 1, 'Channel', NULL),
('26056593338532173', 0, '174', '59fb0e05a0c46a91a', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-08-27 12:15:21', NULL, '1', NULL, NULL, '{\"unit\":\"mg\"}', '5d651923d7d9c2be0', 1, 'Channel', NULL),
('26056593338532175', 0, '9.3', '59a90c862458bd976', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-09-13 13:11:11', NULL, '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66', '{\"unit\":\"kg\"}', '5d651923c4f1b3f53', 1, 'Channel', NULL),
('26056593338532176', 0, '9.3', '59fad6841f243119b', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-08-27 13:50:10', NULL, '1', NULL, NULL, '{\"unit\":\"kg\"}', '5d651923c4f1b3f53', 1, 'Channel', NULL),
('26056593338532177', 0, NULL, '59fae2913019a9cdf', '5ccbe2234e379b94d', NULL, NULL, NULL, NULL, '2019-08-27 13:50:10', NULL, '1', NULL, NULL, NULL, '5d651923c4f1b3f53', 1, 'Channel', NULL),
('26056593338532178', 0, '17.7', '5b8649f0dae076eb0', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-08-27 13:50:10', NULL, '1', NULL, NULL, '{\"unit\":\"kg\"}', '5d651923c4f1b3f53', 1, 'Channel', NULL),
('26056593338532179', 0, '0.81', '59a91396e7971debe', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-05-03 08:54:38', NULL, '1', NULL, NULL, '{\"unit\":\"kg\"}', '5d651923beb730f50', 0, 'Global', NULL),
('26056593338532181', 0, '495', '5a9e93d0e1e4fd1b9', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-05-03 08:53:12', NULL, '1', NULL, NULL, '{\"unit\":\"g\"}', '5d651923beb730f50', 0, 'Global', NULL),
('26056593338532182', 0, '1.53', '5be971728d44f1a11', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-05-03 09:03:07', NULL, '1', NULL, NULL, '{\"unit\":\"kg\"}', '5d651923beb730f50', 0, 'Global', NULL),
('26056593338532197', 0, '92', '59fb152fe4a37088e', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-05-03 09:01:15', NULL, '1', NULL, NULL, '{\"unit\":\"g\"}', '5d651923da7e4e26b', 0, 'Global', NULL),
('26056593338532198', 0, '6.2', '5be98924b15087ff5', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-05-03 09:16:04', NULL, '1', NULL, NULL, '{\"unit\":\"ounces\"}', '5d651923da7e4e26b', 0, 'Global', NULL),
('26056593338532199', 0, '20', '59b0e83c603a1b9c8', '5ccbe2234e379b94d', '', '', NULL, NULL, '2019-09-13 13:20:57', NULL, '1', '5b6807ebe42c89d66', '5b6807ebe42c89d66', '{\"unit\":\"g\"}', '5d651923d1abc70d6', 0, 'Global', NULL),
('5964a8d2b8808c473', 0, 'Это тестовое значение аттрибута', '59647a67566e4ac10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5964c82022811dae8', 0, '[\"\\u042f\\u0437\\u044b\\u043a \\u0443\\u043a\\u0440\"]', '5964c6e70dc98af41', NULL, '[\"\\u044f\\u0437\\u044b\\u043a \\u0443\\u043a\\u0440\"]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5964c82022bef7539', 0, '[\"\\u044f\\u0437\\u044b\\u043a\"]', '5964c6e70dc98af41', NULL, '[\"\\u042f\\u0437\\u044b\\u043a 2\"]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5965bffa40c01f178', 0, '1', '5965bfb0762b07594', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59661f1651a93ee46', 0, 'ффф', '59661eeb92661806e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5966251de70b8b262', 0, '123', '59662496bf8cd912a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('596626d00919d8230', 0, '[]', '596625d797865e0c7', NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('596626d0095e0cc06', 0, '', '596625d797865e0c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('596629df1d2b52062', 0, 'ффф', '596628d33d6af6e31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59671fdcda8530ca1', 0, '', '596718b77ea1b340a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59671fdcdadf344e4', 0, '[\"\\u044f\\u0437\\u044b\\u043a\",\"\\u042f\\u0437\\u044b\\u043a 2\"]', '596718b77ea1b340a', NULL, '[\"\\u042f\\u0437\\u044b\\u043a \\u043c\\u0443\\u043b\\u044c\\u0442\\u0442\\u0438\",\"\\u042f\\u0437\\u044b\\u043a 2\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('596871d6296fc1f5d', 0, '', '5968629a0e78f46d4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59689d25875e2983f', 0, 'http://pim-espocrm.zinit1.com', '59689ca3943a8133a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968b0335dd08689e', 0, '1212121212121231231231231223131223123122222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222223', '5968a06b78f05ea13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968b0335e09db3a3', 0, '1312312311', '5968a06b78f05ea13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1ecb5da36f', 0, '[\"\\u0422\\u0435\\u0441\\u0442 \\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u044f\\u0437 \\u0410\\u0440\"]', '5968c23d9b599b64d', NULL, '[\"\\u0422\\u0435\\u0441\\u0442 \\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u044f\\u0437 \\u0410\\u0440_ \\u0430\\u043d\\u0433\\u043b\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1ecec9472d', 0, '[]', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1ed1cbb121', 0, '0', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1ed4b059dc', 0, NULL, '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1ed78b85b8', 0, NULL, '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1eda4a372f', 0, 'Тест_енум1', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1edcf1c469', 0, NULL, '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1edfa90f78', 0, NULL, '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2f1ee2868353', 0, '[]', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd44835dbae', 0, '', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd44b969e2a', 0, '', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd44e526109', 0, '', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd4511a7cd5', 0, '', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd454357d36', 0, '', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd45721db81', 0, '[]', '5968c23d9b599b64d', NULL, '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd459e33523', 0, '', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c2fd45c9a5ce1', 0, '0', '5968c23d9b599b64d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c3b86cf436a4e', 0, '12111', '5968c254c969bd736', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968c3b86d272357f', 0, '1112', '5968c254c969bd736', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968d3ec7222876eb', 0, '', '5968d23cc14ecffd7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5968d3ec7257c830b', 0, '0', '5968d23cc14ecffd7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5971db0af0403d6e3', 0, '', '5971b2754cb5df9fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5971f51329bd5d658', 0, '0', '5971b2754cb5df9fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5971f51329ec82bea', 0, '1', '5971b2754cb5df9fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59783803b41ec4c71', 0, '12121212', '596627177e9ca9211', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59783803b456db5a7', 0, '1', '596627177e9ca9211', '5964e6f915be25e43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978409ad202ff3e9', 0, '1', '596627d14688d7bd2', '5964a70a18e997c2b', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978409ad2400cf0d', 0, '0', '596627d14688d7bd2', '5964e6f915be25e43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978409ad273e4a40', 0, '1', '596627d14688d7bd2', '5964a7226d55c70e4', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978409ad2a66e2f1', 0, '', '596627d14688d7bd2', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978409ad2da8e3ed', 0, '2', '596627d14688d7bd2', '59784032ae6837bfb', '1', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978463a5491091b6', 0, '1', '5978461255c3bb8f7', '5971f4fdf08c6e392', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784c9c717af2af0', 0, 'Тест_енум2', '59784c0702c723276', '59648b6529fe1b5cb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784eb6e34ae6062', 0, '[]', '59784c0702c723276', '59784e685a6d632cc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f67700d112ff', 0, '1', '59784c0702c723276', '59648a94db1308e38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f67704641e1d', 0, '2017-07-26', '59784c0702c723276', '59648b1e1d53fe3f2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f67707d915da', 0, '2017-07-26 00:00:00', '59784c0702c723276', '59648b38bbedfb738', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f6770c302419', 0, NULL, '59784c0702c723276', '5964a609da8944d63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f6770f7de2ff', 0, NULL, '59784c0702c723276', '5964a621f33401b34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f67712ad2e8c', 0, '', '59784c0702c723276', '5964a6ef253cba7f0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f67715e0deae', 0, '', '59784c0702c723276', '5964a70a18e997c2b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f677190ef217', 0, '0', '59784c0702c723276', '5964e6f915be25e43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f6771d772353', 0, '[\"\\u0422\\u0435\\u0441\\u0442 \\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u044f\\u0437 \\u0410\\u0440\"]', '59784c0702c723276', '596473f01e72b70c6', '[\"\\u0422\\u0435\\u0441\\u0442 \\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u044f\\u0437 \\u0410\\u0440_ \\u0430\\u043d\\u0433\\u043b\"]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f67720e86714', 0, '[\"111\",\"2\",\"3\"]', '59784c0702c723276', '59647eb4c8bc5e433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f6772438c892', 0, '[]', '59784c0702c723276', '5964a680a3178a0d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f67727cbecce', 0, '', '59784c0702c723276', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f6772afc2f73', 0, '', '59784c0702c723276', '5964a6bd7eb85361a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f6772e469b2d', 0, '', '59784c0702c723276', '5964a6d953bc17df0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f677319022d6', 0, '', '59784c0702c723276', '5964a7226d55c70e4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f6773499e817', 0, '[]', '59784c0702c723276', '5964a7575f5db97fb', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f759a2f38855', 0, '[]', '59784c0702c723276', '5964a680a3178a0d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f759a64ddb26', 0, '', '59784c0702c723276', '5964a6bd7eb85361a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f759a93a42b3', 0, '', '59784c0702c723276', '5964a6d953bc17df0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f759ae40cfc7', 0, '', '59784c0702c723276', '5964a7226d55c70e4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f759b110ab8e', 0, '[]', '59784c0702c723276', '5964a7575f5db97fb', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f759b4d73575', 0, '', '59784c0702c723276', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f759b79c3d85', 0, '0', '59784c0702c723276', '5964e6f915be25e43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f8fabbfba6f9', 0, '', '59784c0702c723276', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f8fabfaa7307', 0, '', '59784c0702c723276', '5964a6bd7eb85361a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f8fac31c737c', 0, '', '59784c0702c723276', '5964a6d953bc17df0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f8fac69368be', 0, '', '59784c0702c723276', '5964a7226d55c70e4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59784f8faca17bb0f', 0, '[]', '59784c0702c723276', '5964a7575f5db97fb', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978514e4d6a4b9f9', 0, '[\"1\",\"2\"]', '59784fa3541a066ba', '5964a680a3178a0d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978514e4daa06ada', 0, '[\"1\",\"2\"]', '59784fa3541a066ba', '5964a7575f5db97fb', '[\"\\u0430\",\"\\u0431\"]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adccbd52622', 0, '[\"\\u0422\\u0435\\u0441\\u0442 \\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u044f\\u0437 \\u0410\\u0440\"]', '59784fa3541a066ba', '596473f01e72b70c6', '[\"\\u0422\\u0435\\u0441\\u0442 \\u041c\\u0443\\u043b\\u044c\\u0442\\u0438\\u044f\\u0437 \\u0410\\u0440_ \\u0430\\u043d\\u0433\\u043b\"]', '[111,2,3,4]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adccfe856bb', 0, '[\"11\",\"2\",\"3\"]', '59784fa3541a066ba', '59647eb4c8bc5e433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcd369b638', 0, '1', '59784fa3541a066ba', '59648a94db1308e38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcd71e3638', 0, '2017-07-25', '59784fa3541a066ba', '59648b1e1d53fe3f2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcdab1a0a7', 0, '2017-07-26 00:00:00', '59784fa3541a066ba', '59648b38bbedfb738', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcde41cb0a', 0, 'Тест_енум2', '59784fa3541a066ba', '59648b6529fe1b5cb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adce1bbf65b', 0, '1', '59784fa3541a066ba', '5964a609da8944d63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adce4fcc982', 0, '12', '59784fa3541a066ba', '5964a621f33401b34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adceb5fabeb', 0, '12', '59784fa3541a066ba', '5964a6ef253cba7f0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adceeb789c2', 0, '12', '59784fa3541a066ba', '5964a70a18e997c2b', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcf32d88af', 0, '[\"12\",\"22\"]', '59784fa3541a066ba', '59784e685a6d632cc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcf68bc5dd', 0, '1', '59784fa3541a066ba', '5964e6f915be25e43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcf9f355e5', 0, '112', '59784fa3541a066ba', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851adcfd553f56', 0, '1', '59784fa3541a066ba', '5964a6bd7eb85361a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851add00bc1a0d', 0, '12', '59784fa3541a066ba', '5964a6d953bc17df0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597851add041ee14c', 0, '12', '59784fa3541a066ba', '5964a7226d55c70e4', '12', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597875e8b3435121b', 0, '[\"1\",\"2\"]', '59786d729f96f218b', '597875ad8f456a66e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597875e8b38120928', 0, '[2]', '59786d729f96f218b', '597875c33eb046764', '[34,2,3]', '[323,113]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59787a472c3a877c2', 0, '1', '59787bf7b581f92c4', '5964e6f915be25e43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59787a472c78bfa05', 0, 'q', '59787bf7b581f92c4', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978961fa10063dc9', 0, '121', '59788b660545c4c0e', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978961fa15a2e96a', 0, '[1,\"\"]', '59788b660545c4c0e', '597875c33eb046764', '[\"\"]', '[\"\",1]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597896540259d9d64', 0, '1', '59787bf7b581f92c4', '5978763475c6634e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978965402998228a', 0, '', '59787bf7b581f92c4', '5964e67b7dc402bc2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978965402d3fd0e0', 0, '0', '59787bf7b581f92c4', '5964e6f915be25e43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978965403144f597', 0, '[]', '59787bf7b581f92c4', '597875ad8f456a66e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59789654034cfba3b', 0, '[]', '59787bf7b581f92c4', '597875c33eb046764', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597897aaabe4a766c', 0, '1', '597897a018af5915a', '5978763475c6634e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597897aaac224b7c3', 0, '[\"\"]', '597897a018af5915a', '597875c33eb046764', '[\"\"]', '[\"\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597897d6d46c1ecdc', 0, '2', '597897a018af5915a', '5978763475c6634e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597897d6d4ac60a81', 0, '[2]', '597897a018af5915a', '597875c33eb046764', '[2]', '[2]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978985f448f9c8d9', 0, '3', '597897a018af5915a', '5978763475c6634e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978985f44e009914', 0, '[3]', '597897a018af5915a', '597875c33eb046764', '[3]', '[3]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978987d677913d46', 0, '4', '597897a018af5915a', '5978763475c6634e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5978987d67b5d68c9', 0, '[4]', '597897a018af5915a', '597875c33eb046764', '[4]', '[4]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22ba9fbb1a', 0, '2', '5979932852f9422d8', '5978991e67ce7c962', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22be3948b5', 0, '1', '5979932852f9422d8', '5979901bd5c69b750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22c16783cc', 0, '2017-07-27', '5979932852f9422d8', '597990288417e4310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22c4b1b83a', 0, '2014-07-27 00:30:00', '5979932852f9422d8', '597990377d2dc0575', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22c7eb143d', 0, '2', '5979932852f9422d8', '5979904a139c31ac0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22cb1d3237', 0, '123001', '5979932852f9422d8', '5979905a2cdae665a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22ce205737', 0, '123', '5979932852f9422d8', '59799095957293bd1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22d152c958', 0, '12231231223', '5979932852f9422d8', '597990ff069574119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22d49ac233', 0, '13123123', '5979932852f9422d8', '59799125052f442da', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22d7d9d956', 0, '13123123', '5979932852f9422d8', '5979913e23d4eec62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22db17e254', 0, '3', '5979932852f9422d8', '5979916df20db96a0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22de6cbbfc', 0, '[\"1\",\"2\",\"3\"]', '5979932852f9422d8', '59799003114bb73b7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22e19fd468', 0, '[\"1\",\"2\",\"3\"]', '5979932852f9422d8', '597990eced0cf7c77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22e4d87e34', 0, '123123', '5979932852f9422d8', '59799153ccda10395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22e7fa53cd', 0, '[\"2\",\"3\",\"1\"]', '5979932852f9422d8', '597991ba78a257f5d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22eb20f1f1', 0, '[1,2,3]', '5979932852f9422d8', '597991cca6d339786', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('597993d22ee448592', 0, '123123123', '5979932852f9422d8', '59799116c003cf94c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14ca6324bc6', 0, '', '597997c6727c326a8', '59799d0222d9fa43a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14ca9fd8d69', 0, '', '597997c6727c326a8', '59799d14adfc92125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cad425358', 0, NULL, '597997c6727c326a8', '59799d4c99b7485d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cb0b84d33', 0, NULL, '597997c6727c326a8', '59799d5d620e0a650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cb418bbdf', 0, '2', '597997c6727c326a8', '59799d77641042ff5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cb77b0457', 0, '2017-07-27 00:00:00', '597997c6727c326a8', '59799d8698e117f90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cbac9b4f8', 0, '2017-07-03', '597997c6727c326a8', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cbe1f0c1d', 0, '1', '597997c6727c326a8', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cc18d6cc9', 0, '[]', '597997c6727c326a8', '59799ca6a4c3b7caa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cc4f15812', 0, '[]', '597997c6727c326a8', '59799cb8d369eb27c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cc8503bd4', 0, '1', '597997c6727c326a8', '59799ce30f5509d63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14ccbb3a781', 0, '', '597997c6727c326a8', '59799cf58891f747c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14ccefaa790', 0, '', '597997c6727c326a8', '59799d2c9ed31a5b8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cd2473bf9', 0, '[\"2\",\"3\",\"1\"]', '597997c6727c326a8', '59799cd2633f1388f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cd590ab54', 0, '[\"1\",\"2\",\"3\"]', '597997c6727c326a8', '59799d4080d78fc0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799e14cd8d71697', 0, '', '597997c6727c326a8', '59799d20625cc8ff2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799f1ef111f8e7a', 0, '555555', '59787bf7b581f92c4', '59799d5d620e0a650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799f1ef154e8542', 0, '2017-07-26 00:00:00', '59787bf7b581f92c4', '59799d8698e117f90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799f1ef18eca130', 0, '2017-07-27', '59787bf7b581f92c4', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59799f1ef1c845463', 0, '1', '59787bf7b581f92c4', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979a0c85142fbc57', 0, '2017-07-27', '5979a087c41b43e38', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979a0c851843c94f', 0, '1', '5979a087c41b43e38', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979a56e352cb7fa0', 0, '2017-07-26', '5979a087c41b43e38', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979a56e3566664c4', 0, '0', '5979a087c41b43e38', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b7d63a10e', 0, '[]', '5979abfb4d236eeb2', '59799ca6a4c3b7caa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b812b2b30', 0, '[1,2]', '5979abfb4d236eeb2', '59799cb8d369eb27c', '[\"\",12,3,3]', '[1,\"\",2,3,3]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b8469b7e7', 0, '', '5979abfb4d236eeb2', '59799cf58891f747c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b87cb8448', 0, '', '5979abfb4d236eeb2', '59799d0222d9fa43a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b8b3011cb', 0, '', '5979abfb4d236eeb2', '59799d14adfc92125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b8ea01d5a', 0, '', '5979abfb4d236eeb2', '59799d2c9ed31a5b8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b91f30964', 0, '[]', '5979abfb4d236eeb2', '59799d4080d78fc0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b9564e321', 0, NULL, '5979abfb4d236eeb2', '59799d4c99b7485d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b98b3aa8b', 0, NULL, '5979abfb4d236eeb2', '59799d5d620e0a650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b9bf1de9d', 0, '1', '5979abfb4d236eeb2', '59799d77641042ff5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57b9f0f5565', 0, NULL, '5979abfb4d236eeb2', '59799d8698e117f90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57ba20efad8', 0, NULL, '5979abfb4d236eeb2', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57ba518e867', 0, '0', '5979abfb4d236eeb2', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57ba809b45f', 0, '[\"1\",\"2\",\"3\"]', '5979abfb4d236eeb2', '59799cd2633f1388f', '[\"1\",\"2\",\"3\"]', '[\"1\",\"2\",\"3\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57baacd1589', 0, '3', '5979abfb4d236eeb2', '59799ce30f5509d63', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac57bad8fd18e', 0, '', '5979abfb4d236eeb2', '59799d20625cc8ff2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac74a4467663d', 0, '1', '5979abfb4d236eeb2', '59799ce30f5509d63', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac74a4b4256e2', 0, '', '5979abfb4d236eeb2', '59799d20625cc8ff2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac74a517c97cc', 0, NULL, '5979abfb4d236eeb2', '59799d5d620e0a650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac74a5485a180', 0, '2', '5979abfb4d236eeb2', '59799d77641042ff5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac74a57754878', 0, NULL, '5979abfb4d236eeb2', '59799d8698e117f90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac74a5a6397ab', 0, NULL, '5979abfb4d236eeb2', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5979ac74a5d7fb5d9', 0, '0', '5979abfb4d236eeb2', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59817478e1dfa4a78', 0, '2', '5979d71836674580b', '59799d77641042ff5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59817478e20d055c6', 0, '2017-08-14 00:00:00', '5979d71836674580b', '59799d8698e117f90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59817478e23c553b1', 0, '2017-08-02', '5979d71836674580b', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59817478e26a98227', 0, '1', '5979d71836674580b', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981c5f0ea2c38839', 0, '', '5979d71836674580b', '59799cf58891f747c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981d0dc09dd16004', 0, '1', '59818f3aa17624d78', '59799da3a0734d92e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981d0dc0a1d1503e', 0, '2017-08-25 01:30:00', '59818f3aa17624d78', '59799d8698e117f90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981d0dc0a55c68db', 0, '2017-08-24', '59818f3aa17624d78', '59799d91541ce345f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981d29ee2e7b6fec', 0, '1', '59818f3aa17624d78', '59799d77641042ff5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981d8542bb110f4d', 0, '[\"1\",\"  \",\"    \",\" \"]', '5981c7b590bfe48b7', '5981d833550bdd88e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cb0e97bf1', 0, '[]', '5981da3a146d85728', '5981d7b5726b19fbe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cb4d4c73c', 0, '1', '5981da3a146d85728', '5981d7cd05a13ba4f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cb84b9421', 0, NULL, '5981da3a146d85728', '5981d7d8943b0f76f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cbb88771d', 0, NULL, '5981da3a146d85728', '5981d7e1c4ac7fd50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cbec12102', 0, '1', '5981da3a146d85728', '5981d7fa2cd687937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cc2071309', 0, NULL, '5981da3a146d85728', '5981d9737a62651c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cc52a76f2', 0, NULL, '5981da3a146d85728', '5981d97e8091f522a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cc8902bfc', 0, '', '5981da3a146d85728', '5981d98adcb4215fc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59ccbe01dce', 0, '', '5981da3a146d85728', '5981d9b0bbe06afd0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59ccedb4bb6', 0, '', '5981da3a146d85728', '5981d9c239fc10f18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cd2455481', 0, '', '5981da3a146d85728', '5981d9de9f16f1092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cd570e4d2', 0, '[]', '5981da3a146d85728', '5981da09a2b5f9649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cd85bedee', 0, '[]', '5981da3a146d85728', '5981d833550bdd88e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cdb824138', 0, '1', '5981da3a146d85728', '5981d9eeb19a44f52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59cdec0bdd5', 0, '[]', '5981da3a146d85728', '5981d9fb9f50f917a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da59ce1c20464', 0, '', '5981da3a146d85728', '5981d99b7c0895159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da5f2ef3e777f', 0, '', '5981da3a146d85728', '5981d99b7c0895159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da5f2f408ab4e', 0, '', '5981da3a146d85728', '5981d9de9f16f1092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da5f2f6d1b680', 0, '1', '5981da3a146d85728', '5981d9eeb19a44f52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da5f2f9b49c17', 0, '[]', '5981da3a146d85728', '5981d9fb9f50f917a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da5f2fc98e15d', 0, '[]', '5981da3a146d85728', '5981da09a2b5f9649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da70d6fece14c', 0, '', '5981da3a146d85728', '5981d9de9f16f1092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da70d738afd1b', 0, '1', '5981da3a146d85728', '5981d9eeb19a44f52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da70d76e8d888', 0, '[]', '5981da3a146d85728', '5981da09a2b5f9649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da70d7a3d3914', 0, '[]', '5981da3a146d85728', '5981d9fb9f50f917a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da7a41526e43d', 0, '1', '5981da3a146d85728', '5981d9eeb19a44f52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da7a41a1e9cc6', 0, '[]', '5981da3a146d85728', '5981d9fb9f50f917a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981da923d6c3d3f0', 0, '[]', '5981da3a146d85728', '5981d9fb9f50f917a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada310ed9b16', 0, '1', '5981c8551b6e82492', '5981d7cd05a13ba4f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada314b6c61e', 0, NULL, '5981c8551b6e82492', '5981d7d8943b0f76f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada31809b1ff', 0, NULL, '5981c8551b6e82492', '5981d7e1c4ac7fd50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada31b7b504e', 0, '1', '5981c8551b6e82492', '5981d7fa2cd687937', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada31edd93d5', 0, NULL, '5981c8551b6e82492', '5981d9737a62651c7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada32260ad3a', 0, NULL, '5981c8551b6e82492', '5981d97e8091f522a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada325b8527e', 0, '', '5981c8551b6e82492', '5981d9b0bbe06afd0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada328f68e4b', 0, '', '5981c8551b6e82492', '5981d9c239fc10f18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada32c4cbd2d', 0, '[]', '5981c8551b6e82492', '5981d7b5726b19fbe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada32faf0bb2', 0, '[]', '5981c8551b6e82492', '5981d833550bdd88e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada332de07f8', 0, '', '5981c8551b6e82492', '5981d98adcb4215fc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL);
INSERT INTO `product_attribute_value` (`id`, `deleted`, `value`, `product_id`, `attribute_id`, `value_en_us`, `value_de_de`, `name`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `data`, `product_family_attribute_id`, `is_required`, `scope`, `image_name`) VALUES
('5981dada33605e8a9', 0, '', '5981c8551b6e82492', '5981d99b7c0895159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada3395742ed', 0, '', '5981c8551b6e82492', '5981d9de9f16f1092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada33c920a48', 0, '1', '5981c8551b6e82492', '5981d9eeb19a44f52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada33fc1d733', 0, '[]', '5981c8551b6e82492', '5981d9fb9f50f917a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981dada34305c4f3', 0, '[]', '5981c8551b6e82492', '5981da09a2b5f9649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981daf3459a4cf00', 0, '[]', '5981c8551b6e82492', '5981d833550bdd88e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981daf345d095929', 0, '', '5981c8551b6e82492', '5981d98adcb4215fc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981daf345fe4befc', 0, '', '5981c8551b6e82492', '5981d99b7c0895159', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981daf3462c76a0d', 0, '', '5981c8551b6e82492', '5981d9de9f16f1092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981daf3465a034da', 0, '1', '5981c8551b6e82492', '5981d9eeb19a44f52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981daf346887e74d', 0, '[]', '5981c8551b6e82492', '5981d9fb9f50f917a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5981daf346b48aa5b', 0, '[]', '5981c8551b6e82492', '5981da09a2b5f9649', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('598817184152c6e67', 0, '1', '5981db1ed6fea82db', '598817088ea5737ba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59899321cfadc233f', 0, '1', '59885128b58541524', '598813c54a7bf5bbd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d6573dbe2', 0, '[\"1\",\"2\",\"3\"]', '5989a009a3050dbc7', '5988137dd5b4b5b71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d6d63e553', 0, '2017-08-08', '5989a009a3050dbc7', '598813d24c402ac17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d70cd87ab', 0, '2017-08-08 01:30:00', '5989a009a3050dbc7', '598813e20e625ff6e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d73cc6a14', 0, '', '5989a009a3050dbc7', '5988143c392c384b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d838bf843', 0, '11', '5989a009a3050dbc7', '59885228461821da7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d89f192b8', 0, '1', '5989a009a3050dbc7', '59885236bfdbc4e15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d8d3418ca', 0, 'qq', '5989a009a3050dbc7', '598852614b1f5115c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d931c8ec1', 0, 'qq', '5989a009a3050dbc7', '5988527f2382e7f6d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d9b6088e4', 0, '0', '5989a009a3050dbc7', '598813c54a7bf5bbd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053d9eabe337', 0, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', '5989a009a3050dbc7', '598852515c4671b97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a053da1ccde1b', 0, 'q', '5989a009a3050dbc7', '5988526f21e5c7823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a07a3cf5305d9', 0, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', '5989a009a3050dbc7', '598852515c4671b97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a07a3d40e9935', 0, 'q', '5989a009a3050dbc7', '5988526f21e5c7823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a0a613cf651e9', 0, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', '5989a009a3050dbc7', '598852515c4671b97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a0a6141ea1fb5', 0, 'q', '5989a009a3050dbc7', '5988526f21e5c7823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a3e182acad601', 0, '3', '5989a0c12ae4eba48', '5988143c392c384b9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a3e182e748531', 0, '1', '5989a0c12ae4eba48', '59885228461821da7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a3e1831d39fa1', 0, '1', '5989a0c12ae4eba48', '59885236bfdbc4e15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a3e1835110cb9', 0, '[\"2\",\"3\",\"4\"]', '5989a0c12ae4eba48', '598852515c4671b97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a3fc717172e86', 0, '[\"1\",\"\"]', '5989a0c12ae4eba48', '598853c7dc75ce9c5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a4905f369f880', 0, '[]', '59885128b58541524', '5988537d5db85428e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a4905f71bf8ca', 0, '[]', '59885128b58541524', '598994881b3ac93e6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a4905fa96575f', 0, '[\"1\",\"2\",\"3\"]', '59885128b58541524', '5989a46953c13f80d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5989a4f61312a8a0e', 0, '[\"1\",\"2\",\"34\"]', '59885128b58541524', '5989a4e46894e622b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59959a25e8102c631', 0, '12121', '59884e7ea490c9baa', '599599fa02ff32758', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59a40892604848972', 0, '[\"1\",\"2\",\"3\"]', '598ac126383af29ca', '598d9f43c7c79ef4b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59ae601bde454da8f', 0, '[\"1\",\"2\",\"3\"]', '59ae5ed4c0e4392ff', '59ae5ea5f2ab25431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59ae601bdea7d211e', 0, '[\"1\",\"2\"]', '59ae5ed4c0e4392ff', '59ae5ebe911e9a956', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59ae62cc600916d07', 0, '1212', '59ad06219d55906c4', '59ae62c1120674752', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa16b3a3d26a5d', 0, 'A4 (210 x 297 mm)', '59a91896e377cf21c', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa29ebbbe6c168', 0, '2012-01-26', '59a91896e377cf21c', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa356a38388cfd', 0, 'A4 (210 x 297 mm)', '59a9186f534bbc174', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa356a3b8389e2', 0, '2011-09-20', '59a9186f534bbc174', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa3c0411ab259f', 0, '215 x 355 mm', '59a91859adfdb4781', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa3c041518d6f5', 0, '2011-08-27', '59a91859adfdb4781', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa405b9bbe17a7', 0, 'A3 (297 x 420 mm)', '59a91843ec506c637', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa405b9ec83f77', 0, '2005-05-08', '59a91843ec506c637', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa4512c92f1ff9', 0, 'A3 (297 x 420 mm)', '59a9181235bdc3786', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa4512cc44850c', 0, '[\"N\"]', '59a9181235bdc3786', '59af9742e13e33219', NULL, NULL, NULL, NULL, '2019-05-02 08:39:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa4512d03469c9', 0, '2007-01-09', '59a9181235bdc3786', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa4512d3333f70', 0, '0', '59a9181235bdc3786', '59af94b0b8671011f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa49f49b9fe860', 0, '1', '59a917eeb3be3a61b', '59af94b0b8671011f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa49f4a16e0a3f', 0, 'Legal (216 x 356 mm)', '59a917eeb3be3a61b', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa49f4a4106ef9', 0, '[\"copy\",\"fax\",\"print\",\"scan\"]', '59a917eeb3be3a61b', '59af9742e13e33219', NULL, NULL, NULL, NULL, '2019-05-02 08:39:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa49f4a6a2c64f', 0, '2012-06-16', '59a917eeb3be3a61b', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa50b9e4b9d559', 0, '1', '59a917d81eec86967', '59af94b0b8671011f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa50b9eaaa5d87', 0, 'A4 (210 x 297 mm)', '59a917d81eec86967', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa50b9edb54699', 0, '[\"copy\",\"print\",\"scan\"]', '59a917d81eec86967', '59af9742e13e33219', NULL, NULL, NULL, NULL, '2019-05-02 08:39:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa50b9f0837872', 0, '2012-04-20', '59a917d81eec86967', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa5f3591446f39', 0, '0', '59a9107c9cf398b37', '59af9752c3df9518b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa5f35aac8f0b9', 0, '5', '59a9107c9cf398b37', '59afa5a73160cfceb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa5f35ae733135', 0, '2012-01-20', '59a9107c9cf398b37', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa6804e9c2c4ae', 0, '25', '59a91396e7971debe', '59af95f809c136524', NULL, NULL, NULL, NULL, '2018-10-26 11:17:50', NULL, '1', NULL, NULL, NULL, '5d651923ad2a23594', 0, 'Global', NULL),
('59afa6804ece3dc37', 0, 'SLR Kit', '59a91396e7971debe', '59af9653e337b5aed', NULL, NULL, NULL, NULL, '2019-08-28 05:36:11', NULL, '1', NULL, NULL, NULL, '5d651923bc88d191a', 0, 'Channel', NULL),
('59afa6804effe650d', 0, 'EOS 5D Mark III', '59a91396e7971debe', '59af97877a951c8ce', NULL, NULL, NULL, NULL, '2018-10-26 11:23:21', NULL, '1', NULL, NULL, NULL, '5d651923b6c7e91bd', 1, 'Global', NULL),
('59afa6804f3083169', 0, '1920x1080', '59a91396e7971debe', '59af97941e37fd6b2', NULL, NULL, NULL, NULL, '2018-10-26 11:23:20', NULL, '1', NULL, NULL, NULL, '5d651923b64e5f3fd', 0, 'Global', NULL),
('59afa6804f60be8e9', 0, 'JPEG, RAW (14-bit Canon Original), M-RAW, S-RAW, RAW+JPEG, M-RAW+JPEG, S-RAW+JPEG', '59a91396e7971debe', '59af979e5c1a7cd31', NULL, NULL, NULL, NULL, '2018-10-26 11:23:21', NULL, '1', NULL, NULL, NULL, '5d651923b96e87b15', 0, 'Global', NULL),
('59afa6804f929edb9', 0, '3:2 (Horizontal: Vertical)', '59a91396e7971debe', '59af97a95618763b6', NULL, NULL, NULL, NULL, '2018-10-26 11:23:21', NULL, '1', NULL, NULL, NULL, '5d651923bb0a0ba06', 0, 'Global', NULL),
('59afa6804fc594512', 0, 'Still Image: JPEG, RAW (14-bit Canon Original), M-RAW, S-RAW, RAW+JPEG, M-RAW+JPEG, S-RAW+JPEG', '59a91396e7971debe', '59af97b2348a0ec9e', NULL, NULL, NULL, NULL, '2018-10-26 11:23:21', NULL, '1', NULL, NULL, NULL, '5d651923bb7d6ccce', 0, 'Global', NULL),
('59afa6804ff8e60ff', 0, 'Canon EF mount', '59a91396e7971debe', '59af97baa662562f5', NULL, NULL, NULL, NULL, '2018-10-26 11:23:20', NULL, '1', NULL, NULL, NULL, '5d651923b0cbabb6e', 0, 'Global', NULL),
('59afa680502c7edba', 0, 'Single-point AF (Manual selection).\nAuto selection 61-Point AF.\nSingle-point Spot AF (Manual selection).\nAF point expansion (Manual selection, 4 points: Up, down, left, and right).\nAF point expansion (Manual selection, surrounding 8 points).\nZone AF (Manual zone selection).', '59a91396e7971debe', '59af97c31b50de66c', NULL, NULL, NULL, NULL, '2019-08-28 18:50:09', NULL, '1', '5bbaf1daea9ee8a6b', '5bbaf1daea9ee8a6b', NULL, '5d651923b008c1455', 1, 'Global', NULL),
('59afa6805060a447e', 0, '-3.0 to +1.0m-1 (diopter)', '59a91396e7971debe', '59af97cb9253aecee', NULL, NULL, NULL, NULL, '2018-10-26 11:23:20', NULL, '1', NULL, NULL, NULL, '5d651923b08423b83', 0, 'Global', NULL),
('59afa6805094f4e58', 0, '·Live mode\n\n·One-point, contrast AF. Switching to another AF point possible.\n\n·Face detection Live mode\n\n·Face detection, contrast AF. Face selectable.\n\n·Quick mode', '59a91396e7971debe', '59af97d3795b75f07', NULL, NULL, NULL, NULL, '2018-10-26 11:23:19', NULL, '1', NULL, NULL, NULL, '5d651923af77525e4', 0, 'Global', NULL),
('59afa68050c95f232', 0, '61', '59a91396e7971debe', '59af97de8c0a4e121', NULL, NULL, NULL, NULL, '2018-10-26 11:19:20', NULL, '1', NULL, NULL, NULL, '5d651923ad8d09779', 1, 'Global', NULL),
('59afa68050fc6642c', 0, '1', '59a91396e7971debe', '59af97e8832b39535', NULL, NULL, NULL, NULL, '2018-10-26 11:19:30', NULL, '1', NULL, NULL, NULL, '5d651923adf3f5442', 0, 'Global', NULL),
('59afa716c9c49fa97', 0, '22.3', '59a91383b638e5623', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716c9fa2a6f4', 0, '4', '59a91383b638e5623', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716ca2b36254', 0, '', '59a91383b638e5623', '59af9653e337b5aed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716ca601e6c8', 0, '', '59a91383b638e5623', '59af97877a951c8ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716ca8e757df', 0, '', '59a91383b638e5623', '59af97941e37fd6b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716cabee07c4', 0, '', '59a91383b638e5623', '59af979e5c1a7cd31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716caf8b903e', 0, '', '59a91383b638e5623', '59af97a95618763b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716cb29bf86a', 0, '', '59a91383b638e5623', '59af97b2348a0ec9e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716cb57b0941', 0, '', '59a91383b638e5623', '59af97baa662562f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716cb85d760c', 0, '', '59a91383b638e5623', '59af97c31b50de66c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afa716cbb4a28d1', 0, '', '59a91383b638e5623', '59af97cb9253aecee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afab8ebe1675e03', 0, '2.37', '59a9144897c26e55d', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf432363a9c9', 0, '16', '59a913ad840bc2efa', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf4326b11c2f', 0, '20', '59a913ad840bc2efa', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf432a0a9b4e', 0, '', '59a913ad840bc2efa', '59af9653e337b5aed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf432d28abd9', 0, '', '59a913ad840bc2efa', '59af97877a951c8ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf4330314120', 0, '', '59a913ad840bc2efa', '59af97941e37fd6b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf43334917ef', 0, '', '59a913ad840bc2efa', '59af979e5c1a7cd31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf4336793039', 0, '', '59a913ad840bc2efa', '59af97a95618763b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf4339b219ae', 0, '', '59a913ad840bc2efa', '59af97b2348a0ec9e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf433ccfdcd1', 0, '', '59a913ad840bc2efa', '59af97baa662562f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf433fdec90e', 0, '', '59a913ad840bc2efa', '59af97c31b50de66c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afabf4342f56c4f', 0, '', '59a913ad840bc2efa', '59af97cb9253aecee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afacb28c2be0a38', 0, '5', '59afac7e5d0ceb7e9', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afacb28c5e6505e', 0, '10', '59afac7e5d0ceb7e9', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afacb28c8c4feb7', 0, '1', '59afac7e5d0ceb7e9', '59af9604308c2e8de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afacb28cb9da475', 0, '2011-03-26', '59afac7e5d0ceb7e9', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afadab8d9a97e47', 0, '2012-05-27', '59a90b3d2e964af4c', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afadea6fe747e50', 0, '2012-06-05', '59a90b5f5bc27bc66', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afae14bc9a61b41', 0, '2012-05-10', '59a90c862458bd976', '59afa1e6473c5052e', '', '', NULL, NULL, '2019-08-27 13:51:18', NULL, '1', NULL, NULL, NULL, '5d651923c293fe531', 1, 'Channel', NULL),
('59afae3f010901972', 0, '2012-06-03', '59a90cb7216439fcb', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afae746bfdd6fda', 0, '2012-06-03', '59a9100b0d98bfe69', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaec4c1cbdb402', 0, '0', '59a9106001b732663', '59af9752c3df9518b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaec4c259f2f62', 0, '12', '59a9106001b732663', '59afa5a73160cfceb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaec4c28659cee', 0, '2012-01-03', '59a9106001b732663', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaf37160870c03', 0, '0', '59a910d17ce76fd36', '59af9752c3df9518b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaf3716977b6bc', 0, '5', '59a910d17ce76fd36', '59afa5a73160cfceb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaf3716c8f41e5', 0, '2007-07-09', '59a910d17ce76fd36', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaf8e612d44de6', 0, '0', '59a910faa3c23c74e', '59af9752c3df9518b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaf8e61bd2483c', 0, '5', '59a910faa3c23c74e', '59afa5a73160cfceb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afaf8e624e21109', 0, '2011-04-11', '59a910faa3c23c74e', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8818661b4', 0, '16.15', '59a9134b8b592623b', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce884fe8652', 0, '5', '59a9134b8b592623b', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8885ff4ed', 0, '', '59a9134b8b592623b', '59af9653e337b5aed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce88be8021d', 0, '', '59a9134b8b592623b', '59af97877a951c8ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce88f25d28d', 0, '', '59a9134b8b592623b', '59af97941e37fd6b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8926a089e', 0, '', '59a9134b8b592623b', '59af979e5c1a7cd31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce895f5474f', 0, '', '59a9134b8b592623b', '59af97a95618763b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce89be2cf1e', 0, '', '59a9134b8b592623b', '59af97b2348a0ec9e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8a01fe94a', 0, '', '59a9134b8b592623b', '59af97baa662562f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8a348f6a4', 0, '', '59a9134b8b592623b', '59af97c31b50de66c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8a67dd4ec', 0, '', '59a9134b8b592623b', '59af97cb9253aecee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8a973883f', 0, '', '59a9134b8b592623b', '59af97d3795b75f07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8b0e3e841', 0, NULL, '59a9134b8b592623b', '59af97de8c0a4e121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8b52f4377', 0, '0', '59a9134b8b592623b', '59af97e8832b39535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8b8bc3261', 0, '0', '59a9134b8b592623b', '59af97f1b9358224f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8bc3083f1', 0, '', '59a9134b8b592623b', '59af97fdb6738b14f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8bfdaccfd', 0, '', '59a9134b8b592623b', '59af98062e3d1cba2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8c331e704', 0, '', '59a9134b8b592623b', '59af980da501d1de5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8c6bfa363', 0, '', '59a9134b8b592623b', '59af9815efd1a780d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8ca363171', 0, '0', '59a9134b8b592623b', '59af98286e2a9699f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8ce3a645f', 0, NULL, '59a9134b8b592623b', '59af98341c1ef6e9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8d190e30f', 0, NULL, '59a9134b8b592623b', '59af984349a116a24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afafce8d4e5db4e', 0, '2011-12-09', '59a9134b8b592623b', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a21af1568', 0, '', '59a913c6a163e796c', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a257a4b78', 0, '3', '59a913c6a163e796c', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a29413b20', 0, '', '59a913c6a163e796c', '59af9653e337b5aed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a2cf4f80f', 0, '', '59a913c6a163e796c', '59af97877a951c8ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a310a86cf', 0, '', '59a913c6a163e796c', '59af97941e37fd6b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a350dae93', 0, '', '59a913c6a163e796c', '59af979e5c1a7cd31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a38c0b413', 0, '', '59a913c6a163e796c', '59af97a95618763b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a3c6e1d46', 0, '', '59a913c6a163e796c', '59af97b2348a0ec9e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a40721536', 0, '', '59a913c6a163e796c', '59af97baa662562f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a441269cc', 0, '', '59a913c6a163e796c', '59af97c31b50de66c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb066a47ff0d2b', 0, '', '59a913c6a163e796c', '59af97cb9253aecee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb0e63a03056e6', 0, NULL, '59a91422c9893f3cb', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb0e63a3e5f5fe', 0, '2013-04-05', '59a91422c9893f3cb', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb0e63ac969641', 0, '', '59a91422c9893f3cb', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb0e63b725e73f', 0, '0', '59a91422c9893f3cb', '59af9604308c2e8de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb1d978705893f', 0, '', '59a914353b9df7793', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb1d978a57212d', 0, '5', '59a914353b9df7793', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb1d978dc1681c', 0, '0', '59a914353b9df7793', '59af9604308c2e8de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb1d9790f62cc3', 0, '2011-08-03', '59a914353b9df7793', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2230f591a180', 0, '', '59a9145fa5254c0d0', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2230f8cea1b8', 0, NULL, '59a9145fa5254c0d0', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2230fbf77da6', 0, '0', '59a9145fa5254c0d0', '59af9604308c2e8de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2230ff174c80', 0, '2013-05-01', '59a9145fa5254c0d0', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb255e3d4a00a6', 0, '', '59a91470e45edf047', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb255e413f5a69', 0, '5', '59a91470e45edf047', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb255e453df63c', 0, '1', '59a91470e45edf047', '59af9604308c2e8de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb255e4907dfa7', 0, '2012-03-04', '59a91470e45edf047', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2d7beb1668ec', 0, '1.3', '59a915df2ed27dd8c', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2d7beeb9ec92', 0, '1280 x 1024', '59a915df2ed27dd8c', '59af96fe0a24a4ce0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2d7bf1fb6102', 0, NULL, '59a915df2ed27dd8c', '59af970a496c620f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb2d7bf548c228', 0, '2007-03-08', '59a915df2ed27dd8c', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb73780cde566b', 0, '', '59a91601d03486d39', '59af96fe0a24a4ce0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7378102f5025', 0, NULL, '59a91601d03486d39', '59af970a496c620f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7378137480fc', 0, '2009-03-01', '59a91601d03486d39', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb737816ce14fd', 0, '1.3', '59a91601d03486d39', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7934b5355fee', 0, '', '59a91617449d8060c', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7934b8374561', 0, '640 x 480', '59a91617449d8060c', '59af96fe0a24a4ce0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7934bb343da5', 0, '30', '59a91617449d8060c', '59af970a496c620f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7934be5832ad', 0, '2005-03-07', '59a91617449d8060c', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7c0adc30dd43', 0, '', '59a91637b322bd6fd', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7c0adf3dd1aa', 0, '1920 x 1080', '59a91637b322bd6fd', '59af96fe0a24a4ce0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7c0ae24564b8', 0, '30', '59a91637b322bd6fd', '59af970a496c620f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7c0ae536c446', 0, '2012-05-09', '59a91637b322bd6fd', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb7e25bc44fdf7', 0, '2008-12-09', '59a916a1648758e58', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb800acce5c9c5', 0, '2008-09-04', '59a916b97a5a83fd3', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb8321c5733588', 0, '2012-08-07', '59a916eab17bb99d7', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb85bd67234a39', 0, '2009-02-09', '59a9171f1e2143d9b', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb8796f2592d82', 0, '2008-12-08', '59a9173353e3472a0', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb91e048570f4d', 0, '2008-12-08', '59a9174cdb68792c3', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb975b21474805', 0, '2012-03-12', '59a91772784e57865', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb9a61543917f0', 0, 'Legal (216 x 356 mm)', '59a917a5e4183ea0a', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb9a615701bb80', 0, '2012-04-03', '59a917a5e4183ea0a', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb9a615a10c4c4', 0, '1', '59a917a5e4183ea0a', '59af94b0b8671011f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59afb9a615d127867', 0, '[\"copy\",\"fax\",\"print\",\"scan\"]', '59a917a5e4183ea0a', '59af9742e13e33219', NULL, NULL, NULL, NULL, '2019-05-02 08:39:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ea96b7b14ec16', 0, 'SDSDUNC-032G-GZFIN', '59b0e83c603a1b9c8', '59af97877a951c8ce', NULL, NULL, NULL, NULL, '2019-08-27 13:23:53', NULL, '1', NULL, NULL, NULL, '5d651923ce8de93be', 1, 'Channel', NULL),
('59b0ea96b81e7140d', 0, '32', '59b0e83c603a1b9c8', '59b0e7e45986c95ed', '8', '16', NULL, NULL, '2019-09-13 13:20:31', NULL, '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66', NULL, '5d651923cf439361d', 0, 'Channel', NULL),
('59b0ecf1d729d12a0', 0, '1', '59a91396e7971debe', '59af97f1b9358224f', NULL, NULL, NULL, NULL, '2018-10-26 11:19:39', NULL, '1', NULL, NULL, NULL, '5d651923ae53f12dc', 0, 'Global', NULL),
('59b0ecf1d76b5f593', 0, '100-1600', '59a91396e7971debe', '59af97fdb6738b14f', NULL, NULL, NULL, NULL, '2018-10-26 11:23:20', NULL, '1', NULL, NULL, NULL, '5d651923afcbecf3b', 0, 'Global', NULL),
('59b0ecf1d7a1c7a32', 0, '(1)	Evaluative metering (linked to all AF points)\n\n(2)	Partial metering (center, approx. 7.2% of viewfinder)\n\n(3)	Spot metering (center, approx. 1.5% of viewfinder)\n\n·AF point-linked spot metering not provided.\n\n(4)	Center-weighted average metering', '59a91396e7971debe', '59af98062e3d1cba2', NULL, NULL, NULL, NULL, '2018-10-26 11:23:20', NULL, '1', NULL, NULL, NULL, '5d651923b166e3629', 0, 'Global', NULL),
('59b0ecf1d7d935ed0', 0, 'Exposure information\n\nShutter speed, aperture, ISO speed (always displayed), AE lock, exposure level, exposure warnin', '59a91396e7971debe', '59af980da501d1de5', NULL, NULL, NULL, NULL, '2018-10-26 11:23:20', NULL, '1', NULL, NULL, NULL, '5d651923b045afbbd', 0, 'Global', NULL),
('59b0ecf1d810bfcee', 0, 'Flash information\n\nFlash ready, flash exposure compensation, high-speed sync, FE lock, red-eye reduction light\n', '59a91396e7971debe', '59af9815efd1a780d', NULL, NULL, NULL, NULL, '2018-10-26 11:23:20', NULL, '1', NULL, NULL, NULL, '5d651923b1eeb150f', 0, 'Global', NULL),
('59b0ecf1d8473ed80', 0, '1', '59a91396e7971debe', '59af98286e2a9699f', '', '', NULL, NULL, '2019-05-02 15:04:07', NULL, '1', NULL, NULL, NULL, '5d651923aeaa1528b', 1, 'Global', NULL),
('59b0ecf1d87cf88f5', 0, '25600', '59a91396e7971debe', '59af98341c1ef6e9c', NULL, NULL, NULL, NULL, '2018-10-26 11:20:08', NULL, '1', NULL, NULL, NULL, '5d651923aef4cdfa0', 0, 'Global', NULL),
('59b0ecf1d8b04a627', 0, '100', '59a91396e7971debe', '59af984349a116a24', NULL, NULL, NULL, NULL, '2018-10-26 11:20:24', NULL, '1', NULL, NULL, NULL, '5d651923af37bbbd5', 0, 'Global', NULL),
('59b0ecf1d8e09ea90', 0, '2012-03-26', '59a91396e7971debe', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, '2019-08-28 05:42:48', NULL, '1', NULL, NULL, NULL, '5d651923b9c66df6f', 0, 'Channel', NULL),
('59b0ecf9c382a68ff', 0, '', '59a91383b638e5623', '59af97d3795b75f07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c3bad3304', 0, NULL, '59a91383b638e5623', '59af97de8c0a4e121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c3f088cce', 0, '0', '59a91383b638e5623', '59af97e8832b39535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c426f75e6', 0, '0', '59a91383b638e5623', '59af97f1b9358224f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c45d49a07', 0, '', '59a91383b638e5623', '59af97fdb6738b14f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c4922a794', 0, '', '59a91383b638e5623', '59af98062e3d1cba2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c4c51f54e', 0, '', '59a91383b638e5623', '59af980da501d1de5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c4fae613d', 0, '', '59a91383b638e5623', '59af9815efd1a780d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c52fc0613', 0, '0', '59a91383b638e5623', '59af98286e2a9699f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c563e5823', 0, NULL, '59a91383b638e5623', '59af98341c1ef6e9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c5980968e', 0, NULL, '59a91383b638e5623', '59af984349a116a24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ecf9c5cccabd2', 0, '2012-09-03', '59a91383b638e5623', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1258f095a0a', 0, '10', '59a9144897c26e55d', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed12597e6e698', 0, '1', '59a9144897c26e55d', '59af9604308c2e8de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed125a8d7d5df', 0, '2013-01-24', '59a9144897c26e55d', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf2806cd21', 0, '', '59a913ad840bc2efa', '59af97d3795b75f07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf2b710d87', 0, NULL, '59a913ad840bc2efa', '59af97de8c0a4e121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf2ecc69a5', 0, '0', '59a913ad840bc2efa', '59af97e8832b39535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf31fcc65f', 0, '0', '59a913ad840bc2efa', '59af97f1b9358224f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf352a7628', 0, '', '59a913ad840bc2efa', '59af97fdb6738b14f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf381cefe6', 0, '', '59a913ad840bc2efa', '59af98062e3d1cba2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf3b1cc0fc', 0, '', '59a913ad840bc2efa', '59af980da501d1de5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf3e893f5c', 0, '', '59a913ad840bc2efa', '59af9815efd1a780d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1bf41ed499d', 0, '0', '59a913ad840bc2efa', '59af98286e2a9699f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1c003107662', 0, NULL, '59a913ad840bc2efa', '59af98341c1ef6e9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1c0063ed37a', 0, NULL, '59a913ad840bc2efa', '59af984349a116a24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed1c009b68a9a', 0, '2012-04-13', '59a913ad840bc2efa', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320883f31b1', 0, 'Contrast Detect (sensor)\nSingle\nLive View', '59a913c6a163e796c', '59af97d3795b75f07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed3208f56da5f', 0, NULL, '59a913c6a163e796c', '59af97de8c0a4e121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320973890f0', 0, '1', '59a913c6a163e796c', '59af97e8832b39535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed3209a62bfeb', 0, '1', '59a913c6a163e796c', '59af97f1b9358224f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed3209d7ada3c', 0, 'Auto, 100, 200, 400', '59a913c6a163e796c', '59af97fdb6738b14f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320a0a70b0c', 0, '', '59a913c6a163e796c', '59af98062e3d1cba2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320a3957eb2', 0, '', '59a913c6a163e796c', '59af980da501d1de5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320a7431150', 0, '', '59a913c6a163e796c', '59af9815efd1a780d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320aaf88c83', 0, '0', '59a913c6a163e796c', '59af98286e2a9699f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320ae28e749', 0, '400', '59a913c6a163e796c', '59af98341c1ef6e9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320b15e4bdd', 0, '100', '59a913c6a163e796c', '59af984349a116a24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ed320b4a2e628', 0, '2007-10-08', '59a913c6a163e796c', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0f8d9491848262', 0, '1.0E+19', '59b0f8c7567b68715', '59b0f8b494fd614bb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6916713ab', 0, '[\"999999999999999999\"]', '59b0f8c7567b68715', '59b0fcbc47ac79df0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b69519c960', 0, '2017-09-06', '59b0f8c7567b68715', '59b0fce98f3302374', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6986ebcc7', 0, '2017-09-06 12:00:00', '59b0f8c7567b68715', '59b0fcf51cddcf153', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b69bb8dd1d', 0, '4', '59b0f8c7567b68715', '59b0fd061b65d2ff3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b69ef80ef9', 0, '444444444444444', '59b0f8c7567b68715', '59b0fd15ea6b5b3d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6a230c7f2', 0, '123123123123123123', '59b0f8c7567b68715', '59b0fd45a0ff78d08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6a584ac63', 0, '123123123123123123', '59b0f8c7567b68715', '59b0fd53b99aff2e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6a8d6078b', 0, '[\"123123123123123123\",\"1231231231231231231\",\"12312312312312312312\",\"123123123123123123123\"]', '59b0f8c7567b68715', '59b0fd950738ffe38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6abe1584a', 0, '1', '59b0f8c7567b68715', '59b0fcdd79d244220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6aec73ee1', 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\n\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.\n\nAenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.\n\nMaecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\n\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\n\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris.\n\nInteger ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.\n\nDonec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor.\n\nDonec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.\n\nVestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis', '59b0f8c7567b68715', '59b0fd305f7282e8c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0fe7b6b2682e3c', 0, '[\"1\",\"2\",\"3\",\"4\"]', '59b0f8c7567b68715', '59b0fd231e770f82f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL);
INSERT INTO `product_attribute_value` (`id`, `deleted`, `value`, `product_id`, `attribute_id`, `value_en_us`, `value_de_de`, `name`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `data`, `product_family_attribute_id`, `is_required`, `scope`, `image_name`) VALUES
('59b0fe7b6b59a8e93', 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\n\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.\n\nAenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.\n\nMaecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\n\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\n\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris.\n\nInteger ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.\n\nDonec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor.\n\nDonec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.\n\nVestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis', '59b0f8c7567b68715', '59b0fd5de7332deac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff5c2faf2d0a9', 0, '3', '59b0f8c7567b68715', '59b0fd73df0c32b19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff5c2febe5cf3', 0, '[\"1\",\"2\",\"3\",\"4\"]', '59b0f8c7567b68715', '59b0fd8325ab92b76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff5c303097e0a', 0, '444444444444444444444444', '59b0f8c7567b68715', '59b0fd3b8148faa50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff63dbae7d156', 0, '[\"1\",\"2\",\"3\",\"4\"]', '59b0f8c7567b68715', '59b0fd231e770f82f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff63dbecd1251', 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\n\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.\n\nAenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.\n\nMaecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\n\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\n\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris.\n\nInteger ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.\n\nDonec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor.\n\nDonec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.\n\nVestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis', '59b0f8c7567b68715', '59b0fd305f7282e8c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff63dc3087412', 0, '444444444444444444444444', '59b0f8c7567b68715', '59b0fd3b8148faa50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff63dc8840a73', 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.\n\nDonec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.\n\nAenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.\n\nMaecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.\n\nEtiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.\n\nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris.\n\nInteger ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus.\n\nDonec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor.\n\nDonec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.\n\nVestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis', '59b0f8c7567b68715', '59b0fd5de7332deac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff63dcc8db52b', 0, '3', '59b0f8c7567b68715', '59b0fd73df0c32b19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff63dd01b27a9', 0, '[\"1\",\"2\"]', '59b0f8c7567b68715', '59b0fd8325ab92b76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b0ff63dd3a6ddb3', 0, '[\"123123123123123123\",\"1231231231231231231\",\"12312312312312312312\",\"123123123123123123123\"]', '59b0f8c7567b68715', '59b0fd950738ffe38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b235eb99b0d614f', 0, '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '59b235107da33d5a4', '59b235cfd274e4bd3', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2374be96ad4bc6', 0, '[\"12\",\"34\"]', '59b235107da33d5a4', '59b0fd950738ffe38', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b239a3bfc50c152', 0, '[\"1\",\"2\",\"3\"]', '59b235107da33d5a4', '59b2397b0a60ce0a3', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23a82bbe9d1610', 0, '[\"1\",\"2\",\"3\"]', '59b235107da33d5a4', '59b2396b8b7c66ee5', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23ac25e6ebd641', 0, '2', '59b0f8c7567b68715', '59b23aab49c4c9b17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23afa6bc589e99', 0, '', '59b0f8c7567b68715', '59b2393fec237d1a7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23b1e989ab8be7', 0, '[\"1\",\"2\",\"3\",\"4\"]', '59b0f8c7567b68715', '59b2397b0a60ce0a3', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23bed6b100215e', 0, '2', '59b0f8c7567b68715', '59b2395c5de442cb4', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bc78fe75e', 0, '[]', '59b235107da33d5a4', '59b2388ac64421b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bcbc0bbda', 0, NULL, '59b235107da33d5a4', '59b238a5cf3a8ce05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bd286026c', 0, NULL, '59b235107da33d5a4', '59b238b74920957e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bd68da004', 0, '', '59b235107da33d5a4', '59b238ce23cd832ae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bdb044de1', 0, NULL, '59b235107da33d5a4', '59b238d990a2bdb10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bdf87ff28', 0, NULL, '59b235107da33d5a4', '59b238e5b18f16c70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56be38b054f', 0, '[]', '59b235107da33d5a4', '59b238f6aece5084e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56be7bd6341', 0, '', '59b235107da33d5a4', '59b2391e797bde569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bebecbd3a', 0, '', '59b235107da33d5a4', '59b2392e086180517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bf05dcde6', 0, '', '59b235107da33d5a4', '59b2395c5de442cb4', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bf4e253c9', 0, '0', '59b235107da33d5a4', '59b2389af3e728106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bf816e1d4', 0, '', '59b235107da33d5a4', '59b23904be11ee156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56bfbb4fc0e', 0, '', '59b235107da33d5a4', '59b2393fec237d1a7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d56c00943cb5', 0, '', '59b235107da33d5a4', '59b239112070be747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d650fae064bc', 0, '', '59b235107da33d5a4', '59b23904be11ee156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d650fe944732', 0, '', '59b235107da33d5a4', '59b239112070be747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d65101e28bd5', 0, '', '59b235107da33d5a4', '59b2391e797bde569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d65105291cf8', 0, '', '59b235107da33d5a4', '59b2392e086180517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d651087d75a2', 0, '', '59b235107da33d5a4', '59b2393fec237d1a7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23d6510be042c7', 0, '', '59b235107da33d5a4', '59b2395c5de442cb4', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23ee5e8488ecfb', 0, '', '59b0f8c7567b68715', '59b2391e797bde569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23ee5e89709f98', 0, '', '59b0f8c7567b68715', '59b239112070be747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23ee5e9181b852', 0, '[]', '59b0f8c7567b68715', '59b2396b8b7c66ee5', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23eeed11e5933e', 0, '', '59b0f8c7567b68715', '59b2392e086180517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b23eeed1a445d80', 0, '[]', '59b0f8c7567b68715', '59b2396b8b7c66ee5', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b240721072854c6', 0, '2', '59b0f8c7567b68715', '59b24061653e3cf93', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2440ce1e0784fc', 0, '', '59b0f8c7567b68715', '59b238ce23cd832ae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2440ce22ec505f', 0, NULL, '59b0f8c7567b68715', '59b238d990a2bdb10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2440ce2754500d', 0, NULL, '59b0f8c7567b68715', '59b238e5b18f16c70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2440ce2b7f23bb', 0, '[]', '59b0f8c7567b68715', '59b238f6aece5084e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2440ce2f9d3320', 0, '', '59b0f8c7567b68715', '59b23904be11ee156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2440ce399c5f3c', 0, '[]', '59b0f8c7567b68715', '59b243f8bd1a7b3dd', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b298d2789f43104', 0, '[\"1\"]', '59b2988336ff536c7', '59b2396b8b7c66ee5', '[\"2\",\"3\",\"4\",\"5\",\"1\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b298d27991a74a2', 0, '[\"1\",\"2\",\"3\"]', '59b2988336ff536c7', '59b2397b0a60ce0a3', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"11\",\"12\",\"55\",\"6\",\"7\",\"8\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a19401dbd5', 0, '[\"2\",\"3\",\"4\"]', '59b2988336ff536c7', '59b235cfd274e4bd3', '[\"2\",\"3\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a197b452b8', 0, '[\"1\",\"2\",\"3\",\"\",\"45\",\"99\"]', '59b2988336ff536c7', '59b2388ac64421b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a19b06d2d7', 0, '0', '59b2988336ff536c7', '59b2389af3e728106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a19f332386', 0, '2017-09-08', '59b2988336ff536c7', '59b238a5cf3a8ce05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a1a290b385', 0, '2017-09-08 00:00:00', '59b2988336ff536c7', '59b238b74920957e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a1a5c2161c', 0, '1', '59b2988336ff536c7', '59b238ce23cd832ae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a1a8f5309e', 0, '12313', '59b2988336ff536c7', '59b238d990a2bdb10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a1ac512a1b', 0, '123', '59b2988336ff536c7', '59b238e5b18f16c70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2995a1af99d005', 0, '[\"1\",\"2\",\"3\"]', '59b2988336ff536c7', '59b238f6aece5084e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6ebe89411c', 0, '1123', '59b2988336ff536c7', '59b23904be11ee156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6ec1bc2bf5', 0, '1231313', '59b2988336ff536c7', '59b239112070be747', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6ec490362e', 0, '111', '59b2988336ff536c7', '59b2391e797bde569', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6ec767bd67', 0, '123123', '59b2988336ff536c7', '59b2392e086180517', '123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6eca870078', 0, '111', '59b2988336ff536c7', '59b2393fec237d1a7', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6ecf566947', 0, '[\"1\",\"2\"]', '59b2988336ff536c7', '59b243f8bd1a7b3dd', '[\"1\",\"2\",\"3\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6ed23a34d4', 0, '2', '59b2988336ff536c7', '59b23aab49c4c9b17', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b299a6ed4f6a1da', 0, '2', '59b2988336ff536c7', '59b24061653e3cf93', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dad7d8f1e', 0, '1111', '59b2988336ff536c7', '59af94a4915c4b061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300db184b629', 0, '0', '59b2988336ff536c7', '59af94b0b8671011f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300db9e2ba79', 0, 'A4 (210 x 297 mm)', '59b2988336ff536c7', '59af9596ccdeaffc0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dc20e5ebb', 0, '129', '59b2988336ff536c7', '59af95ec43c8ba01b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dc634c938', 0, '12129', '59b2988336ff536c7', '59af95f809c136524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dca223dc9', 0, '0', '59b2988336ff536c7', '59af9604308c2e8de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dd4917ae0', 0, 'Bridge', '59b2988336ff536c7', '59af9653e337b5aed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dd8eacbc8', 0, '12129', '59b2988336ff536c7', '59af9676e3a057991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300ddd1eec76', 0, '12129', '59b2988336ff536c7', '59af968260dcb66a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300de14c6638', 0, '6.3mm', '59b2988336ff536c7', '59af96a550f14e257', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300de5a0b5ed', 0, '800 x 600', '59b2988336ff536c7', '59af96fe0a24a4ce0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300de9e9bd97', 0, '12129', '59b2988336ff536c7', '59af970a496c620f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dee1cafed', 0, '[\"fax\",\"N\",\"print\"]', '59b2988336ff536c7', '59af9742e13e33219', NULL, NULL, NULL, NULL, '2019-05-02 08:39:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300df2460603', 0, '1', '59b2988336ff536c7', '59af9752c3df9518b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300dfeb5b884', 0, '999', '59b2988336ff536c7', '59af97763aae4daef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300e02d27d02', 0, '12129', '59b2988336ff536c7', '59af97877a951c8ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300e06edd34c', 0, '123339', '59b2988336ff536c7', '59af97941e37fd6b2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300e0af79f02', 0, '13139', '59b2988336ff536c7', '59af979e5c1a7cd31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300e0eb9a6a9', 0, '333139', '59b2988336ff536c7', '59af97a95618763b6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a300e12d3b8b3', 0, '131239', '59b2988336ff536c7', '59af97b2348a0ec9e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50824c13db99', 0, '123123139', '59b2988336ff536c7', '59af97baa662562f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a5082506757f2', 0, '13123`1239', '59b2988336ff536c7', '59af97c31b50de66c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a508254410ffa', 0, '13123139', '59b2988336ff536c7', '59af97cb9253aecee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50825835ab23', 0, 'aaaswedqqwe9', '59b2988336ff536c7', '59af97d3795b75f07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50825c42faf1', 0, '111239', '59b2988336ff536c7', '59af97de8c0a4e121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a508260650295', 0, '0', '59b2988336ff536c7', '59af97e8832b39535', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a5082648273e1', 0, '0', '59b2988336ff536c7', '59af97f1b9358224f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a508268a8e160', 0, '12342439', '59b2988336ff536c7', '59af97fdb6738b14f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50826cdf5451', 0, '1231312319', '59b2988336ff536c7', '59af98062e3d1cba2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a508271050630', 0, '131231239', '59b2988336ff536c7', '59af980da501d1de5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a508275101d20', 0, '1355519', '59b2988336ff536c7', '59af9815efd1a780d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50827929504d', 0, '0', '59b2988336ff536c7', '59af98286e2a9699f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50827d502f74', 0, '11239', '59b2988336ff536c7', '59af98341c1ef6e9c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a508281518287', 0, '1223139', '59b2988336ff536c7', '59af984349a116a24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a5082855a739e', 0, '13139', '59b2988336ff536c7', '59afa5a73160cfceb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50828974856b', 0, '32', '59b2988336ff536c7', '59b0e7e45986c95ed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50828d968d33', 0, '[\"Sport wear\",\"Long sleeve\",\"Short sleeve\",\"Turtleneck\"]', '59b2988336ff536c7', '59af98af10649a2a0', NULL, NULL, NULL, NULL, '2019-05-02 08:39:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a5082919a9964', 0, 'Earthenware', '59b2988336ff536c7', '59af99104a1bca5b7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a508295b65944', 0, 'Polyester', '59b2988336ff536c7', '59af994e3af75d99f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a5082999fd751', 0, 'Black', '59b2988336ff536c7', '59af9a2b5860a9910', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a50829daaf45b', 0, 'Green', '59b2988336ff536c7', '59af9a775b18e6e8a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a5082a1b1b6d5', 0, 'S', '59b2988336ff536c7', '59af9ac4994425b18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b2a5082a5b97f85', 0, '2017-09-08', '59b2988336ff536c7', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b629037c61661b2', 0, '[\"2\",\"3\"]', '59b628ce3c77d1b71', '59b2396b8b7c66ee5', '[\"1\",\"2\",\"3\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b6293fb4b11a711', 0, '[\"1\\\\\",\"2\",\"3\",\"1\",\"4+\"]', '59b628ce3c77d1b71', '59b2397b0a60ce0a3', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b62a2c61217f654', 0, '11', '59b628ce3c77d1b71', '59b2393fec237d1a7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b62a2c6272277fc', 0, '1', '59b628ce3c77d1b71', '59b24061653e3cf93', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b6485754863aac8', 0, '[\"12\",\"2\",\"1\"]', '59b6483d2edf261f0', '59b2397b0a60ce0a3', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b64efbaec9c6e50', 0, '1', '59b64ee7c5edab4a5', '59b24061653e3cf93', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b64f079b9b2e8da', 0, '221', '59b64ee7c5edab4a5', '59b2393fec237d1a7', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b64f14e77127b2e', 0, '[\"1\",\"2\",\"3\"]', '59b64ee7c5edab4a5', '59b2397b0a60ce0a3', '[\"1\",\"2\",\"3\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b64f26079f71b46', 0, '[\"2\",\"3\"]', '59b64ee7c5edab4a5', '59b2396b8b7c66ee5', '[\"1\",\"2\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b64f3d73163996b', 0, '123', '59b64ee7c5edab4a5', '59b2392e086180517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b64f42eb285487c', 0, '[\"1\",\"2\",\"3\"]', '59b64ee7c5edab4a5', '59b2397b0a60ce0a3', '[\"1\",\"2\",\"3\",\"0\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b7ca145e2a34efc', 0, '[\"1\",\"2\",\"3\"]', '59b7c9394fb45ebeb', '59b2397b0a60ce0a3', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b7cba48eefe4fe8', 0, '', '59b7c9394fb45ebeb', '59b2392e086180517', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b7cba48f3f0b4f7', 0, '', '59b7c9394fb45ebeb', '59b24061653e3cf93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b7cba48f77364ad', 0, '1', '59b7c9394fb45ebeb', '59b2393fec237d1a7', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59b7cbb090d623caa', 0, '[]', '59b7c9394fb45ebeb', '59b2396b8b7c66ee5', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59c0b6c10af677d0d', 0, NULL, '59b7c9394fb45ebeb', '59b238b74920957e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59c0b8df4551d6edc', 0, '[]', '59bfc1f0a125c5092', '59b2388ac64421b72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59c0b8df458c74842', 0, '[]', '59bfc1f0a125c5092', '59b2397b0a60ce0a3', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59c0b8df45f071cfe', 0, '3', '59bfc1f0a125c5092', '59b23aab49c4c9b17', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59c0b8df4646ae500', 0, '[]', '59bfc1f0a125c5092', '59b243f8bd1a7b3dd', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59c21697aa5013682', 0, '2012-03-25', '59a90aae4c7e1e191', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59c9f48bd199dd607', 0, '[\"1\"]', '59c2451136fd1d792', '59c9f48434ed72857', '[]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59ca368e1518288e9', 0, '', '59ca3673632433d3f', '59af97877a951c8ce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59ca368e15505c4c2', 0, '', '59ca3673632433d3f', '59b0e7e45986c95ed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59cb9da7bf33a0615', 0, '2017-08-29', '59cb9c50461c02423', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59cc9ff9e0fb7e008', 0, '2012-05-27', '59a90b3d2e964af4c', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59cc9ff9e144886d5', 0, '[]', '59a90b3d2e964af4c', '59cc9fc32b023dd44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59cc9ff9e16fa6a6d', 0, '2012-05-27', '59a90b3d2e964af4c', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59cc9ff9e29034874', 0, '[\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"1\",\"8\",\"9\",\"0\"]', '59a90b3d2e964af4c', '59cc9fc32b023dd44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59cca06a858c11868', 0, '[\"9\",\"0\"]', '59cca05450b60d633', '59cc9fc32b023dd44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59db6571625bd8d87', 0, '[\"9\"]', '59d77478af925a51d', '59cc9fc32b023dd44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59fad7470bb32a54e', 0, '2012-05-14', '59fad6841f243119b', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, '2019-08-27 13:51:18', NULL, '1', NULL, NULL, NULL, '5d651923c293fe531', 1, 'Channel', NULL),
('59fae22ef0ed9989f', 0, '2012-05-14', '59fad8c049f6ef42d', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59fae22ef0faa3088', 0, '2012-05-05', '59fad8c049f6ef42d', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('59fae2a25b1ba5910', 0, '2012-05-14', '59fae2913019a9cdf', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, '2019-08-27 13:51:18', NULL, '1', NULL, NULL, NULL, '5d651923c293fe531', 1, 'Channel', NULL),
('59fb07abb08b63e2a', 0, 'AC power can be supplied with the AC Adapter Kit ACK-E6', '59a91396e7971debe', '59b8d31e3421a3e70', 'AC power can be supplied with the AC Adapter Kit ACK-E6', 'Wechselstrom kann mit dem AC Adapter-Kit ACK-E6 geliefert werden', NULL, NULL, '2018-11-21 14:54:10', NULL, '1', NULL, NULL, NULL, '5d651923b251596e4', 0, 'Global', NULL),
('59fb07abb1cba2f1c', 0, 'CMOS', '59a91396e7971debe', '59b8d28e1fc5ea814', 'CMOS', 'CMOS', NULL, NULL, '2019-08-28 05:38:22', NULL, '1', NULL, NULL, NULL, '5d651923ba53ffa31', 1, 'Channel', NULL),
('59fb0d716480eb98d', 0, 'iPhone X', '59fb0aa27855b0afd', '59af97877a951c8ce', NULL, NULL, NULL, NULL, '2019-08-27 12:15:35', NULL, '1', NULL, NULL, NULL, '5d651923d5c2216a5', 1, 'Channel', NULL),
('59fb0d7168e0d3f1a', 0, '1', '59fb0aa27855b0afd', '59fb0c6e61011344a', NULL, NULL, NULL, NULL, '2019-08-27 12:12:53', NULL, '1', NULL, NULL, NULL, '5d651923d5643b754', 0, 'Global', NULL),
('59fb10161b54c0b7f', 0, 'Apple iPhone X 64GB', '59fb0e05a0c46a91a', '59af97877a951c8ce', NULL, NULL, NULL, NULL, '2019-08-27 12:15:35', NULL, '1', NULL, NULL, NULL, '5d651923d5c2216a5', 1, 'Channel', NULL),
('59fb10161b870baa7', 0, '1', '59fb0e05a0c46a91a', '59fb0c6e61011344a', NULL, NULL, NULL, NULL, '2019-08-27 12:12:53', NULL, '1', NULL, NULL, NULL, '5d651923d5643b754', 0, 'Global', NULL),
('59fb168c6f3874074', 0, 'Silicone', '59fb152fe4a37088e', '59fb1561962e5d354', NULL, NULL, NULL, NULL, '2018-11-09 09:29:59', NULL, '1', NULL, NULL, NULL, '5d651923d8b78af22', 1, 'Global', NULL),
('5a9e9419bddad42e0', 0, '30', '5a9e93d0e1e4fd1b9', '59af95f809c136524', NULL, NULL, NULL, NULL, '2018-11-09 08:55:45', NULL, '1', NULL, NULL, NULL, '5d651923ad2a23594', 0, 'Global', NULL),
('5a9e9419c0dbb49fa', 0, 'Canon EOS 1100D 18-55 IS II KIT', '5a9e93d0e1e4fd1b9', '59af97877a951c8ce', NULL, NULL, NULL, NULL, '2018-11-09 08:57:05', NULL, '1', NULL, NULL, NULL, '5d651923b6c7e91bd', 1, 'Global', NULL),
('5a9e9419c3cdbe55c', 0, '2048x3072', '5a9e93d0e1e4fd1b9', '59af97941e37fd6b2', NULL, NULL, NULL, NULL, '2018-11-09 08:57:11', NULL, '1', NULL, NULL, NULL, '5d651923b64e5f3fd', 0, 'Global', NULL),
('5a9e9419c6ef4d2d6', 0, '24,2 Мpx', '5a9e93d0e1e4fd1b9', '59af979e5c1a7cd31', NULL, NULL, NULL, NULL, '2018-11-09 08:57:20', NULL, '1', NULL, NULL, NULL, '5d651923b96e87b15', 0, 'Global', NULL),
('5a9e9419c9f58a8fa', 0, 'JPEG: High Definition\nNormal (conforms to the Exif 2.30 [Exif Print] standard) / Design rule for Camera File system (2.0)', '5a9e93d0e1e4fd1b9', '59af97a95618763b6', NULL, NULL, NULL, NULL, '2018-11-09 08:57:31', NULL, '1', NULL, NULL, NULL, '5d651923bb0a0ba06', 0, 'Global', NULL),
('5a9e9419cccbde188', 0, 'JPEG: accurate, standard (Exif 2.30)\nRAW: 14-bit, original Canon RAW, version 2, compatible with DPOF1.1', '5a9e93d0e1e4fd1b9', '59af97b2348a0ec9e', NULL, NULL, NULL, NULL, '2018-11-09 08:57:39', NULL, '1', NULL, NULL, NULL, '5d651923bb7d6ccce', 0, 'Global', NULL),
('5a9e9419cfb5584c1', 0, 'EF/EF-S', '5a9e93d0e1e4fd1b9', '59af97baa662562f5', NULL, NULL, NULL, NULL, '2018-11-09 08:57:50', NULL, '1', NULL, NULL, NULL, '5d651923b0cbabb6e', 0, 'Global', NULL),
('5a9e9419d273847ca', 0, 'Type: TTL-CT-SIR', '5a9e93d0e1e4fd1b9', '59af97c31b50de66c', NULL, NULL, NULL, NULL, '2018-11-09 08:57:58', NULL, '1', NULL, NULL, NULL, '5d651923b008c1455', 1, 'Global', NULL),
('5a9e9419d5221bbe6', 0, 'Modes: AI focus, Single frame, AI servo', '5a9e93d0e1e4fd1b9', '59af97cb9253aecee', NULL, NULL, NULL, NULL, '2018-11-09 08:58:07', NULL, '1', NULL, NULL, NULL, '5d651923b08423b83', 0, 'Global', NULL),
('5a9e9419d75bc44c3', 0, 'Automatic Intelligent Auto Focus (AI Focus)', '5a9e93d0e1e4fd1b9', '59af97d3795b75f07', NULL, NULL, NULL, NULL, '2018-11-09 08:58:15', NULL, '1', NULL, NULL, NULL, '5d651923af77525e4', 0, 'Global', NULL),
('5a9e9419d930faf83', 0, '21', '5a9e93d0e1e4fd1b9', '59af97de8c0a4e121', NULL, NULL, NULL, NULL, '2018-11-09 08:56:05', NULL, '1', NULL, NULL, NULL, '5d651923ad8d09779', 1, 'Global', NULL),
('5a9e9419db0a490a6', 0, '1', '5a9e93d0e1e4fd1b9', '59af97e8832b39535', NULL, NULL, NULL, NULL, '2018-11-09 08:56:10', NULL, '1', NULL, NULL, NULL, '5d651923adf3f5442', 0, 'Global', NULL),
('5a9e9419dcf93c412', 0, '1', '5a9e93d0e1e4fd1b9', '59af97f1b9358224f', NULL, NULL, NULL, NULL, '2018-11-09 08:56:37', NULL, '1', NULL, NULL, NULL, '5d651923ae53f12dc', 0, 'Global', NULL),
('5a9e9419dfb709b8a', 0, 'Auto, 100 - 6400', '5a9e93d0e1e4fd1b9', '59af97fdb6738b14f', NULL, NULL, NULL, NULL, '2018-11-09 08:58:26', NULL, '1', NULL, NULL, NULL, '5d651923afcbecf3b', 0, 'Global', NULL),
('5a9e9419e1ef9ce4a', 0, 'Auto mode: In single-frame autofocus mode with exposure estimation, the exposure is captured when the focus is reached.\nManual mode: triggers when the AE lock button is pressed in creative zone modes.', '5a9e93d0e1e4fd1b9', '59af98062e3d1cba2', NULL, NULL, NULL, NULL, '2018-11-09 08:58:35', NULL, '1', NULL, NULL, NULL, '5d651923b166e3629', 0, 'Global', NULL),
('5a9e9419e3c89ab2a', 0, 'Automatic white balance (priority of ambient light or white priority), daylight, shadow, cloud, incandescent lamp,\nwhite fluorescent light bulb, flash, manual, color temperature.\nWhite balance compensation:\n1. Offshore on a scale of blue / yellow +/- 9 levels\n2. Offset on a scale of purple / green +/- 9 levels', '5a9e93d0e1e4fd1b9', '59af980da501d1de5', NULL, NULL, NULL, NULL, '2018-11-09 08:58:49', NULL, '1', NULL, NULL, NULL, '5d651923b045afbbd', 0, 'Global', NULL),
('5a9e9419e5a3932b5', 0, 'Bracketing White Balance\n+/- 3 levels with a full-scale step\nShoot 3 frames in bracket mode for one shutter release.\nSelect the offset on the blue / yellow or red / green scale.', '5a9e93d0e1e4fd1b9', '59af9815efd1a780d', NULL, NULL, NULL, NULL, '2018-11-09 08:59:00', NULL, '1', NULL, NULL, NULL, '5d651923b1eeb150f', 0, 'Global', NULL),
('5a9e9419e76fd7816', 0, '1', '5a9e93d0e1e4fd1b9', '59af98286e2a9699f', NULL, NULL, NULL, NULL, '2018-11-09 08:56:14', NULL, '1', NULL, NULL, NULL, '5d651923aeaa1528b', 1, 'Global', NULL),
('5a9e9419e9b26d236', 0, '6400', '5a9e93d0e1e4fd1b9', '59af98341c1ef6e9c', NULL, NULL, NULL, NULL, '2018-11-09 08:56:43', NULL, '1', NULL, NULL, NULL, '5d651923aef4cdfa0', 0, 'Global', NULL),
('5a9e9419ebd7e7d9d', 0, '100', '5a9e93d0e1e4fd1b9', '59af984349a116a24', NULL, NULL, NULL, NULL, '2018-11-09 08:56:21', NULL, '1', NULL, NULL, NULL, '5d651923af37bbbd5', 0, 'Global', NULL),
('5a9e9419ede86c12f', 0, 'Power supplies\n1 rechargeable lithium-ion battery LP-E17', '5a9e93d0e1e4fd1b9', '59b8d31e3421a3e70', 'Power supplies\n1 rechargeable lithium-ion battery LP-E17', 'Netzteile\n1 wiederaufladbarer Lithium-Ionen-Akku LP-E17', NULL, NULL, '2018-11-09 08:59:13', NULL, '1', NULL, NULL, NULL, '5d651923b251596e4', 0, 'Global', NULL),
('5a9e941a008340682', 0, '2011-12-14', '5a9e93d0e1e4fd1b9', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, '2019-08-28 05:42:48', NULL, '1', NULL, NULL, NULL, '5d651923b9c66df6f', 0, 'Channel', NULL),
('5a9e941a074c98334', 0, 'CMOS', '5a9e93d0e1e4fd1b9', '59b8d28e1fc5ea814', 'CMOS', 'CMOS', NULL, NULL, '2019-08-28 05:38:22', NULL, '1', NULL, NULL, NULL, '5d651923ba53ffa31', 1, 'Channel', NULL),
('5ac126e1566cf01bf', 0, '[\"second\",\"first\"]', '59a9107c9cf398b37', '5ac12681c083a35ca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Global', NULL),
('5b864a0a694bf96c9', 0, '2018-06-20', '5b8649f0dae076eb0', '59afa1e6473c5052e', NULL, NULL, NULL, NULL, '2019-08-27 13:51:18', NULL, '1', NULL, NULL, NULL, '5d651923c293fe531', 1, 'Channel', NULL);
INSERT INTO `product_attribute_value` (`id`, `deleted`, `value`, `product_id`, `attribute_id`, `value_en_us`, `value_de_de`, `name`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `data`, `product_family_attribute_id`, `is_required`, `scope`, `image_name`) VALUES
('5be548d5e101ac26b', 0, '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Communication standard<br></td><td><ul><li>3G (WCDMA / UMTS)</li><li>2G (EDGE)</li><li>4G (LTE)</li></ul></td></tr><tr><td>Display<br></td><td><ul><li>Diagonal screen 5.8</li><li>Video resolution 2436x1125</li><li>OLED Matrix Type (Super Retina HD)</li><li>Glass Screen Material</li></ul></td></tr><tr><td>SIM cards<br></td><td><ul><li>Number of SIM cards&nbsp;</li><li>Dimensions of SIM cards Nano-SIM</li></ul></td></tr><tr><td>Memory functions<br></td><td><ul><li>3 GB of RAM</li><li>Built-in 64GB memory</li><li>Combined slot No</li></ul></td></tr><tr><td>Operating System<br></td><td>iOS<br></td></tr><tr><td>Front camera<br></td><td>&nbsp;7 Mpx<br></td></tr><tr><td>Main camera<br></td><td>12 Mpx + 12 Mpx</td></tr><tr><td>Processor<br></td><td>Apple A11 Bionic<br></td></tr><tr><td>Number of cores<br></td><td>4+2</td></tr><tr><td>GPS navigation<br></td><td>Yes<br></td></tr><tr><td>Wireless technology<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Supply kit<br></td><td><ul><li>Phone</li><li>Headset</li><li>Cable for synchronization</li><li>Charger</li><li>Documentation</li><li>Guarantee voucher</li><li>Lightning adapter - 3.5 mm mini jack<br></li></ul></td></tr><tr><td>Guarantee<br></td><td>12 months of official warranty from the manufacturer<br></td></tr></tbody></table><div>&nbsp;<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHU8hLyUDsRIrdse516XIKyu-4VS-kMXqKxl4P3QElUXBnasUp\" style=\"width: 225px;\"><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp7ukjnzt4yFvlXAih5ZCFe6mhKfza1-Vurq-Evi-n7OfNxw6m\" style=\"width: 259px;\"></div>', '59fb0aa27855b0afd', '5be548d57b74b3154', '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Communication standard<br></td><td><ul><li>3G (WCDMA / UMTS)</li><li>2G (EDGE)</li><li>4G (LTE)</li></ul></td></tr><tr><td>Display<br></td><td><ul><li>Diagonal screen 5.8</li><li>Video resolution 2436x1125</li><li>OLED Matrix Type (Super Retina HD)</li><li>Glass Screen Material</li></ul></td></tr><tr><td>SIM cards<br></td><td><ul><li>Number of SIM cards&nbsp;</li><li>Dimensions of SIM cards Nano-SIM</li></ul></td></tr><tr><td>Memory functions<br></td><td><ul><li>3 GB of RAM</li><li>Built-in 64GB memory</li><li>Combined slot No</li></ul></td></tr><tr><td>Operating System<br></td><td>iOS<br></td></tr><tr><td>Front camera<br></td><td>&nbsp;7 Mpx<br></td></tr><tr><td>Main camera<br></td><td>12 Mpx + 12 Mpx</td></tr><tr><td>Processor<br></td><td>Apple A11 Bionic<br></td></tr><tr><td>Number of cores<br></td><td>4+2</td></tr><tr><td>GPS navigation<br></td><td>Yes<br></td></tr><tr><td>Wireless technology<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Supply kit<br></td><td><ul><li>Phone</li><li>Headset</li><li>Cable for synchronization</li><li>Charger</li><li>Documentation</li><li>Guarantee voucher</li><li>Lightning adapter - 3.5 mm mini jack<br></li></ul></td></tr><tr><td>Guarantee<br></td><td>12 months of official warranty from the manufacturer<br></td></tr></tbody></table><div>&nbsp;<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHU8hLyUDsRIrdse516XIKyu-4VS-kMXqKxl4P3QElUXBnasUp\" style=\"width: 225px;\"><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp7ukjnzt4yFvlXAih5ZCFe6mhKfza1-Vurq-Evi-n7OfNxw6m\" style=\"width: 259px;\"></div>', '<p><b>Design und Anzeige.&nbsp;</b>Wie erstelle ich ein hochintelligentes Gerät, dessen Körper und Anzeige ein Ganzes bilden? Diese Frage haben wir uns bei der Entwicklung des allerersten iPhone gestellt. Mit dem iPhone X haben wir es wieder gelöst.</p><p><b>Vorstellung des Super-Retina-Displays. Die Arbeit der Ingenieurkunst</b>. Die OLED-Technologie im Super Retina HD-Display wurde stark verbessert. Wir haben sie an unsere höchsten Standards angepasst und ein HDR-Display mit einem Kontrast von 1.000.000: 1, hoher Auflösung und beeindruckender Helligkeit, erweitertem Farbraum und unübertroffener Farbgenauigkeit geschaffen.</p><p><b>Gesichts-ID.&nbsp;</b>Es scheint, dass es einfacher und natürlicher zu berühren ist? Vielleicht einen Blick? Diese Idee bildete die Grundlage von Face ID, einem leistungsfähigen und sicheren Authentifizierungssystem. Sie können das Gerät schnell und einfach entsperren und Einkäufe bezahlen. Und es ist noch komfortabler als Touch ID.</p><p><b>Kamera TrueDepth.&nbsp;</b>Wie viele innovative Ideen können auf kleinem Raum umgesetzt werden? Es stellt sich viel heraus. TrueDepth ist ein ganzes System von High-Tech-Kameras und Sensoren, mit denen das iPhone X einzigartige neue Funktionen hat.</p><p><b>12-Megapixel-Dual-Kamera.&nbsp;</b>Kann die Kamera mehr als das menschliche Auge sehen? Um dies zu lernen, haben wir eine leistungsstarke Kamera mit optischer Bildstabilisierung verwendet und die fortschrittliche Technologie des maschinellen Lernens des A11 Bionic-Prozessors hinzugefügt. Das Ergebnis ist eine Kamera, die mehr sieht und mehr kann.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Kommunikationsstandard<br></td><td><ul><li>3G (WCDMA / UMTS)</li><li>2G (EDGE)</li><li>4G (LTE)</li></ul></td></tr><tr><td>Anzeige<br></td><td><ul><li>Diagonale Bildschirm 5.8</li><li>Videoauflösung 2436x1125</li><li>OLED-Matrixtyp (Super Retina HD)</li><li>Glasschirmmaterial</li></ul></td></tr><tr><td>SIM-Karten<br></td><td><ul><li>Anzahl der SIM-Karten&nbsp;</li><li>Abmessungen der SIM-Karten Nano-SIM</li></ul></td></tr><tr><td>Speicherfunktionen<br></td><td><ul><li>3 GB RAM</li><li>Eingebauter 64-GB-Speicher</li><li>Kombinierter Steckplatz Nr</li></ul></td></tr><tr><td>Betriebssystem<br></td><td>iOS<br></td></tr><tr><td>Vordere Kamera<br></td><td>&nbsp;7 Mpx<br></td></tr><tr><td>Hauptkamera<br></td><td>12 Mpx + 12 Mpx</td></tr><tr><td>Prozessor<br></td><td>Apple A11 Bionic<br></td></tr><tr><td>Anzahl der Kerne<br></td><td>4+2</td></tr><tr><td>GPS Navigation<br></td><td><p>Ja<br></p></td></tr><tr><td>Kabellose Technologie<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Liefer-Kit<br></td><td><ul><li>Telefon</li><li>Headset</li><li>Kabel zur Synchronisation</li><li>Ladegerät</li><li>Dokumentation</li><li>Garantie-Gutschein</li><li>Blitzadapter - 3,5-mm-Minibuchse<br></li></ul></td></tr><tr><td>Garantie<br></td><td>12 Monate offizielle Garantie des Herstellers<br></td></tr></tbody></table><div>&nbsp;<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHU8hLyUDsRIrdse516XIKyu-4VS-kMXqKxl4P3QElUXBnasUp\" style=\"width: 225px;\"><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp7ukjnzt4yFvlXAih5ZCFe6mhKfza1-Vurq-Evi-n7OfNxw6m\" style=\"width: 259px;\"></div>', NULL, '2018-11-09 08:44:05', '2018-11-21 14:38:47', '1', '1', '1', '1', NULL, '5d651923d64e875b0', 1, 'Global', NULL),
('5be548d5e54dc284a', 0, '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Communication standard<br></td><td><ul><li>3G (WCDMA / UMTS)</li><li>2G (EDGE)</li><li>4G (LTE)</li></ul></td></tr><tr><td>Display<br></td><td><ul><li>Diagonal screen 5.8</li><li>Video resolution 2436x1125</li><li>OLED Matrix Type (Super Retina HD)</li><li>Glass Screen Material</li></ul></td></tr><tr><td>SIM cards<br></td><td><ul><li>Number of SIM cards&nbsp;</li><li>Dimensions of SIM cards Nano-SIM</li></ul></td></tr><tr><td>Memory functions<br></td><td><ul><li>3 GB of RAM</li><li>Built-in 64GB memory</li><li>Combined slot No</li></ul></td></tr><tr><td>Operating System<br></td><td>iOS<br></td></tr><tr><td>Front camera<br></td><td>&nbsp;7 Mpx<br></td></tr><tr><td>Main camera<br></td><td>12 Mpx + 12 Mpx</td></tr><tr><td>Processor<br></td><td>Apple A11 Bionic<br></td></tr><tr><td>Number of cores<br></td><td>4+2</td></tr><tr><td>GPS navigation<br></td><td>Yes<br></td></tr><tr><td>Wireless technology<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Supply kit<br></td><td><ul><li>Phone</li><li>Headset</li><li>Cable for synchronization</li><li>Charger</li><li>Documentation</li><li>Guarantee voucher</li><li>Lightning adapter - 3.5 mm mini jack<br></li></ul></td></tr><tr><td>Guarantee<br></td><td>12 months of official warranty from the manufacturer<br></td></tr></tbody></table><div>&nbsp;<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpDeH0q_dOFIRV94ShY8kJfQ9GsTy3djkuJHQsFRHrui2Dfvfw\" style=\"width: 185px;\"><img src=\"https://images-na.ssl-images-amazon.com/images/I/51guQiJnm-L.jpg\" style=\"width: 255.643px; height: 254.109px; float: left;\" class=\"note-float-left\">&nbsp;</div>', '59fb0e05a0c46a91a', '5be548d57b74b3154', '<p><b>Design and display.&nbsp;</b>How to create a highly intelligent device, the body and display of which form a single whole? This question we have set ourselves in the development of the very first iPhone. With iPhone X, we solved it again.</p><p><b>Introducing the Super Retina display. The work of engineering art.&nbsp;</b>OLED technology in the Super Retina HD display has been greatly enhanced. We adapted them to our highest standards and created an HDR display with a contrast of 1,000,000: 1, high resolution and impressive brightness, expanded color gamut and unsurpassed color accuracy.</p><p><b>Face id.&nbsp;</b>It would seem that it can be easier and more natural to touch? Maybe a glance? This idea formed the basis of Face ID, a powerful and secure authentication system. It allows you to quickly and easily unlock the device and pay for purchases. And it is even more convenient than Touch ID.</p><p><b>Camera TrueDepth.&nbsp;</b>How many innovative ideas can be implemented in a small space? It turns out quite a lot. TrueDepth is a whole system of high-tech cameras and sensors with which the iPhone X has unique new features.</p><p><b>12 megapixel dual camera.&nbsp;</b>Can the camera see more than the human eye? To learn this, we took a powerful camera with optical image stabilization and added to it the advanced technology of machine learning of the A11 Bionic processor. The result is a camera that can see more and do more.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Communication standard<br></td><td><ul><li>3G (WCDMA / UMTS)</li><li>2G (EDGE)</li><li>4G (LTE)</li></ul></td></tr><tr><td>Display<br></td><td><ul><li>Diagonal screen 5.8</li><li>Video resolution 2436x1125</li><li>OLED Matrix Type (Super Retina HD)</li><li>Glass Screen Material</li></ul></td></tr><tr><td>SIM cards<br></td><td><ul><li>Number of SIM cards&nbsp;</li><li>Dimensions of SIM cards Nano-SIM</li></ul></td></tr><tr><td>Memory functions<br></td><td><ul><li>3 GB of RAM</li><li>Built-in 64GB memory</li><li>Combined slot No</li></ul></td></tr><tr><td>Operating System<br></td><td>iOS<br></td></tr><tr><td>Front camera<br></td><td>&nbsp;7 Mpx<br></td></tr><tr><td>Main camera<br></td><td>12 Mpx + 12 Mpx</td></tr><tr><td>Processor<br></td><td>Apple A11 Bionic<br></td></tr><tr><td>Number of cores<br></td><td>4+2</td></tr><tr><td>GPS navigation<br></td><td>Yes<br></td></tr><tr><td>Wireless technology<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Supply kit<br></td><td><ul><li>Phone</li><li>Headset</li><li>Cable for synchronization</li><li>Charger</li><li>Documentation</li><li>Guarantee voucher</li><li>Lightning adapter - 3.5 mm mini jack<br></li></ul></td></tr><tr><td>Guarantee<br></td><td>12 months of official warranty from the manufacturer<br></td></tr></tbody></table><div>&nbsp;<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpDeH0q_dOFIRV94ShY8kJfQ9GsTy3djkuJHQsFRHrui2Dfvfw\" style=\"width: 185px;\"><img src=\"https://images-na.ssl-images-amazon.com/images/I/51guQiJnm-L.jpg\" style=\"width: 255.643px; height: 254.109px; float: left;\" class=\"note-float-left\">&nbsp;</div>', 'sie an unsere höchsten Standards angepasst und ein HDR-Display mit einem Kontrast von 1.000.000: 1, hoher Auflösung und beeindruckender Helligkeit, erweitertem Farbraum und unübertroffener Farbgenauigkeit geschaffen.<p></p><p><b>Gesichts-ID.&nbsp;</b>Es scheint, dass es einfacher und natürlicher zu berühren ist? Vielleicht einen Blick? Diese Idee bildete die Grundlage von Face ID, einem leistungsfähigen und sicheren Authentifizierungssystem. Sie können das Gerät schnell und einfach entsperren und Einkäufe bezahlen. Und es ist noch komfortabler als Touch ID.</p><p><b>Kamera TrueDepth.&nbsp;</b>Wie viele innovative Ideen können auf kleinem Raum umgesetzt werden? Es stellt sich viel heraus. TrueDepth ist ein ganzes System von High-Tech-Kameras und Sensoren, mit denen das iPhone X einzigartige neue Funktionen hat.</p><p><b>12-Megapixel-Dual-Kamera.&nbsp;</b>Kann die Kamera mehr als das menschliche Auge sehen? Um dies zu lernen, haben wir eine leistungsstarke Kamera mit optischer Bildstabilisierung verwendet und die fortschrittliche Technologie des maschinellen Lernens des A11 Bionic-Prozessors hinzugefügt. Das Ergebnis ist eine Kamera, die mehr sieht und mehr kann.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Kommunikationsstandard<br></td><td><ul><li>3G (WCDMA / UMTS)</li><li>2G (EDGE)</li><li>4G (LTE)</li></ul></td></tr><tr><td>Anzeige<br></td><td><ul><li>Diagonale Bildschirm 5.8</li><li>Videoauflösung 2436x1125</li><li>OLED-Matrixtyp (Super Retina HD)</li><li>Glasschirmmaterial</li></ul></td></tr><tr><td>SIM-Karten<br></td><td><ul><li>Anzahl der SIM-Karten&nbsp;</li><li>Abmessungen der SIM-Karten Nano-SIM</li></ul></td></tr><tr><td>Speicherfunktionen<br></td><td><ul><li>3 GB RAM</li><li>Eingebauter 64-GB-Speicher</li><li>Kombinierter Steckplatz Nr</li></ul></td></tr><tr><td>Betriebssystem<br></td><td>iOS<br></td></tr><tr><td>Vordere Kamera<br></td><td>&nbsp;7 Mpx<br></td></tr><tr><td>Hauptkamera<br></td><td>12 Mpx + 12 Mpx</td></tr><tr><td>Prozessor<br></td><td>Apple A11 Bionic<br></td></tr><tr><td>Anzahl der Kerne<br></td><td>4+2</td></tr><tr><td>GPS Navigation<br></td><td><p>Ja<br></p></td></tr><tr><td>Kabellose Technologie<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Liefer-Kit<br></td><td><ul><li>Telefon</li><li>Headset</li><li>Kabel zur Synchronisation</li><li>Ladegerät</li><li>Dokumentation</li><li>Garantie-Gutschein</li><li>Blitzadapter - 3,5-mm-Minibuchse<br></li></ul></td></tr><tr><td>Garantie<br></td><td>12 Monate offizielle Garantie des Herstellers<br></td></tr></tbody></table><div>&nbsp;<img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpDeH0q_dOFIRV94ShY8kJfQ9GsTy3djkuJHQsFRHrui2Dfvfw\" style=\"width: 185px;\"><img src=\"https://images-na.ssl-images-amazon.com/images/I/51guQiJnm-L.jpg\" style=\"width: 255.643px; height: 254.109px; float: left;\" class=\"note-float-left\">&nbsp;</div>', NULL, '2018-11-09 08:44:05', '2018-11-21 14:27:43', '1', '1', '1', '1', NULL, '5d651923d64e875b0', 1, 'Global', NULL);
INSERT INTO `product_attribute_value` (`id`, `deleted`, `value`, `product_id`, `attribute_id`, `value_en_us`, `value_de_de`, `name`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `data`, `product_family_attribute_id`, `is_required`, `scope`, `image_name`) VALUES
('5be54c93a2829e18c', 0, '<p><b>The EOS 5D Mark III</b>&nbsp;is a full-frame 22.3 megapixel single-lens digital SLR with 61-point AF and 6 frames per second continuous shooting speed. Take high-quality Full HD movies with manual control of all parameters from frame rate to sound.&nbsp;</p><p><b>Full-frame 22.3-megapixel sensor.&nbsp;</b>Take high-quality high-resolution images with the 22.3 Megapixel CMOS sensor and DIGIC 5+ image processing. Colors are bright, but natural, and even in dark and bright areas, there is a good detail.</p><p><b>High-speed continuous shooting</b>. Keep track of the shooting speed at 6 frames/sec. and instant recording up to 16270 continuously captured JPEG images to UDMA7.</p><p><b>61-point autofocus on a wide area.</b>&nbsp;Quick and accurate focus even on objects outside the central area with a 61-point focusing system on a wide area. 41 cross-type sensors (five of which are ultra-sensitive, double-cross type) provide extremely accurate tracking of moving objects.</p><p><b>Advantages:&nbsp;</b></p><ul><li>22.3-megapixel full-frame sensor<br></li><li>61-point autofocus</li><li>Continuous shooting at 6 fps.</li><li>ISO sensitivity in the range 100-25600 with the ability to expand to ISO 102400.</li><li>Full-HD video with manual control</li><li>Uncompressed HDMI in Full HD 8bit 4.2.2</li><li>14-bit DIGIC 5+ processor</li><li>Protection against adverse weather conditions</li><li>Display size 8.11 cm (3.2 inches) with a resolution of 1,040,000 points.</li><li>HDR mode</li></ul><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\"><tbody><tr><td>Width<br></td><td>152 mm<br></td></tr><tr><td>Depth<br></td><td>183.4 mm<br></td></tr><tr><td>Height<br></td><td>116.4 mm<br></td></tr><tr><td>Weight (grams)<br></td><td>1620<br></td></tr><tr><td>Guarantee<br></td><td>24 months<br></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Image Processing Processor<br></td><td>Type of DIGIC 5+<br></td></tr><tr><td>Lens mount<br></td><td>EF (other than EF-S series lenses)<br></td></tr><tr><td>Type of focusing<br></td><td>TTL-CT-SIR with a special CMOS sensor<br></td></tr><tr><td>AF point system / points<br></td><td><ul><li>61/41-point AF cross-type with aperture f / 4, including 5-point</li><li>AF dual cross type with f / 2.8 aperture</li><li>The number of AF cross-reference points may vary, depending on the lens.<br></li></ul></td></tr><tr><td>Autofocus modes<br></td><td><ul><li>Intelligent AF (AI Focus)</li><li>Frame-by-frame</li><li>Following Autofocus (AI Servo)<br></li></ul></td></tr><tr><td>ISO sensitivity<br></td><td><ul><li>Auto (100-12800), 100-25600 (with a step of 1/3 degree or in full degree)</li><li>ISO can be expanded to L: 50, H1: 51200, H2 102400<br></li></ul></td></tr><tr><td>Type of picture<br></td><td><ul><li>JPEG: high resolution, normal (conforms to the Exif 2.3 [Exif Print] standard) / Design rule for Camera File system (2.0),</li><li>RAW: RAW, sRAW1, sRAW2 (14 bit, Canon RAW, version 2),</li><li>Compatible with digital printing management format [DPOF], version 1.1<br></li></ul></td></tr><tr><td>Record video<br></td><td>Full HD (1920x1080<br></td></tr><tr><td>Wi-Fi<br></td><td>None<br></td></tr><tr><td>Supply kit<br></td><td><ul><li>Canon EOS 5D Mark III digital camera</li><li>Lens 24-105 mm</li><li>Battery</li><li>Charger</li><li>Interface cable</li><li>Stereo video cable</li><li>Neck strap</li><li>CD with software</li><li>Documentation<br></li></ul></td></tr></tbody></table><p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhIVFhUXFxYZFxcXGBgVFRoYFxUXGBUXFxUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFy0eHyYtLS0rLS0tLS0tLi0tLS0uLS0tKy0tKys3LSstLSs3Li0tLSstLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUDBgcCAQj/xABDEAACAQICBwQIBAQFAgcAAAABAgADEQQhBQYSMUFRcSJhgZEHEzJCobHB8FJy0eEjM2KCFJKywvEkQzRjc3SDouL/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIEA//EACkRAQEAAgADBAsAAAAAAAAAAAABAhEhMUEDUYGxBBITIzNSYXGRoeH/2gAMAwEAAhEDEQA/AO4xEQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREw4vEpTUu7AKN5P3vgZpHrY2mntOo7ri/lNG0vrS9UkISicAPaP5j9JTnFmBs2M12qq5CYJ3UEgN6xASAciF4XnxNfx7+CxK9Nhvk01api2EjVarHexl0rb19Iim4GFrXHOyjzImXB68lqiq+HKoSAW2wxF+NgMxNFvPSvGh2qJpGq+tdrUsQ1x7tQ7x3MeI75uqODmCD0N5EeoiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiY69ZUUs7BVGZJyAlONbcGQdirtsPcVW2z0UgX67oF5E1zHa30qeyBSqvtb7BVC/mLN8ryt0j6Q6VOoFFFivFmYL5KAb/CBudWoFBZjYAEk8gMyZx3XHW5q75XFME7I4dT3y01j18NajVSkgVGULtEkubkXAGQAtfnKxdM4V0w9J6yLQFJVq0mRyRVQs5b2SlnYJd7EgZWzMDWRpy2+SKOsiA9oTZsQmg6l7nDqrMDdWZGUM2HuLXFrbVbhkAd1jI+H0LoZ2IY0yRsB9jEMoDihVepsdsgpdEzF82IvlaUV66SR8wRPVfSNMDfczmtHGsAM99ry1wmJvA2VsaTPSVSZAwhubS3p4YiVXtahAud1wL97Xt8jLdcdiKSq4FRbcbMMuBBnPtN6RrUq9kZlsVYEbshbMbjvPnNqwnpWr+rNPFUlrA+8rGk48V+eUg6jqfrF/iVZHt61LX/qU+9bnzmxzlOgfSLgVIdqmIVrEbD06bjPlUUbXmZvOgtbcLi32KDMzWLHskAAW3k9RIL2IiEIiICIiAiIgIiICIiAiIgIiICIiAkfH4xaSF23DcOJPACZK9UIrO25QSegFzOT6za1isx/ihALhRy/UwPuses9Wo5T1oOdygtZd9u9rTS8TrOlGoWXaNTcxDG1+QG4eEq9J6VSntCjd6r73I3dJqlSpnYnPv3yjc62u9V3LFVufvcJFxWnHqEFzKbRWicRXP8ABovU/KLjxIyEuzqZjci9P1f59r/apgZXxTMgCtYb+sqsViai7wD8Jd1dElFA2wxGWQlc+Ev7V7f02v5HwgUtTSPNT5zA2Nv7pkzSOAC5ozOON0C28mN87+UqjIM4xee6WeBrX3SlAknBPZhyORgbRRxBEmprE6ZGzDkf1lIHymCs8o2DFY+hWsSTTYcSLjzHCQcTop3zQI//AKZz/wAv7Sk9YbzJTqkG4MCcNHOpzSoP7CZ0P0b4mph32gMmsH21I7FwSFN77XnumiYXSVTcXbzJl1hMUTxMK/QmExtOoLo4bpvHUcJInHdU9KGlXR9rK9m/Kcj+vhOxSFIiIQiIgIiICIiAiIgIlRrHrDSwlPafNj7CDe36DvnJdPa1YrEk7VQqnBEuq+PFvGB2LFaZw9PJqyA8toX8ryoxesrf9oLbn/MPkGFvjOKPTJ4GY0qOhurMpl0OqVtZsST2K6A/hakP1vPA15xVL+dRRh+JL/Ebx5TSsHpdawFOsQtT3WOSno29Wn06Vamdmr203En2l6kfONDoFbWn16EK2wGBBGyGuCLHfvHSa1iUdAWRabLzRQD4i15q2lcQ1POm3ZOa9foe+fdEayljYnZqDyPcRJpvG48sotm0q34jeek07UU5m/5v1mLG0lrKXUbLj2gOPf0lIzEfZ+l/lLFzwuP26VvujNaWFrOy290m4z5c/vKXD6zK6kOoPffZPjwI8JydKtjl8Mj8D9JPoY47ic+/9LD5Qwu9L+qe5yv3X+DDMfLumsYzD28d17A9CQR9ZZeuLbgZgr0zbtC3WVFDVw/G3j+9h85WYzRgfMW2u7j1tuPfNgZM89445XIzvdmJ3Zbh8pgcX7/8zD4WEg0qvQZDYieVabVjsMGG6x8L91gJq2IpFTaQXNNrgHmJGJLVFp3A2nRb77bRAv8AH4T7gHug7pgxydrqPl/zA2V9W0DhR68g1hSuPc33q1NugvZyGQyyPaPCr01gBQ9WyFmV9qzPlcqFv/DamjJ7Y/F1ylnoPE4f1Cis9MVCzglv4jMpWpsiqGp9hFOxbtEG+7lR6bqI9djTN1soBz2b7I29gNmE2tqwlGXANtZ7s5dKrlew1jztf6ylwS2AmwYRwB2iB1MCz0Wtj2wG3biRy3k99/Od01cqlsNSYkksoJubnpu3ZThGGri+Ss3hYeZsJ2rUavtYKlcWI2gRe+5jx6ESVV/ERCEREBERAREQEj6Qxi0ab1XPZQEn9B3nd4yRNF9KGkdlKdAH2u23QZKPO5/tgjQdO6UfEVmqOc2OQ4KvBR3CV+1bdv5zwrXN+fynorKPL1n/ABTE+Kb3lDD4zIwmNhAw1aKsLobjiOImPB4oh1Sobq3ZueF+B7p6qIQdpMm5cD3GY8TTWou0BkciORgWNaiaD+qfOm3sE8Dy6THpfQqqor0xdG7LC+aP3kfCZMLixicOaFX+bSGR4svunqJ50XpQim9OoLgjYqDp7LjvlHvQ2OJGftpv7xzknHovt27DZH+luf3wmr1Xak4qKfZNj3rNhweJDdk+y/wPAzOXe6ewsz91lyvL6Xp+eV/iFUFjY/t8T9IR7bv2+FhPFQlWKneuXh4ZmeCfvL63MrnssuqlVcQ2ydltk5EEHiu69uHMd8l4LSOGqBqlYVASPZp2ycX28j5gSsdsr8uvjvlQ90rbN7BiGB7+HgR8zCNp1j0hRTZoJQCFGpk1traLbaKUfkabXBHXdvlZt3HzuSc+IsJifClrbbEgJ6sDf2L3Re4Lc2nsmzkc87d435dLQPLZdPAD9ZT6Ywq7JbO+Vrbr3G+/C15csPv95HxdLaRh3fKFa9oxsmEz1jmD1HmP2kSg9mY915bYPHIV7dGnsiwZr7TC+4su+3eN0iITGfUkvSGDUZ0xbmu9T05SIhvnKJVAS6wA7RO/srlyzP34Smw4lzo72z+VPm0C3oXuPvlOwej5icGAeDuOXI/Wcgojd98p130eLbCf/I30iq2eIiRCIiAiIgIiICcc9JOL2sTU/p2UHgM/iWnY5wPW/EM2LxG0Sf8AqWUX4KqgACOqodJcp6YT1TGQ6QZUYWExkTMRPJEDARI7dhr+62TdeBku0x1qe0COcCrxhNJxUXepz7wd8y1q4FRag9lxY/SZKw26YJ32seolPQYlGQ713eECeq326Z8Oh3T7oyv2Nk71NvLdMNSrnTqfiFjPB7NU94B8oF1pbPYqj3hZuoyP0kYffCSaY26Dr+FgR/cLfORaJuBM49zp9K45TP5pL48r+5WRPv7MjvgVqMhY2Ck3tvIG4fESQo+/+ZnppmfD6iaczKao4CQsTfbVue/O3xPUeUnilMGMp5DqOF/eXhAx7HL4fqZ4VL3HceN+Hwmdh9+0f8oyE8q1jnwB325chA0WsLF/H/VMmBPbXvNiOYOREyGiXdwPwk+ZvPOF7DAkZjcvEtw8ON5BZ4ZSaWfukr/lNpGQZkd/0mdKoVAt78zzY5m3jMVMee89ZRKw4zlxgB2z+VPm0qcOJc6L/mN+VPm0C2pkCxO7/ide9H5vg1I4u/dxt9JyRKYJA4Zn4idg1GphcHTA5v8A6zJVX8REIREQEREBERAT8+a7grjK3/um/wDsqsPnP0HOI+l7AGniKtUWIY0alhvBA2HuOigx1VVLuHT6ToGlxhKAwtB6VIUalJnesUJqmyixRlz2iSM8944Tn2Ga6A90vMNp9/VLRqUaddaZvT2wxZO4FSLr3HpulqRYJqK7UUqLV2SzKCtRCllc2U3zuc185E0hqNi6bKoVam2zKCp5C92vbZBAMvcJr9T/AO/RfaKKGKtddpCSCtM22bkm/Qb7S9o67YJyq7ZG0xU7SlbAqe0TutfLfxkVy7E6DxKFg1CoChAaykgE7sxkb3G6VroQSCLEZEHIg9875o/SVKozIlRXZFp7WywIu1+I6fETkmv9IDH17cSh8TTW8bGpEW9YP7h5TX8G20xfde4tv3b5sxXtHvUzXtHrYsOTt8ZUKWdE/wBL/WScUnapnnl8Jj0etxWH9UscTSH8G+Q2hCybT9FJk45pfyMg0Rw7z8/OW+jksX5bDSspDf1PPn98Zmc69+1+H2fj5vQXP7HzuZLpLn5c/rIy/dt3wsPjJmHTlzFvLu6zTndN1d1dp/4elUWhTd2QMWcbZuTlZW7Iytw4GaHr5/4uqBb21XIWF0VAch+UzsuCoLh6CKTYUqYLH8iWJv4fCcE0xjfW1nc+8zOerEniQOJ8pjGcbdvTLLhJpgZuHw//ACv1Mr9IYoIjdDll9JmrVPvh5ZD4GaxpbF7bbI3CbeaRoYX23PGw+/hM2IAvkAMrk2F+76+Ux4U7KhfPrPDVLknnl4D97wPP33zJTExKZnpiBKw8u9FLd26J9ZS4eXOiXszHvX5fvAu8OO0On1nYtTx/0dLo3+tpxdayqbsQABvJtxnb9WqezhaI/wDLU+Yv9ZKqyiIhCIiAiIgIiICc/wDSvor1lNXtkytTY9QSv+6dAldrBo/19B6fEi6/mGa/p4yVY/Perlcmnst7SEqeq5H6S8wGOei/rKZAaxGYDDyPQeUodIUzh8Xe1kq7+6oMiPGWm1fOXnE5L9daS1xWw9KopNyLEZlizEE3tcmZf8Xoup7dGrSP9JvvYnLPhu3bprBM+XmPZzpwa9ernS+Dw1NQ+GxLVDtAWI2SON+BlNWqMxLMSxO8kkk9Sd8+GfLzUmuqW7Yve/tM17AjtVfzmbEvvHwlNhtHuGYBhZiSbjPOaRj0UM6vUSzxiZ0R/V8hIuiaNg/G7n4SdUINdRwRSfE5CBZYQWSo3JbeZlOrff3f6Sfja2zS2eLn4fd5Wff3+0k6vbteExx7p58fKxmVrkffxv8AUTcNRdFGviqdxdEPrH/tPZHi1vC806kwXtNu++PGbjo3XzDYKj6rC0nxFZs6j2NOmTwUEja2R0F8915Xk270m6eWjhzSB7dbeL5imD/uOXeLzi9Sra5JzP31El6Rr4rFVWrVjd2PgOAAHAAZeEr8Xomq1hZs9/DpIbVOk9Jb1U58T98ZU02sb8ZePqxU4KZAraFrL7sIwrXMyB5hbB1BvQ+U+Akb7iBtVHTtBlC1cDTawAuG2CSFChiQL7lXy75Jw2mMGKgc4FNn1ewUuCpa62cXGRsGHM3veailQc5Kp1O8QLXbBdiqhVLMQo90EkhfAWEscMjXOxa5sTfdyv1ylfo2gznsgt0Bm76s6r4ms38qy5XJ5ddwl2unjVnVR8VWXb7QBBJt2VHPvPKdzpoFAUbgAB0GQkXROBWjTVFVVtv2efMniZMkCIiEIiICIiAiIgIiIHJ/Spq2LlwOxVN7/hqjP47/APNNA0dimHYqZOuR7/6h3T9G6TwCV6TUqgurDxB4Ed4M4lrFoBsNWKVlJHuuuRI4Mp59x6HnEVWbU+gzDUUod4YcGGQ8Qc1PcfCPWSoyEzyWnm89qLZnfwED5VFlA8TIj1dlWbuy+kz1GvItexYLwGZ7zwED7g12FAPui7dTnPWjVvtVGNgxvfko3SNjK4b+GtzxqEceSiSsNgalYgHsrwUZ9BllFax1vdY8RidttrhuUchMmHwzv7K8d/DrNp0Pqhcglb95/Sbto3VZRvEhbbd1znCass5F1J67uoE2rRWpX4hl3ZToGF0SqjdJ9OgBDLW8FqpSUZqJYLq7R/AJcAT7Aqjq/h/wCR31TwpNzTHlL2IFIdU8GRY0EPgJHfUbR5Nzh0++6bHELtq7ej3Rh34On5T7S9H2jFNxhKfx/WbPEG1dhNBYan/LoIvhf5ywVQMgLDun2IQiIgIiICIiAiIgIiICIiAlZp/RFPE0ylRb/hI9pTzH6SziBwnWPVurhmO0NpL5ON3cD+EyhAtP0bicHTqCzoGHeJq+P9H2FckpdDy3iFcd9aZ5ZuJnUm9HIG5x5QPR1TPtG/y8oRyCpiWJsoJ6b5Ow+ruJxBHYNNNwHvd9+ZnZcFqZRp2soy8JdYbRKLwEDmOh/R/bf4zd9F6q06fuzZkogbhMloEOjgVXcJKVLT1EBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED/2Q==\" style=\"width: 275px;\">&nbsp;<img src=\"http://s.ek.ua/jpg_zoom1/179910.jpg\" style=\"width: 444.074px; height: 201.609px;\"><br></p>', '59a91396e7971debe', '5be548d57b74b3154', '<p><b>The EOS 5D Mark III</b>&nbsp;is a full-frame 22.3 megapixel single-lens digital SLR with 61-point AF and 6 frames per second continuous shooting speed. Take high-quality Full HD movies with manual control of all parameters from frame rate to sound.&nbsp;</p><p><b>Full-frame 22.3-megapixel sensor.&nbsp;</b>Take high-quality high-resolution images with the 22.3 Megapixel CMOS sensor and DIGIC 5+ image processing. Colors are bright, but natural, and even in dark and bright areas, there is a good detail.</p><p><b>High-speed continuous shooting</b>. Keep track of the shooting speed at 6 frames/sec. and instant recording up to 16270 continuously captured JPEG images to UDMA7.</p><p><b>61-point autofocus on a wide area.</b>&nbsp;Quick and accurate focus even on objects outside the central area with a 61-point focusing system on a wide area. 41 cross-type sensors (five of which are ultra-sensitive, double-cross type) provide extremely accurate tracking of moving objects.</p><p><b>Advantages:&nbsp;</b></p><ul><li>22.3-megapixel full-frame sensor<br></li><li>61-point autofocus</li><li>Continuous shooting at 6 fps.</li><li>ISO sensitivity in the range 100-25600 with the ability to expand to ISO 102400.</li><li>Full-HD video with manual control</li><li>Uncompressed HDMI in Full HD 8bit 4.2.2</li><li>14-bit DIGIC 5+ processor</li><li>Protection against adverse weather conditions</li><li>Display size 8.11 cm (3.2 inches) with a resolution of 1,040,000 points.</li><li>HDR mode</li></ul><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\"><tbody><tr><td>Width<br></td><td>152 mm<br></td></tr><tr><td>Depth<br></td><td>183.4 mm<br></td></tr><tr><td>Height<br></td><td>116.4 mm<br></td></tr><tr><td>Weight (grams)<br></td><td>1620<br></td></tr><tr><td>Guarantee<br></td><td>24 months<br></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Image Processing Processor<br></td><td>Type of DIGIC 5+<br></td></tr><tr><td>Lens mount<br></td><td>EF (other than EF-S series lenses)<br></td></tr><tr><td>Type of focusing<br></td><td>TTL-CT-SIR with a special CMOS sensor<br></td></tr><tr><td>AF point system / points<br></td><td><ul><li>61/41-point AF cross-type with aperture f / 4, including 5-point</li><li>AF dual cross type with f / 2.8 aperture</li><li>The number of AF cross-reference points may vary, depending on the lens.<br></li></ul></td></tr><tr><td>Autofocus modes<br></td><td><ul><li>Intelligent AF (AI Focus)</li><li>Frame-by-frame</li><li>Following Autofocus (AI Servo)<br></li></ul></td></tr><tr><td>ISO sensitivity<br></td><td><ul><li>Auto (100-12800), 100-25600 (with a step of 1/3 degree or in full degree)</li><li>ISO can be expanded to L: 50, H1: 51200, H2 102400<br></li></ul></td></tr><tr><td>Type of picture<br></td><td><ul><li>JPEG: high resolution, normal (conforms to the Exif 2.3 [Exif Print] standard) / Design rule for Camera File system (2.0),</li><li>RAW: RAW, sRAW1, sRAW2 (14 bit, Canon RAW, version 2),</li><li>Compatible with digital printing management format [DPOF], version 1.1<br></li></ul></td></tr><tr><td>Record video<br></td><td>Full HD (1920x1080<br></td></tr><tr><td>Wi-Fi<br></td><td>None<br></td></tr><tr><td>Supply kit<br></td><td><ul><li>Canon EOS 5D Mark III digital camera</li><li>Lens 24-105 mm</li><li>Battery</li><li>Charger</li><li>Interface cable</li><li>Stereo video cable</li><li>Neck strap</li><li>CD with software</li><li>Documentation<br></li></ul></td></tr></tbody></table><p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhIVFhUXFxYZFxcXGBgVFRoYFxUXGBUXFxUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFy0eHyYtLS0rLS0tLS0tLi0tLS0uLS0tKy0tKys3LSstLSs3Li0tLSstLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUDBgcCAQj/xABDEAACAQICBwQIBAQFAgcAAAABAgADEQQhBQYSMUFRcSJhgZEHEzJCobHB8FJy0eEjM2KCFJKywvEkQzRjc3SDouL/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIEA//EACkRAQEAAgADBAsAAAAAAAAAAAABAhEhMUEDUYGxBBITIzNSYXGRoeH/2gAMAwEAAhEDEQA/AO4xEQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREw4vEpTUu7AKN5P3vgZpHrY2mntOo7ri/lNG0vrS9UkISicAPaP5j9JTnFmBs2M12qq5CYJ3UEgN6xASAciF4XnxNfx7+CxK9Nhvk01api2EjVarHexl0rb19Iim4GFrXHOyjzImXB68lqiq+HKoSAW2wxF+NgMxNFvPSvGh2qJpGq+tdrUsQ1x7tQ7x3MeI75uqODmCD0N5EeoiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiY69ZUUs7BVGZJyAlONbcGQdirtsPcVW2z0UgX67oF5E1zHa30qeyBSqvtb7BVC/mLN8ryt0j6Q6VOoFFFivFmYL5KAb/CBudWoFBZjYAEk8gMyZx3XHW5q75XFME7I4dT3y01j18NajVSkgVGULtEkubkXAGQAtfnKxdM4V0w9J6yLQFJVq0mRyRVQs5b2SlnYJd7EgZWzMDWRpy2+SKOsiA9oTZsQmg6l7nDqrMDdWZGUM2HuLXFrbVbhkAd1jI+H0LoZ2IY0yRsB9jEMoDihVepsdsgpdEzF82IvlaUV66SR8wRPVfSNMDfczmtHGsAM99ry1wmJvA2VsaTPSVSZAwhubS3p4YiVXtahAud1wL97Xt8jLdcdiKSq4FRbcbMMuBBnPtN6RrUq9kZlsVYEbshbMbjvPnNqwnpWr+rNPFUlrA+8rGk48V+eUg6jqfrF/iVZHt61LX/qU+9bnzmxzlOgfSLgVIdqmIVrEbD06bjPlUUbXmZvOgtbcLi32KDMzWLHskAAW3k9RIL2IiEIiICIiAiIgIiICIiAiIgIiICIiAkfH4xaSF23DcOJPACZK9UIrO25QSegFzOT6za1isx/ihALhRy/UwPuses9Wo5T1oOdygtZd9u9rTS8TrOlGoWXaNTcxDG1+QG4eEq9J6VSntCjd6r73I3dJqlSpnYnPv3yjc62u9V3LFVufvcJFxWnHqEFzKbRWicRXP8ABovU/KLjxIyEuzqZjci9P1f59r/apgZXxTMgCtYb+sqsViai7wD8Jd1dElFA2wxGWQlc+Ev7V7f02v5HwgUtTSPNT5zA2Nv7pkzSOAC5ozOON0C28mN87+UqjIM4xee6WeBrX3SlAknBPZhyORgbRRxBEmprE6ZGzDkf1lIHymCs8o2DFY+hWsSTTYcSLjzHCQcTop3zQI//AKZz/wAv7Sk9YbzJTqkG4MCcNHOpzSoP7CZ0P0b4mph32gMmsH21I7FwSFN77XnumiYXSVTcXbzJl1hMUTxMK/QmExtOoLo4bpvHUcJInHdU9KGlXR9rK9m/Kcj+vhOxSFIiIQiIgIiICIiAiIgIlRrHrDSwlPafNj7CDe36DvnJdPa1YrEk7VQqnBEuq+PFvGB2LFaZw9PJqyA8toX8ryoxesrf9oLbn/MPkGFvjOKPTJ4GY0qOhurMpl0OqVtZsST2K6A/hakP1vPA15xVL+dRRh+JL/Ebx5TSsHpdawFOsQtT3WOSno29Wn06Vamdmr203En2l6kfONDoFbWn16EK2wGBBGyGuCLHfvHSa1iUdAWRabLzRQD4i15q2lcQ1POm3ZOa9foe+fdEayljYnZqDyPcRJpvG48sotm0q34jeek07UU5m/5v1mLG0lrKXUbLj2gOPf0lIzEfZ+l/lLFzwuP26VvujNaWFrOy290m4z5c/vKXD6zK6kOoPffZPjwI8JydKtjl8Mj8D9JPoY47ic+/9LD5Qwu9L+qe5yv3X+DDMfLumsYzD28d17A9CQR9ZZeuLbgZgr0zbtC3WVFDVw/G3j+9h85WYzRgfMW2u7j1tuPfNgZM89445XIzvdmJ3Zbh8pgcX7/8zD4WEg0qvQZDYieVabVjsMGG6x8L91gJq2IpFTaQXNNrgHmJGJLVFp3A2nRb77bRAv8AH4T7gHug7pgxydrqPl/zA2V9W0DhR68g1hSuPc33q1NugvZyGQyyPaPCr01gBQ9WyFmV9qzPlcqFv/DamjJ7Y/F1ylnoPE4f1Cis9MVCzglv4jMpWpsiqGp9hFOxbtEG+7lR6bqI9djTN1soBz2b7I29gNmE2tqwlGXANtZ7s5dKrlew1jztf6ylwS2AmwYRwB2iB1MCz0Wtj2wG3biRy3k99/Od01cqlsNSYkksoJubnpu3ZThGGri+Ss3hYeZsJ2rUavtYKlcWI2gRe+5jx6ESVV/ERCEREBERAREQEj6Qxi0ab1XPZQEn9B3nd4yRNF9KGkdlKdAH2u23QZKPO5/tgjQdO6UfEVmqOc2OQ4KvBR3CV+1bdv5zwrXN+fynorKPL1n/ABTE+Kb3lDD4zIwmNhAw1aKsLobjiOImPB4oh1Sobq3ZueF+B7p6qIQdpMm5cD3GY8TTWou0BkciORgWNaiaD+qfOm3sE8Dy6THpfQqqor0xdG7LC+aP3kfCZMLixicOaFX+bSGR4svunqJ50XpQim9OoLgjYqDp7LjvlHvQ2OJGftpv7xzknHovt27DZH+luf3wmr1Xak4qKfZNj3rNhweJDdk+y/wPAzOXe6ewsz91lyvL6Xp+eV/iFUFjY/t8T9IR7bv2+FhPFQlWKneuXh4ZmeCfvL63MrnssuqlVcQ2ydltk5EEHiu69uHMd8l4LSOGqBqlYVASPZp2ycX28j5gSsdsr8uvjvlQ90rbN7BiGB7+HgR8zCNp1j0hRTZoJQCFGpk1traLbaKUfkabXBHXdvlZt3HzuSc+IsJifClrbbEgJ6sDf2L3Re4Lc2nsmzkc87d435dLQPLZdPAD9ZT6Ywq7JbO+Vrbr3G+/C15csPv95HxdLaRh3fKFa9oxsmEz1jmD1HmP2kSg9mY915bYPHIV7dGnsiwZr7TC+4su+3eN0iITGfUkvSGDUZ0xbmu9T05SIhvnKJVAS6wA7RO/srlyzP34Smw4lzo72z+VPm0C3oXuPvlOwej5icGAeDuOXI/Wcgojd98p130eLbCf/I30iq2eIiRCIiAiIgIiICcc9JOL2sTU/p2UHgM/iWnY5wPW/EM2LxG0Sf8AqWUX4KqgACOqodJcp6YT1TGQ6QZUYWExkTMRPJEDARI7dhr+62TdeBku0x1qe0COcCrxhNJxUXepz7wd8y1q4FRag9lxY/SZKw26YJ32seolPQYlGQ713eECeq326Z8Oh3T7oyv2Nk71NvLdMNSrnTqfiFjPB7NU94B8oF1pbPYqj3hZuoyP0kYffCSaY26Dr+FgR/cLfORaJuBM49zp9K45TP5pL48r+5WRPv7MjvgVqMhY2Ck3tvIG4fESQo+/+ZnppmfD6iaczKao4CQsTfbVue/O3xPUeUnilMGMp5DqOF/eXhAx7HL4fqZ4VL3HceN+Hwmdh9+0f8oyE8q1jnwB325chA0WsLF/H/VMmBPbXvNiOYOREyGiXdwPwk+ZvPOF7DAkZjcvEtw8ON5BZ4ZSaWfukr/lNpGQZkd/0mdKoVAt78zzY5m3jMVMee89ZRKw4zlxgB2z+VPm0qcOJc6L/mN+VPm0C2pkCxO7/ide9H5vg1I4u/dxt9JyRKYJA4Zn4idg1GphcHTA5v8A6zJVX8REIREQEREBERAT8+a7grjK3/um/wDsqsPnP0HOI+l7AGniKtUWIY0alhvBA2HuOigx1VVLuHT6ToGlxhKAwtB6VIUalJnesUJqmyixRlz2iSM8944Tn2Ga6A90vMNp9/VLRqUaddaZvT2wxZO4FSLr3HpulqRYJqK7UUqLV2SzKCtRCllc2U3zuc185E0hqNi6bKoVam2zKCp5C92vbZBAMvcJr9T/AO/RfaKKGKtddpCSCtM22bkm/Qb7S9o67YJyq7ZG0xU7SlbAqe0TutfLfxkVy7E6DxKFg1CoChAaykgE7sxkb3G6VroQSCLEZEHIg9875o/SVKozIlRXZFp7WywIu1+I6fETkmv9IDH17cSh8TTW8bGpEW9YP7h5TX8G20xfde4tv3b5sxXtHvUzXtHrYsOTt8ZUKWdE/wBL/WScUnapnnl8Jj0etxWH9UscTSH8G+Q2hCybT9FJk45pfyMg0Rw7z8/OW+jksX5bDSspDf1PPn98Zmc69+1+H2fj5vQXP7HzuZLpLn5c/rIy/dt3wsPjJmHTlzFvLu6zTndN1d1dp/4elUWhTd2QMWcbZuTlZW7Iytw4GaHr5/4uqBb21XIWF0VAch+UzsuCoLh6CKTYUqYLH8iWJv4fCcE0xjfW1nc+8zOerEniQOJ8pjGcbdvTLLhJpgZuHw//ACv1Mr9IYoIjdDll9JmrVPvh5ZD4GaxpbF7bbI3CbeaRoYX23PGw+/hM2IAvkAMrk2F+76+Ux4U7KhfPrPDVLknnl4D97wPP33zJTExKZnpiBKw8u9FLd26J9ZS4eXOiXszHvX5fvAu8OO0On1nYtTx/0dLo3+tpxdayqbsQABvJtxnb9WqezhaI/wDLU+Yv9ZKqyiIhCIiAiIgIiICc/wDSvor1lNXtkytTY9QSv+6dAldrBo/19B6fEi6/mGa/p4yVY/Perlcmnst7SEqeq5H6S8wGOei/rKZAaxGYDDyPQeUodIUzh8Xe1kq7+6oMiPGWm1fOXnE5L9daS1xWw9KopNyLEZlizEE3tcmZf8Xoup7dGrSP9JvvYnLPhu3bprBM+XmPZzpwa9ernS+Dw1NQ+GxLVDtAWI2SON+BlNWqMxLMSxO8kkk9Sd8+GfLzUmuqW7Yve/tM17AjtVfzmbEvvHwlNhtHuGYBhZiSbjPOaRj0UM6vUSzxiZ0R/V8hIuiaNg/G7n4SdUINdRwRSfE5CBZYQWSo3JbeZlOrff3f6Sfja2zS2eLn4fd5Wff3+0k6vbteExx7p58fKxmVrkffxv8AUTcNRdFGviqdxdEPrH/tPZHi1vC806kwXtNu++PGbjo3XzDYKj6rC0nxFZs6j2NOmTwUEja2R0F8915Xk270m6eWjhzSB7dbeL5imD/uOXeLzi9Sra5JzP31El6Rr4rFVWrVjd2PgOAAHAAZeEr8Xomq1hZs9/DpIbVOk9Jb1U58T98ZU02sb8ZePqxU4KZAraFrL7sIwrXMyB5hbB1BvQ+U+Akb7iBtVHTtBlC1cDTawAuG2CSFChiQL7lXy75Jw2mMGKgc4FNn1ewUuCpa62cXGRsGHM3veailQc5Kp1O8QLXbBdiqhVLMQo90EkhfAWEscMjXOxa5sTfdyv1ylfo2gznsgt0Bm76s6r4ms38qy5XJ5ddwl2unjVnVR8VWXb7QBBJt2VHPvPKdzpoFAUbgAB0GQkXROBWjTVFVVtv2efMniZMkCIiEIiICIiAiIgIiIHJ/Spq2LlwOxVN7/hqjP47/APNNA0dimHYqZOuR7/6h3T9G6TwCV6TUqgurDxB4Ed4M4lrFoBsNWKVlJHuuuRI4Mp59x6HnEVWbU+gzDUUod4YcGGQ8Qc1PcfCPWSoyEzyWnm89qLZnfwED5VFlA8TIj1dlWbuy+kz1GvItexYLwGZ7zwED7g12FAPui7dTnPWjVvtVGNgxvfko3SNjK4b+GtzxqEceSiSsNgalYgHsrwUZ9BllFax1vdY8RidttrhuUchMmHwzv7K8d/DrNp0Pqhcglb95/Sbto3VZRvEhbbd1znCass5F1J67uoE2rRWpX4hl3ZToGF0SqjdJ9OgBDLW8FqpSUZqJYLq7R/AJcAT7Aqjq/h/wCR31TwpNzTHlL2IFIdU8GRY0EPgJHfUbR5Nzh0++6bHELtq7ej3Rh34On5T7S9H2jFNxhKfx/WbPEG1dhNBYan/LoIvhf5ywVQMgLDun2IQiIgIiICIiAiIgIiICIiAlZp/RFPE0ylRb/hI9pTzH6SziBwnWPVurhmO0NpL5ON3cD+EyhAtP0bicHTqCzoGHeJq+P9H2FckpdDy3iFcd9aZ5ZuJnUm9HIG5x5QPR1TPtG/y8oRyCpiWJsoJ6b5Ow+ruJxBHYNNNwHvd9+ZnZcFqZRp2soy8JdYbRKLwEDmOh/R/bf4zd9F6q06fuzZkogbhMloEOjgVXcJKVLT1EBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED/2Q==\" style=\"width: 275px;\">&nbsp;<img src=\"http://s.ek.ua/jpg_zoom1/179910.jpg\" style=\"width: 444.074px; height: 201.609px;\"><br></p>', '<p></p><p><b>Die EOS 5D Mark III&nbsp;</b>ist ein 22,3-Megapixel-Digital-SLR mit Einzelbildobjektiv und Einzelbildobjekten mit 61 Bildpunkten und 6 Bildern pro Sekunde. Nehmen Sie hochwertige Full-HD-Filme mit manueller Steuerung aller Parameter von der Bildrate bis zum Klang auf.&nbsp;</p><p><b>22.3-Megapixel-Sensor</b>&nbsp;<b>im Vollformat.</b>&nbsp;Nehmen Sie mit dem 22,3-Megapixel-CMOS-Sensor und der Bildverarbeitung DIGIC 5+ hochauflösende Bilder in hoher Qualität auf. Die Farben sind hell, aber natürlich, und selbst in dunklen und hellen Bereichen gibt es ein gutes Detail.</p><p><b>Schnelle Serienaufnahme.&nbsp;</b>Verfolgen Sie die Aufnahmegeschwindigkeit mit 6 Bildern / Sek. und sofortige Aufnahme von bis zu 16270 kontinuierlich aufgenommenen JPEG-Bildern auf UDMA 7.</p><p><b>Autofokus mit 61 Punkten in einem weiten Bereich.&nbsp;</b>Schneller und präziser Fokus auch auf Objekte außerhalb des zentralen Bereichs mit einem 61-Punkt-Fokussiersystem in einem weiten Bereich. 41 Kreuzsensoren (von denen fünf extrem empfindlich sind und vom Typ Doppelkreuz sind) ermöglichen die äußerst präzise Erfassung von sich bewegenden Objekten.</p><p><b>Vorteile:</b></p><ul><li>22,3-Megapixel-Vollbildsensor<br></li><li>Autofokus mit 61 Punkten<br></li><li>Serienaufnahmen mit 6 Bildern pro Sekunde.</li><li>ISO-Empfindlichkeit im Bereich 100-25600 mit Erweiterungsmöglichkeit auf ISO 102400.</li><li>Full-HD-Video mit manueller Steuerung</li><li>Unkomprimiertes HDMI in Full HD 8bit 4.2.2</li><li>14-Bit-Prozessor DIGIC 5+</li><li>Schutz vor widrigen Witterungsbedingungen</li><li>Displaygröße 8,11 cm (3,2 Zoll) mit einer Auflösung von 1.040.000 Punkten.</li><li>HDR-Modus</li></ul><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Breite<br></td><td>152 mm<br></td></tr><tr><td>Tiefe<br></td><td>183.4 mm<br></td></tr><tr><td>Höhe<br></td><td>116.4 mm<br></td></tr><tr><td>Gewicht (Gramm)<br></td><td>1620<br></td></tr><tr><td>Garantie<br></td><td>24 Monate<br></td></tr><tr><td>Farbe<br></td><td>Schwarz<br></td></tr><tr><td>Bildverarbeitungsprozessor<br></td><td>Art von DIGIC 5+<br></td></tr><tr><td>Objektivfassung<br></td><td>EF (außer Objektive der EF-S-Serie)<br></td></tr><tr><td>Art der Fokussierung<br></td><td>TTL-CT-SIR mit einem speziellen CMOS-Sensor<br></td></tr><tr><td>AF-Messfeldsystem / -punkte<br></td><td><ul><li>61/41-Punkt-AF-Kreuztyp mit Blende f / 4, einschließlich 5-Punkt</li><li>AF-Kreuztyp mit f / 2,8-Blende</li><li>Die Anzahl der AF-Referenzpunkte kann je nach Objektiv variieren.<br></li></ul></td></tr><tr><td>Autofokus-Modi<br></td><td><ul><li>Intelligenter AF (AI Focus)</li><li>Bild für Bild</li><li>Nach dem Autofokus (AI Servo)<br></li></ul></td></tr><tr><td>ISO-Empfindlichkeit<br></td><td><ul><li>Auto (100-12800), 100-25600 (mit einer Stufe von 1/3 Grad oder in vollem Umfang)</li><li>ISO kann auf L: 50, H1: 51200, H2 102400 erweitert werden<br></li></ul></td></tr><tr><td>Art des Bildes<br></td><td><ul><li>JPEG: hohe Auflösung, normal (entspricht dem Exif 2.3-Standard [Exif Print]) / Designregel für das Camera File System (2.0),</li><li>RAW: RAW, sRAW1, sRAW2 (14 Bit, Canon RAW, Version 2),</li><li>Kompatibel mit dem Digitaldruck-Verwaltungsformat [DPOF], Version 1.1<br></li></ul></td></tr><tr><td>Ein Video aufnehmen<br></td><td>Full HD (1920 x 1080)<br></td></tr><tr><td>Wi-Fi<br></td><td>Keiner<br></td></tr><tr><td>Liefer-Kit<br></td><td><ul><li></li><li>Canon EOS 5D Mark III Digitalkamera</li><li>Linse 24-105 mm</li><li>Batterie</li><li>Ladegerät</li><li>Schnittstellenkabel</li><li>Stereo-Videokabel</li><li>Tragegurt</li><li>CD mit Software</li><li>Dokumentation<br></li></ul></td></tr></tbody></table><p style=\"margin-bottom: 0px;\"><b><span style=\"font-size: 18px;\"><br></span></b></p><table class=\"table table-bordered\"><tbody></tbody></table><p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUTEhIVFhUXFxYZFxcXGBgVFRoYFxUXGBUXFxUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFy0eHyYtLS0rLS0tLS0tLi0tLS0uLS0tKy0tKys3LSstLSs3Li0tLSstLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUDBgcCAQj/xABDEAACAQICBwQIBAQFAgcAAAABAgADEQQhBQYSMUFRcSJhgZEHEzJCobHB8FJy0eEjM2KCFJKywvEkQzRjc3SDouL/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAQIEA//EACkRAQEAAgADBAsAAAAAAAAAAAABAhEhMUEDUYGxBBITIzNSYXGRoeH/2gAMAwEAAhEDEQA/AO4xEQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREw4vEpTUu7AKN5P3vgZpHrY2mntOo7ri/lNG0vrS9UkISicAPaP5j9JTnFmBs2M12qq5CYJ3UEgN6xASAciF4XnxNfx7+CxK9Nhvk01api2EjVarHexl0rb19Iim4GFrXHOyjzImXB68lqiq+HKoSAW2wxF+NgMxNFvPSvGh2qJpGq+tdrUsQ1x7tQ7x3MeI75uqODmCD0N5EeoiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiY69ZUUs7BVGZJyAlONbcGQdirtsPcVW2z0UgX67oF5E1zHa30qeyBSqvtb7BVC/mLN8ryt0j6Q6VOoFFFivFmYL5KAb/CBudWoFBZjYAEk8gMyZx3XHW5q75XFME7I4dT3y01j18NajVSkgVGULtEkubkXAGQAtfnKxdM4V0w9J6yLQFJVq0mRyRVQs5b2SlnYJd7EgZWzMDWRpy2+SKOsiA9oTZsQmg6l7nDqrMDdWZGUM2HuLXFrbVbhkAd1jI+H0LoZ2IY0yRsB9jEMoDihVepsdsgpdEzF82IvlaUV66SR8wRPVfSNMDfczmtHGsAM99ry1wmJvA2VsaTPSVSZAwhubS3p4YiVXtahAud1wL97Xt8jLdcdiKSq4FRbcbMMuBBnPtN6RrUq9kZlsVYEbshbMbjvPnNqwnpWr+rNPFUlrA+8rGk48V+eUg6jqfrF/iVZHt61LX/qU+9bnzmxzlOgfSLgVIdqmIVrEbD06bjPlUUbXmZvOgtbcLi32KDMzWLHskAAW3k9RIL2IiEIiICIiAiIgIiICIiAiIgIiICIiAkfH4xaSF23DcOJPACZK9UIrO25QSegFzOT6za1isx/ihALhRy/UwPuses9Wo5T1oOdygtZd9u9rTS8TrOlGoWXaNTcxDG1+QG4eEq9J6VSntCjd6r73I3dJqlSpnYnPv3yjc62u9V3LFVufvcJFxWnHqEFzKbRWicRXP8ABovU/KLjxIyEuzqZjci9P1f59r/apgZXxTMgCtYb+sqsViai7wD8Jd1dElFA2wxGWQlc+Ev7V7f02v5HwgUtTSPNT5zA2Nv7pkzSOAC5ozOON0C28mN87+UqjIM4xee6WeBrX3SlAknBPZhyORgbRRxBEmprE6ZGzDkf1lIHymCs8o2DFY+hWsSTTYcSLjzHCQcTop3zQI//AKZz/wAv7Sk9YbzJTqkG4MCcNHOpzSoP7CZ0P0b4mph32gMmsH21I7FwSFN77XnumiYXSVTcXbzJl1hMUTxMK/QmExtOoLo4bpvHUcJInHdU9KGlXR9rK9m/Kcj+vhOxSFIiIQiIgIiICIiAiIgIlRrHrDSwlPafNj7CDe36DvnJdPa1YrEk7VQqnBEuq+PFvGB2LFaZw9PJqyA8toX8ryoxesrf9oLbn/MPkGFvjOKPTJ4GY0qOhurMpl0OqVtZsST2K6A/hakP1vPA15xVL+dRRh+JL/Ebx5TSsHpdawFOsQtT3WOSno29Wn06Vamdmr203En2l6kfONDoFbWn16EK2wGBBGyGuCLHfvHSa1iUdAWRabLzRQD4i15q2lcQ1POm3ZOa9foe+fdEayljYnZqDyPcRJpvG48sotm0q34jeek07UU5m/5v1mLG0lrKXUbLj2gOPf0lIzEfZ+l/lLFzwuP26VvujNaWFrOy290m4z5c/vKXD6zK6kOoPffZPjwI8JydKtjl8Mj8D9JPoY47ic+/9LD5Qwu9L+qe5yv3X+DDMfLumsYzD28d17A9CQR9ZZeuLbgZgr0zbtC3WVFDVw/G3j+9h85WYzRgfMW2u7j1tuPfNgZM89445XIzvdmJ3Zbh8pgcX7/8zD4WEg0qvQZDYieVabVjsMGG6x8L91gJq2IpFTaQXNNrgHmJGJLVFp3A2nRb77bRAv8AH4T7gHug7pgxydrqPl/zA2V9W0DhR68g1hSuPc33q1NugvZyGQyyPaPCr01gBQ9WyFmV9qzPlcqFv/DamjJ7Y/F1ylnoPE4f1Cis9MVCzglv4jMpWpsiqGp9hFOxbtEG+7lR6bqI9djTN1soBz2b7I29gNmE2tqwlGXANtZ7s5dKrlew1jztf6ylwS2AmwYRwB2iB1MCz0Wtj2wG3biRy3k99/Od01cqlsNSYkksoJubnpu3ZThGGri+Ss3hYeZsJ2rUavtYKlcWI2gRe+5jx6ESVV/ERCEREBERAREQEj6Qxi0ab1XPZQEn9B3nd4yRNF9KGkdlKdAH2u23QZKPO5/tgjQdO6UfEVmqOc2OQ4KvBR3CV+1bdv5zwrXN+fynorKPL1n/ABTE+Kb3lDD4zIwmNhAw1aKsLobjiOImPB4oh1Sobq3ZueF+B7p6qIQdpMm5cD3GY8TTWou0BkciORgWNaiaD+qfOm3sE8Dy6THpfQqqor0xdG7LC+aP3kfCZMLixicOaFX+bSGR4svunqJ50XpQim9OoLgjYqDp7LjvlHvQ2OJGftpv7xzknHovt27DZH+luf3wmr1Xak4qKfZNj3rNhweJDdk+y/wPAzOXe6ewsz91lyvL6Xp+eV/iFUFjY/t8T9IR7bv2+FhPFQlWKneuXh4ZmeCfvL63MrnssuqlVcQ2ydltk5EEHiu69uHMd8l4LSOGqBqlYVASPZp2ycX28j5gSsdsr8uvjvlQ90rbN7BiGB7+HgR8zCNp1j0hRTZoJQCFGpk1traLbaKUfkabXBHXdvlZt3HzuSc+IsJifClrbbEgJ6sDf2L3Re4Lc2nsmzkc87d435dLQPLZdPAD9ZT6Ywq7JbO+Vrbr3G+/C15csPv95HxdLaRh3fKFa9oxsmEz1jmD1HmP2kSg9mY915bYPHIV7dGnsiwZr7TC+4su+3eN0iITGfUkvSGDUZ0xbmu9T05SIhvnKJVAS6wA7RO/srlyzP34Smw4lzo72z+VPm0C3oXuPvlOwej5icGAeDuOXI/Wcgojd98p130eLbCf/I30iq2eIiRCIiAiIgIiICcc9JOL2sTU/p2UHgM/iWnY5wPW/EM2LxG0Sf8AqWUX4KqgACOqodJcp6YT1TGQ6QZUYWExkTMRPJEDARI7dhr+62TdeBku0x1qe0COcCrxhNJxUXepz7wd8y1q4FRag9lxY/SZKw26YJ32seolPQYlGQ713eECeq326Z8Oh3T7oyv2Nk71NvLdMNSrnTqfiFjPB7NU94B8oF1pbPYqj3hZuoyP0kYffCSaY26Dr+FgR/cLfORaJuBM49zp9K45TP5pL48r+5WRPv7MjvgVqMhY2Ck3tvIG4fESQo+/+ZnppmfD6iaczKao4CQsTfbVue/O3xPUeUnilMGMp5DqOF/eXhAx7HL4fqZ4VL3HceN+Hwmdh9+0f8oyE8q1jnwB325chA0WsLF/H/VMmBPbXvNiOYOREyGiXdwPwk+ZvPOF7DAkZjcvEtw8ON5BZ4ZSaWfukr/lNpGQZkd/0mdKoVAt78zzY5m3jMVMee89ZRKw4zlxgB2z+VPm0qcOJc6L/mN+VPm0C2pkCxO7/ide9H5vg1I4u/dxt9JyRKYJA4Zn4idg1GphcHTA5v8A6zJVX8REIREQEREBERAT8+a7grjK3/um/wDsqsPnP0HOI+l7AGniKtUWIY0alhvBA2HuOigx1VVLuHT6ToGlxhKAwtB6VIUalJnesUJqmyixRlz2iSM8944Tn2Ga6A90vMNp9/VLRqUaddaZvT2wxZO4FSLr3HpulqRYJqK7UUqLV2SzKCtRCllc2U3zuc185E0hqNi6bKoVam2zKCp5C92vbZBAMvcJr9T/AO/RfaKKGKtddpCSCtM22bkm/Qb7S9o67YJyq7ZG0xU7SlbAqe0TutfLfxkVy7E6DxKFg1CoChAaykgE7sxkb3G6VroQSCLEZEHIg9875o/SVKozIlRXZFp7WywIu1+I6fETkmv9IDH17cSh8TTW8bGpEW9YP7h5TX8G20xfde4tv3b5sxXtHvUzXtHrYsOTt8ZUKWdE/wBL/WScUnapnnl8Jj0etxWH9UscTSH8G+Q2hCybT9FJk45pfyMg0Rw7z8/OW+jksX5bDSspDf1PPn98Zmc69+1+H2fj5vQXP7HzuZLpLn5c/rIy/dt3wsPjJmHTlzFvLu6zTndN1d1dp/4elUWhTd2QMWcbZuTlZW7Iytw4GaHr5/4uqBb21XIWF0VAch+UzsuCoLh6CKTYUqYLH8iWJv4fCcE0xjfW1nc+8zOerEniQOJ8pjGcbdvTLLhJpgZuHw//ACv1Mr9IYoIjdDll9JmrVPvh5ZD4GaxpbF7bbI3CbeaRoYX23PGw+/hM2IAvkAMrk2F+76+Ux4U7KhfPrPDVLknnl4D97wPP33zJTExKZnpiBKw8u9FLd26J9ZS4eXOiXszHvX5fvAu8OO0On1nYtTx/0dLo3+tpxdayqbsQABvJtxnb9WqezhaI/wDLU+Yv9ZKqyiIhCIiAiIgIiICc/wDSvor1lNXtkytTY9QSv+6dAldrBo/19B6fEi6/mGa/p4yVY/Perlcmnst7SEqeq5H6S8wGOei/rKZAaxGYDDyPQeUodIUzh8Xe1kq7+6oMiPGWm1fOXnE5L9daS1xWw9KopNyLEZlizEE3tcmZf8Xoup7dGrSP9JvvYnLPhu3bprBM+XmPZzpwa9ernS+Dw1NQ+GxLVDtAWI2SON+BlNWqMxLMSxO8kkk9Sd8+GfLzUmuqW7Yve/tM17AjtVfzmbEvvHwlNhtHuGYBhZiSbjPOaRj0UM6vUSzxiZ0R/V8hIuiaNg/G7n4SdUINdRwRSfE5CBZYQWSo3JbeZlOrff3f6Sfja2zS2eLn4fd5Wff3+0k6vbteExx7p58fKxmVrkffxv8AUTcNRdFGviqdxdEPrH/tPZHi1vC806kwXtNu++PGbjo3XzDYKj6rC0nxFZs6j2NOmTwUEja2R0F8915Xk270m6eWjhzSB7dbeL5imD/uOXeLzi9Sra5JzP31El6Rr4rFVWrVjd2PgOAAHAAZeEr8Xomq1hZs9/DpIbVOk9Jb1U58T98ZU02sb8ZePqxU4KZAraFrL7sIwrXMyB5hbB1BvQ+U+Akb7iBtVHTtBlC1cDTawAuG2CSFChiQL7lXy75Jw2mMGKgc4FNn1ewUuCpa62cXGRsGHM3veailQc5Kp1O8QLXbBdiqhVLMQo90EkhfAWEscMjXOxa5sTfdyv1ylfo2gznsgt0Bm76s6r4ms38qy5XJ5ddwl2unjVnVR8VWXb7QBBJt2VHPvPKdzpoFAUbgAB0GQkXROBWjTVFVVtv2efMniZMkCIiEIiICIiAiIgIiIHJ/Spq2LlwOxVN7/hqjP47/APNNA0dimHYqZOuR7/6h3T9G6TwCV6TUqgurDxB4Ed4M4lrFoBsNWKVlJHuuuRI4Mp59x6HnEVWbU+gzDUUod4YcGGQ8Qc1PcfCPWSoyEzyWnm89qLZnfwED5VFlA8TIj1dlWbuy+kz1GvItexYLwGZ7zwED7g12FAPui7dTnPWjVvtVGNgxvfko3SNjK4b+GtzxqEceSiSsNgalYgHsrwUZ9BllFax1vdY8RidttrhuUchMmHwzv7K8d/DrNp0Pqhcglb95/Sbto3VZRvEhbbd1znCass5F1J67uoE2rRWpX4hl3ZToGF0SqjdJ9OgBDLW8FqpSUZqJYLq7R/AJcAT7Aqjq/h/wCR31TwpNzTHlL2IFIdU8GRY0EPgJHfUbR5Nzh0++6bHELtq7ej3Rh34On5T7S9H2jFNxhKfx/WbPEG1dhNBYan/LoIvhf5ywVQMgLDun2IQiIgIiICIiAiIgIiICIiAlZp/RFPE0ylRb/hI9pTzH6SziBwnWPVurhmO0NpL5ON3cD+EyhAtP0bicHTqCzoGHeJq+P9H2FckpdDy3iFcd9aZ5ZuJnUm9HIG5x5QPR1TPtG/y8oRyCpiWJsoJ6b5Ow+ruJxBHYNNNwHvd9+ZnZcFqZRp2soy8JdYbRKLwEDmOh/R/bf4zd9F6q06fuzZkogbhMloEOjgVXcJKVLT1EBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED/2Q==\" style=\"width: 275px;\">&nbsp;<img src=\"http://s.ek.ua/jpg_zoom1/179910.jpg\" style=\"width: 444.074px; height: 201.609px;\"><br></p>', NULL, '2018-11-09 09:00:03', '2018-11-21 14:55:32', '1', '1', '1', '1', NULL, '5d651923bc05bc7f7', 1, 'Global', NULL),
('5be54c9409306b472', 0, '<p><b>The Canon EOS 1100D</b>&nbsp;is a lightweight and compact digital SLR camera with the ability to record full high definition video (HD).</p><div>Step to the unsurpassed photo quality with an APS-C sensor of&nbsp;<b>12 million pixels</b>&nbsp;and a 14-bit&nbsp;<b>DIGIC 4</b>&nbsp;processor. The camera has an ISO sensitivity range of up to 6400, which allows you to take clear pictures even in low light conditions.</div><div>The camera can shoot&nbsp;<b>high-resolution video</b>&nbsp;at a speed of 25 or 30 frames per second, with automatic exposure adjustment, which allows you to concentrate on the event being filmed.</div><div><b>9-point autofocus system</b>&nbsp;allows you to quickly focus on both static objects and moving. The center point of the cross type, sensitive to horizontal and vertical lines.</div><div><b>The 63-zone metering sensor</b>&nbsp;divides the scene into 63 areas to analyze and find the optimal combination of shutter speed, aperture and ISO.</div><div>A large and clear&nbsp;<b>2.7-inch display</b>&nbsp;(230,000 dots) makes it easy to compose a shot, view captured images, and move comfortably through the camera menu.</div><div>A wide fleet of EF and EF-S optics and optional accessories are available for the camera, recognized by many professionals around the world.</div><div><div>This model is ideal for a person who has just started shooting with a digital SLR camera, as the menu contains a brief description of each key setting and its purpose, which helps beginners to get acquainted with the&nbsp;<b>EOS 1100D</b>&nbsp;while working with it.</div><div><b>The Basic +</b>&nbsp;technology allows you to customize the basic auto settings in accordance with the light and environment.</div></div><p><b><span style=\"font-size: 18px;\">All characteristics</span></b><br></p><table class=\"table table-bordered\"><tbody><tr><td>Width<br></td><td>129.9 mm<br></td></tr><tr><td>Depth<br></td><td>153.1 mm<br></td></tr><tr><td>Height<br></td><td>99.7 mm<br></td></tr><tr><td>Guarantee<br></td><td>24 months<br></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Weight (grams)<br></td><td>700 g (with lens)<br></td></tr><tr><td>Wi-Fi<br></td><td>None<br></td></tr><tr><td>Memory cards<br></td><td>SD/SDHC<br></td></tr><tr><td style=\"text-align: center;\"><p style=\"text-align: left; \">Photosensitivity<br></p></td><td><ul><li>Auto</li><li>100</li><li>200</li><li>400</li><li>800</li><li>1600</li><li>3200</li><li>6400</li></ul></td></tr><tr><td style=\"text-align: left;\">Image format<br></td><td><ul><li>JPEG: accurate, standard (Exif 2.30)</li><li>RAW: 14-bit, original Canon RAW, version 2, compatible with DPOF1.1</li></ul></td></tr><tr><td style=\"text-align: left;\">Feeding<br></td><td>Lithium-ion Battery LP-E10<br></td></tr><tr><td style=\"text-align: left;\">White balance<br></td><td><ul><li>Auto</li><li>daylight</li><li>shadow</li><li>it is cloudy</li><li>incandescent lamp</li><li>fluorescent lamp</li><li>manual</li><li>flash<br></li></ul></td></tr></tbody></table><p><img src=\"https://i.allo.ua/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/canon_eos_5d_mark_iii_kit_ef_24-105_f-4l_is_usm.jpg\" style=\"width: 393.724px; height: 309.906px;\"><br></p>', '5a9e93d0e1e4fd1b9', '5be548d57b74b3154', '<p><b>The Canon EOS 1100D</b>&nbsp;is a lightweight and compact digital SLR camera with the ability to record full high definition video (HD).</p><div>Step to the unsurpassed photo quality with an APS-C sensor of&nbsp;<b>12 million pixels</b>&nbsp;and a 14-bit&nbsp;<b>DIGIC 4</b>&nbsp;processor. The camera has an ISO sensitivity range of up to 6400, which allows you to take clear pictures even in low light conditions.</div><div>The camera can shoot&nbsp;<b>high-resolution video</b>&nbsp;at a speed of 25 or 30 frames per second, with automatic exposure adjustment, which allows you to concentrate on the event being filmed.</div><div><b>9-point autofocus system</b>&nbsp;allows you to quickly focus on both static objects and moving. The center point of the cross type, sensitive to horizontal and vertical lines.</div><div><b>The 63-zone metering sensor</b>&nbsp;divides the scene into 63 areas to analyze and find the optimal combination of shutter speed, aperture and ISO.</div><div>A large and clear&nbsp;<b>2.7-inch display</b>&nbsp;(230,000 dots) makes it easy to compose a shot, view captured images, and move comfortably through the camera menu.</div><div>A wide fleet of EF and EF-S optics and optional accessories are available for the camera, recognized by many professionals around the world.</div><div><div>This model is ideal for a person who has just started shooting with a digital SLR camera, as the menu contains a brief description of each key setting and its purpose, which helps beginners to get acquainted with the&nbsp;<b>EOS 1100D</b>&nbsp;while working with it.</div><div><b>The Basic +</b>&nbsp;technology allows you to customize the basic auto settings in accordance with the light and environment.</div></div><p><b><span style=\"font-size: 18px;\">All characteristics</span></b><br></p><table class=\"table table-bordered\"><tbody><tr><td>Width<br></td><td>129.9 mm<br></td></tr><tr><td>Depth<br></td><td>153.1 mm<br></td></tr><tr><td>Height<br></td><td>99.7 mm<br></td></tr><tr><td>Guarantee<br></td><td>24 months<br></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Weight (grams)<br></td><td>700 g (with lens)<br></td></tr><tr><td>Wi-Fi<br></td><td>None<br></td></tr><tr><td>Memory cards<br></td><td>SD/SDHC<br></td></tr><tr><td style=\"text-align: center;\"><p style=\"text-align: left; \">Photosensitivity<br></p></td><td><ul><li>Auto</li><li>100</li><li>200</li><li>400</li><li>800</li><li>1600</li><li>3200</li><li>6400</li></ul></td></tr><tr><td style=\"text-align: left;\">Image format<br></td><td><ul><li>JPEG: accurate, standard (Exif 2.30)</li><li>RAW: 14-bit, original Canon RAW, version 2, compatible with DPOF1.1</li></ul></td></tr><tr><td style=\"text-align: left;\">Feeding<br></td><td>Lithium-ion Battery LP-E10<br></td></tr><tr><td style=\"text-align: left;\">White balance<br></td><td><ul><li>Auto</li><li>daylight</li><li>shadow</li><li>it is cloudy</li><li>incandescent lamp</li><li>fluorescent lamp</li><li>manual</li><li>flash<br></li></ul></td></tr></tbody></table><p><img src=\"https://i.allo.ua/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/canon_eos_5d_mark_iii_kit_ef_24-105_f-4l_is_usm.jpg\" style=\"width: 393.724px; height: 309.906px;\"><br></p>', '<p><b>Die Canon EOS 1100D</b>&nbsp;ist eine leichte und kompakte digitale Spiegelreflexkamera mit der Fähigkeit, High-Definition-Video (HD) aufzunehmen.</p><p>Steigern Sie die unübertroffene Fotoqualität mit einem APS-C-Sensor mit&nbsp;<b>12 Millionen Pixel</b>&nbsp;und einem 14-Bit-Prozessor&nbsp;<b>DIGIC 4</b>. Die Kamera verfügt über eine ISO-Empfindlichkeit von bis zu 6400. Damit können Sie auch bei schlechten Lichtverhältnissen klare Bilder aufnehmen.</p><div>Die Kamera kann<b>&nbsp;hochauflösende Videos</b>&nbsp;mit einer Geschwindigkeit von 25 oder 30 Bildern pro Sekunde aufnehmen. Die Belichtungseinstellung erfolgt automatisch, sodass Sie sich auf das aufgenommene Ereignis konzentrieren können.</div><div><b>Mit dem 9-Punkt-Autofokus-System</b>&nbsp;können Sie sowohl statische Objekte als auch Bewegungen schnell scharfstellen. Der Mittelpunkt des Kreuztyps, empfindlich für horizontale und vertikale Linien.</div><div><b>Der Messbereichssensor mit 63 Zonen</b>&nbsp;unterteilt die Szene in 63 Bereiche, um die optimale Kombination aus Verschlusszeit, Blende und ISO zu analysieren.</div><div>Ein großes und übersichtliches&nbsp;<b>2,7-Zoll-Display</b>&nbsp;(230.000 Punkte) erleichtert das Zusammenstellen von Bildern, das Anzeigen von aufgenommenen Bildern und das bequeme Bewegen durch das Kameramenü.</div><div>Für die Kamera steht eine breite Palette von EF- und EF-S-Optiken sowie optionales Zubehör zur Verfügung, das von vielen Fachleuten auf der ganzen Welt anerkannt wird.</div><div><div>Dieses Modell ist ideal für Personen, die gerade erst mit einer digitalen Spiegelreflexkamera fotografiert haben. Das Menü enthält eine kurze Beschreibung jeder Tasteneinstellung und ihres Verwendungszwecks, sodass Anfänger die<b>&nbsp;EOS 1100D</b>&nbsp;während der Arbeit kennenlernen können.</div><div><b>Mit der Basic +</b>&nbsp;Technologie können Sie die grundlegenden automatischen Einstellungen an das Licht und die Umgebung anpassen.</div></div><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span></p><table class=\"table table-bordered\"><tbody><tr><td>Breite<br></td><td>129.9 mm<br></td></tr><tr><td>Tiefe<br></td><td>153.1 mm<br></td></tr><tr><td>Höhe<br></td><td>99.7 mm<br></td></tr><tr><td>Garantie<br></td><td>24 Monate<br></td></tr><tr><td>Farbe<br></td><td>Schwarz<br></td></tr><tr><td>Gewicht (Gramm)<br></td><td>700 g (mit Linse)<br></td></tr><tr><td>Wi-Fi<br></td><td>Keiner<br></td></tr><tr><td>Speicherkarten<br></td><td>SD/SDHC<br></td></tr><tr><td style=\"text-align: center;\"><p style=\"text-align: left; \">Lichtempfindlichkeit<br></p></td><td><ul><li>Auto</li><li>100</li><li>200</li><li>400</li><li>800</li><li>1600</li><li>3200</li><li>6400</li></ul></td></tr><tr><td style=\"text-align: left;\">Bildformat<br></td><td><ul><li>JPEG: genau, standard (Exif 2.30)</li><li>RAW: 14-bit, Original Canon RAW, Version 2, kompatibel mit DPOF1.1</li></ul></td></tr><tr><td style=\"text-align: left;\">Fütterung<br></td><td>Litium-Ionen-Batterie LP-E10<br></td></tr><tr><td style=\"text-align: left;\">Weißabgleich<br></td><td><ul><li>Auto</li><li>Tageslicht</li><li>Schatten</li><li>es ist bewölkt</li><li>Glühlampe</li><li>Leuchtstofflampe</li><li>Handbuch</li><li>Blitz<br></li></ul></td></tr></tbody></table><p><img src=\"https://i.allo.ua/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/a/canon_eos_5d_mark_iii_kit_ef_24-105_f-4l_is_usm.jpg\" style=\"width: 393.724px; height: 309.906px;\"><br></p>', NULL, '2018-11-09 09:00:04', '2019-08-28 18:47:40', '1', '1', '1', '1', NULL, '5d651923bc05bc7f7', 1, 'Global', NULL),
('5be553a0082fc4dda', 0, '<p>Protective Silicone Case for&nbsp;<b>Canon 5D Mark III, 5Ds, 5Dr</b>.</p><p>Protect your digital camera from dust, fingerprints and scratches.</p><p>This silicone case is fully compatible with this camera model! Well dressed and very functional.</p><p>Ensure the safety of your camera and give an exclusive look.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b><br></p><table class=\"table table-bordered\"><tbody><tr><td>Brand<br></td><td>JULI IMAGE<br></td></tr><tr><td>Material<br></td><td>Silicone<br></td></tr><tr><td>Size<br></td><td>7 x 15.5 x 12.5cm<br></td></tr><tr><td>Weight&nbsp;<br></td><td>0.092 g<br></td></tr><tr><td>Typ<br></td><td>Camera Bags<br></td></tr><tr><td>Application<br></td><td>DSLR-Camera<br></td></tr><tr><td>Color<br></td><td><ul><li>Red Soft Camera Bag 5D 3</li><li>Camouflage Camera Bag</li><li>Black Silicone Camera Cover</li><li>Yellow Camera Case 5D Mark III<br></li></ul></td></tr></tbody></table><p>&nbsp;&nbsp;<img src=\"https://screen.treotest.com/i.rybachok/2019-08-28_16-34-37.jpg\" style=\"width: 442px;\"><br></p>', '59fb152fe4a37088e', '5be548d57b74b3154', '<p>Protective Silicone Case for&nbsp;<b>Canon 5D Mark III, 5Ds, 5Dr</b>.</p><p>Protect your digital camera from dust, fingerprints and scratches.</p><p>This silicone case is fully compatible with this camera model! Well dressed and very functional.</p><p>Ensure the safety of your camera and give an exclusive look.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b><br></p><table class=\"table table-bordered\"><tbody><tr><td>Brand<br></td><td>JULI IMAGE<br></td></tr><tr><td>Material<br></td><td>Silicone<br></td></tr><tr><td>Size<br></td><td>7 x 15.5 x 12.5cm<br></td></tr><tr><td>Weight&nbsp;<br></td><td>0.092 g<br></td></tr><tr><td>Typ<br></td><td>Camera Bags<br></td></tr><tr><td>Application<br></td><td>DSLR-Camera<br></td></tr><tr><td>Color<br></td><td><ul><li>Red Soft Camera Bag 5D 3</li><li>Camouflage Camera Bag</li><li>Black Silicone Camera Cover</li><li>Yellow Camera Case 5D Mark III<br></li></ul></td></tr></tbody></table><p>&nbsp;&nbsp;<img src=\"https://screen.treotest.com/i.rybachok/2019-08-28_16-34-37.jpg\" style=\"width: 442px;\"><br></p>', '<p>Protective Silicone Case for&nbsp;<b>Canon 5D Mark III, 5Ds, 5Dr</b>.</p><p>Protect your digital camera from dust, fingerprints and scratches.</p><p>This silicone case is fully compatible with this camera model! Well dressed and very functional.</p><p>Ensure the safety of your camera and give an exclusive look.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span><br></p><table class=\"table table-bordered\"><tbody><tr><td>Marke<br></td><td>JULI IMAGE<br></td></tr><tr><td>Material<br></td><td>Silikon<br></td></tr><tr><td>Größe<br></td><td>7 x 15.5 x 12.5cm<br></td></tr><tr><td>Gewicht<br></td><td>0.092 g<br></td></tr><tr><td>Typ<br></td><td>Kamerataschen<br></td></tr><tr><td>Anwendung<br></td><td>DSLR-Kamera<br></td></tr><tr><td>Farbe<br></td><td><ul><li>Rote weiche Kameratasche 5D 3<br></li><li>Camouflage-Kameratasche</li><li>Schwarze Silikonkameraabdeckung</li><li>Gelbe Kameratasche 5D Mark III</li></ul></td></tr></tbody></table><p>&nbsp;&nbsp;<img src=\"https://screen.treotest.com/i.rybachok/2019-08-28_16-34-37.jpg\" style=\"width: 442px;\"><br></p>', NULL, '2018-11-09 09:30:08', '2019-08-28 13:38:14', '1', '1', '1', '1', NULL, '5d651923d879f91ad', 1, 'Global', NULL);
INSERT INTO `product_attribute_value` (`id`, `deleted`, `value`, `product_id`, `attribute_id`, `value_en_us`, `value_de_de`, `name`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `data`, `product_family_attribute_id`, `is_required`, `scope`, `image_name`) VALUES
('5be5543f3900f402c', 0, '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p style=\"margin-bottom: 9.5px;\"><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p><p style=\"margin-bottom: 9.5px;\"><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td>Diagonal screen<br></td><td>46,7 \"<br></td></tr><tr><td>Smart TV support<br></td><td>Available<br></td></tr><tr><td>Resolution<br></td><td>1920x1080<br></td></tr><tr><td>Wi-Fi<br></td><td>Yes<br></td></tr><tr><td>Ranges of digital tuner<br></td><td><ul><li>DVB-T</li><li>DVB-C</li><li>DVB-T2<br></li></ul></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Brightness<br></td><td>450 cd / m²<br></td></tr><tr><td>TV tuner<br></td><td>2 TV tuners (analogue + digital)<br></td></tr><tr><td>Special features<br></td><td>3D TV<br></td></tr><tr><td>Contrast<br></td><td>Dynamic 500000: 1<br></td></tr><tr><td>Image processor<br></td><td>Dual-Core<br></td></tr><tr><td>Frequency of panel sweep<br></td><td>800 Hz<br></td></tr><tr><td>USB port<br></td><td>Yes<br></td></tr><tr><td>Supported video signals<br></td><td><ul><li>480i</li><li>480p</li><li>576i</li><li>576p</li><li>720p</li><li>1080i</li><li>1080p<br></li></ul></td></tr><tr><td>Format<br></td><td><ul><li>Video playback formats: Containers: AVI, MKV, H264 / MPEG-4 AVC, MPEG-1, MPEG-2, MPEG-4, WMV9 / VC1<br></li><li>Music playback formats: AAC, MP3, WMA version 2 to version 9.2</li><li>Image playback formats: JPEG</li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://images.philips.com/is/image/PhilipsConsumer/46PFL8007T_12-IMS-uk_UA?wid=494&amp;hei=435&amp;$pnglarge$\" style=\"width: 442px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', '59a90c862458bd976', '5be548d57b74b3154', '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p style=\"margin-bottom: 9.5px;\"><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p><p style=\"margin-bottom: 9.5px;\"><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td>Diagonal screen<br></td><td>46,7 \"<br></td></tr><tr><td>Smart TV support<br></td><td>Available<br></td></tr><tr><td>Resolution<br></td><td>1920x1080<br></td></tr><tr><td>Wi-Fi<br></td><td>Yes<br></td></tr><tr><td>Ranges of digital tuner<br></td><td><ul><li>DVB-T</li><li>DVB-C</li><li>DVB-T2<br></li></ul></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Brightness<br></td><td>450 cd / m²<br></td></tr><tr><td>TV tuner<br></td><td>2 TV tuners (analogue + digital)<br></td></tr><tr><td>Special features<br></td><td>3D TV<br></td></tr><tr><td>Contrast<br></td><td>Dynamic 500000: 1<br></td></tr><tr><td>Image processor<br></td><td>Dual-Core<br></td></tr><tr><td>Frequency of panel sweep<br></td><td>800 Hz<br></td></tr><tr><td>USB port<br></td><td>Yes<br></td></tr><tr><td>Supported video signals<br></td><td><ul><li>480i</li><li>480p</li><li>576i</li><li>576p</li><li>720p</li><li>1080i</li><li>1080p<br></li></ul></td></tr><tr><td>Format<br></td><td><ul><li>Video playback formats: Containers: AVI, MKV, H264 / MPEG-4 AVC, MPEG-1, MPEG-2, MPEG-4, WMV9 / VC1<br></li><li>Music playback formats: AAC, MP3, WMA version 2 to version 9.2</li><li>Image playback formats: JPEG</li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://images.philips.com/is/image/PhilipsConsumer/46PFL8007T_12-IMS-uk_UA?wid=494&amp;hei=435&amp;$pnglarge$\" style=\"width: 442px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', '<p>Full HD 3D und Ambilight Smart TV. Entdecken Sie die Welt der Online-Inhalte mit dem intelligenten LED-Fernseher&nbsp;<b>Philips 46PFL8007</b>&nbsp;mit 3D. Informieren Sie sich über die unendlichen Möglichkeiten von Smart TV Premium, chatten Sie mit der mitgelieferten Kamera über TV über Skype und steuern Sie Ihren Fernseher mit einer einzigartigen Fernbedienung mit integrierter Tastatur und Laserpointer.</p><p><b>Entdecken Sie die Welt der Online-Inhalte mit Smart TV Premium:</b><br></p><ul><li>Eingebautes WLAN-Modul für die drahtlose Verbindung von Smart TV<br></li><li>Viele Internetanwendungen, Videoverleih und Live-Streaming</li><li>Steuern Sie Ihren Fernseher mit einem Smartphone, Tablet oder einer Tastatur</li><li>Suchen, Programmieren, Aufnehmen und Unterbrechen der Fernsehwiedergabe</li><li>Mit Wi-Fi Smart Screen können Sie fernsehen, wo immer Sie möchten</li><li>Möglichkeit, Sprach- und Videoanrufe über Skype direkt am Fernsehgerät zu tätigen</li></ul><p><b>Erstaunliche Qualität:</b><br></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video<br></li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p style=\"margin-bottom: 0px;\"><b>2D zu 3D Konvertierung.&nbsp;</b>Sehen Sie sich alle Filme in natürlicher und stabiler 3D-Qualität an - sogar die alten Schwarz-Weiß-Klassiker. Mit den Philips Technologien können Sie auf Knopfdruck jeden 2D-Inhalt in Echtzeit in 3D konvertieren. Sie helfen, eine konstante Tiefe der Anzeige von Untertiteln beizubehalten und verhindern Fehler, wie das Auftreten von Hintergrundobjekten im Vordergrund.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span><br></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Diagonaler Bildschirm<br></td><td>46,7 \"<br></td></tr><tr><td>Smart TV-Unterstützung<br></td><td>Verfügbar<br></td></tr><tr><td>Auflösung<br></td><td>1920x1080</td></tr><tr><td>Wi-Fi<br></td><td>Ja<br></td></tr><tr><td>Bereiche des digitalen Tuners<br></td><td><ul><li>DVB-T</li><li>DVB-C</li><li>DVB-T2<br></li></ul></td></tr><tr><td>Farbe<br></td><td>Schwarz<br></td></tr><tr><td>Helligkeit<br></td><td>450 cd / m²<br></td></tr><tr><td>TV tuner<br></td><td>2 TV-Tuner (analog + digital)<br></td></tr><tr><td>Besondere Merkmale<br></td><td>3D TV<br></td></tr><tr><td>Kontrast<br></td><td>Dynamisch 500000: 1<br></td></tr><tr><td>Bildprozessor<br></td><td>Zweikern</td></tr><tr><td>Häufigkeit des Panel-Sweeps<br></td><td>800 Hz<br></td></tr><tr><td>USB-Anschluss<br></td><td>Ja<br></td></tr><tr><td>Unterstützte Videosignale<br></td><td><ul><li>480i</li><li>480p</li><li>576i</li><li>576p</li><li>720p</li><li>1080i</li><li>1080p<br></li></ul></td></tr><tr><td>Format<br></td><td><ul><li>Video-Wiedergabeformate: Container: AVI, MKV, H264 / MPEG-4 AVC, MPEG-1, MPEG-2, MPEG-4, WMV9 / VC1<br></li><li>Musikwiedergabeformate: AAC, MP3, WMA Version 2 bis Version 9.2</li><li>Bildwiedergabeformate: JPEG<br></li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://images.philips.com/is/image/PhilipsConsumer/46PFL8007T_12-IMS-uk_UA?wid=494&amp;hei=435&amp;$pnglarge$\" style=\"width: 442px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', NULL, '2018-11-09 09:32:47', '2019-08-28 19:15:56', '1', '1', '1', '1', NULL, '5d651923c2f6020a4', 1, 'Global', NULL),
('5be5543f3b37cc90f', 0, '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p style=\"margin-bottom: 9.5px;\"><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p><p style=\"margin-bottom: 9.5px;\"><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td>Diagonal screen<br></td><td>46,7 \"<br></td></tr><tr><td>Smart TV support<br></td><td>Available<br></td></tr><tr><td>Resolution<br></td><td>1920x1080<br></td></tr><tr><td>Wi-Fi<br></td><td>Yes<br></td></tr><tr><td>Ranges of digital tuner<br></td><td><ul><li>DVB-T</li><li>DVB-C</li><li>DVB-T2<br></li></ul></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Brightness<br></td><td>450 cd / m²<br></td></tr><tr><td>TV tuner<br></td><td>2 TV tuners (analogue + digital)<br></td></tr><tr><td>Special features<br></td><td>3D TV<br></td></tr><tr><td>Contrast<br></td><td>Dynamic 500000: 1<br></td></tr><tr><td>Image processor<br></td><td>Dual-Core<br></td></tr><tr><td>Frequency of panel sweep<br></td><td>800 Hz<br></td></tr><tr><td>USB port<br></td><td>Yes<br></td></tr><tr><td>Supported video signals<br></td><td><ul><li>480i</li><li>480p</li><li>576i</li><li>576p</li><li>720p</li><li>1080i</li><li>1080p<br></li></ul></td></tr><tr><td>Format<br></td><td><ul><li>Video playback formats: Containers: AVI, MKV, H264 / MPEG-4 AVC, MPEG-1, MPEG-2, MPEG-4, WMV9 / VC1<br></li><li>Music playback formats: AAC, MP3, WMA version 2 to version 9.2</li><li>Image playback formats: JPEG</li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://images.philips.com/is/image/PhilipsConsumer/46PFL8007T_12-IMS-uk_UA?wid=494&amp;hei=435&amp;$pnglarge$\" style=\"width: 442px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', '59fad6841f243119b', '5be548d57b74b3154', '<p>Full HD 3D and Ambilight Smart TV. Discover the world of online content with the&nbsp;<b>Philips 46PFL8007</b>&nbsp;Smart LED TV with 3D. Check out the endless possibilities of Smart TV Premium, chat over Skype on TV using the provided camera, control your TV with a unique remote control with a built-in keyboard and laser pointer.</p><p><b>Discover the world of online content with Smart TV Premium:</b></p><ul><li>Built-in Wi-Fi module for wireless connection of Smart TV</li><li>Lots of internet applications, video rentals and live streaming</li><li>Control your TV with a smartphone, tablet, or keyboard</li><li>Search, program, record and pause TV play</li><li>Wi-Fi Smart Screen allows you to watch TV wherever you want</li><li>Ability to make voice and video calls via Skype directly on the TV</li></ul><p><b>Amazing quality:&nbsp;</b></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video</li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p style=\"margin-bottom: 9.5px;\"><b>2D to 3D conversion.&nbsp;</b>Watch all movies in a natural and stable 3D-quality - even the old black and white classics. Philips technologies let you convert any 2D content to 3D in real time at the touch of a button. They help to maintain a constant depth of display of subtitles and prevent errors such as the appearance of background objects in the foreground.</p><p style=\"margin-bottom: 9.5px;\"><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td>Diagonal screen<br></td><td>46,7 \"<br></td></tr><tr><td>Smart TV support<br></td><td>Available<br></td></tr><tr><td>Resolution<br></td><td>1920x1080<br></td></tr><tr><td>Wi-Fi<br></td><td>Yes<br></td></tr><tr><td>Ranges of digital tuner<br></td><td><ul><li>DVB-T</li><li>DVB-C</li><li>DVB-T2<br></li></ul></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Brightness<br></td><td>450 cd / m²<br></td></tr><tr><td>TV tuner<br></td><td>2 TV tuners (analogue + digital)<br></td></tr><tr><td>Special features<br></td><td>3D TV<br></td></tr><tr><td>Contrast<br></td><td>Dynamic 500000: 1<br></td></tr><tr><td>Image processor<br></td><td>Dual-Core<br></td></tr><tr><td>Frequency of panel sweep<br></td><td>800 Hz<br></td></tr><tr><td>USB port<br></td><td>Yes<br></td></tr><tr><td>Supported video signals<br></td><td><ul><li>480i</li><li>480p</li><li>576i</li><li>576p</li><li>720p</li><li>1080i</li><li>1080p<br></li></ul></td></tr><tr><td>Format<br></td><td><ul><li>Video playback formats: Containers: AVI, MKV, H264 / MPEG-4 AVC, MPEG-1, MPEG-2, MPEG-4, WMV9 / VC1<br></li><li>Music playback formats: AAC, MP3, WMA version 2 to version 9.2</li><li>Image playback formats: JPEG</li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://images.philips.com/is/image/PhilipsConsumer/46PFL8007T_12-IMS-uk_UA?wid=494&amp;hei=435&amp;$pnglarge$\" style=\"width: 442px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', '<p>Full HD 3D und Ambilight Smart TV. Entdecken Sie die Welt der Online-Inhalte mit dem intelligenten LED-Fernseher&nbsp;<b>Philips 46PFL8007</b>&nbsp;mit 3D. Informieren Sie sich über die unendlichen Möglichkeiten von Smart TV Premium, chatten Sie mit der mitgelieferten Kamera über TV über Skype und steuern Sie Ihren Fernseher mit einer einzigartigen Fernbedienung mit integrierter Tastatur und Laserpointer.</p><p><b>Entdecken Sie die Welt der Online-Inhalte mit Smart TV Premium:</b><br></p><ul><li>Eingebautes WLAN-Modul für die drahtlose Verbindung von Smart TV<br></li><li>Viele Internetanwendungen, Videoverleih und Live-Streaming</li><li>Steuern Sie Ihren Fernseher mit einem Smartphone, Tablet oder einer Tastatur</li><li>Suchen, Programmieren, Aufnehmen und Unterbrechen der Fernsehwiedergabe</li><li>Mit Wi-Fi Smart Screen können Sie fernsehen, wo immer Sie möchten</li><li>Möglichkeit, Sprach- und Videoanrufe über Skype direkt am Fernsehgerät zu tätigen</li></ul><p><b>Erstaunliche Qualität:</b><br></p><ul><li>Ambilight Spectra XL, the new Ambilight backlight for immersive video<br></li><li>3D Max Clarity 700 for an unforgettable experience when viewed in Full HD 3D</li><li>One click of a button - and you can enjoy viewing 2D images in immaculate 3D format.</li><li>Unique 3D depth adjustment feature for personalization</li></ul><p style=\"margin-bottom: 0px;\"><b>2D zu 3D Konvertierung.&nbsp;</b>Sehen Sie sich alle Filme in natürlicher und stabiler 3D-Qualität an - sogar die alten Schwarz-Weiß-Klassiker. Mit den Philips Technologien können Sie auf Knopfdruck jeden 2D-Inhalt in Echtzeit in 3D konvertieren. Sie helfen, eine konstante Tiefe der Anzeige von Untertiteln beizubehalten und verhindern Fehler, wie das Auftreten von Hintergrundobjekten im Vordergrund.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span><br></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Diagonaler Bildschirm<br></td><td>46,7 \"<br></td></tr><tr><td>Smart TV-Unterstützung<br></td><td>Verfügbar<br></td></tr><tr><td>Auflösung<br></td><td>1920x1080</td></tr><tr><td>Wi-Fi<br></td><td>Ja<br></td></tr><tr><td>Bereiche des digitalen Tuners<br></td><td><ul><li>DVB-T</li><li>DVB-C</li><li>DVB-T2<br></li></ul></td></tr><tr><td>Farbe<br></td><td>Schwarz<br></td></tr><tr><td>Helligkeit<br></td><td>450 cd / m²<br></td></tr><tr><td>TV tuner<br></td><td>2 TV-Tuner (analog + digital)<br></td></tr><tr><td>Besondere Merkmale<br></td><td>3D TV<br></td></tr><tr><td>Kontrast<br></td><td>Dynamisch 500000: 1<br></td></tr><tr><td>Bildprozessor<br></td><td>Zweikern</td></tr><tr><td>Häufigkeit des Panel-Sweeps<br></td><td>800 Hz<br></td></tr><tr><td>USB-Anschluss<br></td><td>Ja<br></td></tr><tr><td>Unterstützte Videosignale<br></td><td><ul><li>480i</li><li>480p</li><li>576i</li><li>576p</li><li>720p</li><li>1080i</li><li>1080p<br></li></ul></td></tr><tr><td>Format<br></td><td><ul><li>Video-Wiedergabeformate: Container: AVI, MKV, H264 / MPEG-4 AVC, MPEG-1, MPEG-2, MPEG-4, WMV9 / VC1<br></li><li>Musikwiedergabeformate: AAC, MP3, WMA Version 2 bis Version 9.2</li><li>Bildwiedergabeformate: JPEG<br></li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://images.philips.com/is/image/PhilipsConsumer/46PFL8007T_12-IMS-uk_UA?wid=494&amp;hei=435&amp;$pnglarge$\" style=\"width: 442px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', NULL, '2018-11-09 09:32:47', '2019-08-28 19:09:46', '1', '1', '1', '1', NULL, '5d651923c2f6020a4', 1, 'Global', NULL),
('5be5543f3cd1f2e0c', 0, NULL, '59fae2913019a9cdf', '5be548d57b74b3154', NULL, NULL, NULL, '2018-11-09 09:32:47', '2018-11-09 09:32:47', '1', NULL, '1', '1', NULL, '5d651923c2f6020a4', 1, 'Global', NULL),
('5be5543f3e5a6e193', 0, '<p><b><span style=\"font-size: 14px;\">Excellence in every frame</span></b></p><p><span style=\"font-size: 14px;\">Samsung TV will open before you a world of incredibly high-quality and highly detailed images with bright and vivid colors. The modern technologies and developments involved in it allow him to impress you. This model has received a matrix with a wide coverage of colors and shades, so that it is capable of transmitting media that does not actually differ from the real world. The TV uses the technology of the extended dynamic range Q HDR 1000. It allows you to display an image on the screen exactly as the director intended, with all the details on the bright and darkened parts of the picture. Peak Illuminator technology will make any dark scene incredibly detailed. Innovative development of Precision Black in tandem with local dimming functionality, provides improved clarity of content display.</span></p><p><b><span style=\"font-size: 14px;\">It\'s even easier to manage.</span></b></p><p><span style=\"font-size: 14px;\">This model of the</span><span style=\"font-size: 14px;\">&nbsp;</span><b><span style=\"font-size: 14px;\">Samsung QEQ6FNAUXUA series</span></b><span style=\"font-size: 14px;\">&nbsp;</span><span style=\"font-size: 14px;\">is equipped with the One Remote Control universal remote control. With it, you can easily control not only the TV, but also external devices connected to it. The convenient location of the keys and special icons allow you to quickly understand the management. The main advantage of the remote is the support of voice control, which makes interaction with the TV more convenient. Install the Smart View application on your mobile device, which will allow you to use the gadget instead of the remote. In addition, this software allows you to broadcast on your TV any media. Install the application on your computer, and add files to a special folder to play them with just one click.</span></p><p><b><span style=\"font-size: 14px;\">Smarter than ever</span></b></p><p><span style=\"font-size: 14px;\">Enjoy watching multimedia content online thanks to the Smart TV functionality on your Samsung TV. It works on the basis of the operating system OS Tizen 3.0, which is characterized by a simple control menu. This will allow you to spend more time viewing media content, rather than searching for it. Smart TV will give you access to a huge database of games, videos and applications.</span></p><p><b><span style=\"font-size: 14px;\">Incredibly high-quality sound</span></b></p><p style=\"margin-bottom: 9.5px;\"><b><span style=\"font-size: 14px;\">Samsung QEQ6FNAUXUA TV</span></b><span style=\"font-size: 14px;\">&nbsp;</span><span style=\"font-size: 14px;\">gives you the ability to immerse yourself in the media. It is equipped with a powerful audio system, which is represented by two speakers (2 x 10 W). Due to the design features of this model, the sound remains absolutely clear even at the maximum volume level.</span></p><p style=\"margin-bottom: 9.5px;\"><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td><span style=\"font-size: 14px;\">Intelligent platform</span><br></td><td><span style=\"font-size: 14px;\">Tizen</span><br></td></tr><tr><td><table class=\"gt-baf-table\" style=\"color: rgb(119, 119, 119); font-family: arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><tbody><tr><td colspan=\"2\"><div class=\"gt-baf-cell\"><span class=\"gt-baf-word-clickable\" style=\"height: 18px; color: rgb(0, 0, 0); cursor: pointer; vertical-align: top; white-space: nowrap; unicode-bidi: embed; margin: 1px 0px 0px 4px; font-size: 14px;\">Guarantee</span></div></td><td style=\"width: 584px;\"></td></tr></tbody></table></td><td><span style=\"font-size: 14px;\">12 months from the manufacturer</span><br></td></tr><tr><td>VESA<br></td><td>400x400 mm<br></td></tr><tr><td>Contents of delivery<br></td><td><ul><li>TV</li><li>Remote Control</li><li>Power cord</li><li>Documentation</li><li>Stand</li><li>Batteries (for remote control)<br></li></ul></td></tr><tr><td>Resolution<br></td><td>3840x2160<br></td></tr><tr><td>Screen diagonal<br></td><td>55 \"<br></td></tr><tr><td>Color System (supported standards)<br></td><td><ul><li>PAL</li><li>SECAM</li><li>NTSC<br></li></ul></td></tr><tr><td>Wi-Fi<br></td><td>Yes<br></td></tr><tr><td>Digital Tuner Bands<br></td><td><ul><li>DVB-T2</li><li>DVB-C</li><li>DVB-S2<br></li></ul></td></tr><tr><td>Image processor<br></td><td>Q Engine<br></td></tr><tr><td>Audio system<br></td><td>2 x 10 W, Dolby Digital Plus<br></td></tr><tr><td>USB port<br></td><td>Yes<br></td></tr><tr><td>Connectors (ports)<br></td><td><ul><li>4 x HDMI</li><li>2 x USB 3.0</li><li>1 x Antenna input (satellite)</li><li>1 x Digital audio output</li><li>1 x Expansion slot (CI)</li><li>1 x Antenna RF input</li><li>1 x LAN<br></li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://samsungshop.com.ua/res/cache/images/9d/81/9d818775aebac5dcf060e546105f660e/7a93bc3c96b5835021b702336fb25754.png\" style=\"width: 370px;\">&nbsp;<img src=\"https://samsungshop.com.ua/res/cache/images/d1/60/d1602b494c7e812dd249359a0d03e823/ac7c7e39d6ef8f0a1418fe1222ac2832.png\" style=\"width: 370px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', '5b8649f0dae076eb0', '5be548d57b74b3154', '<p><b><span style=\"font-size: 14px;\">Excellence in every frame</span></b></p><p><span style=\"font-size: 14px;\">Samsung TV will open before you a world of incredibly high-quality and highly detailed images with bright and vivid colors. The modern technologies and developments involved in it allow him to impress you. This model has received a matrix with a wide coverage of colors and shades, so that it is capable of transmitting media that does not actually differ from the real world. The TV uses the technology of the extended dynamic range Q HDR 1000. It allows you to display an image on the screen exactly as the director intended, with all the details on the bright and darkened parts of the picture. Peak Illuminator technology will make any dark scene incredibly detailed. Innovative development of Precision Black in tandem with local dimming functionality, provides improved clarity of content display.</span></p><p><b><span style=\"font-size: 14px;\">It\'s even easier to manage.</span></b></p><p><span style=\"font-size: 14px;\">This model of the</span><span style=\"font-size: 14px;\">&nbsp;</span><b><span style=\"font-size: 14px;\">Samsung QEQ6FNAUXUA series</span></b><span style=\"font-size: 14px;\">&nbsp;</span><span style=\"font-size: 14px;\">is equipped with the One Remote Control universal remote control. With it, you can easily control not only the TV, but also external devices connected to it. The convenient location of the keys and special icons allow you to quickly understand the management. The main advantage of the remote is the support of voice control, which makes interaction with the TV more convenient. Install the Smart View application on your mobile device, which will allow you to use the gadget instead of the remote. In addition, this software allows you to broadcast on your TV any media. Install the application on your computer, and add files to a special folder to play them with just one click.</span></p><p><b><span style=\"font-size: 14px;\">Smarter than ever</span></b></p><p><span style=\"font-size: 14px;\">Enjoy watching multimedia content online thanks to the Smart TV functionality on your Samsung TV. It works on the basis of the operating system OS Tizen 3.0, which is characterized by a simple control menu. This will allow you to spend more time viewing media content, rather than searching for it. Smart TV will give you access to a huge database of games, videos and applications.</span></p><p><b><span style=\"font-size: 14px;\">Incredibly high-quality sound</span></b></p><p style=\"margin-bottom: 9.5px;\"><b><span style=\"font-size: 14px;\">Samsung QEQ6FNAUXUA TV</span></b><span style=\"font-size: 14px;\">&nbsp;</span><span style=\"font-size: 14px;\">gives you the ability to immerse yourself in the media. It is equipped with a powerful audio system, which is represented by two speakers (2 x 10 W). Due to the design features of this model, the sound remains absolutely clear even at the maximum volume level.</span></p><p style=\"margin-bottom: 9.5px;\"><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td><span style=\"font-size: 14px;\">Intelligent platform</span><br></td><td><span style=\"font-size: 14px;\">Tizen</span><br></td></tr><tr><td><table class=\"gt-baf-table\" style=\"color: rgb(119, 119, 119); font-family: arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><tbody><tr><td colspan=\"2\"><div class=\"gt-baf-cell\"><span class=\"gt-baf-word-clickable\" style=\"height: 18px; color: rgb(0, 0, 0); cursor: pointer; vertical-align: top; white-space: nowrap; unicode-bidi: embed; margin: 1px 0px 0px 4px; font-size: 14px;\">Guarantee</span></div></td><td style=\"width: 584px;\"></td></tr></tbody></table></td><td><span style=\"font-size: 14px;\">12 months from the manufacturer</span><br></td></tr><tr><td>VESA<br></td><td>400x400 mm<br></td></tr><tr><td>Contents of delivery<br></td><td><ul><li>TV</li><li>Remote Control</li><li>Power cord</li><li>Documentation</li><li>Stand</li><li>Batteries (for remote control)<br></li></ul></td></tr><tr><td>Resolution<br></td><td>3840x2160<br></td></tr><tr><td>Screen diagonal<br></td><td>55 \"<br></td></tr><tr><td>Color System (supported standards)<br></td><td><ul><li>PAL</li><li>SECAM</li><li>NTSC<br></li></ul></td></tr><tr><td>Wi-Fi<br></td><td>Yes<br></td></tr><tr><td>Digital Tuner Bands<br></td><td><ul><li>DVB-T2</li><li>DVB-C</li><li>DVB-S2<br></li></ul></td></tr><tr><td>Image processor<br></td><td>Q Engine<br></td></tr><tr><td>Audio system<br></td><td>2 x 10 W, Dolby Digital Plus<br></td></tr><tr><td>USB port<br></td><td>Yes<br></td></tr><tr><td>Connectors (ports)<br></td><td><ul><li>4 x HDMI</li><li>2 x USB 3.0</li><li>1 x Antenna input (satellite)</li><li>1 x Digital audio output</li><li>1 x Expansion slot (CI)</li><li>1 x Antenna RF input</li><li>1 x LAN<br></li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://samsungshop.com.ua/res/cache/images/9d/81/9d818775aebac5dcf060e546105f660e/7a93bc3c96b5835021b702336fb25754.png\" style=\"width: 370px;\">&nbsp;<img src=\"https://samsungshop.com.ua/res/cache/images/d1/60/d1602b494c7e812dd249359a0d03e823/ac7c7e39d6ef8f0a1418fe1222ac2832.png\" style=\"width: 370px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', '<p><b>Exzellenz in jedem Rahmen</b></p><p>Samsung TV eröffnet Ihnen eine Welt unglaublich hochwertiger und detailreicher Bilder mit hellen und lebendigen Farben. Dank der modernen Technologien und Entwicklungen kann er Sie beeindrucken. Dieses Modell hat eine Matrix mit einer breiten Palette an Farben und Schattierungen erhalten, so dass es Medien übertragen kann, die sich tatsächlich nicht von der realen Welt unterscheiden. Das Fernsehgerät verwendet die Technologie des erweiterten dynamischen Bereichs Q HDR 1000. Es ermöglicht Ihnen, ein Bild auf dem Bildschirm genau so anzuzeigen, wie es der Regisseur beabsichtigt, mit allen Details zu den hellen und verdunkelten Bildbereichen. Die Peak Illuminator-Technologie macht jede dunkle Szene unglaublich detailliert. Durch die innovative Entwicklung von Precision Black in Kombination mit der lokalen Dimmfunktion wird die Anzeige von Inhalten klarer.</p><p><b>Es ist noch einfacher zu verwalten.</b></p><p>Dieses Modell der&nbsp;<b>Samsung QEQ6FNAUXUA-Serie</b>&nbsp;ist mit der Universalfernbedienung One Remote Control ausgestattet. Damit können Sie nicht nur den Fernseher, sondern auch angeschlossene externe Geräte problemlos steuern. Durch die praktische Anordnung der Tasten und der speziellen Symbole können Sie die Verwaltung schnell verstehen. Der Hauptvorteil der Fernbedienung ist die Unterstützung der Sprachsteuerung, die die Interaktion mit dem Fernsehgerät komfortabler macht. Installieren Sie die Smart View-Anwendung auf Ihrem mobilen Gerät. Dadurch können Sie das Gadget anstelle der Fernbedienung verwenden. Darüber hinaus können Sie mit dieser Software beliebige Medien auf Ihrem Fernsehgerät ausstrahlen. Installieren Sie die Anwendung auf Ihrem Computer und fügen Sie Dateien zu einem speziellen Ordner hinzu, um sie mit einem Klick abzuspielen.</p><p><b>Schlauer als je zuvor</b></p><p>Dank der Smart TV-Funktion Ihres Samsung-Fernsehgeräts können Sie Multimedia-Inhalte online ansehen. Es arbeitet auf Basis des Betriebssystems OS Tizen 3.0, das sich durch ein einfaches Steuerungsmenü auszeichnet. Auf diese Weise können Sie mehr Zeit darauf verwenden, Medieninhalte anzuzeigen, als danach zu suchen. Smart TV ermöglicht Ihnen den Zugriff auf eine riesige Datenbank mit Spielen, Videos und Anwendungen.</p><p><b>Unglaublich hochwertiger Klang</b></p><p style=\"margin-bottom: 0px;\"><b>Samsung QEQ6FNAUXUA TV</b>&nbsp;gibt Ihnen die Möglichkeit, in die Medien einzutauchen. Es ist mit einem leistungsstarken Audiosystem ausgestattet, das durch zwei Lautsprecher (2 x 10 W) dargestellt wird. Aufgrund der Designmerkmale dieses Modells bleibt der Klang auch bei maximaler Lautstärke absolut klar.</p><p style=\"margin-bottom: 9.5px;\"><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td>Intelligente Plattform<br></td><td><span style=\"font-size: 14px;\">Tizen</span><br></td></tr><tr><td><table class=\"gt-baf-table\" style=\"color: rgb(119, 119, 119); font-family: arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><tbody><tr><td colspan=\"2\"><div class=\"gt-baf-cell\"><span class=\"gt-baf-word-clickable\" style=\"height: 18px; color: rgb(0, 0, 0); cursor: pointer; vertical-align: top; white-space: nowrap; unicode-bidi: embed; margin: 1px 0px 0px 4px; font-size: 14px;\">Garantie</span></div></td><td style=\"width: 584px;\"></td></tr></tbody></table></td><td>12 Monate vom Hersteller<br></td></tr><tr><td>VESA<br></td><td>400x400 mm<br></td></tr><tr><td>Lieferumfang<br></td><td><ul><li></li><li>Fernseher</li><li>Fernbedienung</li><li>Netzkabel</li><li>Dokumentation</li><li>Stand</li><li>Batterien (für Fernbedienung)</li></ul></td></tr><tr><td>Auflösung<br></td><td>3840x2160<br></td></tr><tr><td>Bildschirmdiagonale<br></td><td>55 \"<br></td></tr><tr><td>Farbsystem (unterstützte Standards)<br></td><td><ul><li>PAL</li><li>SECAM</li><li>NTSC<br></li></ul></td></tr><tr><td>Wi-Fi<br></td><td>Ja<br></td></tr><tr><td>Digitale Tunerbänder<br></td><td><ul><li>DVB-T2</li><li>DVB-C</li><li>DVB-S2<br></li></ul></td></tr><tr><td>Bildprozessor<br></td><td>Q Motor<br></td></tr><tr><td>Audiosystem<br></td><td>2 x 10 W, Dolby Digital Plus<br></td></tr><tr><td>USB-Anschluss<br></td><td>Ja<br></td></tr><tr><td>Anschlüsse (Ports)<br></td><td><ul><li></li><li>4 x HDMI</li><li>2 x USB 3.0</li><li>1 x Antenneneingang (Satellit)</li><li>1 x Digitaler Audioausgang</li><li>1 x Erweiterungssteckplatz (CI)</li><li>1 x Antennen-HF-Eingang</li><li>1 x LAN</li></ul></td></tr></tbody></table><div>&nbsp;<img src=\"https://samsungshop.com.ua/res/cache/images/9d/81/9d818775aebac5dcf060e546105f660e/7a93bc3c96b5835021b702336fb25754.png\" style=\"width: 370px;\">&nbsp;<img src=\"https://samsungshop.com.ua/res/cache/images/d4/9f/d49f7cb570d2e3818cc3cff8d5fd2241/5c8e0bec413bbd4683f870cee666fb5e.png\" style=\"width: 370px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></div>', NULL, '2018-11-09 09:32:47', '2019-08-28 19:21:52', '1', '1', '1', '1', NULL, '5d651923c2f6020a4', 1, 'Global', NULL),
('5be55611ecd110aab', 0, '<p>Now, the quality of Full HD photos and videos on compact photo or video cameras will be even better.&nbsp;<b>SanDisk Ultra SDHC UHS-I&nbsp;</b>memory cards&nbsp;reduce download time and also provide the performance needed to take and save 32GB of high-quality Full HD photo and video. The high speed of reading (up to 80 MB / s) greatly reduces the time taken to transfer photos and videos from a card to a computer.</p><p>The&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;memory cards meet the 10 speed class in Full HD video mode (1080p). Convenience and high quality video capture of any events, whether it is a family holiday, whether it is a sports match or a school performance.</p><p>The&nbsp;<b>32GB SanDisk Ultra SDHC UHS-I</b>&nbsp;memory card lets you take more photos and videos without changing cards or transferring files to your computer.</p><p>Memory Cards&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;- waterproof, impact resistant, resistant to temperature fluctuations and exposure to X-rays. Do not be afraid to take pictures near the pool or take pre-flight inspection at the airport: with expensive photos you will not happen.</p><p><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td>The amount of memory<br></td><td>32 GB<br></td></tr><tr><td>Standard memory<br></td><td>SD<br></td></tr><tr><td>Dimensions<br></td><td>24 x 32 x 2.1 mm<br></td></tr><tr><td>Guarantee<br></td><td>60 months<br></td></tr><tr><td>Data reading speed, Mb/s<br></td><td>up to 80<br></td></tr><tr><td>UHS-I support<br></td><td>Yes</td></tr><tr><td>Manufacturer<br></td><td>SanDisk<br></td></tr></tbody></table><p><img src=\"https://ru.sandisk.com/content/dam/sandisk-main/en_us/assets/product/retail/Ultra_SDHC_80MBs_32GB_Class10_Front.png\" style=\"width: 442px;\"><br></p>', '59b0e83c603a1b9c8', '5be548d57b74b3154', '<p>Now, the quality of Full HD photos and videos on compact photo or video cameras will be even better.&nbsp;<b>SanDisk Ultra SDHC UHS-I&nbsp;</b>memory cards&nbsp;reduce download time and also provide the performance needed to take and save 32GB of high-quality Full HD photo and video. The high speed of reading (up to 80 MB / s) greatly reduces the time taken to transfer photos and videos from a card to a computer.</p><p>The&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;memory cards meet the 10 speed class in Full HD video mode (1080p). Convenience and high quality video capture of any events, whether it is a family holiday, whether it is a sports match or a school performance.</p><p>The&nbsp;<b>32GB SanDisk Ultra SDHC UHS-I</b>&nbsp;memory card lets you take more photos and videos without changing cards or transferring files to your computer.</p><p>Memory Cards&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;- waterproof, impact resistant, resistant to temperature fluctuations and exposure to X-rays. Do not be afraid to take pictures near the pool or take pre-flight inspection at the airport: with expensive photos you will not happen.</p><p><span style=\"font-size: 18px; font-weight: 700;\">All characteristics</span></p><table class=\"table table-bordered\"><tbody><tr><td>The amount of memory<br></td><td>32 GB<br></td></tr><tr><td>Standard memory<br></td><td>SD<br></td></tr><tr><td>Dimensions<br></td><td>24 x 32 x 2.1 mm<br></td></tr><tr><td>Guarantee<br></td><td>60 months<br></td></tr><tr><td>Data reading speed, Mb/s<br></td><td>up to 80<br></td></tr><tr><td>UHS-I support<br></td><td>Yes</td></tr><tr><td>Manufacturer<br></td><td>SanDisk<br></td></tr></tbody></table><p><img src=\"https://ru.sandisk.com/content/dam/sandisk-main/en_us/assets/product/retail/Ultra_SDHC_80MBs_32GB_Class10_Front.png\" style=\"width: 442px;\"><span style=\"font-size: 18px; font-weight: 700;\"><br></span></p><p><br></p>', '<p>Die Qualität von Full-HD-Fotos und -Videos auf kompakten Foto- oder Videokameras wird jetzt noch besser. Die UHD-I-Speicherkarten von&nbsp;<b>SanDisk Ultra SDHC</b>&nbsp;verkürzen die Downloadzeit und bieten auch die Leistung, die erforderlich ist, um 32 GB hochwertiges Full HD-Foto und Video aufzunehmen und zu sparen. Die hohe Lesegeschwindigkeit (bis zu 80 MB / s) verringert die Zeit, die zum Übertragen von Fotos und Videos von einer Karte auf einen Computer benötigt wird, erheblich.</p><p>Die&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>-Speicherkarten entsprechen der 10-Geschwindigkeitsklasse im Full HD-Videomodus (1080p). Bequemlichkeit und qualitativ hochwertige Videoaufzeichnung von Ereignissen, ob Familienurlaub, Sportveranstaltung oder Schulaufführung.</p><p>Mit der&nbsp;<b>32-GB-SanDisk Ultra SDHC-UHS-I</b>-Speicherkarte können Sie mehr Fotos und Videos aufnehmen, ohne die Karte zu wechseln oder Dateien auf Ihren Computer zu übertragen.</p><p style=\"margin-bottom: 0px;\">Speicherkarten&nbsp;<b>SanDisk Ultra SDHC UHS-I</b>&nbsp;- wasserdicht, schlagfest, beständig gegen Temperaturschwankungen und Röntgenstrahlung. Scheuen Sie sich nicht, in der Nähe des Pools zu fotografieren oder sich vor dem Flug am Flughafen zu inspizieren: Bei teuren Fotos werden Sie nicht vorkommen.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span><br></p><table class=\"table table-bordered\"><tbody><tr><td>Die Menge an Speicher<br></td><td>32 GB<br></td></tr><tr><td>Standardspeicher<br></td><td>SD<br></td></tr><tr><td>Maße<br></td><td>24 x 32 x 2.1 mm<br></td></tr><tr><td>Garantie<br></td><td>60 Monate<br></td></tr><tr><td>Datenlesegeschwindigkeit, Mb/s<br></td><td>bis zu 80<br></td></tr><tr><td>UHS-I Unterstützung<br></td><td>Ja</td></tr><tr><td>Hersteller<br></td><td>SanDisk<br></td></tr></tbody></table><p><img src=\"https://ru.sandisk.com/content/dam/sandisk-main/en_us/assets/product/retail/Ultra_SDHC_80MBs_32GB_Class10_Front.png\" style=\"width: 442px;\"><br></p>', NULL, '2018-11-09 09:40:33', '2019-08-28 19:25:31', '1', '1', '1', '1', NULL, '5d651923cffd34404', 1, 'Global', NULL),
('5be9717299bbfab17', 0, '25', '5be971728d44f1a11', '59af95f809c136524', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:52:34', '1', '1', NULL, NULL, NULL, '5d651923ad2a23594', 0, 'Global', NULL),
('5be971729c0d0286f', 0, '61', '5be971728d44f1a11', '59af97de8c0a4e121', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:53:08', '1', '1', NULL, NULL, NULL, '5d651923ad8d09779', 1, 'Global', NULL),
('5be971729e8394c0d', 0, '1', '5be971728d44f1a11', '59af97e8832b39535', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:52:42', '1', '1', NULL, NULL, NULL, '5d651923adf3f5442', 0, 'Global', NULL),
('5be97172a0a73d0b0', 0, '1', '5be971728d44f1a11', '59af97f1b9358224f', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:53:18', '1', '1', NULL, NULL, NULL, '5d651923ae53f12dc', 0, 'Global', NULL),
('5be97172a27dc50f5', 0, NULL, '5be971728d44f1a11', '59af98286e2a9699f', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:26:26', '1', NULL, NULL, NULL, NULL, '5d651923aeaa1528b', 1, 'Global', NULL),
('5be97172a41459b06', 0, '25600', '5be971728d44f1a11', '59af98341c1ef6e9c', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:53:22', '1', '1', NULL, NULL, NULL, '5d651923aef4cdfa0', 0, 'Global', NULL),
('5be97172a57cbe0dc', 0, '100', '5be971728d44f1a11', '59af984349a116a24', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:52:48', '1', '1', NULL, NULL, NULL, '5d651923af37bbbd5', 0, 'Global', NULL),
('5be97172a6b83a0af', 0, 'Autofocus range: EV -3-18 (at 23 ° C and ISO100)\nAF modes: Single frame, AI Focus, Track AF\n\nAuto-select: all 61 autofocus points (depends on the EOS iTR autofocus setting)', '5be971728d44f1a11', '59af97d3795b75f07', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:54:54', '1', '1', NULL, NULL, NULL, '5d651923af77525e4', 0, 'Global', NULL),
('5be97172a91e6f90b', 0, '100-25600', '5be971728d44f1a11', '59af97fdb6738b14f', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:55:16', '1', '1', NULL, NULL, NULL, '5d651923afcbecf3b', 0, 'Global', NULL),
('5be97172aa4e82c6e', 0, 'Single-point AF (Manual selection)\n\nAuto selection 61-Point AF\n\nSingle-point Spot AF (Manual selection)\n\nAF point expansion (Manual selection, 4 points: Up, down, left, and right)\n\nAF point expansion (Manual selection, surrounding 8 points)\n\nZone AF (Manual zone selection)', '5be971728d44f1a11', '59af97c31b50de66c', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:55:29', '1', '1', NULL, NULL, NULL, '5d651923b008c1455', 1, 'Global', NULL),
('5be97172ac561eab7', 0, 'Exposure information\n\nShutter speed, aperture, ISO speed (always displayed), AE lock, exposure level, exposure warnin', '5be971728d44f1a11', '59af980da501d1de5', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:56:28', '1', '1', NULL, NULL, NULL, '5d651923b045afbbd', 0, 'Global', NULL),
('5be97172ae4b52be8', 0, '-3.0 to +1.0m-1 (diopter)', '5be971728d44f1a11', '59af97cb9253aecee', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:57:02', '1', '1', NULL, NULL, NULL, '5d651923b08423b83', 0, 'Global', NULL),
('5be97172b0a1f5295', 0, 'Canon EF 24-105mm f / 4L IS II USM\nLens mount: EF (except lenses EF-S / EF-M)', '5be971728d44f1a11', '59af97baa662562f5', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:58:34', '1', '1', NULL, NULL, NULL, '5d651923b0cbabb6e', 0, 'Global', NULL),
('5be97172b2ef5ca88', 0, '(1) Evaluative metering (linked to all AF points)\n\n(2) Partial metering (center, approx. 7.2% of viewfinder)\n\n(3) Spot metering (center, approx. 1.5% of viewfinder)\n\n·AF point-linked spot metering not provided.\n\n(4) Center-weighted average metering', '5be971728d44f1a11', '59af98062e3d1cba2', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:58:55', '1', '1', NULL, NULL, NULL, '5d651923b166e3629', 0, 'Global', NULL),
('5be97172b5ab542d2', 0, 'Flash information\n\nFlash ready, flash exposure compensation, high-speed sync, FE lock, red-eye reduction light', '5be971728d44f1a11', '59af9815efd1a780d', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 12:59:07', '1', '1', NULL, NULL, NULL, '5d651923b1eeb150f', 0, 'Global', NULL),
('5be97172b79138783', 0, 'AC power can be supplied with the AC Adapter Kit ACK-E6', '5be971728d44f1a11', '59b8d31e3421a3e70', 'AC power can be supplied with the AC Adapter Kit ACK-E6', 'Wechselstrom kann mit dem AC Adapter-Kit ACK-E6 geliefert werden', NULL, '2018-11-12 12:26:26', '2018-11-12 12:59:38', '1', '1', NULL, NULL, NULL, '5d651923b251596e4', 0, 'Global', NULL),
('5be97172b9665c880', 0, '1920x1080\n\n', '5be971728d44f1a11', '59af97941e37fd6b2', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 13:01:26', '1', '1', NULL, NULL, NULL, '5d651923b64e5f3fd', 0, 'Global', NULL),
('5be97172baf281b2d', 0, 'Canon EOS 5D Mark IV', '5be971728d44f1a11', '59af97877a951c8ce', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 13:01:40', '1', '1', NULL, NULL, NULL, '5d651923b6c7e91bd', 1, 'Global', NULL),
('5be97172bcd154c2c', 0, 'RAW; Jpeg\nCompatible with Exif 2.30 and Design rule for Camera File system 2.0\nDigital Print Format Management Compatibility [DPOF] version 1.1', '5be971728d44f1a11', '59af979e5c1a7cd31', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 13:03:59', '1', '1', NULL, NULL, NULL, '5d651923b96e87b15', 0, 'Global', NULL),
('5be97172beeee623b', 0, '2018-01-13', '5be971728d44f1a11', '59afa1e6473c5052e', NULL, NULL, NULL, '2018-11-12 12:26:26', '2019-08-28 05:42:48', '1', '1', '1', NULL, NULL, '5d651923b9c66df6f', 0, 'Channel', NULL),
('5be97172c01e7090a', 0, 'CMOS', '5be971728d44f1a11', '59b8d28e1fc5ea814', 'CMOS', 'CMOS', NULL, '2018-11-12 12:26:26', '2019-08-28 05:38:22', '1', '1', '1', NULL, NULL, '5d651923ba53ffa31', 1, 'Channel', NULL),
('5be97172c349bd5b0', 0, '3:2 (Horizontal: Vertical)', '5be971728d44f1a11', '59af97a95618763b6', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 13:05:37', '1', '1', NULL, NULL, NULL, '5d651923bb0a0ba06', 0, 'Global', NULL),
('5be97172c58ca2cc5', 0, 'Still Image: JPEG, RAW (14-bit Canon Original), M-RAW, S-RAW, RAW+JPEG, M-RAW+JPEG, S-RAW+JPEG', '5be971728d44f1a11', '59af97b2348a0ec9e', NULL, NULL, NULL, '2018-11-12 12:26:26', '2018-11-12 13:05:59', '1', '1', NULL, NULL, NULL, '5d651923bb7d6ccce', 0, 'Global', NULL);
INSERT INTO `product_attribute_value` (`id`, `deleted`, `value`, `product_id`, `attribute_id`, `value_en_us`, `value_de_de`, `name`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `data`, `product_family_attribute_id`, `is_required`, `scope`, `image_name`) VALUES
('5be97172c76d9ab00', 0, '<p><b>High detail.&nbsp;</b>For completeness, the 30.4-megapixel CMOS image sensor allows you to create images with a high level of detail and low noise even in brightly lit and highly shaded areas of the frame. Thanks to the improved resolution, the camera transmits the smallest details, and you can crop the frame and create perfect pictures without losing image quality.</p><p>Each of the 30 million pixels EOS 5D Mark IV camera consists of two photodiodes that can be used together or separately. This technology allows you to create files in Dual Pixel RAW (DPRAW) format. This file format contains two images taken from two slightly different angles. When processing the footage using Digital Photo Professional software, the user will be able to apply the data contained in the file of the Dual Pixel RAW format to the micro-adjustment of the position of the maximum sharpness zone.</p><p><b>The transfer of the smallest details.&nbsp;</b>The high-resolution image style, “Fine Detail,” which the 5D Mark IV camera is equipped with, is designed to transmit the maximum amount of detail in the image that was received by a 30.4-megapixel sensor. This setting emphasizes tone transitions and high detail.</p><p style=\"margin-bottom: 9.5px;\">The high-resolution image style has three adjustable sharpness settings, similar to the Unsharp Mask filter in Adobe Photoshop and Canon\'s DPP.</p><p style=\"margin-bottom: 9.5px;\"><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Width<br></td><td><span style=\"color: rgb(77, 75, 75); font-family: Arial, Helvetica, FreeSans, &quot;Liberation Sans&quot;, &quot;Nimbus Sans L&quot;, sans-serif; font-size: 16.0016px;\">150.7</span>&nbsp;mm<br></td></tr><tr><td>Depth<br></td><td><span style=\"color: rgb(77, 75, 75); font-family: Arial, Helvetica, FreeSans, &quot;Liberation Sans&quot;, &quot;Nimbus Sans L&quot;, sans-serif; font-size: 16.0016px;\">193.9</span>&nbsp;mm<br></td></tr><tr><td>Height<br></td><td>116.4 mm<br></td></tr><tr><td>Weight (grams)<br></td><td>1595 (with lens)<br></td></tr><tr><td>Guarantee<br></td><td>24 months<br></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Video recording<br></td><td>4K (4096x2160)<br></td></tr><tr><td>Lens mount<br></td><td>EF (except for EF-S / EF-M lenses)<br></td></tr><tr><td>Focusing<br></td><td><ul><li>Type: TTL</li><li>AF Working Range: EV -3 - 18 (at 23 ° C and ISO100)</li><li>AF Modes: Single-shot, AI Focus, Servo AF<br></li></ul></td></tr><tr><td>Proprietary Technologies<br></td><td>Dual Pixel CMOS AF</td></tr><tr><td>Image format<br></td><td><ul><li>RAW; JPEG</li><li>Compatible with Exif 2.30 and Design rule for Camera File system 2.0</li><li>Compatible with digital print management format [DPOF] version 1.1<br></li></ul></td></tr><tr><td>Wi-Fi<br></td><td>Yes</td></tr><tr><td>Memory cards<br></td><td><ul><li>SD/SDHC</li><li>SDXC</li><li>CompactFlash<br></li></ul></td></tr><tr><td>Scope of delivery<br></td><td><ul><li>Camera</li><li>Lens 24-105 L IS II USM</li><li>Battery LP-E6N<br></li><li>Battery Charger LC-E6E<br></li><li>Eyecup Eg<br></li><li>Wide belt<br></li><li>Interface Cable IFC-150U<br></li><li>Cable protector</li><li>EOS Digital Disk</li></ul></td></tr></tbody></table><p style=\"margin-bottom: 9.5px;\">&nbsp;&nbsp;<img src=\"https://i1.adis.ws/i/canon/eos-5d-mark-iv-specifications?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(255,255,255)?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(255,255,255)\" style=\"width: 442px;\"><img src=\"https://i1.adis.ws/i/canon/benefit5-transparent_720x790?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(245,246,246)\" style=\"width: 442px;\"></p><p style=\"margin-bottom: 9.5px;\"><br></p>', '5be971728d44f1a11', '5be548d57b74b3154', '<p><b>High detail.&nbsp;</b>For completeness, the 30.4-megapixel CMOS image sensor allows you to create images with a high level of detail and low noise even in brightly lit and highly shaded areas of the frame. Thanks to the improved resolution, the camera transmits the smallest details, and you can crop the frame and create perfect pictures without losing image quality.</p><p>Each of the 30 million pixels EOS 5D Mark IV camera consists of two photodiodes that can be used together or separately. This technology allows you to create files in Dual Pixel RAW (DPRAW) format. This file format contains two images taken from two slightly different angles. When processing the footage using Digital Photo Professional software, the user will be able to apply the data contained in the file of the Dual Pixel RAW format to the micro-adjustment of the position of the maximum sharpness zone.</p><p><b>The transfer of the smallest details.&nbsp;</b>The high-resolution image style, “Fine Detail,” which the 5D Mark IV camera is equipped with, is designed to transmit the maximum amount of detail in the image that was received by a 30.4-megapixel sensor. This setting emphasizes tone transitions and high detail.</p><p style=\"margin-bottom: 9.5px;\">The high-resolution image style has three adjustable sharpness settings, similar to the Unsharp Mask filter in Adobe Photoshop and Canon\'s DPP.</p><p style=\"margin-bottom: 9.5px;\"><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Width<br></td><td><span style=\"color: rgb(77, 75, 75); font-family: Arial, Helvetica, FreeSans, &quot;Liberation Sans&quot;, &quot;Nimbus Sans L&quot;, sans-serif; font-size: 16.0016px;\">150.7</span>&nbsp;mm<br></td></tr><tr><td>Depth<br></td><td><span style=\"color: rgb(77, 75, 75); font-family: Arial, Helvetica, FreeSans, &quot;Liberation Sans&quot;, &quot;Nimbus Sans L&quot;, sans-serif; font-size: 16.0016px;\">193.9</span>&nbsp;mm<br></td></tr><tr><td>Height<br></td><td>116.4 mm<br></td></tr><tr><td>Weight (grams)<br></td><td>1595 (with lens)<br></td></tr><tr><td>Guarantee<br></td><td>24 months<br></td></tr><tr><td>Color<br></td><td>Black<br></td></tr><tr><td>Video recording<br></td><td>4K (4096x2160)<br></td></tr><tr><td>Lens mount<br></td><td>EF (except for EF-S / EF-M lenses)<br></td></tr><tr><td>Focusing<br></td><td><ul><li>Type: TTL</li><li>AF Working Range: EV -3 - 18 (at 23 ° C and ISO100)</li><li>AF Modes: Single-shot, AI Focus, Servo AF<br></li></ul></td></tr><tr><td>Proprietary Technologies<br></td><td>Dual Pixel CMOS AF</td></tr><tr><td>Image format<br></td><td><ul><li>RAW; JPEG</li><li>Compatible with Exif 2.30 and Design rule for Camera File system 2.0</li><li>Compatible with digital print management format [DPOF] version 1.1<br></li></ul></td></tr><tr><td>Wi-Fi<br></td><td>Yes</td></tr><tr><td>Memory cards<br></td><td><ul><li>SD/SDHC</li><li>SDXC</li><li>CompactFlash<br></li></ul></td></tr><tr><td>Scope of delivery<br></td><td><ul><li>Camera</li><li>Lens 24-105 L IS II USM</li><li>Battery LP-E6N<br></li><li>Battery Charger LC-E6E<br></li><li>Eyecup Eg<br></li><li>Wide belt<br></li><li>Interface Cable IFC-150U<br></li><li>Cable protector</li><li>EOS Digital Disk</li></ul></td></tr></tbody></table><p style=\"margin-bottom: 9.5px;\">&nbsp;&nbsp;<img src=\"https://i1.adis.ws/i/canon/eos-5d-mark-iv-specifications?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(255,255,255)?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(255,255,255)\" style=\"width: 442px;\"><img src=\"https://i1.adis.ws/i/canon/benefit5-transparent_720x790?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(245,246,246)\" style=\"width: 442px;\"></p><p style=\"margin-bottom: 9.5px;\"><br></p>', '<p><b>Hohe detail.&nbsp;</b>Der 30,4-Megapixel-CMOS-Bildsensor ermöglicht es Ihnen, auch in hell erleuchteten und stark schattierten Bereichen des Bildes Bilder mit hoher Detailgenauigkeit und geringem Rauschen zu erzeugen. Dank der verbesserten Auflösung überträgt die Kamera kleinste Details. Sie können den Rahmen beschneiden und perfekte Bilder erstellen, ohne die Bildqualität zu beeinträchtigen.</p><p>Jede der 30 Millionen Pixel EOS 5D Mark IV-Kameras besteht aus zwei Fotodioden, die zusammen oder getrennt verwendet werden können. Mit dieser Technologie können Sie Dateien im Dual-Pixel-RAW-Format (DPRAW) erstellen. Dieses Dateiformat enthält zwei Bilder, die aus zwei verschiedenen Blickwinkeln aufgenommen wurden. Bei der Verarbeitung des Filmmaterials mit der Software Digital Photo Professional kann der Benutzer die in der Datei des Dual Pixel RAW-Formats enthaltenen Daten auf die Mikroeinstellung der Position der maximalen Schärfezone anwenden.</p><p><b>Die Übertragung kleinster Details.&nbsp;</b>Der hochauflösende Bildstil „Fine Detail“, mit dem die 5D Mark IV-Kamera ausgestattet ist, überträgt die maximale Detailmenge in dem Bild, das von einem 30,4-Megapixel-Sensor empfangen wurde. Diese Einstellung betont Tonübergänge und hohe Details.</p><p style=\"margin-bottom: 0px;\">Der hochauflösende Bildstil verfügt über drei einstellbare Schärfeeinstellungen, ähnlich wie der Filter Unscharfmaskierung in Adobe Photoshop und Canon DPP.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span></p><table class=\"table table-bordered\" style=\"width: 1071px;\"><tbody><tr><td>Breite<br></td><td><span style=\"color: rgb(77, 75, 75); font-family: Arial, Helvetica, FreeSans, &quot;Liberation Sans&quot;, &quot;Nimbus Sans L&quot;, sans-serif; font-size: 16.0016px;\">150.7</span>&nbsp;mm<br></td></tr><tr><td>Tiefe<br></td><td><span style=\"color: rgb(77, 75, 75); font-family: Arial, Helvetica, FreeSans, &quot;Liberation Sans&quot;, &quot;Nimbus Sans L&quot;, sans-serif; font-size: 16.0016px;\">193.9</span>&nbsp;mm<br></td></tr><tr><td>Höhe<br></td><td>116.4 mm<br></td></tr><tr><td>Gewicht (Gramm)<br></td><td>1595&nbsp;(mit Linse)<br></td></tr><tr><td>Garantie<br></td><td>24 Monate<br></td></tr><tr><td>Farbe<br></td><td>Schwarz<br></td></tr><tr><td>Videoaufnahme<br></td><td>4K (4096x2160)<br></td></tr><tr><td>Objektivfassung<br></td><td>EF (außer EF-S / EF-M-Objektiven)<br></td></tr><tr><td>Fokussierung<br></td><td><ul><li></li><li>Typ: TTL</li><li>AF-Arbeitsbereich: EV -3 - 18 (bei 23 ° C und ISO100)</li><li>AF-Modi: Einzelbild, AI-Fokus, Servo-AF</li></ul></td></tr><tr><td>Proprietäre Technologien<br></td><td>Dual Pixel CMOS AF</td></tr><tr><td>Bildformat<br></td><td><ul><li></li><li>JPEG</li><li>Kompatibel mit Exif 2.30 und Designregel für das Kamera-Dateisystem 2.0</li><li>Kompatibel mit dem Digital Print Management-Format [DPOF] Version 1.1</li></ul></td></tr><tr><td>Wi-Fi<br></td><td>Ja</td></tr><tr><td>Speicherkarten<br></td><td><ul><li>SD/SDHC</li><li>SDXC</li><li>CompactFlash<br></li></ul></td></tr><tr><td>Lieferumfang<br></td><td><ul><li></li><li>Kamera</li><li>Linse 24-105 L IS II USM</li><li>Batterie LP-E6N</li><li>Akkuladegerät LC-E6E</li><li>Augenmuschel zB</li><li>Breiter Gürtel</li><li>Schnittstellenkabel IFC-150U</li><li>Kabelschutz</li><li>EOS Digital Disk</li></ul></td></tr></tbody></table><p style=\"margin-bottom: 9.5px;\">&nbsp;&nbsp;<img src=\"https://i1.adis.ws/i/canon/eos-5d-mark-iv-specifications?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(255,255,255)?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(255,255,255)\" style=\"width: 442px;\"><img src=\"https://i1.adis.ws/i/canon/benefit5-transparent_720x790?fmt=jpg&amp;fmt.options=interlaced&amp;bg=rgb(245,246,246)\" style=\"width: 442px;\"></p><p style=\"margin-bottom: 9.5px;\"><br></p>', NULL, '2018-11-12 12:26:26', '2019-08-28 19:02:18', '1', '1', '1', '1', NULL, '5d651923bc05bc7f7', 1, 'Global', NULL),
('5be989d59e3f58a95', 0, 'xCase на iPhone X Silicone Case', '5be98924b15087ff5', '59af97877a951c8ce', NULL, NULL, NULL, '2018-11-12 14:10:29', '2019-08-27 12:48:15', '1', '1', '1', NULL, NULL, '5d651923d8e8929e9', 1, 'Channel', NULL),
('5be989e56bd0d766a', 0, 'Thermo-polyurethane\n\n', '5be98924b15087ff5', '59fb1561962e5d354', NULL, NULL, NULL, '2018-11-12 14:10:45', '2018-11-12 14:13:49', '1', '1', NULL, NULL, NULL, '5d651923d8b78af22', 1, 'Global', NULL),
('5be989e8676eff061', 0, '<p><b>Case cover for the iPhone X Silicone Case sky blue</b>&nbsp;is a fairly good replica of the cover that is available from Apple. This model will allow you to save money considerably, while you will not have enough time. Fully repeating the design and materials of the original, the presented case is made on the basis of silicone, which has a pleasant to the touch surface of heavenly blue. On the inside, there is also a microfiber pad, which will prevent possible scratches, scratches and other traces of wearing this accessory. The case is so simple and perfectly suited to your iPhone 4. The screen is also protected by a small protrusion from the front. Case cover for the iPhone X Silicone Case sky blue is not only a reliable protection against falls and strokes, but also a stylish add-on to your smartphone.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\"><tbody><tr><td>Form factor<br></td><td>Panel<br></td></tr><tr><td>Material<br></td><td>Thermo-polyurethane<br></td></tr><tr><td>Color<br></td><td>Light blue<br></td></tr><tr><td>Specifics<br></td><td>Offensive<br></td></tr><tr><td>Guarantee<br></td><td>14 days<br></td></tr></tbody></table><p><img src=\"https://screen.treotest.com/i.rybachok/2019-08-28_16-40-16.jpg\" style=\"width: 442px;\"><br></p>', '5be98924b15087ff5', '5be548d57b74b3154', '<p><b>Case cover for the iPhone X Silicone Case sky blue</b>&nbsp;is a fairly good replica of the cover that is available from Apple. This model will allow you to save money considerably, while you will not have enough time. Fully repeating the design and materials of the original, the presented case is made on the basis of silicone, which has a pleasant to the touch surface of heavenly blue. On the inside, there is also a microfiber pad, which will prevent possible scratches, scratches and other traces of wearing this accessory. The case is so simple and perfectly suited to your iPhone 4. The screen is also protected by a small protrusion from the front. Case cover for the iPhone X Silicone Case sky blue is not only a reliable protection against falls and strokes, but also a stylish add-on to your smartphone.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\"><tbody><tr><td>Form factor<br></td><td>Panel<br></td></tr><tr><td>Material<br></td><td>Thermo-polyurethane<br></td></tr><tr><td>Color<br></td><td>Light blue<br></td></tr><tr><td>Specifics<br></td><td>Offensive<br></td></tr><tr><td>Guarantee<br></td><td>14 days<br></td></tr></tbody></table><p><img src=\"https://screen.treotest.com/i.rybachok/2019-08-28_16-40-16.jpg\" style=\"width: 442px;\"><br></p>', '<p>Schutzhülle für das&nbsp;<b>iPhone X Silikonhülle Sky Blue</b>&nbsp;ist eine recht gute Nachbildung des von Apple erhältlichen Schutzdeckels. Mit diesem Modell können Sie erheblich Geld sparen, während Sie nicht genügend Zeit haben. Design und Materialien des Originals werden vollständig wiederholt. Das vorgestellte Gehäuse wurde auf der Basis von Silikon hergestellt, das eine angenehm haptische Oberfläche von himmlischem Blau aufweist. Auf der Innenseite befindet sich auch ein Mikrofaserpad, das mögliche Kratzer, Kratzer und andere Tragespuren dieses Zubehörs verhindert. Die Hülle ist so einfach und perfekt für Ihr iPhone 4 geeignet. Der Bildschirm ist außerdem durch einen kleinen Vorsprung von vorne geschützt. Schutzhülle für das iPhone X Silikonhülle Sky Blue ist nicht nur ein zuverlässiger Schutz vor Stürzen und Schlaganfällen, sondern auch ein stylisches Add-On für Ihr Smartphone.<br></p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span><br></p><table class=\"table table-bordered\"><tbody><tr><td>Formfaktor<br></td><td>Panel<br></td></tr><tr><td>Material<br></td><td>Thermo-Polyurethan<br></td></tr><tr><td>Farbe<br></td><td>Hellblau<br></td></tr><tr><td>Besonderheiten<br></td><td>Beleidigend<br></td></tr><tr><td>Garantie<br></td><td>14 Tage<br></td></tr></tbody></table><p><img src=\"https://screen.treotest.com/i.rybachok/2019-08-28_16-40-16.jpg\" style=\"width: 442px;\"><br></p>', NULL, '2018-11-12 14:10:48', '2019-08-28 13:41:59', '1', '1', '1', '1', NULL, '5d651923d879f91ad', 1, 'Global', NULL),
('5d651922aa0d52b9a', 0, 'JPEG: accurate, standard (Exif 2.30)\nRAW: 14-bit, original Canon RAW, version 2, compatible with DPOF1.1', '5a9e93d0e1e4fd1b9', '59af97b2348a0ec9e', NULL, NULL, NULL, '2019-08-27 11:50:58', NULL, 'system', NULL, NULL, NULL, NULL, NULL, 0, 'Channel', NULL),
('5d651cc616b38610b', 0, 'A11 Bionic chip with Neural Engine', '59fb0aa27855b0afd', '59fb0ccd333d23a8c', NULL, NULL, NULL, '2019-08-27 12:06:30', '2019-10-18 08:25:46', '1', '1', '1', '1', NULL, '5d651cc60e7b8af84', 0, 'Global', NULL),
('5d651cc618c5e72d2', 0, 'A11 Bionic chip with Neural Engine', '59fb0e05a0c46a91a', '59fb0ccd333d23a8c', NULL, NULL, NULL, '2019-08-27 12:06:30', '2019-10-18 08:26:00', '1', '1', '1', '1', NULL, '5d651cc60e7b8af84', 0, 'Global', NULL),
('5d651d0e5e30e1c97', 0, 'A11 Bionic chip with Neural Engine', '59fb0aa27855b0afd', '59fb0ccd333d23a8c', NULL, NULL, NULL, '2019-08-27 12:07:42', '2019-10-18 08:25:46', '1', '1', '1', '1', NULL, '5d651d0e570a46f14', 1, 'Channel', NULL),
('5d651d0e60b541a29', 0, 'A11 Bionic chip with Neural Engine', '59fb0e05a0c46a91a', '59fb0ccd333d23a8c', NULL, NULL, NULL, '2019-08-27 12:07:42', '2019-10-18 08:26:00', '1', '1', '1', '1', NULL, '5d651d0e570a46f14', 1, 'Channel', NULL),
('5d651f0913a9e9406', 0, 'iPhone X', '59fb0aa27855b0afd', '59af97877a951c8ce', NULL, NULL, NULL, '2019-08-27 12:16:09', '2019-08-27 12:16:58', '1', '1', '1', '1', NULL, '5d651f090d26456ff', 1, 'Global', NULL),
('5d651f0914c4ceea0', 0, 'iPhone X', '59fb0e05a0c46a91a', '59af97877a951c8ce', NULL, NULL, NULL, '2019-08-27 12:16:09', '2019-08-27 12:19:09', '1', '1', '1', '1', NULL, '5d651f090d26456ff', 1, 'Global', NULL),
('5d652667363e71a1a', 0, 'Silikon', '59fb152fe4a37088e', '59fb1561962e5d354', NULL, NULL, NULL, '2019-08-27 12:47:35', '2019-08-27 12:51:03', '1', '1', '1', '1', NULL, '5d652667305b6f9d5', 0, 'Channel', NULL),
('5d6526673937c7872', 0, 'Thermo-Polyurethan', '5be98924b15087ff5', '59fb1561962e5d354', NULL, NULL, NULL, '2019-08-27 12:47:35', '2019-08-27 13:20:53', '1', '1', '1', '1', NULL, '5d652667305b6f9d5', 0, 'Channel', NULL),
('5d65266f8dd8de78e', 0, 'Silicone', '59fb152fe4a37088e', '59fb1561962e5d354', NULL, NULL, NULL, '2019-08-27 12:47:43', '2019-08-27 12:48:38', '1', '1', '1', '1', NULL, '5d65266f8576ac592', 0, 'Channel', NULL),
('5d65266f90a20f625', 0, 'Thermo-polyurethane', '5be98924b15087ff5', '59fb1561962e5d354', NULL, NULL, NULL, '2019-08-27 12:47:43', '2019-08-27 13:20:33', '1', '1', '1', '1', NULL, '5d65266f8576ac592', 0, 'Channel', NULL),
('5d652fbd244b99656', 0, NULL, '5ac229e0da6a4b297', '59af95ec43c8ba01b', NULL, NULL, NULL, '2019-08-27 13:27:25', '2019-08-27 13:27:25', '1', NULL, '1', '1', NULL, '59afa08156fc51a3b', 0, 'Channel', NULL),
('5d652fd1bff40cfc7', 0, NULL, '5ac229e0da6a4b297', '5ccacdf261f84e415', NULL, NULL, NULL, '2019-08-27 13:27:45', '2019-08-27 13:27:45', '1', NULL, '1', '1', NULL, '5d652fd1ba448bb82', 0, 'Channel', NULL),
('5d6612d8016499122', 0, 'MILC Body', '59a91396e7971debe', '59af9653e337b5aed', NULL, NULL, NULL, '2019-08-28 05:36:23', '2019-08-28 05:45:41', '1', '1', '1', '1', NULL, '5d6612d7ec35e2d76', 0, 'Channel', NULL),
('5d6612d8073e43d93', 0, 'SLR Kit', '5a9e93d0e1e4fd1b9', '59af9653e337b5aed', NULL, NULL, NULL, '2019-08-28 05:36:24', '2019-08-28 05:43:39', '1', '1', '1', '1', NULL, '5d6612d7ec35e2d76', 0, 'Channel', NULL),
('5d6612d8099103af2', 0, 'Bridge', '5be971728d44f1a11', '59af9653e337b5aed', NULL, NULL, NULL, '2019-08-28 05:36:24', '2019-08-28 05:49:05', '1', '1', '1', '1', NULL, '5d6612d7ec35e2d76', 0, 'Channel', NULL),
('5d6612dd0de47086e', 0, 'Compact', '59a91396e7971debe', '59af9653e337b5aed', NULL, NULL, NULL, '2019-08-28 05:36:29', '2019-08-28 05:45:36', '1', '1', '1', '1', NULL, '5d6612dd0539b0af4', 0, 'Global', NULL),
('5d6612dd12bd7586a', 0, 'MILC Body', '5a9e93d0e1e4fd1b9', '59af9653e337b5aed', NULL, NULL, NULL, '2019-08-28 05:36:29', '2019-08-28 05:43:33', '1', '1', '1', '1', NULL, '5d6612dd0539b0af4', 0, 'Global', NULL),
('5d6612dd14cd6d9ad', 0, 'SLR Kit', '5be971728d44f1a11', '59af9653e337b5aed', NULL, NULL, NULL, '2019-08-28 05:36:29', '2019-08-28 05:49:00', '1', '1', '1', '1', NULL, '5d6612dd0539b0af4', 0, 'Global', NULL),
('5d66143a6fc18ae74', 0, 'CCD', '59a91396e7971debe', '59b8d28e1fc5ea814', 'CCD', 'CCD', NULL, '2019-08-28 05:42:18', '2019-08-28 05:45:52', '1', '1', '1', '1', NULL, '5d66143a6739c8ebc', 0, 'Channel', NULL),
('5d66143a74f0df2c6', 0, 'CCD', '5a9e93d0e1e4fd1b9', '59b8d28e1fc5ea814', 'CCD', 'CCD', NULL, '2019-08-28 05:42:18', '2019-08-28 05:44:07', '1', '1', '1', '1', NULL, '5d66143a6739c8ebc', 0, 'Channel', NULL),
('5d66143a790b4cdb1', 0, 'CCD', '5be971728d44f1a11', '59b8d28e1fc5ea814', 'CCD', 'CCD', NULL, '2019-08-28 05:42:18', '2019-08-28 05:49:13', '1', '1', '1', '1', NULL, '5d66143a6739c8ebc', 0, 'Channel', NULL),
('5d66146af27036e2a', 0, '2012-02-29', '59a91396e7971debe', '59afa1e6473c5052e', NULL, NULL, NULL, '2019-08-28 05:43:06', '2019-08-28 05:46:37', '1', '1', '1', '1', NULL, '5d66146aea2d2b8de', 0, 'Channel', NULL),
('5d66146b034f7a3d2', 0, '2011-12-29', '5a9e93d0e1e4fd1b9', '59afa1e6473c5052e', NULL, NULL, NULL, '2019-08-28 05:43:07', '2019-08-28 05:45:05', '1', '1', '1', '1', NULL, '5d66146aea2d2b8de', 0, 'Channel', NULL),
('5d66146b060541445', 0, '2017-12-30', '5be971728d44f1a11', '59afa1e6473c5052e', NULL, NULL, NULL, '2019-08-28 05:43:07', '2019-08-28 05:49:50', '1', '1', '1', '1', NULL, '5d66146aea2d2b8de', 0, 'Channel', NULL),
('5d66147044a8cc540', 0, '2012-04-13', '59a91396e7971debe', '59afa1e6473c5052e', NULL, NULL, NULL, '2019-08-28 05:43:12', '2019-08-28 05:46:24', '1', '1', '1', '1', NULL, '5d6614703ca778ba8', 1, 'Global', NULL),
('5d66147049b5e4623', 0, '2012-01-13', '5a9e93d0e1e4fd1b9', '59afa1e6473c5052e', NULL, NULL, NULL, '2019-08-28 05:43:12', '2019-08-28 05:44:53', '1', '1', '1', '1', NULL, '5d6614703ca778ba8', 1, 'Global', NULL),
('5d6614704b712c39c', 0, '2018-01-31', '5be971728d44f1a11', '59afa1e6473c5052e', NULL, NULL, NULL, '2019-08-28 05:43:12', '2019-08-28 05:49:35', '1', '1', '1', '1', NULL, '5d6614703ca778ba8', 1, 'Global', NULL),
('5da0645f922e61af3', 0, 'Silver', '59fb0aa27855b0afd', '59af9a2b5860a9910', 'Silver', 'Silber', NULL, '2019-10-11 11:15:43', '2019-10-11 11:18:38', '1', '1', '1', '1', NULL, '5da0645f8a9c5ea9a', 1, 'Channel', NULL),
('5da0645f944274a7a', 0, 'Space Gray', '59fb0e05a0c46a91a', '59af9a2b5860a9910', 'Space Gray', 'Leerraumgrau', NULL, '2019-10-11 11:15:43', '2019-10-11 11:19:22', '1', '1', '1', '1', NULL, '5da0645f8a9c5ea9a', 1, 'Channel', NULL),
('5da064f6ddd2e6dbe', 0, '[\"White\",\"Red\",\"Yellow\",\"Black\",\"Dark Green\"]', '59fb152fe4a37088e', '5da06321d29c43dc2', '[\"White\",\"Red\",\"Yellow\",\"Black\",\"Dark Green\"]', '[\"Wei\\u00df\",\"Rot\",\"Gelb\",\"Schwarz\",\"Dunkelgr\\u00fcn\"]', NULL, '2019-10-11 11:18:14', '2019-10-11 11:21:23', '1', '1', '1', '1', NULL, '5da064f6d9de31ab4', 0, 'Global', NULL),
('5da064f6de422c863', 0, '[\"Light Blue\"]', '5be98924b15087ff5', '5da06321d29c43dc2', '[\"Light Blue\"]', '[\"Hellblau\"]', NULL, '2019-10-11 11:18:14', '2019-10-11 11:23:46', '1', '1', '1', '1', NULL, '5da064f6d9de31ab4', 0, 'Global', NULL),
('5da065f2df74ed7c6', 0, 'Grey', '59a90c862458bd976', '59af9a2b5860a9910', 'Grey', 'Grau', NULL, '2019-10-11 11:22:26', '2019-10-11 11:23:08', '1', '1', '1', '1', NULL, '5da065f2d9df5b89e', 0, 'Global', NULL),
('5da065f2dfd656aed', 0, 'Black', '59fad6841f243119b', '59af9a2b5860a9910', 'Black', 'Schwarz', NULL, '2019-10-11 11:22:26', '2019-10-11 11:22:42', '1', '1', '1', '1', NULL, '5da065f2d9df5b89e', 0, 'Global', NULL),
('5da065f2e01823d72', 0, 'Black', '5b8649f0dae076eb0', '59af9a2b5860a9910', 'Black', 'Schwarz', NULL, '2019-10-11 11:22:26', '2019-10-11 11:23:19', '1', '1', '1', '1', NULL, '5da065f2d9df5b89e', 0, 'Global', NULL),
('5da065f2e0577460e', 0, NULL, '59fae2913019a9cdf', '59af9a2b5860a9910', NULL, NULL, NULL, '2019-10-11 11:22:26', '2019-10-11 11:22:26', '1', NULL, '1', '1', NULL, '5da065f2d9df5b89e', 0, 'Global', NULL),
('5da954642eaee6457', 0, '194', '5da95464266aa342e', '5ccbe2234e379b94d', '', '', NULL, '2019-10-18 05:57:56', '2019-10-18 06:45:11', '1', '1', '1', '1', '{\"unit\":\"g\"}', '5d651923d7d9c2be0', 1, 'Channel', NULL),
('5da95464303d2c7f1', 0, '1', '5da95464266aa342e', '5ccacdf261f84e415', '', '', NULL, '2019-10-18 05:57:56', '2019-10-18 05:57:56', '1', '1', '5b6807ebe42c89d66', '5bbaf1daea9ee8a6b', '{\"unit\":\"year\"}', '5d651923d6c037a84', 0, 'Global', NULL),
('5da9546430d55d6e0', 0, 'iPhone 11', '5da95464266aa342e', '59af97877a951c8ce', NULL, NULL, NULL, '2019-10-18 05:57:56', '2019-10-18 06:45:11', '1', '1', '1', '1', NULL, '5d651923d5c2216a5', 1, 'Channel', NULL),
('5da954643279ce82b', 0, '1', '5da95464266aa342e', '59fb0c6e61011344a', NULL, NULL, NULL, '2019-10-18 05:57:56', '2019-10-18 05:58:27', '1', '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66', NULL, '5d651923d5643b754', 0, 'Global', NULL),
('5da9546432cd85f69', 0, '6.1', '5da95464266aa342e', '5ccac8c86f70fdfca', '', '', NULL, '2019-10-18 05:57:56', '2019-10-18 08:47:26', '1', '1', '1', '1', '{\"unit\":\"inch\"}', '5d651923d6841b1ee', 0, 'Global', NULL),
('5da954643314b4c8f', 0, '<p><b>All‑new dual‑camera system.&nbsp;</b>Take your photos from wide to ultra wide. A redesigned interface uses the new Ultra Wide camera to show you what’s happening outside the frame — and lets you capture it. Shoot and edit videos as easily as you do photos. It’s the world’s most popular camera, now with a whole new perspective.</p><p><b>Introducing Night mode.</b>&nbsp;Shooting in low light doesn’t have to be a shot in the dark. Night mode is a new feature that turns on automatically for low‑light photos like you’ve never seen. There’s no need for flash, colors are more natural, and photos are brighter.</p><p><b>All-day battery life.</b>&nbsp;Hardware and software work together to get the most out of your battery. And thanks to fast‑charge capability, you can recharge in less time.</p><p><b>Both iPhone 11 and iPhone 11 Pro have the fastest chip ever in a smartphone.</b>&nbsp;A13 Bionic is so powerful, everything you do is fast and fluid. It also works in the most power‑efficient way possible, so your battery lasts longer. In fact, A13 Bionic is so advanced, it’s years ahead of the pack.</p><p style=\"margin-bottom: 0px;\"><b>The most secure facial authentication in a smartphone.</b>&nbsp;Face ID lets you unlock your iPhone instantly, and it’s even more secure than Touch ID. With just a glance you can sign in to apps, access accounts, and pay with Apple Pay. And setting it up is quick and simple.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\"><tbody><tr><td>Size and Weight<br></td><td><ul><li><span style=\"display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><b>Height&nbsp;</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">5.94&nbsp;inches (150.9&nbsp;mm)</span></span></li><li><span style=\"display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><b>Width&nbsp;</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">2.98 inches (75.7&nbsp;mm)</span></span></li><li><span style=\"display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><b>Depth&nbsp;</b><span style=\"letter-spacing: -0.374px;\">0.33 inch (8.3&nbsp;mm)</span></span><div role=\"cell gridcell\" class=\"compare-column compare-column-two\" data-content=\"iphoneX\" style=\"float: left; margin-left: 29.3906px; -webkit-box-ordinal-group: 3; order: 2; width: 305.75px; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><p style=\"margin-bottom: 0px; padding: 0px;\"></p></div></li><li><span style=\"font-weight: 600; display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><span style=\"display: block; letter-spacing: -0.374px;\">Weight&nbsp;<span style=\"font-weight: 400; letter-spacing: -0.374px;\">6.84 ounces (194&nbsp;grams)</span></span></span></li></ul></td></tr><tr><td>Display<br></td><td><ul><li>Liquid Retina HD display<br></li><li>6.1-inch (diagonal) all-screen LCD Multi‑Touch display with IPS technology1</li><li>1792-by-828-pixel resolution at 326 ppi</li><li>True Tone display</li><li>Haptic Touch<br></li></ul></td></tr><tr><td>Splash, Water, and Dust Resistant<br></td><td><div>Rated IP68 (maximum depth of 2 meters up to 30 minutes) under IEC standard 60529<br></div></td></tr><tr><td>Chip<br></td><td><ul><li>A13 Bionic chip</li><li>Third-generation Neural Engine</li></ul></td></tr><tr><td>Operating System<br></td><td>iOS<br></td></tr><tr><td>Front camera<br></td><td>&nbsp;12MP photos&nbsp;<br></td></tr><tr><td>Main camera<br></td><td>Dual 12MP Ultra Wide and Wide cameras</td></tr><tr><td>Power and Battery<br></td><td><p>Lasts up to 1 hour longer than iPhone XR; </p><p>Video playback: Up to 17 hours; Video playback (streamed): Up to 10 hours; </p><p>Audio playback: Up to 65 hours; </p><p>Fast-charge capable: Up to 50% charge in 30 minute with 18W adapter or higher (sold separately)<br></p></td></tr><tr><td>Wireless technology<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Secure Authentication<br></td><td>Touch ID<br>Enabled by TrueDepth camera for facial recognition<br></td></tr><tr><td>Supply kit<br></td><td><ul><li>Phone</li><li>Headset</li><li>Cable for synchronization</li><li>Charger</li><li>Documentation</li><li>Guarantee voucher</li></ul></td></tr></tbody></table><div><img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-23-28.jpg\" style=\"width: 360px;\">&nbsp;<img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-21-51.jpg\" style=\"width: 185px;\"><img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-22-57.jpg\" style=\"width: 225px;\"><b><span style=\"font-size: 18px;\"><br></span></b></div>', '5da95464266aa342e', '5be548d57b74b3154', '<p><b>All‑new dual‑camera system.&nbsp;</b>Take your photos from wide to ultra wide. A redesigned interface uses the new Ultra Wide camera to show you what’s happening outside the frame — and lets you capture it. Shoot and edit videos as easily as you do photos. It’s the world’s most popular camera, now with a whole new perspective.</p><p><b>Introducing Night mode.</b>&nbsp;Shooting in low light doesn’t have to be a shot in the dark. Night mode is a new feature that turns on automatically for low‑light photos like you’ve never seen. There’s no need for flash, colors are more natural, and photos are brighter.</p><p><b>All-day battery life.</b>&nbsp;Hardware and software work together to get the most out of your battery. And thanks to fast‑charge capability, you can recharge in less time.</p><p><b>Both iPhone 11 and iPhone 11 Pro have the fastest chip ever in a smartphone.</b>&nbsp;A13 Bionic is so powerful, everything you do is fast and fluid. It also works in the most power‑efficient way possible, so your battery lasts longer. In fact, A13 Bionic is so advanced, it’s years ahead of the pack.</p><p style=\"margin-bottom: 0px;\"><b>The most secure facial authentication in a smartphone.</b>&nbsp;Face ID lets you unlock your iPhone instantly, and it’s even more secure than Touch ID. With just a glance you can sign in to apps, access accounts, and pay with Apple Pay. And setting it up is quick and simple.</p><p><b><span style=\"font-size: 18px;\">All characteristics</span></b></p><table class=\"table table-bordered\"><tbody><tr><td>Size and Weight<br></td><td><ul><li><span style=\"display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><b>Height&nbsp;</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">5.94&nbsp;inches (150.9&nbsp;mm)</span></span></li><li><span style=\"display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><b>Width&nbsp;</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">2.98 inches (75.7&nbsp;mm)</span></span></li><li><span style=\"display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><b>Depth&nbsp;</b><span style=\"letter-spacing: -0.374px;\">0.33 inch (8.3&nbsp;mm)</span></span><div role=\"cell gridcell\" class=\"compare-column compare-column-two\" data-content=\"iphoneX\" style=\"float: left; margin-left: 29.3906px; -webkit-box-ordinal-group: 3; order: 2; width: 305.75px; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><p style=\"margin-bottom: 0px; padding: 0px;\"></p></div></li><li><span style=\"font-weight: 600; display: block; color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><span style=\"display: block; letter-spacing: -0.374px;\">Weight&nbsp;<span style=\"font-weight: 400; letter-spacing: -0.374px;\">6.84 ounces (194&nbsp;grams)</span></span></span></li></ul></td></tr><tr><td>Display<br></td><td><ul><li>Liquid Retina HD display<br></li><li>6.1-inch (diagonal) all-screen LCD Multi‑Touch display with IPS technology1</li><li>1792-by-828-pixel resolution at 326 ppi</li><li>True Tone display</li><li>Haptic Touch<br></li></ul></td></tr><tr><td>Splash, Water, and Dust Resistant<br></td><td><div>Rated IP68 (maximum depth of 2 meters up to 30 minutes) under IEC standard 60529<br></div></td></tr><tr><td>Chip<br></td><td><ul><li>A13 Bionic chip</li><li>Third-generation Neural Engine</li></ul></td></tr><tr><td>Operating System<br></td><td>iOS<br></td></tr><tr><td>Front camera<br></td><td>&nbsp;7MP TrueDepth camera<br></td></tr><tr><td>Main camera<br></td><td>Dual 12MP Ultra Wide and Wide cameras</td></tr><tr><td>Power and Battery<br></td><td><p>Lasts up to 1 hour longer than iPhone XR; </p><p>Video playback: Up to 17 hours; Video playback (streamed): Up to 10 hours; </p><p>Audio playback: Up to 65 hours; </p><p>Fast-charge capable: Up to 50% charge in 30 minute with 18W adapter or higher (sold separately)<br></p></td></tr><tr><td>Wireless technology<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr><tr><td>Supply kit<br></td><td><ul><li>Phone</li><li>Headset</li><li>Cable for synchronization</li><li>Charger</li><li>Documentation</li><li>Guarantee voucher</li><li>Lightning adapter - 3.5 mm mini jack<br></li></ul></td></tr><tr><td>Guarantee<br></td><td>12 months of offici</td></tr></tbody></table><div><img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-23-28.jpg\" style=\"width: 360px;\">&nbsp;<img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-21-51.jpg\" style=\"width: 185px;\"><img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-22-57.jpg\" style=\"width: 225px;\"><b><span style=\"font-size: 18px;\"><br></span></b></div>', '<p><b>Völlig neues Zwei‑Kamera‑System.&nbsp;</b>Deine Weitwinkelfotos werden jetzt ultraweit. Eine überarbeitete Oberfläche zeigt dir dank neuer Ultraweitwinkel-Kamera, was außerhalb des Bild­ausschnitts passiert – und lässt es dich aufnehmen. Videos kannst du jetzt genauso einfach machen und bearbeiten wie Fotos. Die beliebteste Kamera der Welt, jetzt mit einer ganz neuen Perspektive.</p><p><b>Der neue Nachtmodus.</b>&nbsp;Es gibt keinen Grund mehr, sich vor der Dunkelheit zu fürchten. Der Nacht­modus ist ein neues Feature, das automatisch aktiviert wird, damit du bei wenig Licht Fotos machen kannst wie nie zuvor. Du brauchst keinen Blitz, die Farben sind natürlicher und die Fotos heller.</p><p><b>Batterie für den ganzen Tag.</b>&nbsp;Hardware und Software arbeiten zusammen, um deine Batterie optimal zu nutzen. Und dank Schnelllade­n ist dein iPhone schneller wieder einsatzbereit.</p><p><b>iPhone 11 und iPhone 11 Pro haben beide den schnellsten Smartphone Chip aller Zeiten.</b>&nbsp;Der A13 Bionic ist so leistungss­tark, dass alles schnell und flüssig läuft. Und er arbeitet so effizient wie möglich, damit deine Batterie länger hält. Tatsächlich ist der A13 Bionic so hoch­entwickelt, dass er anderen um Jahre voraus ist.</p><p style=\"margin-bottom: 0px;\"><b>Die sicherste Gesichts­erkennung in einem Smartphone.</b>&nbsp;Mit Face ID entsperrst du dein iPhone sofort und es ist sogar noch sicherer als Touch ID. Mit einem Blick kannst du dich bei Apps anmelden, in Accounts einloggen und mit Apple Pay bezahlen. Und du kannst es schnell und einfach einrichten.</p><p><span style=\"font-size: 18px;\"><b>Alle Eigenschaften</b></span></p><table class=\"table table-bordered\"><tbody><tr><td>Abmessungen und Gewicht</td><td><ul><li><b>Höhe </b>150,9 mm</li><li><b>Breite </b>75,7 mm</li><li><b>Tiefe </b>8,3 mm</li><li><b>Gewicht </b>194 g<br></li></ul></td></tr><tr><td>Anzeige<br></td><td><ul><li>Liquid Retina HD Display<br></li><li>6,1\" All‑Screen LCD Multi-Touch Display (15,5 cm Diagonale) mit IPS Technologie</li><li><span style=\"color: rgb(51, 51, 51); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\">1792&nbsp;x&nbsp;828 Pixel bei 326&nbsp;ppi</span><br></li><li>True Tone Display</li><li>Haptic Touch<br></li></ul></td></tr><tr><td>Schutz vor Wasser und Staub<br></td><td><div>Nach IEC Norm 60529 unter IP68 klassifiziert (bis zu 30 Minuten und in einer Tiefe von bis zu 2 Metern)<br></div></td></tr><tr><td>Chip</td><td><ul><li></li><li>A13 Bionic Chip</li><li>Neural Engine der 3. Generation</li></ul></td></tr><tr><td>Betriebssystem</td><td>iOS<br></td></tr><tr><td>Vordere Kamera<br></td><td>&nbsp;12&nbsp;Megapixel Fotos TrueDepth Kamera<br></td></tr><tr><td>Hauptkamera<br></td><td>12 Megapixel Zweifach-Kamera mit Ultraweitwinkel‑ und Weitwinkel­objektiv</td></tr><tr><td>Strom­versorgung und Batterie<br></td><td><p>Hält bis zu 1 Stunde länger als beim iPhone XR</p><p>Video­wiedergabe (drahtlos): Bis zu 17 Std.</p><p>Audio­wiedergabe (drahtlos): Bis zu 65 Std.</p><p>Schnelles Aufladen<br></p></td></tr><tr><td>Sichere Authentifizierung<br></td><td>Face ID<br>Ermöglicht durch die TrueDepth Kamera für Gesichts­erkennung<br></td></tr><tr><td>Kabellose Technologie<br></td><td><ul><li>Wi-Fi</li><li>NFC</li><li>Bluetooth 5.0</li></ul></td></tr></tbody></table><div><b><span style=\"font-size: 18px;\"><br></span></b></div><div><img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-23-28.jpg\" style=\"width: 360px;\">&nbsp;<img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-21-51.jpg\" style=\"width: 185px;\"><img src=\"https://screen.treotest.com/i.rybachok/2019-10-18_10-22-57.jpg\" style=\"width: 225px;\"><b><span style=\"font-size: 18px;\"><br></span></b></div>', NULL, '2019-10-18 05:57:56', '2019-12-10 14:06:30', '1', '1', '1', '1', NULL, '5d651923d64e875b0', 1, 'Global', NULL),
('5da9546433723e14d', 0, '150.9', '5da95464266aa342e', '5ccae1b3e6f8a4e69', '', '', NULL, '2019-10-18 05:57:56', '2019-10-18 06:45:11', '1', '1', '1', '1', '{\"unit\":\"mm\"}', '5d651923d7235aa14', 0, 'Global', NULL),
('5da9546433bbfbd54', 0, '75.7', '5da95464266aa342e', '5ccae20aa0a45800c', '', '', NULL, '2019-10-18 05:57:56', '2019-10-18 06:45:11', '1', '1', '1', '1', '{\"unit\":\"mm\"}', '5d651923d77941025', 0, 'Global', NULL),
('5da9546433ff581c7', 0, 'A13 Bionic chip with third-generation Neural Engine', '5da95464266aa342e', '59fb0ccd333d23a8c', NULL, NULL, NULL, '2019-10-18 05:57:56', '2019-10-18 06:45:11', '1', '1', '1', '1', NULL, '5d651cc60e7b8af84', 0, 'Global', NULL),
('5da9546434420d8c9', 0, 'A13 Bionic chip with third-generation Neural Engine', '5da95464266aa342e', '59fb0ccd333d23a8c', NULL, NULL, NULL, '2019-10-18 05:57:56', '2019-10-18 06:45:11', '1', '1', '1', '1', NULL, '5d651d0e570a46f14', 1, 'Channel', NULL),
('5da95464368e0ee57', 0, 'iPhone 11', '5da95464266aa342e', '59af97877a951c8ce', NULL, NULL, NULL, '2019-10-18 05:57:56', '2019-10-18 06:45:11', '1', '1', '1', '1', NULL, '5d651f090d26456ff', 1, 'Global', NULL),
('5da9546437e65cb21', 0, 'Black', '5da95464266aa342e', '59af9a2b5860a9910', 'Black', 'Schwarz', NULL, '2019-10-18 05:57:56', '2019-10-18 05:58:11', '1', '1', '1', '1', NULL, '5da0645f8a9c5ea9a', 1, 'Channel', NULL),
('5da9580b1eeb84954', 0, 'Face ID', '59fb0aa27855b0afd', '5da957f710ec09052', NULL, NULL, NULL, '2019-10-18 06:13:31', '2019-10-18 06:46:11', '1', '1', '1', '1', NULL, '5da9580b199577e80', 0, 'Global', NULL),
('5da9580b1f49ad672', 0, 'Face ID', '59fb0e05a0c46a91a', '5da957f710ec09052', NULL, NULL, NULL, '2019-10-18 06:13:31', '2019-10-18 06:46:53', '1', '1', '1', '1', NULL, '5da9580b199577e80', 0, 'Global', NULL),
('5da9580b1fff3d65c', 0, 'Face ID', '5da95464266aa342e', '5da957f710ec09052', NULL, NULL, NULL, '2019-10-18 06:13:31', '2019-10-18 06:14:15', '1', '1', '1', '1', NULL, '5da9580b199577e80', 0, 'Global', NULL),
('5da95f0878627b65c', 0, '[\"64GB\",\"256GB\"]', '59fb0aa27855b0afd', '5da95efe7051f42de', NULL, NULL, NULL, '2019-10-18 06:43:20', '2019-10-18 06:46:38', '1', '1', '1', '1', NULL, '5da95f08747b336d2', 0, 'Global', NULL),
('5da95f0878c14eb6e', 0, '[\"64GB\",\"256GB\"]', '59fb0e05a0c46a91a', '5da95efe7051f42de', NULL, NULL, NULL, '2019-10-18 06:43:20', '2019-10-18 06:47:01', '1', '1', '1', '1', NULL, '5da95f08747b336d2', 0, 'Global', NULL),
('5da95f087909172a8', 0, '[\"64GB\",\"128GB\",\"256GB\"]', '5da95464266aa342e', '5da95efe7051f42de', NULL, NULL, NULL, '2019-10-18 06:43:20', '2019-10-18 06:45:38', '1', '1', '1', '1', NULL, '5da95f08747b336d2', 0, 'Global', NULL),
('5dd25b9e66f1a9d76', 0, '[\"Lightning\",\"Bluetooth\",\"4G\",\"Wi-Fi\"]', '59fb0aa27855b0afd', '5dd25b9263d143109', '[\"Lightning\",\"Bluetooth\",\"4G\",\"Wi-Fi\"]', '[\"Blitz\",\"Bluetooth\",\"4G\",\"W-lan\"]', NULL, '2019-11-18 08:51:42', '2019-11-18 08:52:20', '1', '1', '1', '1', NULL, '5dd25b9e6591c83c9', 0, 'Global', NULL),
('5dd25b9e66f5e21d6', 0, '[\"Lightning\",\"Bluetooth\",\"4G\",\"NFC\"]', '59fb0e05a0c46a91a', '5dd25b9263d143109', '[\"Lightning\",\"Bluetooth\",\"4G\",\"NFC\"]', '[\"Blitz\",\"Bluetooth\",\"4G\",\"NFC\"]', NULL, '2019-11-18 08:51:42', '2019-11-18 08:52:34', '1', '1', '1', '1', NULL, '5dd25b9e6591c83c9', 0, 'Global', NULL),
('5dd25b9e66fa29aef', 0, '[\"Lightning\",\"Bluetooth\",\"4G\",\"NFC\",\"Wi-Fi\"]', '5da95464266aa342e', '5dd25b9263d143109', '[\"Lightning\",\"Bluetooth\",\"4G\",\"NFC\",\"Wi-Fi\"]', '[\"Blitz\",\"Bluetooth\",\"4G\",\"NFC\",\"W-lan\"]', NULL, '2019-11-18 08:51:42', '2019-11-18 08:52:02', '1', '1', '1', '1', NULL, '5dd25b9e6591c83c9', 0, 'Global', NULL),
('5dd25e29c25218efd', 0, '[\"Face recognition\",\"Touchscreen\",\"Autofocus\"]', '5a9e93d0e1e4fd1b9', '5dd25e12a6456e268', '[\"Face recognition\",\"Touchscreen\",\"Autofocus\"]', '[\"Gesichtserkennung\",\"Sensorbildschirm\",\"Autofokus\"]', NULL, '2019-11-18 09:02:33', '2019-11-18 09:02:52', '1', '1', '1', '1', NULL, '5dd25e29c0295a5f3', 0, 'Global', NULL),
('5dd25e29c2589dbaf', 0, '[\"Face recognition\",\"Touchscreen\",\"Autofocus\"]', '5be971728d44f1a11', '5dd25e12a6456e268', '[\"Face recognition\",\"Touchscreen\",\"Autofocus\"]', '[\"Gesichtserkennung\",\"Sensorbildschirm\",\"Autofokus\"]', NULL, '2019-11-18 09:02:33', '2019-11-18 09:03:18', '1', '1', '1', '1', NULL, '5dd25e29c0295a5f3', 0, 'Global', NULL),
('5dd25e29c25d4ad0c', 0, '[\"Touchscreen\",\"Autofocus\"]', '59a91396e7971debe', '5dd25e12a6456e268', '[\"Touchscreen\",\"Autofocus\"]', '[\"Sensorbildschirm\",\"Autofokus\"]', NULL, '2019-11-18 09:02:33', '2019-11-18 09:03:05', '1', '1', '1', '1', NULL, '5dd25e29c0295a5f3', 0, 'Global', NULL),
('5dd291c1759cf87ef', 0, '[\"Bluetooth\",\"Smart TV\",\"Wi-Fi\"]', '5b8649f0dae076eb0', '5dd25b9263d143109', '[\"Bluetooth\",\"Smart TV\",\"Wi-Fi\"]', '[\"Bluetooth\",\"Smart-TV\",\"W-lan\"]', NULL, '2019-11-18 12:42:41', '2019-11-18 12:43:26', '1', '1', '1', '1', NULL, '5dd291c1744aacb9b', 0, 'Global', NULL),
('5dd291c175a19285f', 0, '[\"Smart TV\",\"Bluetooth\"]', '59a90c862458bd976', '5dd25b9263d143109', '[\"Smart TV\",\"Bluetooth\"]', '[\"Smart-TV\",\"Bluetooth\"]', NULL, '2019-11-18 12:42:41', '2019-11-18 12:42:56', '1', '1', '1', '1', NULL, '5dd291c1744aacb9b', 0, 'Global', NULL),
('5dd291c175a58f179', 0, '[\"Smart TV\",\"Bluetooth\",\"Wi-Fi\"]', '59fad6841f243119b', '5dd25b9263d143109', '[\"Smart TV\",\"Bluetooth\",\"Wi-Fi\"]', '[\"Smart-TV\",\"Bluetooth\",\"W-lan\"]', NULL, '2019-11-18 12:42:41', '2019-11-18 12:43:12', '1', '1', '1', '1', NULL, '5dd291c1744aacb9b', 0, 'Global', NULL),
('5dd291c175a9a92b2', 0, NULL, '59fae2913019a9cdf', '5dd25b9263d143109', NULL, NULL, NULL, '2019-11-18 12:42:41', NULL, '1', NULL, '1', '1', NULL, '5dd291c1744aacb9b', 0, 'Global', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_attribute_value_channel`
--
DROP TABLE IF EXISTS `product_attribute_value_channel`;
CREATE TABLE `product_attribute_value_channel` (
                                                   `id` int(11) NOT NULL,
                                                   `channel_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                                   `product_attribute_value_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                                   `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_attribute_value_channel`
--

INSERT INTO `product_attribute_value_channel` (`id`, `channel_id`, `product_attribute_value_id`, `deleted`) VALUES
(1, '5971b7857670e1789', '5d6519225a740d346', 0),
(2, '5971b7857670e1789', '5d651922665f94ed8', 0),
(3, '5971b7857670e1789', '5d65192270dc3c2c0', 0),
(4, '5971b7857670e1789', '5d6519227244bb6e0', 0),
(5, '5971b7857670e1789', '5d65192273b026117', 0),
(6, '5971b7857670e1789', '5d65192274bc55f03', 0),
(7, '5971b7857670e1789', '5d65192275e187d14', 0),
(8, '5971b7857670e1789', '5d65192276eab1c38', 0),
(9, '5971b7857670e1789', '5d65192277f495794', 0),
(10, '5971b7857670e1789', '5d6519227947de834', 0),
(11, '5971b7857670e1789', '5d6519227af440ee9', 0),
(12, '5971b7857670e1789', '5d6519227bfb36643', 0),
(13, '5971b7857670e1789', '5d6519227d16afcf0', 0),
(14, '5971b7857670e1789', '5d6519227e80279a6', 0),
(15, '5971b7857670e1789', '5d6519227fd060425', 0),
(16, '5971b7857670e1789', '5d65192280f77c1f7', 0),
(17, '5971b7857670e1789', '5d65192281ffc6041', 0),
(18, '5971b7857670e1789', '5d65192282f1fad4d', 0),
(19, '5971b7857670e1789', '5d651922843a8df95', 0),
(20, '5971b7857670e1789', '5d65192285d6c39f9', 0),
(21, '5971b7857670e1789', '5d6519228734567d3', 0),
(22, '5971b7857670e1789', '5d651922888d10ca4', 0),
(23, '5971b7857670e1789', '5d651922896d4998d', 0),
(24, '5971b7857670e1789', '5d6519228a4c30b15', 0),
(25, '5971b7857670e1789', '5d6519228b68dc611', 0),
(26, '5971b7857670e1789', '5d6519228cf19cb9d', 0),
(27, '5971b7857670e1789', '5d6519228e26b9521', 0),
(28, '5971b7857670e1789', '5d6519228f49db7ff', 0),
(29, '5971b7857670e1789', '5d651922904ad1730', 0),
(30, '5971b7857670e1789', '5d6519229132a7598', 0),
(31, '5971b7857670e1789', '5d651922924b3435a', 0),
(32, '5971b7857670e1789', '5d65192293ca18d4a', 0),
(33, '5971b7857670e1789', '5d65192294fbc8ca2', 0),
(34, '5971b7857670e1789', '5d65192295e778b8b', 0),
(35, '5971b7857670e1789', '5d65192297002af53', 0),
(36, '5971b7857670e1789', '5d6519229817aaae3', 0),
(37, '5971b7857670e1789', '5d651922995accde3', 0),
(38, '59a81f80ae0ce8ecb', '5d6519229ad0ce6b8', 0),
(39, '59a81f80ae0ce8ecb', '5d6519229c09b8760', 0),
(40, '59a81f80ae0ce8ecb', '5d6519229d0862939', 0),
(41, '59a81f80ae0ce8ecb', '5d6519229e1524528', 0),
(42, '59a81f80ae0ce8ecb', '5d6519229f0308439', 0),
(43, '59a81f80ae0ce8ecb', '5d651922a05c298a3', 0),
(44, '59a81f80ae0ce8ecb', '5d651922a1b304101', 0),
(45, '59a81f80ae0ce8ecb', '5d651922a2de8d6f1', 0),
(46, '59a81f80ae0ce8ecb', '5d651922a414363bf', 0),
(47, '59a81f80ae0ce8ecb', '5d651922a51bedeaf', 0),
(48, '59a81f80ae0ce8ecb', '5d651922a601efc84', 0),
(49, '59a81f80ae0ce8ecb', '5d651922a6d7c21f8', 0),
(50, '59a81f80ae0ce8ecb', '5d651922a7be7d7f2', 0),
(51, '59a81f80ae0ce8ecb', '5d651922a8ce51bd4', 0),
(52, '59a81f80ae0ce8ecb', '5d651922aa0d52b9a', 0),
(53, '59a81f80ae0ce8ecb', '5d651922ab2ce4af1', 0),
(54, '59a81f80ae0ce8ecb', '5d651922ac8a0e49f', 0),
(55, '59a81f80ae0ce8ecb', '5d651922ae1040cf7', 0),
(56, '59a81f80ae0ce8ecb', '5d651922af8d65444', 0),
(57, '59a81f80ae0ce8ecb', '5d651922b1119adae', 0),
(58, '59a81f80ae0ce8ecb', '5d651922b21b5adba', 0),
(59, '59a81f80ae0ce8ecb', '5d651922b3704528b', 0),
(60, '59a81f80ae0ce8ecb', '5d651922b4864b989', 0),
(61, '59a81f80ae0ce8ecb', '5d651922b59a0ead5', 0),
(62, '59a81f80ae0ce8ecb', '5d651922b72b03bfa', 0),
(63, '59a81f80ae0ce8ecb', '5d651922b8ab373b0', 0),
(64, '59a81f80ae0ce8ecb', '5d651922b9b594f9e', 0),
(65, '59a81f80ae0ce8ecb', '5d651922bb3d25b97', 0),
(66, '59a81f80ae0ce8ecb', '5d651922bcb37c821', 0),
(67, '59a81f80ae0ce8ecb', '5d651922beb6f09e3', 0),
(68, '59a81f80ae0ce8ecb', '5d651922bff1e3e6f', 0),
(69, '59a81f80ae0ce8ecb', '5d651922c0da2c0de', 0),
(70, '59a81f80ae0ce8ecb', '5d651922c17a865b1', 0),
(71, '59a81f80ae0ce8ecb', '5d651922c271045ee', 0),
(72, '59a81f80ae0ce8ecb', '5d651922c360a25e4', 0),
(73, '59a81f80ae0ce8ecb', '5d651922c4611ba75', 0),
(74, '59a81f80ae0ce8ecb', '5d651922c5527205b', 0),
(75, '59a81f80ae0ce8ecb', '5d651922c63ddf378', 0),
(76, '59a81f80ae0ce8ecb', '5d651922c73beb404', 0),
(77, '59a81f80ae0ce8ecb', '5d651922c8245a069', 0),
(78, '59a81f80ae0ce8ecb', '5d651922c91e0f783', 0),
(79, '59a81f80ae0ce8ecb', '5d651922c9fe6b5ec', 0),
(80, '59a81f8c56f59622d', '5d651922cb340b1c7', 0),
(81, '59a81f8c56f59622d', '5d651922cc0d8b6bd', 0),
(82, '59a81f8c56f59622d', '5d651922cce618956', 0),
(83, '59a81f8c56f59622d', '5d651922cdc8e5342', 0),
(84, '59a81f8c56f59622d', '5d651922ced2a9f73', 0),
(85, '59a81f8c56f59622d', '5d651922cfc49b0b5', 0),
(86, '59a81f8c56f59622d', '5d651922d14fb6592', 0),
(87, '59a81f8c56f59622d', '5d651922d2af8565f', 0),
(88, '59a81f8c56f59622d', '5d651922d3c98a981', 0),
(89, '59a81f8c56f59622d', '5d651922d4f2ff4f6', 0),
(90, '59a81f8c56f59622d', '5d651922d6288f38e', 0),
(91, '59a81f8c56f59622d', '5d651922d78e6b9e6', 0),
(92, '59a81f8c56f59622d', '5d651922d8a1e3cd6', 0),
(93, '59a81f8c56f59622d', '5d651922d9c4c7445', 0),
(94, '59a81f8c56f59622d', '5d651922dac141aac', 0),
(95, '59a81f8c56f59622d', '5d651922dbf4c5589', 0),
(96, '59a81f8c56f59622d', '5d651922dd6547adb', 0),
(97, '59a81f8c56f59622d', '5d651922de765766c', 0),
(98, '59a81f8c56f59622d', '5d651922df6f027f2', 0),
(99, '59a81f8c56f59622d', '5d651922e06cada87', 0),
(100, '59a81f8c56f59622d', '5d651922e1b204c89', 0),
(101, '59a81f8c56f59622d', '5d651922e2d115992', 0),
(102, '59a81f8c56f59622d', '5d651922e3eaa2aac', 0),
(103, '59a81f8c56f59622d', '5d651922e53b3bc73', 0),
(104, '59a81f8c56f59622d', '5d651922e6bc92a0d', 0),
(105, '59a81f8c56f59622d', '5d651922e7f8affe0', 0),
(106, '59a81f8c56f59622d', '5d651922e943df254', 0),
(107, '59a81f8c56f59622d', '5d651922ea5aace82', 0),
(108, '59a81f8c56f59622d', '5d651922eb6375569', 0),
(109, '59a81f8c56f59622d', '5d651922ec76c20e5', 0),
(110, '59a81f8c56f59622d', '5d651922eda42ca06', 0),
(111, '59a81f8c56f59622d', '5d651922eea3e7506', 0),
(112, '59a81f8c56f59622d', '5d651922ef8c5fda4', 0),
(113, '59a81f8c56f59622d', '5d651922f084c8b7e', 0),
(114, '59a81f8c56f59622d', '5d651922f19305034', 0),
(115, '59a81f8c56f59622d', '5d651922f28a023c9', 0),
(116, '59a81f8c56f59622d', '5d651922f3700790b', 0),
(117, '59a81f8c56f59622d', '5d651923004adab36', 0),
(118, '59a81f8c56f59622d', '5d65192301b005262', 0),
(119, '59a81f8c56f59622d', '5d6519230331f678e', 0),
(120, '59a81f8c56f59622d', '5d6519230480b5bdb', 0),
(121, '59a81f8c56f59622d', '5d6519230594d8eaa', 0),
(122, '59a81fa552e62a6aa', '5d65192306c5acd9d', 0),
(123, '59a81fa552e62a6aa', '5d65192307c99dcec', 0),
(124, '59a81fa552e62a6aa', '5d65192308dc48b89', 0),
(125, '59a81fa552e62a6aa', '5d6519230a0e05ef5', 0),
(126, '59a81fa552e62a6aa', '5d6519230b5866350', 0),
(127, '59a81fa552e62a6aa', '5d6519230c821b4a7', 0),
(128, '59a81fa552e62a6aa', '5d6519230e039591f', 0),
(129, '59a81fa552e62a6aa', '5d6519230efd348df', 0),
(130, '59a81fa552e62a6aa', '5d6519230fffd6406', 0),
(131, '59a81fa552e62a6aa', '5d65192311132f8fe', 0),
(132, '59a81fa552e62a6aa', '5d651923128addd2b', 0),
(133, '59a81fa552e62a6aa', '5d65192313add7a7d', 0),
(134, '59a81fa552e62a6aa', '5d65192314a711e75', 0),
(135, '59a81fa552e62a6aa', '5d651923158e42366', 0),
(136, '59a81fa552e62a6aa', '5d6519231675d5320', 0),
(137, '59a81fa552e62a6aa', '5d65192317a3861ed', 0),
(138, '59a81fa552e62a6aa', '5d65192318d3b3a26', 0),
(139, '59a81fa552e62a6aa', '5d6519231a0498e5c', 0),
(140, '59a81fa552e62a6aa', '5d6519231b08cc47f', 0),
(141, '59a81fa552e62a6aa', '5d6519231c5e99956', 0),
(142, '59a81fa552e62a6aa', '5d6519231d91c07f7', 0),
(143, '59a81fa552e62a6aa', '5d6519231eb3a6e36', 0),
(144, '59a81fa552e62a6aa', '5d6519231fc4d7cb2', 0),
(145, '59a81fa552e62a6aa', '5d65192320aca1206', 0),
(146, '59a81fa552e62a6aa', '5d651923215c6ad98', 0),
(147, '59a81fa552e62a6aa', '5d65192322359b5bc', 0),
(148, '59a81fa552e62a6aa', '5d651923233346466', 0),
(149, '59a81fa552e62a6aa', '5d651923243f262cd', 0),
(150, '59a81fa552e62a6aa', '5d651923255265149', 0),
(151, '59a81fa552e62a6aa', '5d65192326491efe5', 0),
(152, '59a81fa552e62a6aa', '5d651923272487b20', 0),
(153, '59a81fa552e62a6aa', '5d6519232801d146c', 0),
(154, '59a81fa552e62a6aa', '5d65192328ff41779', 0),
(155, '59a81fa552e62a6aa', '5d65192329d0df9ad', 0),
(156, '59a81fa552e62a6aa', '5d6519232ad654138', 0),
(157, '59a81fa552e62a6aa', '5d6519232bc94c40e', 0),
(158, '59a81fa552e62a6aa', '5d6519232cac6f8ac', 0),
(159, '59a81fa552e62a6aa', '5d6519232da6df426', 0),
(160, '59a81fa552e62a6aa', '5d6519232e93a7264', 0),
(161, '59a81fa552e62a6aa', '5d6519232f87ffc7a', 0),
(162, '59a81fa552e62a6aa', '5d65192330886b95f', 0),
(163, '59a81fa552e62a6aa', '5d651923315f92dc9', 0),
(164, '59ba3d074e36186d4', '5d6519233271e29d5', 0),
(165, '59ba3d074e36186d4', '5d651923336162f8c', 0),
(166, '59ba3d074e36186d4', '5d651923344fc535a', 0),
(167, '59ba3d074e36186d4', '5d6519233544d7d18', 0),
(168, '59ba3d074e36186d4', '5d65192336aacc2f7', 0),
(169, '59ba3d074e36186d4', '5d65192337ba5dab3', 0),
(170, '59ba3d074e36186d4', '5d651923390eb3b5b', 0),
(171, '59ba3d074e36186d4', '5d6519233a5384309', 0),
(172, '59ba3d074e36186d4', '5d6519233b2a73aed', 0),
(173, '59ba3d074e36186d4', '5d6519233c0d8ef47', 0),
(174, '59ba3d074e36186d4', '5d6519233d1e7a4a3', 0),
(175, '59ba3d074e36186d4', '5d6519233e1b51914', 0),
(176, '59ba3d074e36186d4', '5d6519233efb7367c', 0),
(177, '59ba3d074e36186d4', '5d6519233fed2414c', 0),
(178, '59ba3d074e36186d4', '5d651923410f64fbc', 0),
(179, '59ba3d074e36186d4', '5d651923428d36060', 0),
(180, '59ba3d074e36186d4', '5d6519234370c3dda', 0),
(181, '59ba3d074e36186d4', '5d651923444e98d1e', 0),
(182, '59ba3d074e36186d4', '5d651923452e5e40b', 0),
(183, '59ba3d074e36186d4', '5d651923466dfc829', 0),
(184, '59ba3d074e36186d4', '5d651923476ae8ca3', 0),
(185, '59ba3d074e36186d4', '5d651923487545c19', 0),
(186, '59ba3d074e36186d4', '5d651923498bf337f', 0),
(187, '59ba3d074e36186d4', '5d6519234adf0e423', 0),
(188, '59ba3d074e36186d4', '5d6519234c44e0dc6', 0),
(189, '59ba3d074e36186d4', '5d6519234d94727a0', 0),
(190, '59ba3d074e36186d4', '5d6519234ec3e5763', 0),
(191, '59ba3d074e36186d4', '5d6519234fb32441c', 0),
(192, '59ba3d074e36186d4', '5d651923507a1a3de', 0),
(193, '59ba3d074e36186d4', '5d6519235115d4ccc', 0),
(194, '59ba3d074e36186d4', '5d65192351e3eeff6', 0),
(195, '59ba3d074e36186d4', '5d65192352fd6dd01', 0),
(196, '59ba3d074e36186d4', '5d65192353f51b3be', 0),
(197, '59ba3d074e36186d4', '5d65192354e259349', 0),
(198, '59ba3d074e36186d4', '5d65192355fadd19e', 0),
(199, '59ba3d074e36186d4', '5d65192357be8ee34', 0),
(200, '59ba3d074e36186d4', '5d651923591c9e642', 0),
(201, '59ba3d074e36186d4', '5d65192359f84aa3c', 0),
(202, '59ba3d074e36186d4', '5d6519235b467b720', 0),
(203, '59ba3d074e36186d4', '5d6519235c6860bd5', 0),
(204, '59ba3d074e36186d4', '5d6519235da6de751', 0),
(205, '59ba3d074e36186d4', '5d6519235e892ad58', 0),
(206, '59ba3d074e36186d4', '5d6519235ff68c1b1', 0),
(207, '59ba3d074e36186d4', '5d65192361d13dcca', 0),
(208, '59ba3d074e36186d4', '5d65192362b4c7e3a', 0),
(209, '59ba3d074e36186d4', '5d651923639705ed0', 0),
(210, '5a144ccfe86acdda7', '5d6519236468b3f83', 0),
(211, '5a144ccfe86acdda7', '5d651923654a21d43', 0),
(212, '5a144ccfe86acdda7', '5d651923663007890', 0),
(213, '5a144ccfe86acdda7', '5d6519236718f2c5f', 0),
(214, '5a144ccfe86acdda7', '5d65192367fe11279', 0),
(215, '5a144ccfe86acdda7', '5d651923690b6e700', 0),
(216, '5a144ccfe86acdda7', '5d6519236a0b61a5f', 0),
(217, '5a144ccfe86acdda7', '5d6519236b08e3b51', 0),
(218, '5a144ccfe86acdda7', '5d6519236bf375b7d', 0),
(219, '5a144ccfe86acdda7', '5d6519236cd57d979', 0),
(220, '5b7bba2f2f257d218', '5d6519236d8cf901f', 0),
(221, '5b7bba2f2f257d218', '5d6519236ea4f761f', 0),
(222, '5b7bba2f2f257d218', '5d6519236f982510c', 0),
(223, '5b7bba2f2f257d218', '5d651923706e64712', 0),
(224, '5b7bba2f2f257d218', '5d651923713a3a6c3', 0),
(225, '5b7bba2f2f257d218', '5d65192372455c713', 0),
(226, '5b7bba2f2f257d218', '5d651923730d32dbd', 0),
(227, '5b7bba2f2f257d218', '5d65192374036f2e8', 0),
(228, '5b7bba2f2f257d218', '5d6519237536724ed', 0),
(229, '5b7bba2f2f257d218', '5d65192376a48d9a9', 0),
(230, '5b7bba2f2f257d218', '5d65192377bc4073e', 0),
(231, '5b7bba2f2f257d218', '5d6519237901f948e', 0),
(232, '5b7bba2f2f257d218', '5d6519237a6dfe396', 0),
(233, '5b7bba2f2f257d218', '5d6519237b8a76787', 0),
(234, '5b7bba2f2f257d218', '5d6519237cdf2488c', 0),
(235, '5b7bba2f2f257d218', '5d6519237e1651299', 0),
(236, '5b7bba2f2f257d218', '5d6519237f50c26a7', 0),
(237, '5b7bba2f2f257d218', '5d651923804b249a0', 0),
(238, '5b7bba2f2f257d218', '5d651923814a46d8c', 0),
(239, '5b7bba2f2f257d218', '5d65192382467b5a1', 0),
(240, '5b7bba2f2f257d218', '5d65192384cf59912', 0),
(241, '5b7bba2f2f257d218', '5d65192386112dfe2', 0),
(242, '5b7bba2f2f257d218', '5d6519238725facd2', 0),
(243, '5b7bba2f2f257d218', '5d651923880be079e', 0),
(244, '5b7bba2f2f257d218', '5d6519238936ccae2', 0),
(245, '5b7bba2f2f257d218', '5d6519238ae2a7cd2', 0),
(246, '5b7bba2f2f257d218', '5d6519238c6ff6611', 0),
(247, '5b7bba2f2f257d218', '5d6519238dc8a5ae5', 0),
(248, '5b7bba2f2f257d218', '5d6519238ea081dc9', 0),
(249, '5b7bba2f2f257d218', '5d6519238fa5d4ca8', 0),
(250, '5b7bba2f2f257d218', '5d651923908a7a6c6', 0),
(251, '5b7bba2f2f257d218', '5d651923915682ea2', 0),
(252, '5b7bba2f2f257d218', '5d651923926e76176', 0),
(253, '5b7bba2f2f257d218', '5d65192393581f9b6', 0),
(254, '5b7bba2f2f257d218', '5d651923943fe0a23', 0),
(255, '5b7bba2f2f257d218', '5d651923953421c6f', 0),
(256, '5b7bba2f2f257d218', '5d65192395fc2bc7f', 0),
(257, '5b7bba2f2f257d218', '5d65192396f7aaab3', 0),
(258, '5b7bba2f2f257d218', '5d65192397d230461', 0),
(259, '5b7bba2f2f257d218', '5d651923987eb1f8e', 0),
(260, '5b7bba2f2f257d218', '5d65192399e658c67', 0),
(261, '5b7bba2f2f257d218', '5d6519239b1856c8c', 0),
(262, '5b7bba2f2f257d218', '5d6519239c1c72a29', 0),
(263, '5b7bba2f2f257d218', '5d6519239d4aea669', 0),
(264, '5b7bba2f2f257d218', '5d6519239e7e20801', 0),
(265, '5b7bba2f2f257d218', '5d651923a00b5f9ab', 0),
(266, '5b7bba2f2f257d218', '5d651923a1620318d', 0),
(267, '5b7bba2f2f257d218', '5d651923a33aef87b', 0),
(268, '5b7bba2f2f257d218', '5d651d0e5e30e1c97', 0),
(269, '59a81f8c56f59622d', '5d651d0e5e30e1c97', 0),
(270, '59a81f80ae0ce8ecb', '5d651d0e5e30e1c97', 0),
(271, '5b7bba2f2f257d218', '5d651d0e60b541a29', 0),
(272, '59a81f8c56f59622d', '5d651d0e60b541a29', 0),
(273, '59a81f80ae0ce8ecb', '5d651d0e60b541a29', 0),
(274, '5b7bba2f2f257d218', '5d651d0e63046c06e', 0),
(275, '59a81f8c56f59622d', '5d651d0e63046c06e', 0),
(276, '59a81f80ae0ce8ecb', '5d651d0e63046c06e', 0),
(277, '5a144ccfe86acdda7', '5d651d1c61470984a', 0),
(278, '5a144ccfe86acdda7', '5d651d1c6340670d4', 0),
(279, '5a144ccfe86acdda7', '5d651d1c6549df99c', 0),
(280, '59a81f8c56f59622d', '26056593338532172', 0),
(281, '59a81f80ae0ce8ecb', '26056593338532172', 0),
(282, '59a81f8c56f59622d', '26056593338532173', 0),
(283, '59a81f80ae0ce8ecb', '26056593338532173', 0),
(284, '59a81f8c56f59622d', '26056593338532174', 0),
(285, '59a81f80ae0ce8ecb', '26056593338532174', 0),
(286, '5b7bba2f2f257d218', '59fb0d716480eb98d', 0),
(287, '5a144ccfe86acdda7', '59fb0d716480eb98d', 0),
(288, '59a81f8c56f59622d', '59fb0d716480eb98d', 0),
(289, '5b7bba2f2f257d218', '59fb10161b54c0b7f', 0),
(290, '5a144ccfe86acdda7', '59fb10161b54c0b7f', 0),
(291, '59a81f8c56f59622d', '59fb10161b54c0b7f', 0),
(292, '5b7bba2f2f257d218', '59fb12b222f59e788', 0),
(293, '5a144ccfe86acdda7', '59fb12b222f59e788', 0),
(294, '59a81f8c56f59622d', '59fb12b222f59e788', 0),
(295, '5b7bba2f2f257d218', '59fb0d7167d1f218f', 0),
(296, '59a81f80ae0ce8ecb', '59fb0d7167d1f218f', 0),
(297, '5b7bba2f2f257d218', '59fb10161a7a821cd', 0),
(298, '59a81f80ae0ce8ecb', '59fb10161a7a821cd', 0),
(299, '5b7bba2f2f257d218', '59fb12b221d770b1a', 0),
(300, '59a81f80ae0ce8ecb', '59fb12b221d770b1a', 0),
(301, '59a81f80ae0ce8ecb', '5d652667363e71a1a', 0),
(302, '5971b7857670e1789', '5d652667363e71a1a', 0),
(303, '59a81f80ae0ce8ecb', '5d6526673937c7872', 0),
(304, '5971b7857670e1789', '5d6526673937c7872', 0),
(305, '59a81f8c56f59622d', '5d65266f8dd8de78e', 0),
(306, '59a81f8c56f59622d', '5d65266f90a20f625', 0),
(307, '59ba3d074e36186d4', '26056593338531928', 0),
(308, '59ba3d074e36186d4', '5be989d59e3f58a95', 0),
(309, '5a144ccfe86acdda7', '59b0ea96b7b14ec16', 0),
(310, '5971b7857670e1789', '59b0ea96b7b14ec16', 0),
(311, '5b7bba2f2f257d218', '59b0ea96b81e7140d', 0),
(312, '59ba3d074e36186d4', '59b0ea96b81e7140d', 0),
(313, '59ba3d074e36186d4', '5d652fbd244b99656', 0),
(314, '59a81f8c56f59622d', '5d652fbd244b99656', 0),
(315, '5971b7857670e1789', '5d652fbd244b99656', 0),
(316, '5a144ccfe86acdda7', '26056593338532062', 0),
(317, '5971b7857670e1789', '5d652fd1bff40cfc7', 0),
(318, '5b7bba2f2f257d218', '26056593338532175', 0),
(319, '5a144ccfe86acdda7', '26056593338532175', 0),
(320, '59a81f8c56f59622d', '26056593338532175', 0),
(321, '5b7bba2f2f257d218', '26056593338532176', 0),
(322, '5a144ccfe86acdda7', '26056593338532176', 0),
(323, '59a81f8c56f59622d', '26056593338532176', 0),
(324, '5b7bba2f2f257d218', '26056593338532178', 0),
(325, '5a144ccfe86acdda7', '26056593338532178', 0),
(326, '59a81f8c56f59622d', '26056593338532178', 0),
(327, '5b7bba2f2f257d218', '26056593338532177', 0),
(328, '5a144ccfe86acdda7', '26056593338532177', 0),
(329, '59a81f8c56f59622d', '26056593338532177', 0),
(330, '5b7bba2f2f257d218', '26056593338532048', 0),
(331, '5a144ccfe86acdda7', '26056593338532048', 0),
(332, '59ba3d074e36186d4', '26056593338532048', 0),
(333, '59a81fa552e62a6aa', '26056593338532048', 0),
(334, '59a81f8c56f59622d', '26056593338532048', 0),
(335, '5b7bba2f2f257d218', '26056593338532049', 0),
(336, '5a144ccfe86acdda7', '26056593338532049', 0),
(337, '59ba3d074e36186d4', '26056593338532049', 0),
(338, '59a81fa552e62a6aa', '26056593338532049', 0),
(339, '59a81f8c56f59622d', '26056593338532049', 0),
(340, '5b7bba2f2f257d218', '26056593338532051', 0),
(341, '5a144ccfe86acdda7', '26056593338532051', 0),
(342, '59ba3d074e36186d4', '26056593338532051', 0),
(343, '59a81fa552e62a6aa', '26056593338532051', 0),
(344, '59a81f8c56f59622d', '26056593338532051', 0),
(345, '5b7bba2f2f257d218', '26056593338532050', 0),
(346, '5a144ccfe86acdda7', '26056593338532050', 0),
(347, '59ba3d074e36186d4', '26056593338532050', 0),
(348, '59a81fa552e62a6aa', '26056593338532050', 0),
(349, '59a81f8c56f59622d', '26056593338532050', 0),
(350, '59ba3d074e36186d4', '59afae14bc9a61b41', 0),
(351, '59a81f8c56f59622d', '59afae14bc9a61b41', 0),
(352, '5971b7857670e1789', '59afae14bc9a61b41', 0),
(353, '59ba3d074e36186d4', '59fad7470bb32a54e', 0),
(354, '59a81f8c56f59622d', '59fad7470bb32a54e', 0),
(355, '5971b7857670e1789', '59fad7470bb32a54e', 0),
(356, '59ba3d074e36186d4', '5b864a0a694bf96c9', 0),
(357, '59a81f8c56f59622d', '5b864a0a694bf96c9', 0),
(358, '5971b7857670e1789', '5b864a0a694bf96c9', 0),
(359, '59ba3d074e36186d4', '59fae2a25b1ba5910', 0),
(360, '59a81f8c56f59622d', '59fae2a25b1ba5910', 0),
(361, '5971b7857670e1789', '59fae2a25b1ba5910', 0),
(362, '59a81fa552e62a6aa', '26056593338532074', 0),
(363, '59a81f80ae0ce8ecb', '26056593338532074', 0),
(364, '59a81fa552e62a6aa', '26056593338532075', 0),
(365, '59a81f80ae0ce8ecb', '26056593338532075', 0),
(366, '59a81fa552e62a6aa', '26056593338532077', 0),
(367, '59a81f80ae0ce8ecb', '26056593338532077', 0),
(368, '59a81fa552e62a6aa', '26056593338532076', 0),
(369, '59a81f80ae0ce8ecb', '26056593338532076', 0),
(370, '5b7bba2f2f257d218', '59afa6804ece3dc37', 0),
(371, '59ba3d074e36186d4', '59afa6804ece3dc37', 0),
(372, '59a81f8c56f59622d', '59afa6804ece3dc37', 0),
(373, '5b7bba2f2f257d218', '26056593338531920', 0),
(374, '59ba3d074e36186d4', '26056593338531920', 0),
(375, '59a81f8c56f59622d', '26056593338531920', 0),
(376, '5b7bba2f2f257d218', '26056593338531921', 0),
(377, '59ba3d074e36186d4', '26056593338531921', 0),
(378, '59a81f8c56f59622d', '26056593338531921', 0),
(379, '5b7bba2f2f257d218', '26056593338531922', 0),
(380, '59ba3d074e36186d4', '26056593338531922', 0),
(381, '59a81f8c56f59622d', '26056593338531922', 0),
(382, '59a81fa552e62a6aa', '5d6612d8016499122', 0),
(383, '59a81f80ae0ce8ecb', '5d6612d8016499122', 0),
(384, '59a81fa552e62a6aa', '5d6612d80475f4dcb', 0),
(385, '59a81f80ae0ce8ecb', '5d6612d80475f4dcb', 0),
(386, '59a81fa552e62a6aa', '5d6612d8073e43d93', 0),
(387, '59a81f80ae0ce8ecb', '5d6612d8073e43d93', 0),
(388, '59a81fa552e62a6aa', '5d6612d8099103af2', 0),
(389, '59a81f80ae0ce8ecb', '5d6612d8099103af2', 0),
(390, '5b7bba2f2f257d218', '59fb07abb1cba2f1c', 0),
(391, '59ba3d074e36186d4', '59fb07abb1cba2f1c', 0),
(392, '5b7bba2f2f257d218', '5b2ce8279424e0e55', 0),
(393, '59ba3d074e36186d4', '5b2ce8279424e0e55', 0),
(394, '5b7bba2f2f257d218', '5a9e941a074c98334', 0),
(395, '59ba3d074e36186d4', '5a9e941a074c98334', 0),
(396, '5b7bba2f2f257d218', '5be97172c01e7090a', 0),
(397, '59ba3d074e36186d4', '5be97172c01e7090a', 0),
(398, '5a144ccfe86acdda7', '5d66143a6fc18ae74', 0),
(399, '59a81f80ae0ce8ecb', '5d66143a6fc18ae74', 0),
(400, '5a144ccfe86acdda7', '5d66143a72efa6859', 0),
(401, '59a81f80ae0ce8ecb', '5d66143a72efa6859', 0),
(402, '5a144ccfe86acdda7', '5d66143a74f0df2c6', 0),
(403, '59a81f80ae0ce8ecb', '5d66143a74f0df2c6', 0),
(404, '5a144ccfe86acdda7', '5d66143a790b4cdb1', 0),
(405, '59a81f80ae0ce8ecb', '5d66143a790b4cdb1', 0),
(406, '5a144ccfe86acdda7', '59b0ecf1d8e09ea90', 0),
(407, '59a81f8c56f59622d', '59b0ecf1d8e09ea90', 0),
(408, '5a144ccfe86acdda7', '5b2ce8278eea51c45', 0),
(409, '59a81f8c56f59622d', '5b2ce8278eea51c45', 0),
(410, '5a144ccfe86acdda7', '5a9e941a008340682', 0),
(411, '59a81f8c56f59622d', '5a9e941a008340682', 0),
(412, '5a144ccfe86acdda7', '5be97172beeee623b', 0),
(413, '59a81f8c56f59622d', '5be97172beeee623b', 0),
(414, '5b7bba2f2f257d218', '5d66146af27036e2a', 0),
(415, '59ba3d074e36186d4', '5d66146af27036e2a', 0),
(416, '5b7bba2f2f257d218', '5d66146b00ed59e34', 0),
(417, '59ba3d074e36186d4', '5d66146b00ed59e34', 0),
(418, '5b7bba2f2f257d218', '5d66146b034f7a3d2', 0),
(419, '59ba3d074e36186d4', '5d66146b034f7a3d2', 0),
(420, '5b7bba2f2f257d218', '5d66146b060541445', 0),
(421, '59ba3d074e36186d4', '5d66146b060541445', 0),
(422, '59a81f8c56f59622d', '5d79f32b03bd3a9e0', 0),
(423, '59a81f80ae0ce8ecb', '5d79f32b03bd3a9e0', 0),
(424, '5b7bba2f2f257d218', '5d79f32b0a3b66924', 0),
(425, '59a81f80ae0ce8ecb', '5d79f32b0a3b66924', 0),
(426, '5b7bba2f2f257d218', '5d79f32b0fec8ad8e', 0),
(427, '5a144ccfe86acdda7', '5d79f32b0fec8ad8e', 0),
(428, '59a81f8c56f59622d', '5d79f32b0fec8ad8e', 0),
(429, '5b7bba2f2f257d218', '5d79f32b17bfc5957', 0),
(430, '59a81f8c56f59622d', '5d79f32b17bfc5957', 0),
(431, '59a81f80ae0ce8ecb', '5d79f32b17bfc5957', 0),
(432, '5a144ccfe86acdda7', '5d79f32b1abfb2717', 0),
(433, '5a144ccfe86acdda7', '5da0645f922e61af3', 0),
(434, '59ba3d074e36186d4', '5da0645f922e61af3', 0),
(435, '5a144ccfe86acdda7', '5da0645f944274a7a', 0),
(436, '59ba3d074e36186d4', '5da0645f944274a7a', 0),
(437, '5a144ccfe86acdda7', '5da0645f96a1f8fc1', 0),
(438, '59ba3d074e36186d4', '5da0645f96a1f8fc1', 0),
(439, '59a81f8c56f59622d', '5da954642eaee6457', 0),
(440, '59a81f80ae0ce8ecb', '5da954642eaee6457', 0),
(441, '5b7bba2f2f257d218', '5da9546430d55d6e0', 0),
(442, '5a144ccfe86acdda7', '5da9546430d55d6e0', 0),
(443, '59a81f8c56f59622d', '5da9546430d55d6e0', 0),
(444, '5b7bba2f2f257d218', '5da9546434420d8c9', 0),
(445, '59a81f8c56f59622d', '5da9546434420d8c9', 0),
(446, '59a81f80ae0ce8ecb', '5da9546434420d8c9', 0),
(447, '5a144ccfe86acdda7', '5da9546435b4f4d03', 0),
(448, '5a144ccfe86acdda7', '5da9546437e65cb21', 0),
(449, '59ba3d074e36186d4', '5da9546437e65cb21', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
                                    `id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
                                    `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                    `deleted` tinyint(1) DEFAULT '0',
                                    `scope` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Global',
                                    `created_at` datetime DEFAULT NULL,
                                    `modified_at` datetime DEFAULT NULL,
                                    `product_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `category_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `created_by_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `modified_by_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `owner_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `assigned_user_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                    `sorting` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `deleted`, `scope`, `created_at`, `modified_at`, `product_id`, `category_id`, `created_by_id`, `modified_by_id`, `owner_user_id`, `assigned_user_id`, `sorting`) VALUES
('5d651922343d9263a', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '59a90c862458bd976', '59b252ee34ef870a3', 'system', NULL, NULL, NULL, NULL),
('5d651922349ad116e', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-27 13:49:31', '59a90c862458bd976', '5b7bc409a1e41e93c', 'system', '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66', NULL),
('5d651922350f1bf73', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-28 05:47:25', '59a91396e7971debe', '59b253032d5f8c076', 'system', '1', '1', '1', NULL),
('5d6519223545364b3', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-28 05:35:04', '59a91396e7971debe', '5b7bc409a1e41e93c', 'system', '1', '1', '1', NULL),
('5d651922358623e0b', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '59b0e83c603a1b9c8', '59b2569ba8768d7d4', 'system', NULL, NULL, NULL, NULL),
('5d6519223607c470d', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '59fad6841f243119b', '59b252ee34ef870a3', 'system', NULL, NULL, NULL, NULL),
('5d651922364615534', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-09-13 13:02:46', '59fad6841f243119b', '5b7bc409a1e41e93c', 'system', '1', '5bbaf1daea9ee8a6b', '5bbaf1daea9ee8a6b', NULL),
('5d65192236b3027e1', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-27 12:09:58', '59fb0aa27855b0afd', '59fb0dc6f3fd265c9', 'system', '1', '1', '1', NULL),
('5d651922373517e4a', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '59fb0aa27855b0afd', '5b7bc409a1e41e93c', 'system', NULL, NULL, NULL, NULL),
('5d6519223792aaab0', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '59fb0e05a0c46a91a', '59fb0dc6f3fd265c9', 'system', NULL, NULL, NULL, NULL),
('5d65192238386a0db', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-27 12:11:35', '59fb0e05a0c46a91a', '5b7bc409a1e41e93c', 'system', '1', '1', '1', NULL),
('5d65192239193627b', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-27 12:14:52', '59fb11b0353ba97d1', '5b7bc409a1e41e93c', 'system', '1', '1', '1', NULL),
('5d6519223968bd545', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-28 05:48:45', '59fb141abf37aef5e', '59b253032d5f8c076', 'system', '1', '1', '1', NULL),
('5d65192239fdb574b', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-28 05:32:36', '59fb141abf37aef5e', '5b7bc409a1e41e93c', 'system', '1', '1', '1', NULL),
('5d6519223a4bbd496', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '59fb152fe4a37088e', '59b2569ba8768d7d4', 'system', NULL, NULL, NULL, NULL),
('5d6519223a98402b5', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-28 05:28:19', '5a9e93d0e1e4fd1b9', '59b253032d5f8c076', 'system', '1', '1', '1', NULL),
('5d6519223afd77590', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '5a9e93d0e1e4fd1b9', '5b7bc409a1e41e93c', 'system', NULL, NULL, NULL, NULL),
('5d6519223b350523e', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-27 14:00:49', '5b8649f0dae076eb0', '5b8904399ed296444', 'system', '1', '1', '5bbaf1daea9ee8a6b', NULL),
('5d6519223b6acaf2c', NULL, 0, 'Channel', '2019-08-27 11:50:58', '2019-08-28 05:34:33', '5be971728d44f1a11', '59b253032d5f8c076', 'system', '1', '1', '1', NULL),
('5d6519223bec18921', NULL, 0, 'Global', '2019-08-27 11:50:58', NULL, '5be98924b15087ff5', '59b2569ba8768d7d4', 'system', NULL, NULL, NULL, NULL),
('5d651ebfebf2e08b8', NULL, 0, 'Global', '2019-08-27 12:14:55', '2019-08-27 12:14:55', '59fb11b0353ba97d1', '5b7bc409a1e41e93c', '1', NULL, '1', '1', NULL),
('5d652f937d386d4ce', NULL, 0, 'Channel', '2019-08-27 13:26:43', '2019-08-27 13:26:43', '59b0e83c603a1b9c8', '59b2569ba8768d7d4', '1', NULL, '1', '1', NULL),
('5d661272da9d9b025', NULL, 0, 'Global', '2019-08-28 05:34:42', '2019-08-28 05:34:42', '5be971728d44f1a11', '59b253032d5f8c076', '1', NULL, '1', '1', NULL),
('5d66154c60a8768ed', NULL, 0, 'Global', '2019-08-28 05:46:52', '2019-08-28 05:46:52', '59a91396e7971debe', '5b7bc409a1e41e93c', '1', NULL, '1', '1', NULL),
('5d6615ac580e60224', NULL, 0, 'Global', '2019-08-28 05:48:28', '2019-08-28 05:48:28', '59fb141abf37aef5e', '5b7bc409a1e41e93c', '1', NULL, '1', '1', NULL),
('5d661607b9b273ed6', NULL, 0, 'Global', '2019-08-28 05:49:59', '2019-08-28 05:49:59', '5be971728d44f1a11', '5b7bc409a1e41e93c', '1', NULL, '1', '1', NULL),
('5d79f32b21b030867', NULL, 0, 'Channel', '2019-09-12 07:26:35', '2019-09-12 07:26:35', '5d79f32aefaf71a28', '5b7bc409a1e41e93c', '1', NULL, '1', '1', NULL),
('5d79f32b2654837b7', NULL, 0, 'Global', '2019-09-12 07:26:35', '2019-09-12 07:26:35', '5d79f32aefaf71a28', '5b7bc409a1e41e93c', '1', NULL, '1', '1', NULL),
('5da954643ec0efda5', NULL, 0, 'Channel', '2019-10-18 05:57:56', '2019-10-18 05:57:56', '5da95464266aa342e', '5b7bc409a1e41e93c', '1', NULL, '1', '1', 1),
('5da9546446a429580', NULL, 0, 'Global', '2019-10-18 05:57:56', '2019-10-18 05:57:56', '5da95464266aa342e', '5b7bc409a1e41e93c', '1', NULL, '1', '1', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `product_category_channel`
--
DROP TABLE IF EXISTS `product_category_channel`;
CREATE TABLE `product_category_channel` (
                                            `id` int(11) NOT NULL,
                                            `channel_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `product_category_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_category_channel`
--

INSERT INTO `product_category_channel` (`id`, `channel_id`, `product_category_id`, `deleted`) VALUES
(1, '5b7bba2f2f257d218', '5d65192236b3027e1', 0),
(2, '59ba3d074e36186d4', '5d65192236b3027e1', 0),
(3, '59a81f8c56f59622d', '5d65192238386a0db', 0),
(4, '59a81f80ae0ce8ecb', '5d65192238386a0db', 0),
(5, '59a81f8c56f59622d', '5d65192239193627b', 0),
(6, '59a81f80ae0ce8ecb', '5d65192239193627b', 0),
(7, '5b7bba2f2f257d218', '5d652f937d386d4ce', 0),
(8, '59ba3d074e36186d4', '5d652f937d386d4ce', 0),
(9, '5b7bba2f2f257d218', '5d651922349ad116e', 0),
(10, '59ba3d074e36186d4', '5d651922349ad116e', 0),
(11, '59a81fa552e62a6aa', '5d651922349ad116e', 0),
(12, '5b7bba2f2f257d218', '5d6519223b350523e', 0),
(13, '5a144ccfe86acdda7', '5d6519223b350523e', 0),
(14, '5b7bba2f2f257d218', '5d6519223a98402b5', 0),
(15, '5a144ccfe86acdda7', '5d6519223a98402b5', 0),
(16, '59a81fa552e62a6aa', '5d65192239fdb574b', 0),
(17, '59a81f8c56f59622d', '5d65192239fdb574b', 0),
(18, '5a144ccfe86acdda7', '5d6519223b6acaf2c', 0),
(19, '59a81fa552e62a6aa', '5d6519223b6acaf2c', 0),
(20, '5b7bba2f2f257d218', '5d6519223545364b3', 0),
(21, '5a144ccfe86acdda7', '5d6519223545364b3', 0),
(22, '59a81fa552e62a6aa', '5d6519223545364b3', 0),
(24, '5a144ccfe86acdda7', '5d651922350f1bf73', 0),
(26, '59a81f8c56f59622d', '5d651922350f1bf73', 0),
(27, '5a144ccfe86acdda7', '5d6519223968bd545', 0),
(28, '59a81f8c56f59622d', '5d6519223968bd545', 0),
(29, '59a81f8c56f59622d', '5d79f32b21b030867', 0),
(30, '59a81f80ae0ce8ecb', '5d79f32b21b030867', 0),
(31, '59a81f8c56f59622d', '5d651922364615534', 0),
(32, '59a81f8c56f59622d', '5da954643ec0efda5', 0),
(33, '59a81f80ae0ce8ecb', '5da954643ec0efda5', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_channel`
--
DROP TABLE IF EXISTS `product_channel`;
CREATE TABLE `product_channel` (
                                   `id` int(11) NOT NULL,
                                   `channel_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                   `product_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                   `deleted` tinyint(1) DEFAULT '0',
                                   `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_channel`
--

INSERT INTO `product_channel` (`id`, `channel_id`, `product_id`, `deleted`, `is_active`) VALUES
(1, '5971b7857670e1789', '59a90c862458bd976', 0, 0),
(2, '59a81f80ae0ce8ecb', '59a90c862458bd976', 0, 0),
(3, '59a81f8c56f59622d', '59a90c862458bd976', 0, 0),
(4, '59a81fa552e62a6aa', '59a90c862458bd976', 0, 1),
(5, '59ba3d074e36186d4', '59a90c862458bd976', 0, 1),
(6, '5b7bba2f2f257d218', '59a90c862458bd976', 0, 0),
(8, '59a81f80ae0ce8ecb', '59a91396e7971debe', 0, 0),
(9, '59a81f8c56f59622d', '59a91396e7971debe', 0, 1),
(10, '59a81fa552e62a6aa', '59a91396e7971debe', 0, 1),
(11, '59ba3d074e36186d4', '59a91396e7971debe', 0, 1),
(12, '5b7bba2f2f257d218', '59a91396e7971debe', 0, 0),
(13, '59a81fa552e62a6aa', '59b0e83c603a1b9c8', 0, 0),
(14, '59ba3d074e36186d4', '59b0e83c603a1b9c8', 0, 1),
(15, '5b7bba2f2f257d218', '59b0e83c603a1b9c8', 0, 1),
(17, '59a81f80ae0ce8ecb', '59fad6841f243119b', 0, 0),
(18, '59a81f8c56f59622d', '59fad6841f243119b', 0, 1),
(22, '5971b7857670e1789', '59fb0aa27855b0afd', 0, 0),
(23, '59a81f80ae0ce8ecb', '59fb0aa27855b0afd', 0, 0),
(24, '59a81f8c56f59622d', '59fb0aa27855b0afd', 0, 1),
(25, '59a81fa552e62a6aa', '59fb0aa27855b0afd', 0, 1),
(26, '59ba3d074e36186d4', '59fb0aa27855b0afd', 0, 0),
(27, '5b7bba2f2f257d218', '59fb0aa27855b0afd', 0, 1),
(28, '5971b7857670e1789', '59fb0e05a0c46a91a', 0, 1),
(29, '59a81f80ae0ce8ecb', '59fb0e05a0c46a91a', 0, 1),
(30, '59a81f8c56f59622d', '59fb0e05a0c46a91a', 0, 0),
(31, '59a81fa552e62a6aa', '59fb0e05a0c46a91a', 0, 0),
(32, '59ba3d074e36186d4', '59fb0e05a0c46a91a', 0, 1),
(33, '5b7bba2f2f257d218', '59fb0e05a0c46a91a', 0, 0),
(35, '59a81f80ae0ce8ecb', '59fb11b0353ba97d1', 0, 0),
(36, '59a81f8c56f59622d', '59fb11b0353ba97d1', 0, 0),
(37, '59a81fa552e62a6aa', '59fb11b0353ba97d1', 0, 0),
(38, '59ba3d074e36186d4', '59fb11b0353ba97d1', 0, 0),
(40, '5971b7857670e1789', '59fb141abf37aef5e', 0, 0),
(41, '59a81f80ae0ce8ecb', '59fb141abf37aef5e', 0, 0),
(42, '59a81f8c56f59622d', '59fb141abf37aef5e', 0, 0),
(43, '59a81fa552e62a6aa', '59fb141abf37aef5e', 0, 0),
(46, '59a81fa552e62a6aa', '59fb152fe4a37088e', 0, 1),
(47, '59ba3d074e36186d4', '59fb152fe4a37088e', 0, 1),
(48, '5b7bba2f2f257d218', '59fb152fe4a37088e', 0, 1),
(49, '5971b7857670e1789', '5a9e93d0e1e4fd1b9', 0, 0),
(50, '59a81f80ae0ce8ecb', '5a9e93d0e1e4fd1b9', 0, 1),
(51, '59a81f8c56f59622d', '5a9e93d0e1e4fd1b9', 0, 0),
(53, '59ba3d074e36186d4', '5a9e93d0e1e4fd1b9', 0, 1),
(54, '5b7bba2f2f257d218', '5a9e93d0e1e4fd1b9', 0, 0),
(55, '5a144ccfe86acdda7', '5b8649f0dae076eb0', 0, 1),
(56, '59a81fa552e62a6aa', '5be971728d44f1a11', 0, 1),
(57, '59ba3d074e36186d4', '5be971728d44f1a11', 0, 1),
(58, '5b7bba2f2f257d218', '5be971728d44f1a11', 0, 0),
(59, '59a81fa552e62a6aa', '5be98924b15087ff5', 0, 0),
(62, '5971b7857670e1789', '5d79f32aefaf71a28', 0, 0),
(63, '59a81f80ae0ce8ecb', '5d79f32aefaf71a28', 0, 0),
(64, '59a81f8c56f59622d', '5d79f32aefaf71a28', 0, 0),
(65, '59a81fa552e62a6aa', '5d79f32aefaf71a28', 0, 0),
(66, '59ba3d074e36186d4', '5d79f32aefaf71a28', 0, 0),
(67, '5b7bba2f2f257d218', '5d79f32aefaf71a28', 0, 0),
(68, '59a81f8c56f59622d', '5be98924b15087ff5', 0, 1),
(69, '59a81f80ae0ce8ecb', '5be98924b15087ff5', 0, 1),
(70, '59a81f80ae0ce8ecb', '5da95464266aa342e', 0, 0),
(71, '59a81f8c56f59622d', '5da95464266aa342e', 0, 0),
(72, '59a81fa552e62a6aa', '5da95464266aa342e', 0, 0),
(73, '59ba3d074e36186d4', '5da95464266aa342e', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_family`
--
DROP TABLE IF EXISTS `product_family`;
CREATE TABLE `product_family` (
                                  `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                                  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `deleted` tinyint(1) DEFAULT '0',
                                  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                  `is_active` tinyint(1) NOT NULL DEFAULT '0',
                                  `created_at` datetime DEFAULT NULL,
                                  `modified_at` datetime DEFAULT NULL,
                                  `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `description_en_us` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                  `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `description_de_de` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                                  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                  `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product_family`
--

INSERT INTO `product_family` (`id`, `name`, `deleted`, `description`, `is_active`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `name_en_us`, `description_en_us`, `name_de_de`, `description_de_de`, `code`, `owner_user_id`, `assigned_user_id`) VALUES
('59a81e215cd07acbf', 'Camcorders', 0, '', 1, '2017-08-31 14:33:05', '2018-08-07 06:38:35', '1', '1', 'Camcorders', '', 'Camcorders', '', 'camcorders', NULL, NULL),
('59a81e31e90918ce4', 'Digital cameras', 0, '', 1, '2017-08-31 14:33:21', '2018-08-07 06:38:19', '1', '1', 'Digital cameras', '', 'Digital cameras', '', 'digital_cameras', NULL, NULL),
('59a81e4562b1f9403', 'Headphones', 0, '', 1, '2017-08-31 14:33:41', '2018-08-07 06:38:06', '1', '1', 'Headphones', '', 'Headphones', '', 'headphones', NULL, NULL),
('59a81e5626be53a2d', 'Laser and LED printers', 0, '', 1, '2017-08-31 14:33:58', '2018-08-07 06:39:21', '1', '1', 'Laser and LED printers', '', 'Laser and LED printers', '', 'laser_and_led_printers', NULL, NULL),
('59a81e767a1f2da77', 'LED TVs', 0, '', 1, '2017-08-31 14:34:30', '2018-08-07 06:37:39', '1', '1', 'LED TVs', '', 'LED TVs', '', 'led_tvs', NULL, NULL),
('59a81e87ced462859', 'Loudspeakers', 0, '', 1, '2017-08-31 14:34:47', '2018-08-07 06:37:25', '1', '1', 'Loudspeakers', '', 'Loudspeakers', '', 'loudspeakers', NULL, NULL),
('59a81e989bb7c1ef4', 'MP3 players', 0, '', 1, '2017-08-31 14:35:04', '2018-08-07 06:37:15', '1', '1', 'MP3 players', '', 'MP3 players', '', 'mp3_players', NULL, NULL),
('59a81ea5792427f7b', 'Mugs', 0, '', 1, '2017-08-31 14:35:17', '2018-08-07 06:37:01', '1', '1', 'Mugs', '', 'Mugs', '', 'mugs', NULL, NULL),
('59a81eb52b3474cff', 'Multifunctionals', 0, '', 1, '2017-08-31 14:35:33', '2018-08-07 06:36:47', '1', '1', 'Multifunctionals', '', 'Multifunctionals', '', 'multifunctionals', NULL, NULL),
('59a81ed24744d3f44', 'Scanners', 0, '', 1, '2017-08-31 14:36:02', '2018-08-07 06:36:17', '1', '1', 'Scanners', '', 'Scanners', '', 'scanners', NULL, NULL),
('59a81ee0bfb62830c', 'Tablets', 0, '', 1, '2017-08-31 14:36:16', '2018-08-07 06:39:00', '1', '1', 'Tablets', '', 'Tablets', '', 'tablets', NULL, NULL),
('59a81f145450ab8e6', 'Webcams', 0, '', 1, '2017-08-31 14:37:08', '2018-08-07 06:35:35', '1', '1', 'Webcams', '', 'Webcams', '', 'webcams', NULL, NULL),
('59b0e4dc9080edfa7', 'CD card', 0, '', 1, '2017-09-07 06:19:08', '2018-08-07 06:34:27', '1', '1', 'CD card', '', 'CD card', '', 'cd_card', NULL, NULL),
('59bf6b572d8ac5590', 'Monitors', 0, '', 0, '2017-09-18 06:44:39', '2018-08-07 06:34:11', '1', '1', 'Monitors', '', 'Monitors', '', 'monitors', NULL, NULL),
('59fb0a8658e98de76', 'Phones', 0, '', 1, '2017-11-02 12:07:34', '2018-08-07 06:33:20', '1', '1', 'Phones', '', 'Phones', '', 'phones', NULL, NULL),
('5cb6e3a0b4208e9ec', 'Accessories', 0, '', 1, '2019-04-17 08:28:16', '2019-04-17 08:28:16', '1', NULL, 'Accessories', '', 'Zubehör', '', 'accessories', '1', '1'),
('5cb6e722d8cc75e9b', 'PC Monitors', 0, '', 0, '2019-04-17 08:43:14', '2019-04-17 08:43:14', '1', NULL, 'PC Monitors', '', 'PC Monitors', '', 'pc_monitors', '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `product_family_attribute`
--
DROP TABLE IF EXISTS `product_family_attribute`;
CREATE TABLE `product_family_attribute` (
                                            `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                                            `deleted` tinyint(1) DEFAULT '0',
                                            `is_required` tinyint(1) NOT NULL DEFAULT '0',
                                            `product_family_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `attribute_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Global',
                                            `created_at` datetime DEFAULT NULL,
                                            `modified_at` datetime DEFAULT NULL,
                                            `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                            `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `product_family_attribute`
--

INSERT INTO `product_family_attribute` (`id`, `deleted`, `is_required`, `product_family_id`, `attribute_id`, `name`, `scope`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `owner_user_id`) VALUES
('5964af9134d3a5ada', 0, 1, '596479aae0d7a31e1', '59648a94db1308e38', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bb3ddf57be548', 0, 1, '596479aae0d7a31e1', '5964a7575f5db97fb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9b20f891e1d', 0, 1, '596479aae0d7a31e1', '5964a6ef253cba7f0', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9b20fc8736f', 0, 1, '596479aae0d7a31e1', '5964a7226d55c70e4', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9b289cc05a1', 0, 1, '596479aae0d7a31e1', '5964a70a18e997c2b', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9b7c44e66be', 0, 1, '596479aae0d7a31e1', '5964a621f33401b34', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9b855247910', 0, 1, '596479aae0d7a31e1', '59648b6529fe1b5cb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9b936ed2ec9', 0, 1, '596479aae0d7a31e1', '5964a609da8944d63', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9be9b815523', 0, 1, '596479aae0d7a31e1', '59648b38bbedfb738', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9c0970145fb', 0, 1, '596479aae0d7a31e1', '59648b1e1d53fe3f2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9c2f6c5d50a', 0, 1, '596479aae0d7a31e1', '59647eb4c8bc5e433', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9c6b8b262bd', 0, 1, '596479aae0d7a31e1', '596474b27ef8460f7', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9c938e3a234', 0, 1, '596479aae0d7a31e1', '596473f01e72b70c6', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9cedc98b82b', 0, 1, '596479aae0d7a31e1', '5964a6d953bc17df0', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9cedcc66946', 0, 1, '596479aae0d7a31e1', '5964a6bd7eb85361a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bc9cee35649fd', 0, 1, '596479aae0d7a31e1', '5964a680a3178a0d5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bd92d61c15871', 0, 1, '596479aae0d7a31e1', '5964bd843c196aa93', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964bdeb9315d9897', 0, 0, '5964b2cc84bfb0348', '5964bd843c196aa93', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964e7077451d4cea', 0, 0, '5964e70772dc6110a', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5964e71411de32643', 0, 0, '5964e70772dc6110a', '5964e6f915be25e43', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59661bbfe96f5402b', 0, 0, '59661bbfe14c2cad7', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59661bfdc9bb1e4d0', 0, 0, '59661bfdc868c6701', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('596634e1bf74bc5c3', 0, 0, '59661bfdc868c6701', '5964c7f765c12dd1b', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968626d155554fa8', 0, 1, '5968626d13acd266c', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968c418a0470fffc', 0, 1, '59661bfdc868c6701', '5968c406cc00fe087', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968c64ca4e5dee14', 0, 1, '5968626d13acd266c', '5968c64c4713b7582', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968cc42b6709d020', 0, 0, '5968cc42b51b397dd', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968cc747cdf42ba7', 0, 1, '5968cc42b51b397dd', '5964e6f915be25e43', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968cc74844ec6ddf', 0, 1, '5968cc42b51b397dd', '5964a70a18e997c2b', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968cc748f8c39cee', 0, 1, '5968cc42b51b397dd', '5964a7226d55c70e4', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968d1e3cae65cbf3', 0, 0, '5968d1dcd4e106201', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5968d1e3cdc404fab', 0, 0, '5968d1dcd4e106201', '5964e6f915be25e43', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597049be1124195f6', 0, 0, '597049a5ee823e57f', '597049893a67fc2f6', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59704a3a15652cc82', 0, 0, '597049a5ee823e57f', '59704a2a6320b8423', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5971dc44b60bde4f2', 0, 0, '597049a5ee823e57f', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5971dc49527179700', 0, 0, '597049a5ee823e57f', '5964e6f915be25e43', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5971dc5496eb24539', 0, 0, '597049a5ee823e57f', '5970b51766e8c0bc5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5971dea7c87e07288', 0, 0, '5971bd60c8fe7f916', '5964e6f915be25e43', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5971ded2d648dcd9d', 0, 0, '5971bd60c8fe7f916', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5978403316c40ab92', 0, 0, '59783fd372eab6a2e', '59784032ae6837bfb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842ae88a1e9bb4', 0, 0, '597842a4b56bb377a', '59783e83f3a47dc81', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842ae899e49fa8', 0, 0, '597842a4b56bb377a', '5971f4fdf08c6e392', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842ae8a098b5ea', 0, 0, '597842a4b56bb377a', '5971fbea3c1cd911d', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842ae8c3adab9e', 0, 0, '597842a4b56bb377a', '5971fb8e14cba4f86', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842aede6b7c519', 0, 0, '597842a4b56bb377a', '5970b4d02d8d327ab', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842aede7bc49c2', 0, 0, '597842a4b56bb377a', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842aedf339f068', 0, 0, '597842a4b56bb377a', '5964a7575f5db97fb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842aee024edf1c', 0, 0, '597842a4b56bb377a', '5964e6f915be25e43', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842af89f69484a', 0, 0, '597842a4b56bb377a', '5970b4f70329ed174', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597842af8a001a3c0', 0, 0, '597842a4b56bb377a', '5970b51766e8c0bc5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597895e61e077baec', 0, 1, '597895e6145347390', '5964e67b7dc402bc2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597895e61e4b5f9b8', 0, 1, '597895e6145347390', '5968c64c4713b7582', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597895f5b4576ea40', 0, 0, '597895e6145347390', '597875c33eb046764', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597896d559a36d7fa', 0, 1, '597896cd9e74f9d3d', '597875c33eb046764', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597896d55baf5e521', 0, 1, '597896cd9e74f9d3d', '5978763475c6634e7', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5979923009c9f57ad', 0, 0, '59799220596b6442a', '5979916df20db96a0', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5979923009d72cd39', 0, 0, '59799220596b6442a', '597991ba78a257f5d', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597992301e60beca2', 0, 0, '59799220596b6442a', '597991cca6d339786', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597992305ee287e9c', 0, 0, '59799220596b6442a', '59799116c003cf94c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597992308eedd19cd', 0, 0, '59799220596b6442a', '597990ff069574119', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799230921e81c88', 0, 0, '59799220596b6442a', '597990eced0cf7c77', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799230c00fae9ec', 0, 0, '59799220596b6442a', '59799095957293bd1', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799231074747ecb', 0, 0, '59799220596b6442a', '5979905a2cdae665a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597992310c5b8baa2', 0, 0, '59799220596b6442a', '5979904a139c31ac0', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597992311efd91466', 0, 0, '59799220596b6442a', '597990377d2dc0575', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5979923129e5ebb98', 0, 0, '59799220596b6442a', '5979913e23d4eec62', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5979923144628f42f', 0, 0, '59799220596b6442a', '59799153ccda10395', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597992314f35cd5fe', 0, 0, '59799220596b6442a', '59799125052f442da', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5979923162dbf86ac', 0, 0, '59799220596b6442a', '5979901bd5c69b750', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('597992316347bcc40', 0, 0, '59799220596b6442a', '597990288417e4310', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5979923173f8b0e34', 0, 0, '59799220596b6442a', '59799003114bb73b7', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799231810b35ba1', 0, 0, '59799220596b6442a', '5978991e67ce7c962', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbd1e34cab8f', 0, 0, '59799220596b6442a', '59799d77641042ff5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbd22350b170', 0, 0, '59799220596b6442a', '59799d91541ce345f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbd28e9927cc', 0, 0, '59799220596b6442a', '59799da3a0734d92e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbd28eb4aafe', 0, 0, '59799220596b6442a', '59799d4c99b7485d5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbd2af8908b7', 0, 0, '59799220596b6442a', '59799d8698e117f90', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbd9c7a0c64b', 0, 0, '59799220596b6442a', '59799d20625cc8ff2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbdadb99bbbb', 0, 0, '59799220596b6442a', '59799d14adfc92125', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbdbbcecbf9a', 0, 0, '59799220596b6442a', '59799d2c9ed31a5b8', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbde5641a08c', 0, 0, '59799220596b6442a', '59799d4080d78fc0b', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbdf40976a44', 0, 0, '59799220596b6442a', '59799d0222d9fa43a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbe4c1130626', 0, 0, '59799220596b6442a', '59799cd2633f1388f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbe54540c2f9', 0, 0, '59799220596b6442a', '59799cf58891f747c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbe5814d6fc5', 0, 0, '59799220596b6442a', '59799ce30f5509d63', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbe7045a8670', 0, 0, '59799220596b6442a', '59799ca6a4c3b7caa', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbe7e7fc0f9c', 0, 0, '59799220596b6442a', '59799d5d620e0a650', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59799dbe81d03949a', 0, 0, '59799220596b6442a', '59799cb8d369eb27c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598174f1e0932b507', 0, 1, '598174e52486ef01c', '59799da3a0734d92e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598174f1e6ed237aa', 0, 0, '598174e52486ef01c', '59799d77641042ff5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598174f1e89cfdd61', 0, 1, '598174e52486ef01c', '59799d91541ce345f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598174f1e89d0100b', 0, 0, '598174e52486ef01c', '59799d8698e117f90', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5981d0b79362f1cd8', 0, 0, '5981d0aeca77c584e', '59799da3a0734d92e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5981d0b794ba68015', 0, 0, '5981d0aeca77c584e', '59799d91541ce345f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5981d0b794bf48e55', 0, 0, '5981d0aeca77c584e', '59799d8698e117f90', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5988585503e2c18a0', 0, 0, '598174e52486ef01c', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59885cf9db38c0a44', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59885cf9db70ee5a0', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59885cf9db8de4a7f', 0, 0, '59244d90445956a54', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59885cf9dc0469dc4', 0, 0, '59244d90445956a54', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59885cfade33a0e2c', 0, 0, '59244d90445956a54', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598992f5a1ce129ea', 0, 1, '5968cc42b51b397dd', '598813c54a7bf5bbd', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b68a93fd2ca8', 0, 1, '598d9b68a7648683c', '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b68a97feaf76', 0, 1, '598d9b68a7648683c', '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b68a9b71083c', 0, 0, '598d9b68a7648683c', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b68a9efcf9b5', 0, 0, '598d9b68a7648683c', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b68aa2849571', 0, 0, '598d9b68a7648683c', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b6f1d6926766', 0, 1, '598d9b68a7648683c', '598ac0658f6923b76', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b6f4880c94f4', 0, 1, '598d9b68a7648683c', '598ac0f7cd63e14ff', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b6f50a6e3e4d', 0, 1, '598d9b68a7648683c', '598ac0c62550ae8d1', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b701d89b6e98', 0, 1, '598d9b68a7648683c', '598ac023bc91bee3a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b702859828c1', 0, 1, '598d9b68a7648683c', '598ac040415aaaa84', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b749b3aaaeea', 0, 1, '598d9b68a7648683c', '598abfa27c34d7daf', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b749c16eed82', 0, 1, '598d9b68a7648683c', '598abfb3f3dda82d9', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b74a31926ee2', 0, 1, '598d9b68a7648683c', '598abfc87c78e01ab', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b759ef9cb07f', 0, 1, '598d9b68a7648683c', '598abf5d5b4a1bb99', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b75b1bcf3269', 0, 1, '598d9b68a7648683c', '598abf78ae54c560c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b7adaabda5e7', 0, 1, '598d9b68a7648683c', '598ab901d96da0817', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b7adfb41cdbc', 0, 1, '598d9b68a7648683c', '598abc68b7d2f203a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b7ae0dcf8a54', 0, 1, '598d9b68a7648683c', '598abf4f626120d79', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b7bdb1beb3c7', 0, 1, '598d9b68a7648683c', '598ab8dd62282ba3e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b7be3cdac174', 0, 1, '598d9b68a7648683c', '598ab8ed02a4e6bdd', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b8262cbe9e5c', 0, 1, '598d9b68a7648683c', '5989accb6aa24c943', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9b955b764b698', 0, 1, '598d9b68a7648683c', '598d9b9501da36e25', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f5e537e8929e', 0, 1, '598d9b68a7648683c', '598d9f13713fd8371', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f5e53ba4a7d6', 0, 1, '598d9b68a7648683c', '598d9f43c7c79ef4b', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f5e540d9ba32', 0, 1, '598d9b68a7648683c', '598d9f342ca2c9b66', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f5f526d653ce', 0, 1, '598d9b68a7648683c', '598d9ef3c9d6c6a6a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f5f53229ddd9', 0, 1, '598d9b68a7648683c', '598d9ede6dfe2eedd', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f6241116b6e6', 0, 1, '598d9b68a7648683c', '598d9ec261e31cfac', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f62411644e7e', 0, 1, '598d9b68a7648683c', '598d9eb44014a0693', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f62417e7fefa', 0, 1, '598d9b68a7648683c', '598d9ecede90e37d8', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f634255b9b9a', 0, 1, '598d9b68a7648683c', '598d9ea7e3c240f14', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f63426344e97', 0, 1, '598d9b68a7648683c', '598d9e8da2d4f6ee9', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f65bebd14586', 0, 1, '598d9b68a7648683c', '598d9e7f5da5132e7', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f65bf964599d', 0, 1, '598d9b68a7648683c', '598d9e650747ff53c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f66beba983d9', 0, 1, '598d9b68a7648683c', '598d9e420d1f3e126', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f66cbf643654', 0, 1, '598d9b68a7648683c', '598d9e4ff3bc2be5f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f6703562523b', 0, 1, '598d9b68a7648683c', '598d9e34961c4fc33', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('598d9f6991629580b', 0, 1, '598d9b68a7648683c', '598d9e27d41dc30f8', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('599599e7864a1e9d2', 0, 1, '599599e783fabb1b2', '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('599599e7868638260', 0, 1, '599599e783fabb1b2', '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('599599e786bc15e64', 0, 0, '599599e783fabb1b2', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('599599e786f2eb54c', 0, 0, '599599e783fabb1b2', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('599599e787295f41e', 0, 0, '599599e783fabb1b2', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('599599fa6148d8be9', 0, 1, '599599e783fabb1b2', '599599fa02ff32758', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e21617285b80', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e21622a3f449', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e216260c0580', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e2162958d970', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e2162ca95153', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e31ea3020f06', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e31eb0a69697', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e31ebfef23bf', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e31ecf691e95', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e31ed29be626', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e4563d0bf952', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e45640b94fa0', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e456440526cd', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e456475c3124', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e4564a96c2f1', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e5627ee1f0ec', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e562828f9e94', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e562859bb6d1', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e56288a779df', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e5628bb713b7', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e767b415da8d', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e767b7d6a429', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e767bb20e3e8', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e767be84ce15', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e767c1ee39e7', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e87d02820e56', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e87d06678a49', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e87d09c4fe0f', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e87d0d36cb17', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e87d1046e768', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e98a066dd071', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e98a0a073be0', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e98a0d564764', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e98a104188a8', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81e98a135db3db', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ea57a59d5bd4', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ea57a93f9259', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ea57ac34604b', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ea57aef81aa1', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ea57b1b49feb', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81eb52ce306491', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81eb52d3671219', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81eb52d78d883c', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81eb52dba66413', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81eb52dfbf16a3', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ec49661d12d7', 0, 1, '59a81ec49544dbc8b', '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ec4969c3dde9', 0, 1, '59a81ec49544dbc8b', '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ec496ceff16c', 0, 0, '59a81ec49544dbc8b', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ec496fe9d21b', 0, 0, '59a81ec49544dbc8b', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ec4972e01735', 0, 0, '59a81ec49544dbc8b', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ed24ab181e2f', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ed24db98f91f', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ed24df73ee18', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ed24e2577e21', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ed24e5345a3d', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ee0c0db85e27', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ee0c117b1255', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ee0c148842f3', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ee0c17a7bad6', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81ee0c1ab4b1dc', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f04767085383', 0, 1, '59a81f04754b05b54', '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f0476aaa2c7d', 0, 1, '59a81f04754b05b54', '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f0476e346f90', 0, 0, '59a81f04754b05b54', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f047714616e0', 0, 0, '59a81f04754b05b54', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f047744fb4ac', 0, 0, '59a81f04754b05b54', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f1455deb91e4', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f14562bfe74b', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f14566cd07e1', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f1456ae87285', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59a81f1456efa3da0', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9b91881b18069', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9be5bf6c9d1f2', 0, 0, NULL, '59af95f809c136524', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9bf356ce92bdb', 0, 0, '59a81e215cd07acbf', '59af9604308c2e8de', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9c1caf549a889', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9c4b5449f5c87', 0, 0, NULL, '59af95f809c136524', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9c68591e07267', 0, 0, NULL, '59af97877a951c8ce', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9c75e93622d90', 0, 0, NULL, '59af97941e37fd6b2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9c825c251bba1', 0, 0, NULL, '59af979e5c1a7cd31', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9cab54116ea01', 0, 0, NULL, '59af97a95618763b6', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9cb6f3bca5139', 0, 0, NULL, '59af97b2348a0ec9e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9cc396d407776', 0, 0, NULL, '59af97baa662562f5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9cd15d812bd33', 0, 0, NULL, '59af97c31b50de66c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9cdd5009139db', 0, 0, NULL, '59af97cb9253aecee', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9ce88d3009d0b', 0, 0, NULL, '59af97d3795b75f07', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9cf5dfdd92a95', 0, 0, NULL, '59af97de8c0a4e121', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9cffbe238d1c4', 0, 0, NULL, '59af97e8832b39535', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d0d5b1358a8a', 0, 0, NULL, '59af97f1b9358224f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d1e77ceb9f7b', 0, 0, NULL, '59af98341c1ef6e9c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d1e7a407ec90', 0, 0, NULL, '59af984349a116a24', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d1f7cc105dc9', 0, 0, NULL, '59af97fdb6738b14f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d2a1efc17e82', 0, 0, NULL, '59af98062e3d1cba2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d3489bb4808e', 0, 0, NULL, '59af980da501d1de5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d3e7b00ae8f2', 0, 0, NULL, '59af9815efd1a780d', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d49839567d1f', 0, 0, NULL, '59af98286e2a9699f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d7d10c4f6499', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9d9007807e2f8', 0, 0, '59a81e5626be53a2d', '59af9596ccdeaffc0', NULL, 'Channel', NULL, '2019-08-27 13:38:37', NULL, '1', '1', '5bbaf1daea9ee8a6b'),
('59af9dbf33d9c79e8', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9ddd0abf22350', 0, 0, NULL, '59af976a25c388ba6', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9df8bdee0fb3a', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9e199ebdfac5e', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9e43a3967c59c', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9e4d0c7306b50', 0, 0, '59a81eb52b3474cff', '59af94b0b8671011f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9e616620e0f51', 0, 0, '59a81eb52b3474cff', '59af9596ccdeaffc0', NULL, 'Channel', NULL, '2019-08-27 13:34:10', NULL, '1', '1', '1'),
('59af9e6b6c27a7e75', 0, 0, '59a81eb52b3474cff', '59af9742e13e33219', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9e84dc0e722c6', 0, 0, '59a81ec49544dbc8b', '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9e99a69f1ace7', 0, 0, '59a81ec49544dbc8b', '59af9752c3df9518b', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9eadb5c8a5a55', 0, 0, '59a81ec49544dbc8b', '59af976a25c388ba6', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9edaa5cde0ed1', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9ef09cf799e3c', 0, 0, '59a81e4562b1f9403', '59af9676e3a057991', NULL, 'Channel', NULL, '2019-08-27 13:39:56', NULL, '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66'),
('59af9efb94e38caf4', 0, 0, '59a81e4562b1f9403', '59af968260dcb66a2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9f060dd2a4c1c', 0, 1, '59a81e4562b1f9403', '59af96a550f14e257', NULL, 'Channel', NULL, '2019-08-27 13:39:47', NULL, '1', '5b6807ebe42c89d66', '5bbaf1daea9ee8a6b'),
('59af9f5dd832c7612', 0, 0, '59a81ea5792427f7b', '59af99104a1bca5b7', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9f6b2eb8728c2', 0, 0, '59a81ea5792427f7b', '59af9a2b5860a9910', NULL, 'Channel', NULL, '2019-08-27 13:35:12', NULL, '1', '5bbaf1daea9ee8a6b', '1'),
('59af9f8a00bd895d1', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9f9858efa6568', 0, 0, '59a81ed24744d3f44', '59af94a4915c4b061', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9fa36b286f6f9', 0, 0, NULL, '59af94b0b8671011f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59af9fc7f3547bd8b', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa017985c8aae1', 0, 0, '59a81f04754b05b54', '59af994e3af75d99f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa01f6ae3ae4e8', 0, 0, '59a81f04754b05b54', '59af9a2b5860a9910', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa0235ecef156d', 0, 0, '59a81f04754b05b54', '59af9a775b18e6e8a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa02bed402b69d', 0, 0, '59a81f04754b05b54', '59af9ac4994425b18', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa033a9c827a97', 0, 0, '59a81f04754b05b54', '59af98af10649a2a0', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa06e3f1f64da4', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa08156fc51a3b', 0, 0, '59a81f145450ab8e6', '59af95ec43c8ba01b', NULL, 'Channel', NULL, '2019-08-27 13:27:25', NULL, '1', '1', '1'),
('59afa08bc869ac508', 0, 0, '59a81f145450ab8e6', '59af96fe0a24a4ce0', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa095d85ac353d', 0, 0, '59a81f145450ab8e6', '59af970a496c620f7', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa1e6ba0b911a5', 0, 0, '59a81f04754b05b54', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa1f792f9d80ee', 0, 0, '59a81e215cd07acbf', '59afa1e6473c5052e', NULL, 'Channel', NULL, '2019-08-27 13:44:31', NULL, '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66'),
('59afa2025cb0b1b44', 0, 0, NULL, '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa20878c64f745', 0, 0, '59a81e4562b1f9403', '59afa1e6473c5052e', NULL, 'Channel', NULL, '2019-08-27 13:40:13', NULL, '1', '5b6807ebe42c89d66', '5bbaf1daea9ee8a6b'),
('59afa20fd920701eb', 0, 0, '59a81e5626be53a2d', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa21e160e17a41', 0, 0, '59a81e767a1f2da77', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa228387a8673e', 0, 0, '59a81e87ced462859', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa236c6c7c3d81', 0, 0, '59a81e989bb7c1ef4', '59afa1e6473c5052e', NULL, 'Channel', NULL, '2019-08-27 13:36:40', NULL, '1', '5bbaf1daea9ee8a6b', '5bbaf1daea9ee8a6b'),
('59afa23e252f73b04', 0, 0, '59a81ea5792427f7b', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa2620bbb1a68f', 0, 0, '59a81eb52b3474cff', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa2691730c1b24', 0, 0, '59a81ec49544dbc8b', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa270930b69096', 0, 0, '59a81ed24744d3f44', '59afa1e6473c5052e', NULL, 'Channel', NULL, '2019-08-27 13:29:37', NULL, '1', '1', '1'),
('59afa27c59417d989', 0, 0, '59a81ee0bfb62830c', '59afa1e6473c5052e', NULL, 'Channel', NULL, '2019-08-27 13:28:42', NULL, '1', '1', '1'),
('59afa283c1014947d', 0, 0, '59a81f145450ab8e6', '59afa1e6473c5052e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59afa5a79231ded6b', 0, 0, '59a81ec49544dbc8b', '59afa5a73160cfceb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e4dc931a2e368', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e4dc941c7af1a', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e4dc944f4bb24', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e4dc948131e35', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e4dc94b26ab70', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e79f95c1079e0', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e7ac3d8e8c0f0', 0, 0, NULL, '59af97877a951c8ce', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b0e7e4baaaa7144', 0, 0, NULL, '59b0e7e45986c95ed', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236199f2a875c5', 0, 1, '59b236199d49d9218', '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236199f70403ac', 0, 1, '59b236199d49d9218', '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236199fa4cb527', 0, 0, '59b236199d49d9218', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236199fdd726ba', 0, 0, '59b236199d49d9218', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23619a01225d0c', 0, 0, '59b236199d49d9218', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23634e0bf00429', 0, 0, '59b236199d49d9218', '59b0fd950738ffe38', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23634e12b50141', 0, 0, '59b236199d49d9218', '59b0fd8325ab92b76', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23634e1a620145', 0, 0, '59b236199d49d9218', '59b0fd53b99aff2e2', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23634e2b79b7b6', 0, 0, '59b236199d49d9218', '59b0fd73df0c32b19', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236355353d74ae', 0, 0, '59b236199d49d9218', '59b0fd3b8148faa50', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23635579aa04e9', 0, 0, '59b236199d49d9218', '59b0fd15ea6b5b3d5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236355854c881a', 0, 0, '59b236199d49d9218', '59b0fd305f7282e8c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236355915f4838', 0, 0, '59b236199d49d9218', '59b0fd231e770f82f', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23635b9e2e5a12', 0, 0, '59b236199d49d9218', '59b0fcf51cddcf153', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23635ba5266ec4', 0, 0, '59b236199d49d9218', '59b0fce98f3302374', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23635bb0ae426c', 0, 0, '59b236199d49d9218', '59b0fd061b65d2ff3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b23635cb6550036', 0, 0, '59b236199d49d9218', '59b0fcdd79d244220', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236362ad16c7c9', 0, 0, '59b236199d49d9218', '59b0fcbc47ac79df0', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b236362e1bdac89', 0, 0, '59b236199d49d9218', '59b0fd5de7332deac', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b2363635cc573be', 0, 0, '59b236199d49d9218', '59b0f8b494fd614bb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b2363638ee5e6f6', 0, 0, '59b236199d49d9218', '59b0fd45a0ff78d08', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b8d28e8576a28aa', 0, 0, '59a81e215cd07acbf', '59b8d28e1fc5ea814', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b8d31e953960f70', 0, 0, '59a81e215cd07acbf', '59b8d31e3421a3e70', NULL, 'Channel', NULL, '2019-08-27 13:43:23', NULL, '1', '1', '5bbaf1daea9ee8a6b'),
('59b8d36141b01d790', 0, 0, NULL, '59b8d31e3421a3e70', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59b8d3795b21c65a4', 0, 0, NULL, '59b8d28e1fc5ea814', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8d6ccf0f9', 0, 1, '59ba216b86544f2c7', '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8daff1ab9', 0, 1, '59ba216b86544f2c7', '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8de9fced0', 0, 0, '59ba216b86544f2c7', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8e2403873', 0, 0, '59ba216b86544f2c7', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8e5f69485', 0, 0, '59ba216b86544f2c7', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8e97f00ce', 0, 0, '59ba216b86544f2c7', '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8ed11fe62', 0, 0, '59ba216b86544f2c7', '59af97877a951c8ce', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ba216b8f0bcccd6', 0, 0, '59ba216b86544f2c7', '59b0e7e45986c95ed', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59bf6b572f21f8a7d', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59bf6b572f6a3cddd', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59bf6b572fa0980e1', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59bf6b572fd2b9f13', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59bf6b573004f952b', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59c0b8850d41e3cf7', 0, 0, '59b236199d49d9218', '59b2397b0a60ce0a3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59c0b8850d44202ac', 0, 0, '59b236199d49d9218', '59b2388ac64421b72', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ca3eeb00c3182cf', 0, 1, '59ca3eeaefdab7165', '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ca3eeb01257262c', 0, 1, '59ca3eeaefdab7165', '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ca3eeb016945d9e', 0, 0, '59ca3eeaefdab7165', '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ca3eeb028c446db', 0, 0, '59ca3eeaefdab7165', '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59ca3eeb02e377ef3', 0, 0, '59ca3eeaefdab7165', '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0a86601017b74', 0, 1, NULL, '5988530ec62612aeb', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0a86604f38e24', 0, 1, NULL, '5988537d5db85428e', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0a866080f6832', 0, 0, NULL, '598853c7dc75ce9c5', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0a8660b23d50a', 0, 0, NULL, '598852ce232ac7636', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0a8660e2a3945', 0, 0, NULL, '598852b66d741e2f3', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0af2a591cf34b', 0, 0, NULL, '59af97877a951c8ce', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0bdabf27aee66', 0, 0, NULL, '59af9498182335b27', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0bf40aa57da61', 0, 0, NULL, '59af976a25c388ba6', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0c2812b970872', 0, 0, NULL, '59fb0c27979555659', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0c6eca36dc98c', 0, 0, NULL, '59fb0c6e61011344a', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('59fb0ccda6a714d42', 0, 0, NULL, '59fb0ccd333d23a8c', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5acca878720b3830e', 0, 0, NULL, '59fb1561962e5d354', NULL, 'Global', NULL, NULL, NULL, NULL, NULL, NULL),
('5d651923a636a0331', 0, 0, '59a81e215cd07acbf', '59af9742e13e33219', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923a723fabf1', 0, 1, '59a81e215cd07acbf', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923a77a9ce9c', 0, 1, '59a81e215cd07acbf', '59af9653e337b5aed', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923a85702494', 0, 0, '59a81e215cd07acbf', '59af9752c3df9518b', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:43:47', 'system', '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66'),
('5d651923a8a985557', 0, 0, '59a81e215cd07acbf', '59af97763aae4daef', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923a9315d114', 0, 1, '59a81e215cd07acbf', '59af98341c1ef6e9c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923a9a8af162', 0, 1, '59a81e215cd07acbf', '59af984349a116a24', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923aa3462927', 0, 0, '59a81e215cd07acbf', '59af9815efd1a780d', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:44:13', 'system', '1', '5bbaf1daea9ee8a6b', '1'),
('5d651923aa829aee1', 0, 0, '59a81e215cd07acbf', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923aae6b42d7', 0, 0, '59a81e215cd07acbf', '59af97941e37fd6b2', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ab435a051', 0, 1, '59a81e215cd07acbf', '59af96fe0a24a4ce0', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ab9687e97', 0, 1, '59a81e215cd07acbf', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ac12b8438', 0, 0, '59a81e215cd07acbf', '59af95f809c136524', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:43:58', 'system', '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66'),
('5d651923ac556e878', 0, 0, '59a81e215cd07acbf', '59b8d31e3421a3e70', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923acd844df6', 0, 0, '59a81e215cd07acbf', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ad2a23594', 0, 0, '59a81e31e90918ce4', '59af95f809c136524', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ad8d09779', 0, 1, '59a81e31e90918ce4', '59af97de8c0a4e121', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923adf3f5442', 0, 0, '59a81e31e90918ce4', '59af97e8832b39535', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ae53f12dc', 0, 0, '59a81e31e90918ce4', '59af97f1b9358224f', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923aeaa1528b', 0, 1, '59a81e31e90918ce4', '59af98286e2a9699f', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923aef4cdfa0', 0, 0, '59a81e31e90918ce4', '59af98341c1ef6e9c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923af37bbbd5', 0, 0, '59a81e31e90918ce4', '59af984349a116a24', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923af77525e4', 0, 0, '59a81e31e90918ce4', '59af97d3795b75f07', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923afcbecf3b', 0, 0, '59a81e31e90918ce4', '59af97fdb6738b14f', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b008c1455', 0, 1, '59a81e31e90918ce4', '59af97c31b50de66c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b045afbbd', 0, 0, '59a81e31e90918ce4', '59af980da501d1de5', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b08423b83', 0, 0, '59a81e31e90918ce4', '59af97cb9253aecee', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b0cbabb6e', 0, 0, '59a81e31e90918ce4', '59af97baa662562f5', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b166e3629', 0, 0, '59a81e31e90918ce4', '59af98062e3d1cba2', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b1eeb150f', 0, 0, '59a81e31e90918ce4', '59af9815efd1a780d', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b251596e4', 0, 0, '59a81e31e90918ce4', '59b8d31e3421a3e70', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b64e5f3fd', 0, 0, '59a81e31e90918ce4', '59af97941e37fd6b2', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b6c7e91bd', 0, 1, '59a81e31e90918ce4', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b96e87b15', 0, 0, '59a81e31e90918ce4', '59af979e5c1a7cd31', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923b9c66df6f', 0, 0, '59a81e31e90918ce4', '59afa1e6473c5052e', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-28 05:42:48', 'system', '1', '1', '1'),
('5d651923ba53ffa31', 0, 1, '59a81e31e90918ce4', '59b8d28e1fc5ea814', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-28 05:38:22', 'system', '1', '1', '1'),
('5d651923bb0a0ba06', 0, 0, '59a81e31e90918ce4', '59af97a95618763b6', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bb7d6ccce', 0, 0, '59a81e31e90918ce4', '59af97b2348a0ec9e', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bc05bc7f7', 0, 1, '59a81e31e90918ce4', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bc88d191a', 0, 0, '59a81e31e90918ce4', '59af9653e337b5aed', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-28 05:36:11', 'system', '1', '1', '1'),
('5d651923bce0e14d5', 0, 0, '59a81e31e90918ce4', '5ccac8c86f70fdfca', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bd37bfb20', 0, 0, '59a81e31e90918ce4', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bd88184d5', 0, 0, '59a81e31e90918ce4', '5ccae1b3e6f8a4e69', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923be3a0ff04', 0, 0, '59a81e31e90918ce4', '5ccae20aa0a45800c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923beb730f50', 0, 0, '59a81e31e90918ce4', '5ccbe2234e379b94d', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bf1f564f3', 0, 1, '59a81e4562b1f9403', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bf98a44ed', 0, 0, '59a81e4562b1f9403', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923bffbd0170', 0, 1, '59a81e4562b1f9403', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c041bc2a0', 0, 0, '59a81e4562b1f9403', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c07f663e9', 0, 1, '59a81e5626be53a2d', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c0df90fbd', 0, 0, '59a81e5626be53a2d', '59af94b0b8671011f', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c118f5db4', 0, 0, '59a81e5626be53a2d', '59af99104a1bca5b7', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c14416ef9', 0, 1, '59a81e5626be53a2d', '59af97941e37fd6b2', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c179a6b28', 0, 1, '59a81e5626be53a2d', '59af9596ccdeaffc0', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c1aa5859e', 0, 0, '59a81e5626be53a2d', '59af94a4915c4b061', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:39:10', 'system', '1', '5b6807ebe42c89d66', '5bbaf1daea9ee8a6b'),
('5d651923c1cdba694', 0, 1, '59a81e5626be53a2d', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c1fa7d147', 0, 0, '59a81e5626be53a2d', '59b8d31e3421a3e70', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c21b97a6b', 0, 1, '59a81e5626be53a2d', '5ccac8c86f70fdfca', NULL, 'Global', '2019-08-27 11:50:59', '2019-08-27 13:39:12', 'system', '1', NULL, 'system');
INSERT INTO `product_family_attribute` (`id`, `deleted`, `is_required`, `product_family_id`, `attribute_id`, `name`, `scope`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `owner_user_id`) VALUES
('5d651923c25713970', 0, 0, '59a81e5626be53a2d', '5ccacdf261f84e415', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:38:54', 'system', '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66'),
('5d651923c293fe531', 0, 1, '59a81e767a1f2da77', '59afa1e6473c5052e', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:51:18', 'system', '1', '5b6807ebe42c89d66', '5bbaf1daea9ee8a6b'),
('5d651923c2f6020a4', 0, 1, '59a81e767a1f2da77', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c4020aa9f', 0, 1, '59a81e767a1f2da77', '5ccac8c86f70fdfca', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:50:22', 'system', '1', '5b6807ebe42c89d66', 'system'),
('5d651923c44fb6978', 0, 0, '59a81e767a1f2da77', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c48825801', 0, 0, '59a81e767a1f2da77', '5ccae1b3e6f8a4e69', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:52:59', 'system', '1', '5bbaf1daea9ee8a6b', '5b6807ebe42c89d66'),
('5d651923c4bc4c59b', 0, 0, '59a81e767a1f2da77', '5ccae20aa0a45800c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c4f1b3f53', 0, 1, '59a81e767a1f2da77', '5ccbe2234e379b94d', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:50:10', 'system', '1', '5bbaf1daea9ee8a6b', 'system'),
('5d651923c56117755', 0, 1, '59a81e87ced462859', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c5c35ac26', 0, 0, '59a81e87ced462859', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c5e9b823e', 0, 1, '59a81e87ced462859', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c61ad250c', 0, 0, '59a81e87ced462859', '59b8d31e3421a3e70', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:37:21', 'system', '1', '5bbaf1daea9ee8a6b', '5bbaf1daea9ee8a6b'),
('5d651923c644013a8', 0, 0, '59a81e87ced462859', '5ccacdf261f84e415', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:37:32', 'system', '1', '1', '5bbaf1daea9ee8a6b'),
('5d651923c672c52b3', 0, 1, '59a81e989bb7c1ef4', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c6ec287be', 0, 0, '59a81e989bb7c1ef4', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c70d91000', 0, 1, '59a81e989bb7c1ef4', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c794ca723', 0, 0, '59a81e989bb7c1ef4', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c7bbe3847', 0, 1, '59a81ea5792427f7b', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c7e313b31', 0, 1, '59a81ea5792427f7b', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c800d38c0', 0, 1, '59a81ea5792427f7b', '59af9a2b5860a9910', NULL, 'Global', '2019-08-27 11:50:59', '2019-08-27 13:35:15', 'system', '1', NULL, 'system'),
('5d651923c822fec9b', 0, 1, '59a81ea5792427f7b', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c8708ab29', 0, 0, '59a81ea5792427f7b', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c89696665', 0, 0, '59a81eb52b3474cff', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c8f9d525c', 0, 1, '59a81eb52b3474cff', '59af9a2b5860a9910', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c92fefd2a', 0, 1, '59a81eb52b3474cff', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c95acbce5', 0, 1, '59a81eb52b3474cff', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c99dfa510', 0, 0, '59a81eb52b3474cff', '59b8d28e1fc5ea814', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923c9d451079', 0, 1, '59a81eb52b3474cff', '5ccacdf261f84e415', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:34:35', 'system', '1', '5bbaf1daea9ee8a6b', 'system'),
('5d651923ca1aa2b1b', 0, 1, '59a81ed24744d3f44', '59af94b0b8671011f', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ca53c9f30', 0, 0, '59a81ed24744d3f44', '59af99104a1bca5b7', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ca895c879', 0, 0, '59a81ed24744d3f44', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923cae8de04e', 0, 0, '59a81ed24744d3f44', '59af9596ccdeaffc0', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923cb575defb', 0, 1, '59a81ed24744d3f44', '59af94a4915c4b061', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:29:54', 'system', '1', '5bbaf1daea9ee8a6b', '5bbaf1daea9ee8a6b'),
('5d651923cbb487c83', 0, 1, '59a81ed24744d3f44', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923cc39bf38b', 0, 0, NULL, '59b8d31e3421a3e70', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923cc9163226', 0, 1, '59a81ed24744d3f44', '59afa1e6473c5052e', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923cd0feb0f1', 0, 0, '59a81ed24744d3f44', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923cd64f8f13', 0, 1, '59a81ee0bfb62830c', '5be548d57b74b3154', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:28:30', 'system', '1', '1', '1'),
('5d651923cdc1ea45d', 0, 0, '59a81ee0bfb62830c', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923ce1f7fd69', 0, 0, '59a81f145450ab8e6', '5ccacdf261f84e415', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:27:35', 'system', '1', '1', '1'),
('5d651923ce8de93be', 0, 1, '59b0e4dc9080edfa7', '59af97877a951c8ce', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:23:53', 'system', '1', '1', '1'),
('5d651923cf439361d', 0, 0, '59b0e4dc9080edfa7', '59b0e7e45986c95ed', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:24:36', 'system', '1', '1', '1'),
('5d651923cffd34404', 0, 1, '59b0e4dc9080edfa7', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d07ab0e0e', 0, 0, '59b0e4dc9080edfa7', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d1024663b', 0, 0, '59b0e4dc9080edfa7', '5ccae20aa0a45800c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d15fddb40', 0, 0, '59b0e4dc9080edfa7', '5ccae1b3e6f8a4e69', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d1abc70d6', 0, 0, '59b0e4dc9080edfa7', '5ccbe2234e379b94d', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d21f38020', 0, 0, '59bf6b572d8ac5590', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d2950e475', 0, 0, '59bf6b572d8ac5590', '59b8d28e1fc5ea814', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d2e271fdf', 0, 1, '59bf6b572d8ac5590', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d3d3af817', 0, 1, '59bf6b572d8ac5590', '59af95ec43c8ba01b', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:22:39', 'system', '1', '1', '1'),
('5d651923d42b46da6', 0, 0, '59bf6b572d8ac5590', '5ccacdf261f84e415', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 13:22:53', 'system', '1', '1', '1'),
('5d651923d5643b754', 0, 0, '59fb0a8658e98de76', '59fb0c6e61011344a', NULL, 'Global', '2019-08-27 11:50:59', '2019-08-27 12:12:53', 'system', '1', NULL, 'system'),
('5d651923d5c2216a5', 0, 1, '59fb0a8658e98de76', '59af97877a951c8ce', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 12:15:35', 'system', '1', '1', '1'),
('5d651923d617ade1a', 0, 0, NULL, '59fb0ccd333d23a8c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d64e875b0', 0, 1, '59fb0a8658e98de76', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d6841b1ee', 0, 0, '59fb0a8658e98de76', '5ccac8c86f70fdfca', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d6c037a84', 0, 0, '59fb0a8658e98de76', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d7235aa14', 0, 0, '59fb0a8658e98de76', '5ccae1b3e6f8a4e69', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d77941025', 0, 0, '59fb0a8658e98de76', '5ccae20aa0a45800c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d7d9c2be0', 0, 1, '59fb0a8658e98de76', '5ccbe2234e379b94d', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 12:15:21', 'system', '1', '1', '1'),
('5d651923d879f91ad', 0, 1, '5cb6e3a0b4208e9ec', '5be548d57b74b3154', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d8b78af22', 0, 1, '5cb6e3a0b4208e9ec', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d8e8929e9', 0, 1, '5cb6e3a0b4208e9ec', '59af97877a951c8ce', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 12:48:15', 'system', '1', '1', '1'),
('5d651923d98b6852a', 0, 0, NULL, '59af9a2b5860a9910', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923d9be79b53', 0, 0, '5cb6e3a0b4208e9ec', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923da04a3ff8', 0, 0, '5cb6e3a0b4208e9ec', '5ccae20aa0a45800c', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923da422aa82', 0, 0, '5cb6e3a0b4208e9ec', '5ccae1b3e6f8a4e69', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923da7e4e26b', 0, 0, '5cb6e3a0b4208e9ec', '5ccbe2234e379b94d', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923dacf86c9b', 0, 0, '5cb6e722d8cc75e9b', '59fb1561962e5d354', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923db313167d', 0, 1, '5cb6e722d8cc75e9b', '59b8d28e1fc5ea814', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651923db6d871d2', 0, 1, '5cb6e722d8cc75e9b', '5be548d57b74b3154', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 12:46:15', 'system', '1', '1', '1'),
('5d651923dbfb2c72d', 0, 0, '5cb6e722d8cc75e9b', '59af95ec43c8ba01b', NULL, 'Channel', '2019-08-27 11:50:59', '2019-08-27 12:46:29', 'system', '1', '1', '1'),
('5d651923dc3094062', 0, 0, '5cb6e722d8cc75e9b', '5ccacdf261f84e415', NULL, 'Global', '2019-08-27 11:50:59', NULL, 'system', NULL, NULL, NULL),
('5d651cc60e7b8af84', 0, 0, '59fb0a8658e98de76', '59fb0ccd333d23a8c', NULL, 'Global', '2019-08-27 12:06:30', '2019-08-27 12:06:30', '1', NULL, '1', '1'),
('5d651d0e570a46f14', 0, 1, '59fb0a8658e98de76', '59fb0ccd333d23a8c', NULL, 'Channel', '2019-08-27 12:07:42', '2019-08-27 12:07:58', '1', '1', '1', '1'),
('5d651d1c59230f469', 0, 0, NULL, '59fb0ccd333d23a8c', NULL, 'Channel', '2019-08-27 12:07:56', '2019-08-27 12:07:56', '1', NULL, '1', '1'),
('5d651f090d26456ff', 0, 1, '59fb0a8658e98de76', '59af97877a951c8ce', NULL, 'Global', '2019-08-27 12:16:09', '2019-08-27 12:16:09', '1', NULL, '1', '1'),
('5d652667305b6f9d5', 0, 0, '5cb6e3a0b4208e9ec', '59fb1561962e5d354', NULL, 'Channel', '2019-08-27 12:47:35', '2019-08-27 12:47:35', '1', NULL, '1', '1'),
('5d65266f8576ac592', 0, 0, '5cb6e3a0b4208e9ec', '59fb1561962e5d354', NULL, 'Channel', '2019-08-27 12:47:43', '2019-08-27 12:47:43', '1', NULL, '1', '1'),
('5d652fd1ba448bb82', 0, 0, '59a81f145450ab8e6', '5ccacdf261f84e415', NULL, 'Channel', '2019-08-27 13:27:45', '2019-08-27 13:27:45', '1', NULL, '1', '1'),
('5d653016608c13644', 0, 0, '59a81ee0bfb62830c', '5be548d57b74b3154', NULL, 'Channel', '2019-08-27 13:28:54', '2019-08-27 13:28:54', '1', NULL, '1', '1'),
('5d6531b28ce06751a', 0, 0, '59a81ea5792427f7b', '59af97877a951c8ce', NULL, 'Channel', '2019-08-27 13:35:46', '2019-08-27 13:35:46', '1', NULL, '1', '1'),
('5d6612d7ec35e2d76', 0, 0, '59a81e31e90918ce4', '59af9653e337b5aed', NULL, 'Channel', '2019-08-28 05:36:23', '2019-08-28 05:36:23', '1', NULL, '1', '1'),
('5d6612dd0539b0af4', 0, 0, '59a81e31e90918ce4', '59af9653e337b5aed', NULL, 'Global', '2019-08-28 05:36:29', '2019-08-28 05:36:29', '1', NULL, '1', '1'),
('5d66143a6739c8ebc', 0, 0, '59a81e31e90918ce4', '59b8d28e1fc5ea814', NULL, 'Channel', '2019-08-28 05:42:18', '2019-08-28 05:42:18', '1', NULL, '1', '1'),
('5d66146aea2d2b8de', 0, 0, '59a81e31e90918ce4', '59afa1e6473c5052e', NULL, 'Channel', '2019-08-28 05:43:06', '2019-08-28 05:43:06', '1', NULL, '1', '1'),
('5d6614703ca778ba8', 0, 1, '59a81e31e90918ce4', '59afa1e6473c5052e', NULL, 'Global', '2019-08-28 05:43:12', '2019-08-28 05:43:15', '1', '1', '1', '1'),
('5da0645f8a9c5ea9a', 0, 1, '59fb0a8658e98de76', '59af9a2b5860a9910', NULL, 'Channel', '2019-10-11 11:15:43', '2019-10-11 11:15:43', '1', NULL, '1', '1'),
('5da064d9860f03886', 0, 0, NULL, '59af9a2b5860a9910', NULL, 'Global', '2019-10-11 11:17:45', '2019-10-11 11:17:45', '1', NULL, '1', '1'),
('5da064f6d9de31ab4', 0, 0, '5cb6e3a0b4208e9ec', '5da06321d29c43dc2', NULL, 'Global', '2019-10-11 11:18:14', '2019-10-11 11:18:14', '1', NULL, '1', '1'),
('5da065f2d9df5b89e', 0, 0, '59a81e767a1f2da77', '59af9a2b5860a9910', NULL, 'Global', '2019-10-11 11:22:26', '2019-10-11 11:22:26', '1', NULL, '1', '1'),
('5da9580b199577e80', 0, 0, '59fb0a8658e98de76', '5da957f710ec09052', NULL, 'Global', '2019-10-18 06:13:31', '2019-10-18 06:13:31', '1', NULL, '1', '1'),
('5da95f08747b336d2', 0, 0, '59fb0a8658e98de76', '5da95efe7051f42de', NULL, 'Global', '2019-10-18 06:43:20', '2019-10-18 06:43:20', '1', NULL, '1', '1'),
('5dd25b9e6591c83c9', 0, 0, '59fb0a8658e98de76', '5dd25b9263d143109', NULL, 'Global', '2019-11-18 08:51:42', '2019-11-18 08:51:42', '1', NULL, '1', '1'),
('5dd25e29c0295a5f3', 0, 0, '59a81e31e90918ce4', '5dd25e12a6456e268', NULL, 'Global', '2019-11-18 09:02:33', '2019-11-18 09:02:33', '1', NULL, '1', '1'),
('5dd291c1744aacb9b', 0, 0, '59a81e767a1f2da77', '5dd25b9263d143109', NULL, 'Global', '2019-11-18 12:42:41', '2019-11-18 12:42:41', '1', NULL, '1', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `product_family_attribute_channel`
--
DROP TABLE IF EXISTS `product_family_attribute_channel`;
CREATE TABLE `product_family_attribute_channel` (
                                                    `id` int(11) NOT NULL,
                                                    `channel_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                                    `product_family_attribute_id` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                                                    `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product_family_attribute_channel`
--

INSERT INTO `product_family_attribute_channel` (`id`, `channel_id`, `product_family_attribute_id`, `deleted`) VALUES
(1, '5b7bba2f2f257d218', '5d651d0e570a46f14', 0),
(2, '59a81f8c56f59622d', '5d651d0e570a46f14', 0),
(3, '59a81f80ae0ce8ecb', '5d651d0e570a46f14', 0),
(4, '5a144ccfe86acdda7', '5d651d1c59230f469', 0),
(5, '59a81f8c56f59622d', '5d651923d7d9c2be0', 0),
(6, '59a81f80ae0ce8ecb', '5d651923d7d9c2be0', 0),
(7, '5b7bba2f2f257d218', '5d651923d5c2216a5', 0),
(8, '5a144ccfe86acdda7', '5d651923d5c2216a5', 0),
(9, '59a81f8c56f59622d', '5d651923d5c2216a5', 0),
(10, '5b7bba2f2f257d218', '5d651923d484a1cae', 0),
(11, '59a81f80ae0ce8ecb', '5d651923d484a1cae', 0),
(12, '59ba3d074e36186d4', '5d651923db6d871d2', 0),
(13, '59a81fa552e62a6aa', '5d651923db6d871d2', 0),
(14, '59a81f8c56f59622d', '5d651923db6d871d2', 0),
(15, '59a81f8c56f59622d', '5d651923dbfb2c72d', 0),
(16, '59a81f80ae0ce8ecb', '5d651923dbfb2c72d', 0),
(17, '59ba3d074e36186d4', '5d651923dafac8240', 0),
(18, '59a81f80ae0ce8ecb', '5d652667305b6f9d5', 0),
(19, '5971b7857670e1789', '5d652667305b6f9d5', 0),
(20, '59a81f8c56f59622d', '5d65266f8576ac592', 0),
(21, '59ba3d074e36186d4', '5d651923d8e8929e9', 0),
(22, '5b7bba2f2f257d218', '5d651923d3d3af817', 0),
(23, '59a81fa552e62a6aa', '5d651923d3d3af817', 0),
(24, '59a81f8c56f59622d', '5d651923d42b46da6', 0),
(25, '5a144ccfe86acdda7', '5d651923ce8de93be', 0),
(26, '5971b7857670e1789', '5d651923ce8de93be', 0),
(27, '5b7bba2f2f257d218', '5d651923cf439361d', 0),
(28, '59ba3d074e36186d4', '5d651923cf439361d', 0),
(29, '59ba3d074e36186d4', '59afa08156fc51a3b', 0),
(30, '59a81f8c56f59622d', '59afa08156fc51a3b', 0),
(31, '5971b7857670e1789', '59afa08156fc51a3b', 0),
(32, '5a144ccfe86acdda7', '5d651923ce1f7fd69', 0),
(33, '5971b7857670e1789', '5d652fd1ba448bb82', 0),
(34, '59ba3d074e36186d4', '5d651923cd64f8f13', 0),
(35, '59a81fa552e62a6aa', '5d651923cd64f8f13', 0),
(36, '59a81f8c56f59622d', '59afa27c59417d989', 0),
(37, '59a81f8c56f59622d', '5d653016608c13644', 0),
(38, '59a81f80ae0ce8ecb', '5d653016608c13644', 0),
(39, '59ba3d074e36186d4', '59afa270930b69096', 0),
(40, '59a81fa552e62a6aa', '59afa270930b69096', 0),
(41, '59a81f80ae0ce8ecb', '5d651923cb575defb', 0),
(42, '5971b7857670e1789', '5d651923cb575defb', 0),
(43, '59ba3d074e36186d4', '59af9e616620e0f51', 0),
(44, '59a81fa552e62a6aa', '59af9e616620e0f51', 0),
(45, '5b7bba2f2f257d218', '5d651923c8cd9d7b1', 0),
(46, '5a144ccfe86acdda7', '5d651923c8cd9d7b1', 0),
(47, '59ba3d074e36186d4', '5d651923c8cd9d7b1', 0),
(48, '59a81fa552e62a6aa', '5d651923c8cd9d7b1', 0),
(49, '59a81f8c56f59622d', '5d651923c8cd9d7b1', 0),
(50, '59a81f80ae0ce8ecb', '5d651923c8cd9d7b1', 0),
(51, '5971b7857670e1789', '5d651923c8cd9d7b1', 0),
(52, '5a144ccfe86acdda7', '5d651923c9d451079', 0),
(53, '59a81fa552e62a6aa', '59af9f6b2eb8728c2', 0),
(54, '5971b7857670e1789', '59af9f6b2eb8728c2', 0),
(55, '5a144ccfe86acdda7', '5d651923c850c0677', 0),
(56, '59a81f8c56f59622d', '5d651923c850c0677', 0),
(57, '59a81f8c56f59622d', '5d6531b28ce06751a', 0),
(58, '5971b7857670e1789', '5d6531b28ce06751a', 0),
(59, '5b7bba2f2f257d218', '59af9e23e7aa969aa', 0),
(60, '59ba3d074e36186d4', '59af9e23e7aa969aa', 0),
(61, '59a81f8c56f59622d', '59af9e23e7aa969aa', 0),
(62, '59ba3d074e36186d4', '59afa236c6c7c3d81', 0),
(63, '5a144ccfe86acdda7', '5d651923c61ad250c', 0),
(64, '59ba3d074e36186d4', '5d651923c61ad250c', 0),
(65, '5971b7857670e1789', '5d651923c61ad250c', 0),
(66, '59a81fa552e62a6aa', '5d651923c644013a8', 0),
(67, '59ba3d074e36186d4', '59af9d9007807e2f8', 0),
(68, '59a81fa552e62a6aa', '59af9d9007807e2f8', 0),
(69, '59a81fa552e62a6aa', '5d651923c25713970', 0),
(70, '5b7bba2f2f257d218', '5d651923c1aa5859e', 0),
(71, '5a144ccfe86acdda7', '5d651923c1aa5859e', 0),
(72, '59ba3d074e36186d4', '5d651923c1aa5859e', 0),
(73, '59a81fa552e62a6aa', '5d651923c1aa5859e', 0),
(74, '59a81f8c56f59622d', '5d651923c1aa5859e', 0),
(75, '59ba3d074e36186d4', '59af9f060dd2a4c1c', 0),
(76, '59a81fa552e62a6aa', '59af9f060dd2a4c1c', 0),
(77, '59ba3d074e36186d4', '59af9ef09cf799e3c', 0),
(78, '59a81f8c56f59622d', '59afa20878c64f745', 0),
(79, '59a81f80ae0ce8ecb', '59afa20878c64f745', 0),
(80, '5971b7857670e1789', '59afa20878c64f745', 0),
(81, '5a144ccfe86acdda7', '59b8d31e953960f70', 0),
(82, '59ba3d074e36186d4', '59b8d31e953960f70', 0),
(83, '59a81f8c56f59622d', '59b8d31e953960f70', 0),
(84, '5b7bba2f2f257d218', '5d651923ac91aff21', 0),
(85, '5a144ccfe86acdda7', '5d651923ac91aff21', 0),
(86, '5b7bba2f2f257d218', '5d651923a85702494', 0),
(87, '59a81f8c56f59622d', '5d651923a85702494', 0),
(88, '5b7bba2f2f257d218', '5d651923ac12b8438', 0),
(89, '5b7bba2f2f257d218', '5d651923aa3462927', 0),
(90, '59ba3d074e36186d4', '5d651923aa3462927', 0),
(91, '59a81f8c56f59622d', '5d651923aa3462927', 0),
(92, '5971b7857670e1789', '5d651923aa3462927', 0),
(93, '5b7bba2f2f257d218', '59afa1f792f9d80ee', 0),
(94, '5a144ccfe86acdda7', '59afa1f792f9d80ee', 0),
(95, '59ba3d074e36186d4', '59afa1f792f9d80ee', 0),
(96, '59a81fa552e62a6aa', '59afa1f792f9d80ee', 0),
(97, '59a81f8c56f59622d', '59afa1f792f9d80ee', 0),
(98, '59a81f80ae0ce8ecb', '59afa1f792f9d80ee', 0),
(99, '5971b7857670e1789', '59afa1f792f9d80ee', 0),
(100, '5b7bba2f2f257d218', '5d651923c4f1b3f53', 0),
(101, '5a144ccfe86acdda7', '5d651923c4f1b3f53', 0),
(102, '59a81f8c56f59622d', '5d651923c4f1b3f53', 0),
(103, '5b7bba2f2f257d218', '5d651923c4020aa9f', 0),
(104, '5a144ccfe86acdda7', '5d651923c4020aa9f', 0),
(105, '59ba3d074e36186d4', '5d651923c4020aa9f', 0),
(106, '59a81fa552e62a6aa', '5d651923c4020aa9f', 0),
(107, '59a81f8c56f59622d', '5d651923c4020aa9f', 0),
(108, '59ba3d074e36186d4', '5d651923c293fe531', 0),
(109, '59a81f8c56f59622d', '5d651923c293fe531', 0),
(110, '5971b7857670e1789', '5d651923c293fe531', 0),
(111, '59a81fa552e62a6aa', '5d651923c48825801', 0),
(112, '59a81f80ae0ce8ecb', '5d651923c48825801', 0),
(113, '5b7bba2f2f257d218', '5d651923bc88d191a', 0),
(114, '59ba3d074e36186d4', '5d651923bc88d191a', 0),
(115, '59a81f8c56f59622d', '5d651923bc88d191a', 0),
(116, '59a81fa552e62a6aa', '5d6612d7ec35e2d76', 0),
(117, '59a81f80ae0ce8ecb', '5d6612d7ec35e2d76', 0),
(118, '5b7bba2f2f257d218', '5d651923ba53ffa31', 0),
(119, '59ba3d074e36186d4', '5d651923ba53ffa31', 0),
(120, '5a144ccfe86acdda7', '5d66143a6739c8ebc', 0),
(121, '59a81f80ae0ce8ecb', '5d66143a6739c8ebc', 0),
(122, '5a144ccfe86acdda7', '5d651923b9c66df6f', 0),
(123, '59a81f8c56f59622d', '5d651923b9c66df6f', 0),
(124, '5b7bba2f2f257d218', '5d66146aea2d2b8de', 0),
(125, '59ba3d074e36186d4', '5d66146aea2d2b8de', 0),
(126, '5a144ccfe86acdda7', '5da0645f8a9c5ea9a', 0),
(127, '59ba3d074e36186d4', '5da0645f8a9c5ea9a', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
                        `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                        `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `deleted` tinyint(1) DEFAULT '0',
                        `assignment_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
                        `user_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
                        `portal_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
                        `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                        `field_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                        `group_email_account_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
                        `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
                        `data_privacy_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `role`
--

INSERT INTO `role` (`id`, `name`, `deleted`, `assignment_permission`, `user_permission`, `portal_permission`, `data`, `field_data`, `group_email_account_permission`, `export_permission`, `data_privacy_permission`) VALUES
('595e5b08d93bd011b', 'Editor', 0, 'not-set', 'not-set', 'not-set', '{\"PimCategory\":{\"create\":\"yes\",\"read\":\"team\",\"edit\":\"own\",\"delete\":\"no\"}}', '{\"Account\":{},\"PimAssociationProduct\":{},\"PimAssociation\":{},\"PimAttributeGroup\":{},\"PimAttribute\":{},\"PimBrand\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"PimCategory\":{},\"PimChannelProductAttributeValue\":{},\"PimChannel\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"EmailTemplate\":{},\"Email\":{},\"ExternalAccount\":{},\"PimCategoryImage\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"PimPrice\":{},\"PimProductAttributeValue\":{},\"PimProductFamily\":{},\"PimProductFamilyAttribute\":{},\"PimProductImage\":{},\"PimProductPrice\":{},\"PimProductStatus\":{},\"PimProductTypeBundle\":{},\"PimProductTypeConfigurable\":{},\"PimProductTypePackage\":{},\"PimProduct\":{},\"PimSupplierProduct\":{},\"PimSupplier\":{},\"TargetList\":{},\"Task\":{},\"Team\":{},\"TestEntity\":{},\"User\":{},\"PimWarehouseProduct\":{},\"PimWarehouse\":{}}', 'not-set', 'not-set', 'not-set'),
('595e5c17eefe73a2b', 'Reporter', 0, 'not-set', 'not-set', 'not-set', '{\"PimCategory\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"no\"}}', '{\"Account\":{},\"PimAssociationProduct\":{},\"PimAssociation\":{},\"PimAttributeGroup\":{},\"PimAttribute\":{},\"PimBrand\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"PimCategory\":{},\"PimChannelProductAttributeValue\":{},\"PimChannel\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"EmailTemplate\":{},\"Email\":{},\"ExternalAccount\":{},\"PimCategoryImage\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"PimPrice\":{},\"PimProductAttributeValue\":{},\"PimProductFamily\":{},\"PimProductFamilyAttribute\":{},\"PimProductImage\":{},\"PimProductPrice\":{},\"PimProductStatus\":{},\"PimProductTypeBundle\":{},\"PimProductTypeConfigurable\":{},\"PimProductTypePackage\":{},\"PimProduct\":{},\"PimSupplierProduct\":{},\"PimSupplier\":{},\"TargetList\":{},\"Task\":{},\"Team\":{},\"TestEntity\":{},\"User\":{},\"PimWarehouseProduct\":{},\"PimWarehouse\":{}}', 'not-set', 'not-set', 'not-set'),
('595e5d5a76daa6425', 'Moderator', 0, 'not-set', 'not-set', 'not-set', '{\"PimCategory\":{\"create\":\"yes\",\"read\":\"team\",\"edit\":\"team\",\"delete\":\"team\"}}', '{\"Account\":{},\"PimAssociationProduct\":{},\"PimAssociation\":{},\"PimAttributeGroup\":{},\"PimAttribute\":{},\"PimBrand\":{},\"Call\":{},\"Campaign\":{},\"Case\":{},\"PimCategory\":{},\"PimChannelProductAttributeValue\":{},\"PimChannel\":{},\"Contact\":{},\"DocumentFolder\":{},\"Document\":{},\"EmailTemplate\":{},\"Email\":{},\"ExternalAccount\":{},\"PimCategoryImage\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"Lead\":{},\"Meeting\":{},\"Opportunity\":{},\"PimPrice\":{},\"PimProductAttributeValue\":{},\"PimProductFamily\":{},\"PimProductFamilyAttribute\":{},\"PimProductImage\":{},\"PimProductPrice\":{},\"PimProductStatus\":{},\"PimProductTypeBundle\":{},\"PimProductTypeConfigurable\":{},\"PimProductTypePackage\":{},\"PimProduct\":{},\"PimSupplierProduct\":{},\"PimSupplier\":{},\"TargetList\":{},\"Task\":{},\"Team\":{},\"TestEntity\":{},\"User\":{},\"PimWarehouseProduct\":{},\"PimWarehouse\":{}}', 'not-set', 'not-set', 'not-set'),
('5bbaf1940b085bfb0', 'Manager', 0, 'all', 'all', 'yes', '{\"Account\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\",\"stream\":\"own\"},\"Association\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"AttributeGroup\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"Attribute\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"Brand\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"own\",\"delete\":\"no\"},\"Catalog\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Category\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"CategoryImage\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"Channel\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Contact\":{\"create\":\"no\",\"read\":\"no\",\"edit\":\"no\",\"delete\":\"no\",\"stream\":\"no\"},\"Country\":false,\"DocumentFolder\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"Document\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"own\"},\"EmailTemplate\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"own\"},\"Email\":{\"create\":\"yes\",\"read\":\"own\",\"edit\":\"own\",\"delete\":\"own\"},\"ExternalAccount\":false,\"KnowledgeBaseArticle\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"KnowledgeBaseCategory\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"MeasuringUnit\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Packaging\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"EmailAccountScope\":true,\"ProductFamily\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"ProductImage\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\"},\"Product\":{\"create\":\"yes\",\"read\":\"all\",\"edit\":\"all\",\"delete\":\"no\",\"stream\":\"own\"},\"Tax\":{\"create\":\"no\",\"read\":\"all\",\"edit\":\"no\",\"delete\":\"no\"},\"Team\":false,\"Template\":false,\"User\":{\"read\":\"all\",\"edit\":\"own\"}}', '{\"Account\":{},\"Association\":{},\"AttributeGroup\":{},\"Attribute\":{},\"Brand\":{},\"Catalog\":{},\"Category\":{},\"CategoryImage\":{},\"Channel\":{},\"Contact\":{},\"Country\":{},\"DocumentFolder\":{},\"Document\":{},\"EmailTemplate\":{},\"Email\":{},\"ExternalAccount\":{},\"KnowledgeBaseArticle\":{},\"KnowledgeBaseCategory\":{},\"MeasuringUnit\":{},\"Packaging\":{},\"ProductFamily\":{},\"ProductImage\":{},\"Product\":{},\"Tax\":{},\"Team\":{},\"Template\":{},\"User\":{}}', 'no', 'yes', 'not-set');

-- --------------------------------------------------------

--
-- Структура таблицы `role_team`
--
DROP TABLE IF EXISTS `role_team`;
CREATE TABLE `role_team` (
                             `id` int(11) NOT NULL,
                             `role_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `team_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `role_team`
--

INSERT INTO `role_team` (`id`, `role_id`, `team_id`, `deleted`) VALUES
(1, '595e5c17eefe73a2b', '595e5a09d4ccfabea', 0),
(2, '595e5c17eefe73a2b', '595e5a1598129c77c', 0),
(3, '595e5b08d93bd011b', '595e5cf46dbf42d7e', 0),
(4, '595e5d5a76daa6425', '595e5f19d4fd97b75', 0),
(5, '595e5d5a76daa6425', '595e64a09c741e616', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
                             `id` int(11) NOT NULL,
                             `role_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `deleted`) VALUES
(2, '59c4aca03bb90452a', '59c4adb5cf6733c25', 0),
(3, '595e5c17eefe73a2b', '5bbaf1daea9ee8a6b', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `subscription`
--
DROP TABLE IF EXISTS `subscription`;
CREATE TABLE `subscription` (
                                `id` int(11) NOT NULL,
                                `entity_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                                `entity_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                                `user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `subscription`
--

INSERT INTO `subscription` (`id`, `entity_id`, `entity_type`, `user_id`) VALUES
(5, '59b62e3bbb387a965', 'Contact', '1'),
(6, '59fb152fe4a37088e', 'Product', '1'),
(8, '59fb0e05a0c46a91a', 'Product', '1'),
(9, '5a9e93d0e1e4fd1b9', 'Product', '1'),
(10, '5a9e95312ec27aabc', 'Task', '1'),
(15, '59a91396e7971debe', 'Product', '1'),
(16, '59b0e83c603a1b9c8', 'Product', '1'),
(17, '59fad6841f243119b', 'Product', '1'),
(19, '5b6856208df9c890a', 'Account', '1'),
(25, '5b8649f0dae076eb0', 'Product', '1'),
(26, '5b910d204446f4221', 'Account', '1'),
(27, '5b910d35ecf9383b9', 'Contact', '1'),
(29, '59fb0aa27855b0afd', 'Product', '5b6807ebe42c89d66'),
(30, '59fb0e05a0c46a91a', 'Product', '5b6807ebe42c89d66'),
(31, '5a9e93d0e1e4fd1b9', 'Product', '5b910d520c3fe4642'),
(32, '59a91396e7971debe', 'Product', '5b910d520c3fe4642'),
(34, '59fb152fe4a37088e', 'Product', '5b910d520c3fe4642'),
(36, '5be971728d44f1a11', 'Product', '1'),
(37, '5be98924b15087ff5', 'Product', '1'),
(38, '5bf6653f768cd5df9', 'Account', '1'),
(39, '5bf665dc2c5912929', 'Account', '1'),
(40, '59a90c862458bd976', 'Product', '1'),
(43, '59fb0aa27855b0afd', 'Product', '1'),
(44, '5ac229e0da6a4b297', 'Product', '1'),
(46, '5a9e93d0e1e4fd1b9', 'Product', '5bbaf1daea9ee8a6b'),
(47, '5da95464266aa342e', 'Product', '5b6807ebe42c89d66');

-- --------------------------------------------------------

--
-- Структура таблицы `tax`
--
DROP TABLE IF EXISTS `tax`;
CREATE TABLE `tax` (
                       `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                       `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                       `deleted` tinyint(1) DEFAULT '0',
                       `value` double DEFAULT NULL,
                       `is_active` tinyint(1) NOT NULL DEFAULT '0',
                       `created_at` datetime DEFAULT NULL,
                       `modified_at` datetime DEFAULT NULL,
                       `name_en_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                       `created_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                       `modified_by_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                       `name_de_de` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                       `owner_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                       `assigned_user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tax`
--

INSERT INTO `tax` (`id`, `name`, `deleted`, `value`, `is_active`, `created_at`, `modified_at`, `name_en_us`, `created_by_id`, `modified_by_id`, `name_de_de`, `owner_user_id`, `assigned_user_id`) VALUES
('5a9e93a949d5ff3fa', 'MwSt', 0, 19, 1, '2018-03-06 13:12:09', '2018-03-06 13:12:09', NULL, '1', NULL, 'MwSt', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
                        `id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
                        `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        `deleted` tinyint(1) DEFAULT '0',
                        `position_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
                        `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`id`, `name`, `deleted`, `position_list`, `created_at`) VALUES
('595e5a09d4ccfabea', 'Samsung Reporters', 0, '[]', '2017-07-06 15:40:57'),
('595e5a1598129c77c', 'Sony Reporters', 0, '[]', '2017-07-06 15:41:09'),
('595e5cf46dbf42d7e', 'Samsung & Sony Editors', 0, '[]', '2017-07-06 15:53:24'),
('595e5f19d4fd97b75', 'Samsung & Sony Moderators', 0, '[]', '2017-07-06 16:02:33'),
('595e64a09c741e616', 'Sony Moderators', 0, '[]', '2017-07-06 16:26:08');

-- --------------------------------------------------------

--
-- Структура таблицы `team_user`
--

DROP TABLE IF EXISTS `team_user`;
CREATE TABLE `team_user` (
                             `id` int(11) NOT NULL,
                             `team_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `user_id` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `role` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
                             `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `team_user`
--

INSERT INTO `team_user` (`id`, `team_id`, `user_id`, `role`, `deleted`) VALUES
(3, '595e5a09d4ccfabea', '595e5a6f7b7b3d3e8', NULL, 0),
(4, '595e5a1598129c77c', '595e5a8e5972c3900', NULL, 0),
(7, '595e5cf46dbf42d7e', '595e5abdb296bbfdc', NULL, 0),
(8, '595e5f19d4fd97b75', '595e5eeb7eb97f7c2', NULL, 0),
(9, '595e5a1598129c77c', '595e5eeb7eb97f7c2', NULL, 0),
(11, '595e5a09d4ccfabea', '595e5eeb7eb97f7c2', NULL, 0),
(12, '595e5a09d4ccfabea', '595e646990dfcf1f1', NULL, 0),
(14, '595e64a09c741e616', '595e646990dfcf1f1', NULL, 0);

-- --------------------------------------------------------

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `deleted`, `is_admin`, `user_name`, `password`, `salutation_name`, `first_name`, `last_name`, `is_active`, `is_portal_user`, `is_super_admin`, `title`, `gender`, `created_at`, `default_team_id`, `avatar_id`, `created_by_id`, `contact_id`) VALUES
('595e5a6f7b7b3d3e8', 0, 0, 'user_for_samsung', 'M/KT1IjhuCevijm6x4t6R.ZnVkAEzBuiEXslc8igQIBjMWGrzgS3mSEd6PFeMinLKv0mDiL1Wm27u1wpW/H.z0', 'Mr.', 'User', 'Samsung Reporter', 1, 0, 0, '', '', '2017-07-06 15:42:39', NULL, NULL, NULL, NULL),
('595e5a8e5972c3900', 0, 0, 'user_for_sony', '/7Pn0zHgleRkzDuZJegBPeZ4oG14VwJl0IRwWaT0tCBzPs2aIpxKMwcpkQDxy4iiC9PXYQabOrKQIIukkQCgl/', 'Mr.', 'User', 'Sony Reporter', 1, 0, 0, '', '', '2017-07-06 15:43:10', NULL, NULL, NULL, NULL),
('595e5abdb296bbfdc', 0, 0, 'user_for_both_editor', 'ZoL/FQJuDglSiMYI9pfPXd7bOtoLQ6qOH6Hi7T.vnL9dKZRu48P6KaTr7C0uleEY7BUKlfZb/GMgq6dlBVggQ.', 'Mr.', 'User', 'Sony & Samsung Editor', 1, 0, 0, '', '', '2017-07-06 15:43:57', NULL, NULL, NULL, NULL),
('595e5eeb7eb97f7c2', 0, 0, 'user_for_both_moderator', 'lipNkSLYfRoceXNfA7UwModA3hmb5eU4fItYWXQ9xZH9uIOHW64j92WQ.dW5ZNWoRNSkIxr5d8MYaB4.tZ1oh/', 'Mr.', 'User', 'Samsung & Sony Moderator', 1, 0, 0, '', '', '2017-07-06 16:01:47', NULL, NULL, NULL, NULL),
('595e646990dfcf1f1', 0, 0, 'user_samsung_reporter_sony_moderator', 'DB7tbbhc4VmY.k6yJT8nTpTFYXpDpzdZBCuwOgEUv9RtF.10oeh3JyaSipKL3c9cyRfS.cT0AdvE6MgZvrQ/C0', 'Mr.', 'User Samsung Reporter', 'Sony Moderator', 1, 0, 0, '', '', '2017-07-06 16:25:13', NULL, NULL, NULL, NULL),
('5b6807ebe42c89d66', 0, 0, 'retailer', 'zKY81o8sfQVb.uxdUy2Wnr.LaXtOQ9BJ1QY80EViz/4KK44aVTnwmO4TRR4KCQGa3Eixj9xfb2sLuKgGt4sJS/', 'Mr.', 'Retailer', 'Retailer', 1, 1, 0, NULL, '', '2018-08-06 08:33:47', NULL, '5b68563817b1dbd0b', NULL, '1'),
('5b910d520c3fe4642', 0, 0, 'supplier', 'pgRbekNqJIyU1ExkeyGEyJQ5n9kQ4sfIe0kYjZqMzc9kufLjQHgUNx7lOvJw3zjD5I6DSCo5jcbBITt5LEICm1', 'Mrs.', 'Supplier', 'Supplier', 1, 1, 0, NULL, '', '2018-09-06 11:19:46', NULL, '5b910d35ecf9383b9', NULL, '1'),
('5bbaf1daea9ee8a6b', 0, 0, 'manager', 'CW2KQv.ccR773TiC.dDmjFV4YFIdsrx2ooNtXWRdJYOYvSnmUK/Zmb1OEeHLqDz6il1nK1B4oB8Y1K1KRJxLI.', '', 'Manager', 'Manager', 1, 0, 0, '', '', '2018-10-08 05:57:46', NULL, NULL, NULL, '1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
    ADD KEY `IDX_NAME` (`name`,`deleted`);

--
-- Индексы таблицы `account_contact`
--
ALTER TABLE `account_contact`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_8549F2709B6B5FBAE7A1254A` (`account_id`,`contact_id`),
    ADD KEY `IDX_8549F2709B6B5FBA` (`account_id`),
    ADD KEY `IDX_8549F270E7A1254A` (`contact_id`);

--
-- Индексы таблицы `account_portal_user`
--
ALTER TABLE `account_portal_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_D622EDE7A76ED3959B6B5FBA` (`user_id`,`account_id`),
    ADD KEY `IDX_D622EDE7A76ED395` (`user_id`),
    ADD KEY `IDX_D622EDE79B6B5FBA` (`account_id`);

--
-- Индексы таблицы `action_history_record`
--
ALTER TABLE `action_history_record`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `number` (`number`),
    ADD UNIQUE KEY `UNIQ_5C817D7F96901F54` (`number`),
    ADD KEY `IDX_TARGET` (`target_id`,`target_type`),
    ADD KEY `IDX_USER_ID` (`user_id`),
    ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`),
    ADD KEY `IDX_AUTH_LOG_RECORD_ID` (`auth_log_record_id`);

--
-- Индексы таблицы `array_value`
--
ALTER TABLE `array_value`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
    ADD KEY `IDX_ENTITY_TYPE_VALUE` (`entity_type`,`value`),
    ADD KEY `IDX_ENTITY_VALUE` (`entity_type`,`entity_id`,`value`);

--
-- Индексы таблицы `asset`
--
ALTER TABLE `asset`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_COLLECTION_ID` (`collection_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_TYPE` (`type`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `asset_asset`
--
ALTER TABLE `asset_asset`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_97F4741BE26CCE0254976835` (`left_id`,`right_id`),
    ADD KEY `IDX_97F4741BE26CCE02` (`left_id`),
    ADD KEY `IDX_97F4741B54976835` (`right_id`);

--
-- Индексы таблицы `asset_category`
--
ALTER TABLE `asset_category`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_CATEGORY_PARENT_ID` (`category_parent_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `asset_category_asset`
--
ALTER TABLE `asset_category_asset`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_D0EA3102993EC4EB5DA1941` (`asset_category_id`,`asset_id`),
    ADD KEY `IDX_D0EA31025DA1941` (`asset_id`),
    ADD KEY `IDX_D0EA3102993EC4EB` (`asset_category_id`);

--
-- Индексы таблицы `asset_meta_data`
--
ALTER TABLE `asset_meta_data`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_ASSET_ID` (`asset_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `asset_relation`
--
ALTER TABLE `asset_relation`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_DELETED` (`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `asset_relation_channel`
--
ALTER TABLE `asset_relation_channel`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_8202C607B92EC85272F5A1AA` (`asset_relation_id`,`channel_id`),
    ADD KEY `IDX_8202C607B92EC852` (`asset_relation_id`),
    ADD KEY `IDX_8202C60772F5A1AA` (`channel_id`);

--
-- Индексы таблицы `associated_product`
--
ALTER TABLE `associated_product`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_C803FBE9EFB9C8A5` (`association_id`),
    ADD KEY `IDX_C803FBE97D7C1239` (`main_product_id`),
    ADD KEY `IDX_C803FBE9CF496EEA` (`related_product_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_BACKWARD_ASSOCIATION_ID` (`backward_association_id`);

--
-- Индексы таблицы `association`
--
ALTER TABLE `association`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_BACKWARD_ASSOCIATION_ID` (`backward_association_id`);

--
-- Индексы таблицы `attachment`
--
ALTER TABLE `attachment`
    ADD PRIMARY KEY (`id`),
    ADD KEY `related` (`related_id`,`related_type`),
    ADD KEY `IDX_795FD9BBB03A8386` (`created_by_id`),
    ADD KEY `IDX_ATTACHMENT_PARENT` (`parent_type`,`parent_id`),
    ADD KEY `IDX_SOURCE_ID` (`source_id`),
    ADD KEY `IDX_HASH_MD5` (`hash_md5`);

--
-- Индексы таблицы `attribute`
--
ALTER TABLE `attribute`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ATTRIBUTE_GROUP_ID` (`attribute_group_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `attribute_group`
--
ALTER TABLE `attribute_group`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_8EF8A773B03A8386` (`created_by_id`),
    ADD KEY `IDX_8EF8A77399049ECE` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `auth_log_record`
--
ALTER TABLE `auth_log_record`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_PORTAL_ID` (`portal_id`),
    ADD KEY `IDX_USER_ID` (`user_id`),
    ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`),
    ADD KEY `IDX_IP_ADDRESS` (`ip_address`),
    ADD KEY `IDX_IP_ADDRESS_REQUEST_TIME` (`ip_address`,`request_time`),
    ADD KEY `IDX_REQUEST_TIME` (`request_time`);

--
-- Индексы таблицы `auth_token`
--
ALTER TABLE `auth_token`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_TOKEN` (`token`,`deleted`),
    ADD KEY `IDX_HASH` (`hash`),
    ADD KEY `IDX_USER_ID` (`user_id`),
    ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Индексы таблицы `autofollow`
--
ALTER TABLE `autofollow`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
    ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `call`
--
ALTER TABLE `call`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`);

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `catalog_category`
--
ALTER TABLE `catalog_category`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_349BC7DFCC3C66FC12469DE2` (`catalog_id`,`category_id`),
    ADD KEY `IDX_349BC7DFCC3C66FC` (`catalog_id`),
    ADD KEY `IDX_349BC7DF12469DE2` (`category_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_CATEGORY_PARENT_ID` (`category_parent_id`),
    ADD KEY `IDX_NAME` (`deleted`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `category_asset`
--
ALTER TABLE `category_asset`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_EA9C15155DA194112469DE2` (`asset_id`,`category_id`),
    ADD KEY `IDX_EA9C15155DA1941` (`asset_id`),
    ADD KEY `IDX_EA9C151512469DE2` (`category_id`);

--
-- Индексы таблицы `channel`
--
ALTER TABLE `channel`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_A2F98E47B03A8386` (`created_by_id`),
    ADD KEY `IDX_A2F98E4799049ECE` (`modified_by_id`),
    ADD KEY `IDX_CHANNEL_NAME` (`name`,`deleted`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `collection`
--
ALTER TABLE `collection`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `collection_asset_category`
--
ALTER TABLE `collection_asset_category`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_8F27FD8A993EC4EB514956FD` (`asset_category_id`,`collection_id`),
    ADD KEY `IDX_8F27FD8A993EC4EB` (`asset_category_id`),
    ADD KEY `IDX_8F27FD8A514956FD` (`collection_id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_4C62E6389B6B5FBA` (`account_id`),
    ADD KEY `IDX_4C62E638B03A8386` (`created_by_id`),
    ADD KEY `IDX_4C62E63899049ECE` (`modified_by_id`),
    ADD KEY `IDX_CONTACT_FIRST_NAME` (`first_name`,`deleted`),
    ADD KEY `IDX_CONTACT_NAME` (`first_name`,`last_name`),
    ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `document_folder`
--
ALTER TABLE `document_folder`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `email`
--
ALTER TABLE `email`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_MESSAGE_ID` (`message_id`),
    ADD KEY `IDX_FROM_EMAIL_ADDRESS_ID` (`from_email_address_id`),
    ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_SENT_BY_ID` (`sent_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_REPLIED_ID` (`replied_id`),
    ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
    ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`);

--
-- Индексы таблицы `email_account`
--
ALTER TABLE `email_account`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `email_address`
--
ALTER TABLE `email_address`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_LOWER` (`lower`);

--
-- Индексы таблицы `email_email_account`
--
ALTER TABLE `email_email_account`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_32C12DC337D8AD65A832C1C9` (`email_account_id`,`email_id`),
    ADD KEY `IDX_32C12DC3A832C1C9` (`email_id`),
    ADD KEY `IDX_32C12DC337D8AD65` (`email_account_id`);

--
-- Индексы таблицы `email_email_address`
--
ALTER TABLE `email_email_address`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_42B914E6A832C1C959045DAAF19287C2` (`email_id`,`email_address_id`,`address_type`),
    ADD KEY `IDX_42B914E6A832C1C9` (`email_id`),
    ADD KEY `IDX_42B914E659045DAA` (`email_address_id`);

--
-- Индексы таблицы `email_filter`
--
ALTER TABLE `email_filter`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
    ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `email_folder`
--
ALTER TABLE `email_folder`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_41D62720A832C1C9E540AEA2` (`email_id`,`inbound_email_id`),
    ADD KEY `IDX_41D62720A832C1C9` (`email_id`),
    ADD KEY `IDX_41D62720E540AEA2` (`inbound_email_id`);

--
-- Индексы таблицы `email_template`
--
ALTER TABLE `email_template`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_9C0600CAB03A8386` (`created_by_id`),
    ADD KEY `IDX_9C0600CA99049ECE` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_CATEGORY_ID` (`category_id`);

--
-- Индексы таблицы `email_template_category`
--
ALTER TABLE `email_template_category`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `email_user`
--
ALTER TABLE `email_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_12A5F6CCA832C1C9A76ED395` (`email_id`,`user_id`),
    ADD KEY `IDX_12A5F6CCA832C1C9` (`email_id`),
    ADD KEY `IDX_12A5F6CCA76ED395` (`user_id`);

--
-- Индексы таблицы `entity_email_address`
--
ALTER TABLE `entity_email_address`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_9125AB4281257D5D59045DAAC412EE02` (`entity_id`,`email_address_id`,`entity_type`),
    ADD KEY `IDX_9125AB4281257D5D` (`entity_id`),
    ADD KEY `IDX_9125AB4259045DAA` (`email_address_id`);

--
-- Индексы таблицы `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_7459056F81257D5D39DFD528C412EE02` (`entity_id`,`phone_number_id`,`entity_type`),
    ADD KEY `IDX_7459056F81257D5D` (`entity_id`),
    ADD KEY `IDX_7459056F39DFD528` (`phone_number_id`);

--
-- Индексы таблицы `entity_team`
--
ALTER TABLE `entity_team`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_8C2C1F3481257D5D296CD8AEC412EE02` (`entity_id`,`team_id`,`entity_type`),
    ADD KEY `IDX_8C2C1F3481257D5D` (`entity_id`),
    ADD KEY `IDX_8C2C1F34296CD8AE` (`team_id`);

--
-- Индексы таблицы `entity_user`
--
ALTER TABLE `entity_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_C55F6F6281257D5DA76ED395C412EE02` (`entity_id`,`user_id`,`entity_type`),
    ADD KEY `IDX_C55F6F6281257D5D` (`entity_id`),
    ADD KEY `IDX_C55F6F62A76ED395` (`user_id`);

--
-- Индексы таблицы `external_account`
--
ALTER TABLE `external_account`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `import`
--
ALTER TABLE `import`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Индексы таблицы `import_entity`
--
ALTER TABLE `import_entity`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
    ADD KEY `IDX_IMPORT_ID` (`import_id`),
    ADD KEY `IDX_ENTITY_IMPORT` (`import_id`,`entity_type`);

--
-- Индексы таблицы `inbound_email`
--
ALTER TABLE `inbound_email`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_ASSIGN_TO_USER_ID` (`assign_to_user_id`),
    ADD KEY `IDX_TEAM_ID` (`team_id`),
    ADD KEY `IDX_REPLY_EMAIL_TEMPLATE_ID` (`reply_email_template_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_D2054DE540AEA2296CD8AE` (`inbound_email_id`,`team_id`),
    ADD KEY `IDX_D2054DE540AEA2` (`inbound_email_id`),
    ADD KEY `IDX_D2054D296CD8AE` (`team_id`);

--
-- Индексы таблицы `integration`
--
ALTER TABLE `integration`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `job`
--
ALTER TABLE `job`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`),
    ADD KEY `IDX_QUEUE_ITEM_ID` (`queue_item_id`),
    ADD KEY `IDX_EXECUTE_TIME` (`status`,`execute_time`),
    ADD KEY `IDX_STATUS` (`status`,`deleted`);

--
-- Индексы таблицы `knowledge_base_category`
--
ALTER TABLE `knowledge_base_category`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lead_capture`
--
ALTER TABLE `lead_capture`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
    ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`),
    ADD KEY `IDX_OPT_IN_CONFIRMATION_EMAIL_` (`opt_in_confirmation_email_template_id`),
    ADD KEY `IDX_TARGET_TEAM_ID` (`target_team_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `number` (`number`),
    ADD UNIQUE KEY `UNIQ_D422237396901F54` (`number`),
    ADD KEY `IDX_LEAD_CAPTURE_ID` (`lead_capture_id`),
    ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `measuring_unit`
--
ALTER TABLE `measuring_unit`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `next_number`
--
ALTER TABLE `next_number`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_ENTITY_TYPE` (`entity_type`);

--
-- Индексы таблицы `note`
--
ALTER TABLE `note`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `number` (`number`),
    ADD UNIQUE KEY `UNIQ_CFBDFA1496901F54` (`number`),
    ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
    ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_SUPER_PARENT` (`super_parent_id`,`super_parent_type`),
    ADD KEY `IDX_CREATED_AT` (`created_at`),
    ADD KEY `IDX_PARENT_AND_SUPER_PARENT` (`parent_id`,`parent_type`,`super_parent_id`,`super_parent_type`);

--
-- Индексы таблицы `note_portal`
--
ALTER TABLE `note_portal`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_137CC42426ED0855B887E1DD` (`note_id`,`portal_id`),
    ADD KEY `IDX_137CC42426ED0855` (`note_id`),
    ADD KEY `IDX_137CC424B887E1DD` (`portal_id`);

--
-- Индексы таблицы `note_team`
--
ALTER TABLE `note_team`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_649AB74726ED0855296CD8AE` (`note_id`,`team_id`),
    ADD KEY `IDX_649AB74726ED0855` (`note_id`),
    ADD KEY `IDX_649AB747296CD8AE` (`team_id`);

--
-- Индексы таблицы `note_user`
--
ALTER TABLE `note_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_2DE9C71126ED0855A76ED395` (`note_id`,`user_id`),
    ADD KEY `IDX_2DE9C71126ED0855` (`note_id`),
    ADD KEY `IDX_2DE9C711A76ED395` (`user_id`);

--
-- Индексы таблицы `notification`
--
ALTER TABLE `notification`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `number` (`number`),
    ADD UNIQUE KEY `UNIQ_BF5476CA96901F54` (`number`),
    ADD KEY `IDX_USER_ID` (`user_id`),
    ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
    ADD KEY `IDX_RELATED_PARENT` (`related_parent_id`,`related_parent_type`),
    ADD KEY `IDX_CREATED_AT` (`created_at`),
    ADD KEY `IDX_USER` (`user_id`,`created_at`);

--
-- Индексы таблицы `packaging`
--
ALTER TABLE `packaging`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_BF8B0D85B03A8386` (`created_by_id`),
    ADD KEY `IDX_BF8B0D8599049ECE` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `password_change_request`
--
ALTER TABLE `password_change_request`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_REQUEST_ID` (`request_id`),
    ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `phone_number`
--
ALTER TABLE `phone_number`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_NAME` (`name`),
    ADD KEY `IDX_NUMERIC` (`numeric`);

--
-- Индексы таблицы `portal`
--
ALTER TABLE `portal`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_BAE93F0614A603A` (`custom_id`),
    ADD KEY `IDX_BAE93F099049ECE` (`modified_by_id`),
    ADD KEY `IDX_BAE93F0B03A8386` (`created_by_id`);

--
-- Индексы таблицы `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_B29E22C7B887E1DDD7C6FAB5` (`portal_id`,`portal_role_id`),
    ADD KEY `IDX_B29E22C7B887E1DD` (`portal_id`),
    ADD KEY `IDX_B29E22C7D7C6FAB5` (`portal_role_id`);

--
-- Индексы таблицы `portal_role`
--
ALTER TABLE `portal_role`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portal_role_user`
--
ALTER TABLE `portal_role_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_202456E6D7C6FAB5A76ED395` (`portal_role_id`,`user_id`),
    ADD KEY `IDX_202456E6D7C6FAB5` (`portal_role_id`),
    ADD KEY `IDX_202456E6A76ED395` (`user_id`);

--
-- Индексы таблицы `portal_user`
--
ALTER TABLE `portal_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_76511E4B887E1DDA76ED395` (`portal_id`,`user_id`),
    ADD KEY `IDX_76511E4B887E1DD` (`portal_id`),
    ADD KEY `IDX_76511E4A76ED395` (`user_id`);

--
-- Индексы таблицы `preferences`
--
ALTER TABLE `preferences`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_PRODUCT_FAMILY_ID` (`product_family_id`),
    ADD KEY `IDX_BRAND_ID` (`brand_id`),
    ADD KEY `IDX_TAX_ID` (`tax_id`),
    ADD KEY `IDX_PACKAGING_ID` (`packaging_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_PRODUCT_SERIE_ID` (`product_serie_id`),
    ADD KEY `IDX_CATALOG_ID` (`catalog_id`),
    ADD KEY `IDX_MEASURING_UNIT_ID` (`measuring_unit_id`);

--
-- Индексы таблицы `product_asset`
--
ALTER TABLE `product_asset`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_A3F321005DA19414584665A` (`asset_id`,`product_id`),
    ADD KEY `IDX_A3F321005DA1941` (`asset_id`),
    ADD KEY `IDX_A3F321004584665A` (`product_id`);

--
-- Индексы таблицы `product_attribute_value`
--
ALTER TABLE `product_attribute_value`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CCC4BE1F4584665A` (`product_id`),
    ADD KEY `IDX_CCC4BE1FB6E62EFA` (`attribute_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_PRODUCT_FAMILY_ATTRIBUTE_I` (`product_family_attribute_id`);

--
-- Индексы таблицы `product_attribute_value_channel`
--
ALTER TABLE `product_attribute_value_channel`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_A5FC213872F5A1AA9774A42E` (`channel_id`,`product_attribute_value_id`),
    ADD KEY `IDX_A5FC213872F5A1AA` (`channel_id`),
    ADD KEY `IDX_A5FC21389774A42E` (`product_attribute_value_id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_PRODUCT_ID` (`product_id`),
    ADD KEY `IDX_CATEGORY_ID` (`category_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `product_category_channel`
--
ALTER TABLE `product_category_channel`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_EBADAAC572F5A1AABE6903FD` (`channel_id`,`product_category_id`),
    ADD KEY `IDX_EBADAAC572F5A1AA` (`channel_id`),
    ADD KEY `IDX_EBADAAC5BE6903FD` (`product_category_id`);

--
-- Индексы таблицы `product_channel`
--
ALTER TABLE `product_channel`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_732095F772F5A1AA4584665A` (`channel_id`,`product_id`),
    ADD KEY `IDX_732095F772F5A1AA` (`channel_id`),
    ADD KEY `IDX_732095F74584665A` (`product_id`);

--
-- Индексы таблицы `product_family`
--
ALTER TABLE `product_family`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `product_family_attribute`
--
ALTER TABLE `product_family_attribute`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_BD38116AADFEE0E7` (`product_family_id`),
    ADD KEY `IDX_BD38116AB6E62EFA` (`attribute_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `product_family_attribute_channel`
--
ALTER TABLE `product_family_attribute_channel`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_564D0D5672F5A1AA58DA10F5` (`channel_id`,`product_family_attribute_id`),
    ADD KEY `IDX_564D0D5672F5A1AA` (`channel_id`),
    ADD KEY `IDX_564D0D5658DA10F5` (`product_family_attribute_id`);

--
-- Индексы таблицы `product_serie`
--
ALTER TABLE `product_serie`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `queue_item`
--
ALTER TABLE `queue_item`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `reminder`
--
ALTER TABLE `reminder`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_REMIND_AT` (`remind_at`),
    ADD KEY `IDX_START_AT` (`start_at`),
    ADD KEY `IDX_TYPE` (`type`);

--
-- Индексы таблицы `rendition`
--
ALTER TABLE `rendition`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_ASSET_ID` (`asset_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `rendition_meta_data`
--
ALTER TABLE `rendition_meta_data`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_RENDITION_ID` (`rendition_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_team`
--
ALTER TABLE `role_team`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_7A5FD48BD60322AC296CD8AE` (`role_id`,`team_id`),
    ADD KEY `IDX_7A5FD48BD60322AC` (`role_id`),
    ADD KEY `IDX_7A5FD48B296CD8AE` (`team_id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_332CA4DDD60322ACA76ED395` (`role_id`,`user_id`),
    ADD KEY `IDX_332CA4DDD60322AC` (`role_id`),
    ADD KEY `IDX_332CA4DDA76ED395` (`user_id`);

--
-- Индексы таблицы `scheduled_job`
--
ALTER TABLE `scheduled_job`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_800A50CEB03A8386` (`created_by_id`),
    ADD KEY `IDX_800A50CE99049ECE` (`modified_by_id`);

--
-- Индексы таблицы `scheduled_job_log_record`
--
ALTER TABLE `scheduled_job_log_record`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`),
    ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `subscription`
--
ALTER TABLE `subscription`
    ADD PRIMARY KEY (`id`),
    ADD KEY `entity` (`entity_id`,`entity_type`),
    ADD KEY `IDX_A3C664D3A76ED395` (`user_id`);

--
-- Индексы таблицы `tax`
--
ALTER TABLE `tax`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_8E81BA76B03A8386` (`created_by_id`),
    ADD KEY `IDX_8E81BA7699049ECE` (`modified_by_id`),
    ADD KEY `IDX_OWNER_USER_ID` (`owner_user_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_OWNER_USER` (`owner_user_id`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team_user`
--
ALTER TABLE `team_user`
    ADD PRIMARY KEY (`id`),
    ADD UNIQUE KEY `UNIQ_5C722232296CD8AEA76ED395` (`team_id`,`user_id`),
    ADD KEY `IDX_5C722232296CD8AE` (`team_id`),
    ADD KEY `IDX_5C722232A76ED395` (`user_id`);

--
-- Индексы таблицы `template`
--
ALTER TABLE `template`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
    ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
    ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`);

--
-- Индексы таблицы `treo_store`
--
ALTER TABLE `treo_store`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_NAME` (`name`,`deleted`),
    ADD KEY `IDX_ASSIGNED_USER` (`deleted`);

--
-- Индексы таблицы `unique_id`
--
ALTER TABLE `unique_id`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_NAME` (`name`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
    ADD PRIMARY KEY (`id`),
    ADD KEY `IDX_DEFAULT_TEAM_ID` (`default_team_id`),
    ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
    ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account_contact`
--
ALTER TABLE `account_contact`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `account_portal_user`
--
ALTER TABLE `account_portal_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `action_history_record`
--
ALTER TABLE `action_history_record`
    MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT для таблицы `asset_asset`
--
ALTER TABLE `asset_asset`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `asset_category_asset`
--
ALTER TABLE `asset_category_asset`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `asset_relation_channel`
--
ALTER TABLE `asset_relation_channel`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `autofollow`
--
ALTER TABLE `autofollow`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `catalog_category`
--
ALTER TABLE `catalog_category`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `category_asset`
--
ALTER TABLE `category_asset`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `collection_asset_category`
--
ALTER TABLE `collection_asset_category`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `email_email_account`
--
ALTER TABLE `email_email_account`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `email_email_address`
--
ALTER TABLE `email_email_address`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `email_user`
--
ALTER TABLE `email_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `entity_email_address`
--
ALTER TABLE `entity_email_address`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `entity_team`
--
ALTER TABLE `entity_team`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `entity_user`
--
ALTER TABLE `entity_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `import_entity`
--
ALTER TABLE `import_entity`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
    MODIFY `number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `note`
--
ALTER TABLE `note`
    MODIFY `number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `note_portal`
--
ALTER TABLE `note_portal`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `note_team`
--
ALTER TABLE `note_team`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `note_user`
--
ALTER TABLE `note_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `notification`
--
ALTER TABLE `notification`
    MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `portal_role_user`
--
ALTER TABLE `portal_role_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `portal_user`
--
ALTER TABLE `portal_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `product_asset`
--
ALTER TABLE `product_asset`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `product_attribute_value_channel`
--
ALTER TABLE `product_attribute_value_channel`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;
--
-- AUTO_INCREMENT для таблицы `product_category_channel`
--
ALTER TABLE `product_category_channel`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `product_channel`
--
ALTER TABLE `product_channel`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT для таблицы `product_family_attribute_channel`
--
ALTER TABLE `product_family_attribute_channel`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT для таблицы `role_team`
--
ALTER TABLE `role_team`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `subscription`
--
ALTER TABLE `subscription`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT для таблицы `team_user`
--
ALTER TABLE `team_user`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;