
DROP TABLE IF EXISTS `m_charge_revise_kind`;
CREATE TABLE `m_charge_revise_kind`  (
  `charge_revise_kind_id` bigint(20) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `show_type` tinyint(4) NOT NULL,
  `charge_revise_kind_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `charge_revise_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort_no` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`charge_revise_kind_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_charge_revise_kind_bk
-- ----------------------------
DROP TABLE IF EXISTS `m_charge_revise_kind_bk`;
CREATE TABLE `m_charge_revise_kind_bk`  (
  `charge_revise_kind_id` bigint(20) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `show_type` tinyint(4) NOT NULL,
  `charge_revise_kind_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `charge_revise_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort_no` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`charge_revise_kind_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_charge_revise_kind_sub
-- ----------------------------
DROP TABLE IF EXISTS `m_charge_revise_kind_sub`;
CREATE TABLE `m_charge_revise_kind_sub`  (
  `charge_revise_kind_sub_id` int(11) NOT NULL,
  `charge_revise_kind_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `charge_revise_kind_sub_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `charge_revise_kind_sub_kana` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `free_template_flg` tinyint(4) NOT NULL,
  `free_charge_flg` tinyint(4) NOT NULL,
  `memo_flg` tinyint(4) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `template` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`charge_revise_kind_sub_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_charge_revise_kind_sub_bk
-- ----------------------------
DROP TABLE IF EXISTS `m_charge_revise_kind_sub_bk`;
CREATE TABLE `m_charge_revise_kind_sub_bk`  (
  `charge_revise_kind_sub_id` int(11) NOT NULL,
  `charge_revise_kind_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `charge_revise_kind_sub_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `charge_revise_kind_sub_kana` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `free_template_flg` tinyint(4) NOT NULL,
  `free_charge_flg` tinyint(4) NOT NULL,
  `memo_flg` tinyint(4) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `template` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`charge_revise_kind_sub_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_claim_kind
-- ----------------------------
DROP TABLE IF EXISTS `m_claim_kind`;
CREATE TABLE `m_claim_kind`  (
  `claim_kind_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `static_flg` tinyint(4) NULL DEFAULT NULL,
  `show_type` tinyint(4) NOT NULL,
  `claim_kind_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `claim_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort_no` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`claim_kind_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_claim_kind_bk
-- ----------------------------
DROP TABLE IF EXISTS `m_claim_kind_bk`;
CREATE TABLE `m_claim_kind_bk`  (
  `claim_kind_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `static_flg` tinyint(4) NULL DEFAULT NULL,
  `show_type` tinyint(4) NOT NULL,
  `claim_kind_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `claim_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `sort_no` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`claim_kind_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_claim_kind_sub
-- ----------------------------
DROP TABLE IF EXISTS `m_claim_kind_sub`;
CREATE TABLE `m_claim_kind_sub`  (
  `claim_kind_sub_id` int(11) NOT NULL,
  `claim_kind_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `claim_kind_sub_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `claim_kind_sub_kana` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `num_flg` tinyint(4) NOT NULL,
  `date_flg` tinyint(4) NOT NULL,
  `free_template_flg` tinyint(4) NOT NULL,
  `free_charge_flg` tinyint(4) NOT NULL,
  `memo_flg` tinyint(4) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `template` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `default_charge` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`claim_kind_sub_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for m_claim_kind_sub_bk
-- ----------------------------
DROP TABLE IF EXISTS `m_claim_kind_sub_bk`;
CREATE TABLE `m_claim_kind_sub_bk`  (
  `claim_kind_sub_id` int(11) NOT NULL,
  `claim_kind_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `claim_kind_sub_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `claim_kind_sub_kana` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `num_flg` tinyint(4) NOT NULL,
  `date_flg` tinyint(4) NOT NULL,
  `free_template_flg` tinyint(4) NOT NULL,
  `free_charge_flg` tinyint(4) NOT NULL,
  `memo_flg` tinyint(4) NOT NULL,
  `sort_no` int(11) NOT NULL,
  `template` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `default_charge` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`claim_kind_sub_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_bill_proc_record_id
-- ----------------------------
DROP TABLE IF EXISTS `s_bill_proc_record_id`;
CREATE TABLE `s_bill_proc_record_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_car_use_charge_revise_id
-- ----------------------------
DROP TABLE IF EXISTS `s_car_use_charge_revise_id`;
CREATE TABLE `s_car_use_charge_revise_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_charge_revise_kind_id
-- ----------------------------
DROP TABLE IF EXISTS `s_charge_revise_kind_id`;
CREATE TABLE `s_charge_revise_kind_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_charge_revise_kind_sub_id
-- ----------------------------
DROP TABLE IF EXISTS `s_charge_revise_kind_sub_id`;
CREATE TABLE `s_charge_revise_kind_sub_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_claim_kind_id
-- ----------------------------
DROP TABLE IF EXISTS `s_claim_kind_id`;
CREATE TABLE `s_claim_kind_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_claim_kind_sub_id
-- ----------------------------
DROP TABLE IF EXISTS `s_claim_kind_sub_id`;
CREATE TABLE `s_claim_kind_sub_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_claim_public_id
-- ----------------------------
DROP TABLE IF EXISTS `s_claim_public_id`;
CREATE TABLE `s_claim_public_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_coupon_use_id
-- ----------------------------
DROP TABLE IF EXISTS `s_coupon_use_id`;
CREATE TABLE `s_coupon_use_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_member_carry_over_id
-- ----------------------------
DROP TABLE IF EXISTS `s_member_carry_over_id`;
CREATE TABLE `s_member_carry_over_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_member_claim_id
-- ----------------------------
DROP TABLE IF EXISTS `s_member_claim_id`;
CREATE TABLE `s_member_claim_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_member_disp_carry_over_id
-- ----------------------------
DROP TABLE IF EXISTS `s_member_disp_carry_over_id`;
CREATE TABLE `s_member_disp_carry_over_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_member_monthly_claim_id
-- ----------------------------
DROP TABLE IF EXISTS `s_member_monthly_claim_id`;
CREATE TABLE `s_member_monthly_claim_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_mileage_charge_correct_operation_log_id
-- ----------------------------
DROP TABLE IF EXISTS `s_mileage_charge_correct_operation_log_id`;
CREATE TABLE `s_mileage_charge_correct_operation_log_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for s_tpoint_info_id
-- ----------------------------
DROP TABLE IF EXISTS `s_tpoint_info_id`;
CREATE TABLE `s_tpoint_info_id`  (
  `id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_application_approval_billing_fix
-- ----------------------------
DROP TABLE IF EXISTS `t_application_approval_billing_fix`;
CREATE TABLE `t_application_approval_billing_fix`  (
  `application_approval_billing_fix_id` int(11) NOT NULL COMMENT '????????????????????????ID',
  `valid_flg` tinyint(4) NOT NULL DEFAULT 1 COMMENT '???????????????',
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????',
  `member_kbn` tinyint(4) NOT NULL COMMENT '????????????',
  `member_auto_id` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '??????ID',
  `member_claim_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `claim_ym` date NOT NULL COMMENT '????????????',
  `claim_kind_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `claim_kind_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '???????????????',
  `claim_kind_sub` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '????????????',
  `claim` int(11) NULL DEFAULT NULL COMMENT '?????????',
  `claim_memo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '??????',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `coupon_start_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `coupon_end_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `member_coupon_type_id` int(11) NULL DEFAULT NULL COMMENT '????????????????????????ID',
  `incoming_record_no` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `new_member_claim_id` int(11) NULL DEFAULT NULL COMMENT '???????????????ID',
  `approval_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '??????????????????',
  `approval_status` tinyint(4) NOT NULL COMMENT '????????????',
  `approval_stamp` date NULL DEFAULT NULL COMMENT '?????????',
  `approval_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tran_status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`application_approval_billing_fix_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_application_approval_billing_fix_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_application_approval_billing_fix_bk`;
CREATE TABLE `t_application_approval_billing_fix_bk`  (
  `application_approval_billing_fix_id` int(11) NOT NULL COMMENT '????????????????????????ID',
  `valid_flg` tinyint(4) NOT NULL DEFAULT 1 COMMENT '???????????????',
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????',
  `member_kbn` tinyint(4) NOT NULL COMMENT '????????????',
  `member_auto_id` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '??????ID',
  `member_claim_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `claim_ym` date NOT NULL COMMENT '????????????',
  `claim_kind_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `claim_kind_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '???????????????',
  `claim_kind_sub` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '????????????',
  `claim` int(11) NULL DEFAULT NULL COMMENT '?????????',
  `claim_memo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '??????',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `coupon_start_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `coupon_end_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `member_coupon_type_id` int(11) NULL DEFAULT NULL COMMENT '????????????????????????ID',
  `incoming_record_no` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `new_member_claim_id` int(11) NULL DEFAULT NULL COMMENT '???????????????ID',
  `approval_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '??????????????????',
  `approval_status` tinyint(4) NOT NULL COMMENT '????????????',
  `approval_stamp` date NULL DEFAULT NULL COMMENT '?????????',
  `approval_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `regist_stamp` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '?????????',
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '?????????',
  `update_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tran_status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`application_approval_billing_fix_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_application_approval_result_fix
-- ----------------------------
DROP TABLE IF EXISTS `t_application_approval_result_fix`;
CREATE TABLE `t_application_approval_result_fix`  (
  `application_approval_result_fix_id` int(11) NOT NULL COMMENT '????????????????????????ID',
  `valid_flg` tinyint(4) NOT NULL DEFAULT 1 COMMENT '???????????????',
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????',
  `car_reserve_id` int(11) NOT NULL COMMENT '????????????ID',
  `car_use_result_id` int(11) NOT NULL COMMENT '??????????????????ID',
  `reserve_from_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `reserve_to_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `use_result_from_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `use_result_to_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `mileage` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `result_memo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '??????????????????',
  `car_use_charge_revise_id` int(11) NULL DEFAULT NULL COMMENT '????????????????????????ID',
  `charge_revise_kind_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `charge_revise_kind_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '???????????????',
  `charge_revise_sub` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `revise_charge` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `charge_revise_memo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '??????????????????',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `coupon_start_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `coupon_end_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `member_coupon_type_id` int(11) NULL DEFAULT NULL COMMENT '????????????????????????ID',
  `incoming_record_no` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `new_revise_id` int(11) NULL DEFAULT NULL COMMENT '???????????????ID',
  `approval_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '??????????????????',
  `approval_status` tinyint(4) NOT NULL COMMENT '????????????',
  `approval_stamp` date NULL DEFAULT NULL COMMENT '?????????',
  `approval_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tran_status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`application_approval_result_fix_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_application_approval_result_fix_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_application_approval_result_fix_bk`;
CREATE TABLE `t_application_approval_result_fix_bk`  (
  `application_approval_result_fix_id` int(11) NOT NULL COMMENT '????????????????????????ID',
  `valid_flg` tinyint(4) NOT NULL DEFAULT 1 COMMENT '???????????????',
  `del_flg` tinyint(4) NOT NULL DEFAULT 0 COMMENT '???????????????',
  `car_reserve_id` int(11) NOT NULL COMMENT '????????????ID',
  `car_use_result_id` int(11) NOT NULL COMMENT '??????????????????ID',
  `reserve_from_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `reserve_to_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `use_result_from_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `use_result_to_stamp` timestamp(0) NULL DEFAULT NULL COMMENT '??????????????????',
  `mileage` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `result_memo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '??????????????????',
  `car_use_charge_revise_id` int(11) NULL DEFAULT NULL COMMENT '????????????????????????ID',
  `charge_revise_kind_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `charge_revise_kind_name` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '???????????????',
  `charge_revise_sub` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '??????????????????',
  `revise_charge` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `charge_revise_memo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL COMMENT '??????????????????',
  `coupon_id` int(11) NULL DEFAULT NULL COMMENT '????????????ID',
  `coupon_start_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `coupon_end_ym` date NULL DEFAULT NULL COMMENT '??????????????????????????????',
  `member_coupon_type_id` int(11) NULL DEFAULT NULL COMMENT '????????????????????????ID',
  `incoming_record_no` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '????????????????????????',
  `new_revise_id` int(11) NULL DEFAULT NULL COMMENT '???????????????ID',
  `approval_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '??????????????????',
  `approval_status` tinyint(4) NOT NULL COMMENT '????????????',
  `approval_stamp` date NULL DEFAULT NULL COMMENT '?????????',
  `approval_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `regist_stamp` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '?????????',
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '?????????',
  `update_user` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '?????????',
  `tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tran_status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`application_approval_result_fix_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci COMMENT = '????????????????????????????????????' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bill_proc_record
-- ----------------------------
DROP TABLE IF EXISTS `t_bill_proc_record`;
CREATE TABLE `t_bill_proc_record`  (
  `bill_proc_record_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `target` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `started_at` datetime(0) NOT NULL,
  `finished_at` timestamp(0) NULL DEFAULT NULL COMMENT '????????????',
  `aborted_at` timestamp(0) NULL DEFAULT NULL COMMENT '????????????',
  `status` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`bill_proc_record_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bill_proc_record_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_bill_proc_record_bk`;
CREATE TABLE `t_bill_proc_record_bk`  (
  `bill_proc_record_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `target` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `started_at` datetime(0) NOT NULL,
  `finished_at` datetime(0) NULL DEFAULT NULL,
  `aborted_at` datetime(0) NULL DEFAULT NULL,
  `status` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`bill_proc_record_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_car_use_charge_revise
-- ----------------------------
DROP TABLE IF EXISTS `t_car_use_charge_revise`;
CREATE TABLE `t_car_use_charge_revise`  (
  `car_use_charge_revise_id` bigint(20) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `car_reserve_id` int(11) NULL DEFAULT NULL,
  `charge_revise_kind_id` int(11) NULL DEFAULT NULL,
  `charge_revise_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `charge_revise_sub` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `revise_charge` int(11) NULL DEFAULT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`car_use_charge_revise_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_car_use_charge_revise_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_car_use_charge_revise_bk`;
CREATE TABLE `t_car_use_charge_revise_bk`  (
  `car_use_charge_revise_id` bigint(20) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `car_reserve_id` int(11) NULL DEFAULT NULL,
  `charge_revise_kind_id` int(11) NULL DEFAULT NULL,
  `charge_revise_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `charge_revise_sub` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `revise_charge` int(11) NULL DEFAULT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`car_use_charge_revise_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_claim_control
-- ----------------------------
DROP TABLE IF EXISTS `t_claim_control`;
CREATE TABLE `t_claim_control`  (
  `claim_public_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `claim_control_kbn` tinyint(4) NOT NULL COMMENT '??????????????????',
  `set_ym` date NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`claim_public_id`, `set_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_claim_control_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_claim_control_bk`;
CREATE TABLE `t_claim_control_bk`  (
  `claim_public_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `claiim_control_kbn` tinyint(4) NOT NULL,
  `set_ym` date NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`claim_public_id`, `set_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_coupon_expenditure
-- ----------------------------
DROP TABLE IF EXISTS `t_coupon_expenditure`;
CREATE TABLE `t_coupon_expenditure`  (
  `coupon_use_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `set_ym` date NOT NULL,
  `member_coupon_type_id` int(11) NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `member_id` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `expend_type` tinyint(4) NOT NULL,
  `expend_charge` int(11) NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`coupon_use_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_coupon_expenditure_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_coupon_expenditure_bk`;
CREATE TABLE `t_coupon_expenditure_bk`  (
  `coupon_use_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `set_ym` date NOT NULL,
  `member_coupon_type_id` int(11) NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `member_auto_id` int(11) NOT NULL,
  `expend_type` tinyint(4) NOT NULL,
  `expend_charge` int(11) NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`coupon_use_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_carry_over
-- ----------------------------
DROP TABLE IF EXISTS `t_member_carry_over`;
CREATE TABLE `t_member_carry_over`  (
  `member_carry_over_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `carry_over_ym` date NOT NULL,
  `carry_over_term` int(11) NULL DEFAULT NULL,
  `fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `no_fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_carry_over_id`, `carry_over_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_carry_over_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_member_carry_over_bk`;
CREATE TABLE `t_member_carry_over_bk`  (
  `member_carry_over_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `carry_over_ym` date NOT NULL,
  `carry_over_term` int(11) NULL DEFAULT NULL,
  `fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `no_fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_carry_over_id`, `carry_over_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_claim
-- ----------------------------
DROP TABLE IF EXISTS `t_member_claim`;
CREATE TABLE `t_member_claim`  (
  `member_claim_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `claim_ym` date NOT NULL,
  `claim_kind_id` int(11) NULL DEFAULT NULL,
  `claim_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `claim_kind_sub` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `claim` int(11) NULL DEFAULT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_claim_id`, `claim_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_claim_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_member_claim_bk`;
CREATE TABLE `t_member_claim_bk`  (
  `member_claim_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `claim_ym` date NOT NULL,
  `claim_kind_id` int(11) NULL DEFAULT NULL,
  `claim_kind_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `claim_kind_sub` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `claim` int(11) NULL DEFAULT NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_claim_id`, `claim_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_disp_carry_over
-- ----------------------------
DROP TABLE IF EXISTS `t_member_disp_carry_over`;
CREATE TABLE `t_member_disp_carry_over`  (
  `member_carry_over_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `claim_ym` date NOT NULL,
  `carry_over_ym` date NULL DEFAULT NULL,
  `carry_over_term` int(11) NULL DEFAULT NULL,
  `fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `no_fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_carry_over_id`, `claim_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_disp_carry_over_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_member_disp_carry_over_bk`;
CREATE TABLE `t_member_disp_carry_over_bk`  (
  `member_carry_over_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `claim_ym` date NOT NULL,
  `carry_over_ym` date NULL DEFAULT NULL,
  `carry_over_term` int(11) NULL DEFAULT NULL,
  `fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `no_fix_carry_over_charge` int(11) NULL DEFAULT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_carry_over_id`, `claim_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_monthly_claim
-- ----------------------------
DROP TABLE IF EXISTS `t_member_monthly_claim`;
CREATE TABLE `t_member_monthly_claim`  (
  `member_monthly_claim_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `claim_ym` date NOT NULL,
  `pay_type` tinyint(4) NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_monthly_claim_id`, `claim_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member_monthly_claim_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_member_monthly_claim_bk`;
CREATE TABLE `t_member_monthly_claim_bk`  (
  `member_monthly_claim_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `claim_ym` date NOT NULL,
  `pay_type` tinyint(4) NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `memo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`member_monthly_claim_id`, `claim_ym`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mileage_charge_correct_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `t_mileage_charge_correct_operation_log`;
CREATE TABLE `t_mileage_charge_correct_operation_log`  (
  `mileage_charge_correct_operation_log_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `car_reserve_id` int(11) NOT NULL,
  `result_mileage` int(11) NOT NULL,
  `charge_mileage` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `login_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_f_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_l_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_f_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_l_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `belong_id` int(11) NULL DEFAULT NULL,
  `authority_id` int(11) NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`mileage_charge_correct_operation_log_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mileage_charge_correct_operation_log_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_mileage_charge_correct_operation_log_bk`;
CREATE TABLE `t_mileage_charge_correct_operation_log_bk`  (
  `mileage_charge_correct_operation_log_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `car_reserve_id` int(11) NOT NULL,
  `result_mileage` int(11) NOT NULL,
  `charge_mileage` int(11) NOT NULL,
  `operator_id` int(11) NOT NULL,
  `login_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_f_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_l_kana` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_f_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operator_l_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `belong_id` int(11) NULL DEFAULT NULL,
  `authority_id` int(11) NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`mileage_charge_correct_operation_log_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tpoint_info
-- ----------------------------
DROP TABLE IF EXISTS `t_tpoint_info`;
CREATE TABLE `t_tpoint_info`  (
  `tpoint_info_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `grant_date` date NOT NULL,
  `points` int(11) NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`tpoint_info_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tpoint_info_bk
-- ----------------------------
DROP TABLE IF EXISTS `t_tpoint_info_bk`;
CREATE TABLE `t_tpoint_info_bk`  (
  `tpoint_info_id` int(11) NOT NULL,
  `valid_flg` tinyint(4) NOT NULL,
  `del_flg` tinyint(4) NOT NULL,
  `member_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `member_kbn` tinyint(4) NOT NULL,
  `grant_date` date NOT NULL,
  `points` int(11) NOT NULL,
  `regist_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_stamp` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `parent_tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `tran_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tran_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`tpoint_info_id`, `tran_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
