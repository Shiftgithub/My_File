create table `accounts_ledger`
(
    `company_id`            varchar(20)  default default null,
    `accounts_sub_group_id` varchar(20)  default default null,
    `ledger_id`             varchar(20) primary key      not null,
    `ledger_name`           varchar(100) default default null,
    `short_name`            varchar(100) default default null,
    `opening_balance`       float        default default null,
    `created_by`            varchar(50)  default default null,
    `created_at`            datetime     default default null
) engine = innodb
  default charset = utf8;

create table `accounts_sub_group`
(
    `company_id`             varchar(20)             default default null,
    `accounts_sub_group_id`  varchar(15) primary key default null,
    `accounts_group`         varchar(100)            default default null,
    `accounts_subgroup_name` varchar(100)            default default null,
    `short_name`             varchar(100)            default default null,
    `created_by`             varchar(15)             default default null,
    `created_at`             datetime                default default null
) engine = innodb
  default charset = utf8;

create table `accounts_year`
(
    `auto_id`    varchar(20) primary key default null,
    `date_from`  datetime                default default null,
    `date_to`    datetime                default default null,
    `active`     varchar(1)              default default null,
    `created_at` datetime                default default null,
    `created_by` varchar(20)             default default null
) engine = innodb
  default charset = utf8;

create table `advance_sales`
(
    `company_id`  varchar(5)  default null,
    `purchase_id` varchar(20) default null,
    `sales_id`    varchar(20) not null,
    `product_id`  varchar(20) not null,
    `qty`         float       default null,
    `serial`      varchar(50) not null,
    `added`       varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `auto_id_bank_transaction`
(
    `company_id`          varchar(20) default null,
    `bank_transaction_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_bonus_issue`
(
    `company_id`  varchar(5)  not null,
    `bonus_issue` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_bonus_receive`
(
    `company_id`    varchar(5)  default null,
    `bonus_receive` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_challan`
(
    `company_id` varchar(5)  not null,
    `challan_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_challan_return`
(
    `company_id`        varchar(5)  not null,
    `challan_return_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_cheque_in`
(
    `company_id`   varchar(20) default null,
    `cheque_in_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_cheque_in_cancel`
(
    `company_id`       varchar(5) not null,
    `cheque_in_cancel` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_commercial_invoice`
(
    `company_id`            varchar(5)  not null,
    `commercial_invoice_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_complain_receive`
(
    `company_id`          varchar(5)  not null,
    `complain_receive_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_exclusive_program`
(
    `company_id`        varchar(5) not null,
    `exclusive_program` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_fc_transaction`
(
    `company_id`        varchar(5)  not null,
    `fc_transaction_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_import`
(
    `company_id` varchar(5)  not null,
    `import`     varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_item_issue`
(
    `company_id`    varchar(5) not null,
    `item_issue_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_item_wise_credit_note`
(
    `company_id`      varchar(5)  not null,
    `credit_note_id ` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_journal`
(
    `company_id` varchar(5) not null,
    `journal_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_lc_matured`
(
    `company_id` varchar(5)  not null,
    `lc_matured` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_lc_retirement`
(
    `company_id`       varchar(5)  not null,
    `lc_retirement_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_order_receive`
(
    `company_id`       varchar(20) not null,
    `order_receive_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_payment`
(
    `company_id` varchar(5) not null,
    `payment_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_physical_stock_adjustment`
(
    `company_id`                   varchar(5) not null,
    `physical_stock_adjustment_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_pi`
(
    `company_id` varchar(5)  not null,
    `pi_id`      varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_price_quotation`
(
    `company_id`         varchar(5)  not null,
    `price_quotation_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_product_receive`
(
    `company_id`      varchar(5)  not null,
    `product_receive` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_product_transfer`
(
    `company_id`       varchar(20) not null,
    `product_transfer` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_purchase`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_purchase_order`
(
    `company_id`        varchar(5)  not null,
    `purchase_order_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_purchase_return`
(
    `company_id`         varchar(5)  not null,
    `purchase_return_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_receipt`
(
    `company_id` varchar(5) not null,
    `receipt_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_replace_in`
(
    `company_id`    varchar(5)  not null,
    `replace_in_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_replacement_delivery`
(
    `company_id`              varchar(5)  not null,
    `replacement_delivery_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_replace_out`
(
    `company_id`     varchar(5)  not null,
    `replace_out_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_rma_product_utilize`
(
    `company_id`             varchar(5)  not null,
    `rma_product_utilize_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_sales`
(
    `company_id` varchar(5)  not null,
    `sales_id`   varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_sales_return`
(
    `company_id`      varchar(5)  not null,
    `sales_return_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_service_bill`
(
    `company_id`      varchar(5)  not null,
    `service_bill_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_amendment_in`
(
    `company_id`            varchar(5)  not null,
    `stock_amendment_in_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_amendment_out`
(
    `company_id`             varchar(5)  default null,
    `stock_amendment_out_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_in`
(
    `company_id`  varchar(5)  not null,
    `stock_in_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_out`
(
    `company_id`   varchar(5)  not null,
    `stock_out_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_transfer`
(
    `company_id`     varchar(5)  not null,
    `stock_transfer` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_transfer_br_to_br`
(
    `company_id`                 varchar(5)  not null,
    `stock_transfer_br_to_br_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_transfer_commercial`
(
    `company_id`                   varchar(5)  not null,
    `stock_transfer_commercial_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_transfer_commercial_to_rma`
(
    `company_id`                   varchar(5)  not null,
    `stock_transfer_commercial_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_id_stock_transfer_rma_to_commercial`
(
    `company_id`                   varchar(5)  not null,
    `stock_transfer_commercial_id` varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `auto_number`
(
    `company_id` varchar(4)  not null,
    `hddref`     varchar(50) not null,
    `number`     varchar(30) not null
) engine = innodb
  default charset = utf8;

create table `bad_stock`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `qty`         float       default null,
    `serial`      varchar(50) not null,
    `cost`        float       default null
) engine = innodb
  default charset = utf8;

create table `bank`
(
    `company_id` varchar(20)  default default null,
    `bank_id`    varchar(15) primary key      not null,
    `bank_name`  varchar(200) default default null,
    `short_name` varchar(200) default default null,
    `created_by` varchar(50)  default default null,
    `created_at` datetime     default default null
) engine = innodb
  default charset = utf8;

create table `bank_account`
(
    `company_id`        varchar(20)  default default null,
    `bank_account_id`   varchar(15) primary key      not null,
    `bank_account_name` varchar(100) default default null,
    `short_name`        varchar(100) default default null,
    `bank_id`           varchar(15)                  not null,
    `balance`           float        default default null,
    `created_by`        varchar(50)  default default null,
    `created_at`        datetime     default default null
) engine = innodb
  default charset = utf8;

create table `bank_branch`
(
    `company_id`       varchar(20)  default default null,
    `bank_branch_id`   varchar(15) primary key      not null,
    `bank_branch_name` varchar(200) default default null,
    `short_name`       varchar(200) default default null,
    `created_by`       varchar(50)  default default null,
    `created_at`       datetime     default default null
) engine = innodb
  default charset = utf8;

create table `bank_reconcile`
(
    `trans_id`       bigint(18) primary key       not null,
    `company_id`     varchar(20)  default default null,
    `transaction_id` varchar(20)  default default null,
    `ref_id`         varchar(20)  default default null,
    `cs_id`          varchar(20)  default default null,
    `account_id`     varchar(20)  default default null,
    `trans`          varchar(100) default null,
    `sequence`       varchar(6)   default default null,
    `cheque_no`      varchar(50)  default default null,
    `date`           datetime     default default null,
    `amount_dr`      float        default default null,
    `amount_cr`      float        default default null
) engine = innodb
  default charset = utf8;

create table `bank_transaction`
(
    `company_id`            varchar(20) default default null,
    `bank_transaction_id`   varchar(20) primary key     not null,
    `ref_no`                varchar(50) default default null,
    `bank_transaction_date` datetime    default default null,
    `created_by`            varchar(20) default default null,
    `created_at`            datetime    default default null,
    `approved_by`           varchar(20) default default null,
    `approved_date`         datetime    default default null,
    `total_amount`          float       default default null,
    `approved`              varchar(1)  default default null
) engine = innodb
  default charset = utf8;

create table `bank_transaction_details`
(
    `bank_transaction_id` varchar(20) not null,
    `transaction_id`      varchar(20)  default null,
    `accounts_no`         varchar(20)  default null,
    `bank_id`             varchar(20)  default null,
    `bank_branch_id`      varchar(20)  default null,
    `ref_id`              varchar(20)  default null,
    `in_id`               varchar(20)  default null,
    `mpo_id`              varchar(20)  default null,
    `narration`           varchar(200) default null,
    `amount`              float        default null,
    `cheque_no`           varchar(50)  default null,
    `cheque_date`         datetime     default null,
    `sequence`            varchar(10)  default null,
    `approved`            varchar(1)   default null,
    `ref_transaction_id`  varchar(20)  default null,
    `accounts_no_to`      varchar(20)  default null,
    `narration_to`        varchar(20)  default null
) engine = innodb
  default charset = utf8;

create table `bill_book_entry`
(
    `company_id`     varchar(5)              default default null,
    `ref_no`         varchar(50)             default default null,
    `bill_book_id`   varchar(20) primary key default null,
    `bill_book_date` datetime                default default null,
    `narration`      varchar(50)             default default null,
    `hdd_ref`        varchar(50)             default default null,
    `insert_date`    datetime                default default null,
    `insert_time`    datetime                default default null,
    `created_by`     varchar(20)             default default null,
    `bill_no`        varchar(20)             default default null,
    `sales_id`       varchar(20)             default default null,
    `receipt_id`     varchar(20)             default default null,
    `status`         varchar(1)              default default null,
    `approved`       varchar(1)              default default null
) engine = innodb
  default charset = utf8;

create table `bill_to`
(
    `company_id`     varchar(5)              default default null,
    `bill_to_id`     varchar(20) primary key default null,
    `bill_to_name`   varchar(200)            default default null,
    `short_name`     varchar(200)                            not null,
    `address`        varchar(400)            default default null,
    `phone`          varchar(80)             default default null,
    `mobile`         varchar(80)             default default null,
    `fax`            varchar(80)             default default null,
    `email`          varchar(80)             default default null,
    `contact_person` varchar(80)             default default null,
    `created_by`     varchar(50)             default default null,
    `created_at`     datetime                default default null
) engine = innodb
  default charset = utf8;

create table `bonus_issue`
(
    `bonus_issue_id`   varchar(20) primary key      not null,
    `company_id`       varchar(5)                   not null,
    `customer_id`      varchar(20)                  not null,
    `mpo_id`           varchar(20)  default default null,
    `ref_no`           varchar(20)  default default null,
    `bonus_issue_date` datetime     default default null,
    `remarks`          varchar(100) default default null,
    `created_by`       varchar(20)  default default null,
    `created_at`       datetime     default default null,
    `approved_by`      varchar(20)  default default null,
    `approved_date`    datetime     default default null,
    `total_cost`       float        default default null,
    `total_price`      float        default default null,
    `approved`         varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `bonus_issue_details`
(
    `bonus_issue_id` varchar(20) not null,
    `purchase_id`    varchar(20) default null,
    `ref_id`         varchar(20) default null,
    `product_id`     varchar(20) not null,
    `sequence`       varchar(5)  default null,
    `hdd_ref`        varchar(50) default null,
    `insert_date`    datetime    default null,
    `insert_time`    datetime    default null,
    `created_by`     varchar(20) default null,
    `serial`         varchar(50) not null,
    `qty`            float       default null,
    `cost`           float       default null,
    `unit_price`     float       default null,
    `approved`       varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `bonus_receive`
(
    `bonus_receive_id`   varchar(20) primary key      not null,
    `company_id`         varchar(5)                   not null,
    `supplier_id`        varchar(20)  default default null,
    `ref_no`             varchar(20)  default default null,
    `remarks`            varchar(100) default default null,
    `bonus_receive_date` datetime     default default null,
    `created_by`         varchar(20)  default default null,
    `created_at`         datetime     default default null,
    `approved_by`        varchar(20)  default default null,
    `approved_date`      datetime     default default null,
    `total_cost`         float        default default null,
    `approved`           varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `bonus_receive_details`
(
    `bonus_receive_id` varchar(20) not null,
    `product_id`       varchar(20) not null,
    `qty`              float       default null,
    `batch_no`         varchar(50) default null,
    `m_date`           datetime    default null,
    `e_date`           datetime    default null,
    `hdd_ref`          varchar(50) default null,
    `insert_date`      datetime    default null,
    `insert_time`      datetime    default null,
    `created_by`       varchar(20) default null,
    `sequence`         varchar(10) default null,
    `serial`           varchar(50) not null,
    `unit_price`       float       default null,
    `approved`         varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `branch`
(
    `branch_id`   varchar(20) primary key      not null,
    `branch_name` varchar(100) default default null,
    `short_name`  varchar(100) default default null,
    `address1`    varchar(200) default default null,
    `address2`    varchar(200) default default null,
    `phone`       varchar(100) default default null,
    `fax`         varchar(100) default default null,
    `email`       varchar(100) default default null,
    `web`         varchar(100) default default null,
    `created_by`  varchar(15)  default default null,
    `created_at`  datetime     default default null,
    `active`      varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `brand`
(
    `brand_id`   varchar(20) primary key      not null,
    `brand_name` varchar(100) default default null,
    `short_name` varchar(100) default default null,
    `created_by` varchar(15)  default default null,
    `created_at` datetime     default default null
) engine = innodb
  default charset = utf8;

create table `card`
(
    `company_id` varchar(20)  default default null,
    `card_id`    varchar(20) primary key      not null,
    `card_name`  varchar(100) default default null,
    `short_name` varchar(100) default default null,
    `created_by` varchar(15)  default default null,
    `created_at` datetime     default default null
) engine = innodb
  default charset = utf8;

create table `cash_in_hand`
(
    `company_id`      varchar(20) default null,
    `opening_balance` float       default null
) engine = innodb
  default charset = utf8;

create table `category`
(
    `category_id`   varchar(20) primary key      not null,
    `category_name` varchar(100) default default null,
    `short_name`    varchar(100) default default null,
    `company_id`    varchar(20)  default default null,
    `created_by`    varchar(15)  default default null,
    `created_at`    datetime     default default null
) engine = innodb
  default charset = utf8;

create table `cf_information`
(
    `cf_id`          varchar(20) primary key      not null,
    `cf_name`        varchar(100) default default null,
    `short_name`     varchar(100)                 not null,
    `company_id`     varchar(5)                   not null,
    `address`        varchar(200) default default null,
    `contact_person` varchar(100) default default null,
    `contact_no`     varchar(100) default default null,
    `phone`          varchar(100) default default null,
    `fax`            varchar(100) default default null,
    `email`          varchar(100) default default null,
    `balance`        float        default default null,
    `active`         varchar(1)   default default null,
    `created_by`     varchar(15)  default default null,
    `created_at`     datetime     default default null
) engine = innodb
  default charset = utf8;

create table `challan`
(
    `challan_id`       varchar(20) primary key      not null,
    `company_id`       varchar(5)                   not null,
    `customer_id`      varchar(20)  default default null,
    `narration`        varchar(200) default default null,
    `order_receive_id` varchar(20)  default default null,
    `mpo_id`           varchar(20)  default default null,
    `ref_no`           varchar(20)  default default null,
    `remarks`          varchar(100) default default null,
    `challan_date`     datetime     default default null,
    `created_by`       varchar(20)  default default null,
    `created_at`       datetime     default default null,
    `approved_by`      varchar(20)  default default null,
    `approved_date`    datetime     default default null,
    `total_avg_cost`   float        default default null,
    `total_cost`       float        default default null,
    `approved`         varchar(1)   default default null,
    `status`           varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `challan_details`
(
    `challan_id`  varchar(20) not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `store_id`    varchar(20) default null,
    `sequence`    varchar(5)  default null,
    `hdd_ref`     varchar(50) default null,
    `insert_date` datetime    default null,
    `insert_time` datetime    default null,
    `created_by`  varchar(20) default null,
    `serial`      varchar(50) not null,
    `qty`         float       default null,
    `avg_cost`    float       default null,
    `cost`        float       default null,
    `approved`    varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `challan_return`
(
    `challan_return_id`   varchar(20) primary key      not null,
    `company_id`          varchar(5)                   not null,
    `customer_id`         varchar(20)  default default null,
    `attention`           varchar(150) default default null,
    `mpo_id`              varchar(20)  default default null,
    `ref_no`              varchar(20)  default default null,
    `remarks`             varchar(100) default default null,
    `challan_return_date` datetime     default default null,
    `created_by`          varchar(20)  default default null,
    `created_at`          datetime     default default null,
    `approved_by`         varchar(20)  default default null,
    `approved_date`       datetime     default default null,
    `total_avg_cost`      float        default default null,
    `total_cost`          float        default default null,
    `approved`            varchar(1)   default default null,
    `status`              varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `challan_return_details`
(
    `challan_return_id` varchar(20) not null,
    `challan_id`        varchar(20) default null,
    `purchase_id`       varchar(20) default null,
    `product_id`        varchar(20) not null,
    `store_id`          varchar(20) default null,
    `sequence`          varchar(5)  default null,
    `hdd_ref`           varchar(50) default null,
    `insert_date`       datetime    default null,
    `insert_time`       datetime    default null,
    `created_by`        varchar(20) default null,
    `serial`            varchar(50) not null,
    `qty`               float       default null,
    `avg_cost`          float       default null,
    `cost`              float       default null,
    `approved`          varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `cheque_in`
(
    `company_id`     varchar(20) default default null,
    `cheque_in_id`   varchar(20) primary key     not null,
    `ref_no`         varchar(20) default default null,
    `cheque_in_date` datetime    default default null,
    `created_by`     varchar(20) default default null,
    `created_at`     datetime    default default null,
    `approved_by`    varchar(20) default default null,
    `approved_date`  datetime    default default null,
    `approved`       varchar(1)  default default null
) engine = innodb
  default charset = utf8;

create table `cheque_in_cancel`
(
    `cheque_in_cancel_id`   varchar(20) primary key     not null,
    `company_id`            varchar(5)                  not null,
    `ref_no`                varchar(20) default default null,
    `cheque_in_cancel_date` datetime    default default null,
    `created_by`            varchar(20) default default null,
    `created_at`            datetime    default default null,
    `approved_by`           varchar(20) default default null,
    `approved_date`         datetime    default default null,
    `approved`              varchar(1)  default default null
) engine = innodb
  default charset = utf8;

create table `cheque_in_cancel_details`
(
    `cheque_in_cancel_id` varchar(20) not null,
    `cheque_in_id`        char(20)     default null,
    `ledger_id`           varchar(20)  default null,
    `cheque_no`           varchar(50)  default null,
    `narration`           varchar(200) default null,
    `hdd_ref`             varchar(50)  default null,
    `insert_date`         datetime     default null,
    `insert_time`         datetime     default null,
    `created_by`          varchar(20)  default null,
    `sequence`            varchar(10)  default null,
    `approved`            varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `cheque_in_details`
(
    `cheque_in_id` varchar(20) primary key     not null,
    `account_id`   varchar(20) default default null,
    `cheque_no`    varchar(50) default default null,
    `type`         varchar(50) default default null,
    `insert_date`  datetime    default default null,
    `insert_time`  datetime    default default null,
    `created_by`   varchar(20) default default null,
    `approved`     varchar(1)  default default null
) engine = innodb
  default charset = utf8;

create table `color`
(
    `color_id`   varchar(20) primary key      not null,
    `color_name` varchar(100) default default null,
    `short_name` varchar(100)                 not null,
    `company_id` varchar(20)  default default null,
    `created_by` varchar(15)  default default null,
    `created_at` datetime     default default null
) engine = innodb
  default charset = utf8;

create table `commercial_invoice`
(
    `commercial_invoice_id`   varchar(20) primary key      not null,
    `lc_no`                   varchar(100) default default null,
    `company_id`              varchar(5)                   not null,
    `ref_no`                  varchar(100) default default null,
    `narration`               varchar(200) default default null,
    `commercial_invoice_date` datetime     default default null,
    `created_by`              varchar(20)  default default null,
    `created_at`              datetime     default default null,
    `approved_by`             varchar(20)  default default null,
    `approved_date`           datetime     default default null,
    `total_cost`              float        default default null,
    `approved`                varchar(1)   default default null,
    `process`                 varchar(1)   default default null,
    `status`                  varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `commercial_invoice_details`
(
    `commercial_invoice_id` varchar(20) primary key     not null,
    `product_id`            varchar(20)                 not null,
    `qty`                   float       default default null,
    `pending_qty`           float       default default null,
    `hdd_ref`               varchar(50) default default null,
    `insert_date`           datetime    default default null,
    `insert_time`           datetime    default default null,
    `created_by`            varchar(20) default default null,
    `sequence`              varchar(10) default default null,
    `unit_price`            float       default default null,
    `approved`              varchar(1)  default default null,
    `process`               varchar(1)  default default null
) engine = innodb
  default charset = utf8;

create table `company_position`
(
    `month_name` varchar(50) default null,
    `profit`     float       default null
) engine = innodb
  default charset = utf8;

create table `company_wise_product_distributions`
(
    `product_group_id` varchar(20) default null,
    `product_id`       varchar(20) default null,
    `company_id`       varchar(20) default null,
    `created_by`       varchar(50) default null,
    `created_at`       datetime    default null,
    `hddrtef`          varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `complain_receive`
(
    `complain_receive_id`   varchar(20) primary key      not null,
    `company_id`            varchar(5)                   not null,
    `customer_id`           varchar(20)  default default null,
    `mpo_id`                varchar(20)  default default null,
    `ref_no`                varchar(20)  default default null,
    `remarks`               varchar(100) default default null,
    `complain_receive_date` datetime     default default null,
    `created_by`            varchar(20)  default default null,
    `created_at`            datetime     default default null,
    `approved_by`           varchar(20)  default default null,
    `approved_date`         datetime     default default null,
    `total_cost`            float        default default null,
    `total_charges`         float        default default null,
    `approved`              varchar(1)   default default null,
    `delivered`             varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `complain_receive_details`
(
    `complain_receive_id` varchar(20) not null,
    `product_id`          varchar(20) not null,
    `qty`                 float        default null,
    `under_warranty`      varchar(4)   default null,
    `sales_id`            varchar(20)  default null,
    `store_id`            varchar(20)  default null,
    `sales_date`          datetime     default null,
    `sold_serial`         varchar(50)  default null,
    `unit_cost`           float        default null,
    `delivery_date`       datetime     default null,
    `problem`             varchar(200) default null,
    `narration`           varchar(200) default null,
    `engineer_id`         varchar(20)  default null,
    `no_of_times`         float        default null,
    `prev_job_ref_no`     varchar(20)  default null,
    `hdd_ref`             varchar(50)  default null,
    `insert_date`         datetime     default null,
    `insert_time`         datetime     default null,
    `created_by`          varchar(20)  default null,
    `sequence`            varchar(10)  default null,
    `received_serial`     varchar(50) not null,
    `service_charge`      float        default null,
    `approved`            varchar(1)   default null,
    `delivery_id`         varchar(20)  default null
) engine = innodb
  default charset = utf8;

create table `country`
(
    `country_id`   varchar(20)  not null,
    `country_name` varchar(100) default null,
    `short_name`   varchar(100) not null,
    `company_id`   varchar(5)   default null,
    `created_by`   varchar(15)  default null,
    `created_at`   datetime     default null
) engine = innodb
  default charset = utf8;

create table `cs`
(
    `company_id`            varchar(5)     default default null,
    `cs_group_id`           varchar(20)    default default null,
    `cs_id`                 varchar(20) primary key        not null,
    `cs_name`               varchar(200)   default default null,
    `short_name`            varchar(200)                   not null,
    `address`               varchar(400)   default default null,
    `bank_branch_code`      varchar(100)   default default null,
    `bank_branch_id`        varchar(20)    default default null,
    `bank_id`               varchar(20)    default default null,
    `accounts_sub_group_id` varchar(20)    default default null,
    `phone`                 varchar(80)    default default null,
    `mobile`                varchar(80)    default default null,
    `fax`                   varchar(80)    default default null,
    `email`                 varchar(80)    default default null,
    `contact_person`        varchar(80)    default default null,
    `balance`               float          default default null,
    `fc_balance`            float          default default null,
    `credit_limit`          float          default default null,
    `active`                varchar(1)     default default null,
    `branch_id`             varchar(20)    default default null,
    `fc_ledger`             varchar(5)     default default null,
    `fc_id`                 varchar(20)    default default null,
    `type`                  varchar(20)    default default null,
    `created_by`            varchar(50)    default default null,
    `created_at`            datetime       default default null,
    `due`                   numeric(18, 2) default null,
    `process`               varchar(1)     default default null,
    `send_sms`              varchar(1)     default default null
) engine = innodb
  default charset = utf8;

create table `cs_group`
(
    `cs_group_id`   varchar(20)  not null,
    `cs_group_name` varchar(100) default null,
    `short_name`    varchar(100) not null,
    `company_id`    varchar(5)   default null,
    `created_by`    varchar(15)  default null,
    `created_at`    datetime     default null
) engine = innodb
  default charset = utf8;

create table `current_stock`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `store_id`    varchar(20) default null,
    `qty`         float       default null,
    `serial`      varchar(50) not null,
    `cost`        float       default null,
    `avg_cost`    float       default null
) engine = innodb
  default charset = utf8;

create table `current_stock_cheque`
(
    `company_id`     varchar(20) default null,
    `in_id`          varchar(20) default null,
    `ref_id`         varchar(20) default null,
    `account_id`     varchar(20) default null,
    `bank_id`        varchar(20) default null,
    `bank_branch_id` varchar(20) default null,
    `type`           varchar(20) default null,
    `status`         varchar(1)  default null,
    `cheque_no`      varchar(50) not null,
    `cheque_date`    datetime    default null,
    `amount`         float       default null
) engine = innodb
  default charset = utf8;

create table `customer_ship_to`
(
    `company_id`          varchar(20)  default null,
    `customer_id`         varchar(20)  default null,
    `customer_ship_to_id` varchar(20)  default null,
    `short_address`       varchar(400) not null,
    `address`             varchar(400) default null,
    `phone`               varchar(80)  default null,
    `mobile`              varchar(80)  default null,
    `fax`                 varchar(80)  default null,
    `email`               varchar(80)  default null,
    `contact_person`      varchar(80)  default null,
    `created_by`          varchar(50)  default null,
    `created_at`          datetime     default null
) engine = innodb
  default charset = utf8;

create table `data_export_list`
(
    `company_id`    varchar(20)  default null,
    `sales_id`      varchar(20)  default null,
    `product_id`    varchar(20)  default null,
    `file_location` varchar(500) default null
) engine = innodb
  default charset = utf8;

create table `delivery_requisition`
(
    `delivery_requisition_id`   varchar(20) not null,
    `company_id`                varchar(5)  not null,
    `ref_no`                    varchar(20)  default null,
    `narration`                 varchar(100) default null,
    `delivery_requisition_date` datetime     default null,
    `created_by`                varchar(20)  default null,
    `created_at`                datetime     default null,
    `approved_by`               varchar(20)  default null,
    `approved_date`             datetime     default null,
    `approved`                  varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `delivery_requisition_details`
(
    `delivery_requisition_id` varchar(20) not null,
    `product_id`              varchar(20) not null,
    `sequence`                varchar(5)  default null,
    `hdd_ref`                 varchar(50) default null,
    `insert_date`             datetime    default null,
    `insert_time`             datetime    default null,
    `created_by`              varchar(20) default null,
    `required_qty`            float       default null,
    `revised_qty`             float       default null,
    `pending_qty`             float       default null,
    `approved`                varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `department`
(
    `company_id`      varchar(20)  default null,
    `department_id`   varchar(20) not null,
    `department_name` varchar(100) default null,
    `short_name`      varchar(100) default null,
    `created_by`      varchar(15)  default null,
    `created_at`      datetime     default null
) engine = innodb
  default charset = utf8;

create table `engineer`
(
    `engineer_id`   varchar(20)  not null,
    `engineer_name` varchar(100) default null,
    `short_name`    varchar(100) not null,
    `company_id`    varchar(20)  default null,
    `created_by`    varchar(15)  default null,
    `created_at`    datetime     default null
) engine = innodb
  default charset = utf8;

create table `entry_close`
(
    `created_at` datetime default null
) engine = innodb
  default charset = utf8;

create table `entry_info`
(
    `company_id`         varchar(20)  default null,
    `user_name`          varchar(50)  default null,
    `computer_name`      varchar(200) default null,
    `no_of_times`        float        default null,
    `entry_successfully` varchar(3)   default null,
    `created_at`         datetime     default null
) engine = innodb
  default charset = utf8;

create table `exclusive_program`
(
    `exclusive_program_id`   varchar(20) not null,
    `company_id`             varchar(5)  not null,
    `ref_no`                 varchar(20)  default null,
    `remarks`                varchar(100) default null,
    `exclusive_program_date` datetime     default null,
    `created_by`             varchar(20)  default null,
    `created_at`             datetime     default null,
    `approved_by`            varchar(20)  default null,
    `approved_date`          datetime     default null,
    `approved`               varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `exclusive_program_details`
(
    `exclusive_program_id` varchar(20) not null,
    `pos`                  varchar(2)  default null,
    `dec_product_id`       varchar(20) not null,
    `dec_qty`              float       default null,
    `dec_amount`           float       default null,
    `bns_product_id`       varchar(20) default null,
    `bns_qty`              float       default null,
    `bns_amount`           float       default null,
    `date_from`            datetime    default null,
    `date_to`              datetime    default null,
    `hdd_ref`              varchar(50) default null,
    `insert_date`          datetime    default null,
    `insert_time`          datetime    default null,
    `created_by`           varchar(20) default null,
    `sequence`             varchar(10) default null,
    `approved`             varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `extra_charges_setup`
(
    `company_id` varchar(20)  default null,
    `charge1`    varchar(200) default null,
    `charge2`    varchar(200) default null,
    `charge3`    varchar(200) default null,
    `charge4`    varchar(200) default null,
    `charge5`    varchar(200) default null,
    `charge6`    varchar(200) default null,
    `created_by` varchar(20)  default null,
    `created_at` datetime     default null
) engine = innodb
  default charset = utf8;

create table `factory`
(
    `company_id`   varchar(20)  default null,
    `factory_id`   varchar(20)  default null,
    `factory_name` varchar(100) default null
) engine = innodb
  default charset = utf8;

create table `factory_wise_product_distributions`
(
    `company_id` varchar(20) default null,
    `product_id` varchar(20) default null,
    `factory_id` varchar(20) default null,
    `created_by` varchar(50) default null,
    `created_at` datetime    default null,
    `hddrtef`    varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `factory_wise_store_distribution`
(
    `company_id` varchar(20) default null,
    `factory_id` varchar(20) default null,
    `store_id`   varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `fc_transaction`
(
    `company_id`          varchar(20) default null,
    `fc_transaction_id`   varchar(15) not null,
    `supplier_id`         varchar(15) default null,
    `ref_no`              varchar(15) default null,
    `fc_transaction_date` datetime    default null,
    `fc_transaction_time` datetime    default null,
    `created_by`          varchar(15) default null,
    `created_at`          datetime    default null,
    `total_amount_dr`     float       default null,
    `total_amount_cr`     float       default null,
    `approved_by`         varchar(15) default null,
    `approved_date`       datetime    default null,
    `approved`            varchar(2)  default null
) engine = innodb
  default charset = utf8;

create table `fc_transaction_details`
(
    `fc_transaction_id`     varchar(20)  default null,
    `commercial_invoice_id` varchar(20)  default null,
    `id`                    varchar(20)  default null,
    `transaction_type`      varchar(20)  default null,
    `narration`             varchar(200) default null,
    `amount_dr`             float        default null,
    `amount_cr`             float        default null,
    `bdt_rate`              float        default null,
    `approved`              varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `foreign_currency`
(
    `foreign_currency_id`   varchar(20) not null,
    `foreign_currency_name` varchar(10) default null,
    `short_name`            varchar(10) not null,
    `company_id`            varchar(5)  default null,
    `created_by`            varchar(15) default null,
    `created_at`            datetime    default null
) engine = innodb
  default charset = utf8;

create table `grade`
(
    `grade_id`   varchar(20)  not null,
    `grade_name` varchar(100) default null,
    `short_name` varchar(100) not null,
    `company_id` varchar(20)  default null,
    `created_by` varchar(15)  default null,
    `created_at` datetime     default null
) engine = innodb
  default charset = utf8;

create table `grade_wise_item_distribution`
(
    `company_id`    varchar(20) default null,
    `item_group_id` varchar(20) default null,
    `grade_id`      varchar(20) default null,
    `item_id`       varchar(50) default null,
    `qty`           float       default null,
    `created_by`    varchar(20) default null,
    `created_at`    datetime    default null,
    `hddrtef`       varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `import`
(
    `import_id`     varchar(20) not null,
    `company_id`    varchar(5)  not null,
    `supplier_id`   varchar(20) default null,
    `ref_no`        varchar(20) default null,
    `lc_matured_id` varchar(20) default null,
    `import_date`   datetime    default null,
    `created_by`    varchar(20) default null,
    `created_at`    datetime    default null,
    `approved_by`   varchar(20) default null,
    `approved_date` datetime    default null,
    `total_price`   float       default null,
    `total_cost`    float       default null,
    `approved`      varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `import_details`
(
    `import_id`   varchar(20) not null,
    `product_id`  varchar(20) not null,
    `qty`         float       default null,
    `batch_no`    varchar(50) default null,
    `m_date`      datetime    default null,
    `e_date`      datetime    default null,
    `hdd_ref`     varchar(50) default null,
    `insert_date` datetime    default null,
    `insert_time` datetime    default null,
    `created_by`  varchar(20) default null,
    `sequence`    varchar(10) default null,
    `serial`      varchar(50) not null,
    `unit_price`  float       default null,
    `unit_cost`   float       default null,
    `approved`    varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `importer`
(
    `company_id`    varchar(20)  default null,
    `importer_id`   varchar(15) not null,
    `importer_name` varchar(200) default null,
    `short_name`    varchar(200) default null,
    `address`       varchar(200) default null,
    `vat_reg_no`    varchar(100) default null,
    `tin`           varchar(100) default null,
    `irc_no`        varchar(100) default null,
    `created_by`    varchar(50)  default null,
    `created_at`    datetime     default null
) engine = innodb
  default charset = utf8;

create table `indenter`
(
    `company_id`     varchar(5)   default null,
    `indenter_id`    varchar(20)  default null,
    `indenter_name`  varchar(200) default null,
    `short_name`     varchar(200) not null,
    `address`        varchar(400) default null,
    `phone`          varchar(80)  default null,
    `mobile`         varchar(80)  default null,
    `fax`            varchar(80)  default null,
    `email`          varchar(80)  default null,
    `contact_person` varchar(80)  default null,
    `created_by`     varchar(50)  default null,
    `created_at`     datetime     default null
) engine = innodb
  default charset = utf8;

create table `initial`
(
    `company_id` varchar(5)  default null,
    `caption`    varchar(50) default null,
    `activation` varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `inspection_company`
(
    `inspection_company_id`   varchar(20)  not null,
    `inspection_company_name` varchar(100) default null,
    `short_name`              varchar(100) not null,
    `company_id`              varchar(5)   default null,
    `created_by`              varchar(15)  default null,
    `created_at`              datetime     default null
) engine = innodb
  default charset = utf8;

create table `insurance_company`
(
    `company_id`             varchar(5)   default null,
    `insurance_company_id`   varchar(20)  default null,
    `insurance_company_name` varchar(200) default null,
    `short_name`             varchar(200) not null,
    `address`                varchar(400) default null,
    `phone`                  varchar(80)  default null,
    `mobile`                 varchar(80)  default null,
    `fax`                    varchar(80)  default null,
    `email`                  varchar(80)  default null,
    `contact_person`         varchar(80)  default null,
    `created_by`             varchar(50)  default null,
    `created_at`             datetime     default null
) engine = innodb
  default charset = utf8;

create table `item_conversion`
(
    `company_id`     varchar(20) default null,
    `product_id`     varchar(20) default null,
    `qty`            float       default null,
    `converted_qty`  float       default null,
    `converted_unit` varchar(20) default null,
    `created_by`     varchar(20) default null,
    `created_at`     datetime    default null,
    `hddrtef`        varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `item_distribution`
(
    `product_id` varchar(20) not null,
    `color_id`   varchar(20) not null,
    `size_id`    varchar(20) not null,
    `grade_id`   varchar(20) not null,
    `hddrtef`    varchar(50) default null,
    `company_id` varchar(20) default null,
    `created_by` varchar(15) default null,
    `created_at` datetime    default null
) engine = innodb
  default charset = utf8;

create table `item_group`
(
    `item_id`         varchar(20)  not null,
    `item_group_name` varchar(100) default null,
    `short_name`      varchar(100) not null,
    `company_id`      varchar(20)  default null,
    `created_by`      varchar(15)  default null,
    `created_at`      datetime     default null
) engine = innodb
  default charset = utf8;

create table `item_issue`
(
    `item_issue_id`          varchar(20) not null,
    `company_id`             varchar(5)  not null,
    `requisition_id`         varchar(20)  default null,
    `required_department_id` varchar(20)  default null,
    `mpo_id`                 varchar(20)  default null,
    `ref_no`                 varchar(20)  default null,
    `remarks`                varchar(100) default null,
    `item_issue_date`        datetime     default null,
    `created_by`             varchar(20)  default null,
    `created_at`             datetime     default null,
    `approved_by`            varchar(20)  default null,
    `approved_date`          datetime     default null,
    `total_avg_cost`         float        default null,
    `total_cost`             float        default null,
    `approved`               varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `item_issue_details`
(
    `item_issue_id` varchar(20) not null,
    `purchase_id`   varchar(20) default null,
    `ref_id`        varchar(20) default null,
    `product_id`    varchar(20) not null,
    `store_id`      varchar(20) default null,
    `sequence`      varchar(5)  default null,
    `hdd_ref`       varchar(50) default null,
    `insert_date`   datetime    default null,
    `insert_time`   datetime    default null,
    `created_by`    varchar(20) default null,
    `serial`        varchar(50) not null,
    `qty`           float       default null,
    `avg_cost`      float       default null,
    `cost`          float       default null,
    `approved`      varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `item_wise_credit_note`
(
    `credit_note_id`   varchar(20) not null,
    `company_id`       varchar(5)  not null,
    `customer_id`      varchar(20)  default null,
    `mpo_id`           varchar(20)  default null,
    `ref_no`           varchar(20)  default null,
    `attention`        varchar(100) default null,
    `narration`        varchar(200) default null,
    `credit_note_date` datetime     default null,
    `created_by`       varchar(20)  default null,
    `created_at`       datetime     default null,
    `approved_by`      varchar(20)  default null,
    `approved_date`    datetime     default null,
    `total_price`      float        default null,
    `total_cost`       float        default null,
    `total_avg_cost`   float        default null,
    `approved`         varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `item_wise_credit_note_details`
(
    `credit_note_id ` varchar(20) not null,
    `product_id`      varchar(20) not null,
    `store_id`        varchar(20) default null,
    `qty`             float       default null,
    `batch_no`        varchar(50) default null,
    `sales_id`        varchar(20) default null,
    `purchase_id`     varchar(20) default null,
    `m_date`          datetime    default null,
    `e_date`          datetime    default null,
    `hdd_ref`         varchar(50) default null,
    `insert_date`     datetime    default null,
    `insert_time`     datetime    default null,
    `created_by`      varchar(20) default null,
    `sequence`        varchar(10) default null,
    `serial`          varchar(50) not null,
    `avg_cost`        float       default null,
    `cost`            float       default null,
    `unit_price`      float       default null,
    `approved`        varchar(1)  default null,
    `inventory`       varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `journal`
(
    `company_id`            varchar(20) not null,
    `commercial_invoice_id` varchar(20) default null,
    `journal_id`            varchar(20) not null,
    `ref_no`                varchar(20) default null,
    `journal_date`          datetime    default null,
    `created_by`            varchar(20) default null,
    `created_at`            datetime    default null,
    `approved_by`           varchar(20) default null,
    `approved_date`         datetime    default null,
    `total_amount_dr`       float       default null,
    `total_amount_cr`       float       default null,
    `approved`              varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `journal_details`
(
    `journal_id`          varchar(20) not null,
    `accounts_name_dr`    varchar(100) default null,
    `ledger_id_dr`        varchar(20)  default null,
    `depreciation_dr_ref` varchar(20)  default null,
    `mpo_id_dr`           varchar(20)  default null,
    `accounts_name_cr`    varchar(100) default null,
    `ledger_id_cr`        varchar(20)  default null,
    `depreciation_cr_ref` varchar(20)  default null,
    `mpo_id_cr`           varchar(20)  default null,
    `narration`           varchar(200) default null,
    `usd_amount`          float        default null,
    `usd_rate`            float        default null,
    `amount`              float        default null,
    `insert_date`         datetime     default null,
    `insert_time`         datetime     default null,
    `created_by`          varchar(20)  default null,
    `sequence`            varchar(10)  default null,
    `approved`            varchar(1)   default null,
    `process`             varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `lc_matured`
(
    `lc_matured_id`    varchar(20) not null,
    `company_id`       varchar(5)  not null,
    `supplier_id`      varchar(20)  default null,
    `ref_no`           varchar(20)  default null,
    `lc_no`            varchar(100) default null,
    `lc_matured_date`  datetime     default null,
    `created_by`       varchar(20)  default null,
    `created_at`       datetime     default null,
    `approved_by`      varchar(20)  default null,
    `approved_date`    datetime     default null,
    `total_price_usd`  float        default null,
    `total_price_taka` float        default null,
    `total_cost_taka`  float        default null,
    `approved`         varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `lc_matured_details`
(
    `lc_matured_id`   varchar(20) not null,
    `product_id`      varchar(20) not null,
    `qty`             float       default null,
    `hdd_ref`         varchar(50) default null,
    `insert_date`     datetime    default null,
    `insert_time`     datetime    default null,
    `created_by`      varchar(20) default null,
    `sequence`        varchar(10) default null,
    `unit_price_usd`  float       default null,
    `usd_rate`        float       default null,
    `unit_price_taka` float       default null,
    `unit_cost_taka`  float       default null,
    `approved`        varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `lc_open`
(
    `company_id`            varchar(20)  not null,
    `lc_no`                 varchar(100) not null,
    `supplier_id`           varchar(20)  default null,
    `ref_no`                varchar(50)  default null,
    `lc_date`               datetime     default null,
    `indenter_id`           varchar(20)  default null,
    `importer_id`           varchar(20)  default null,
    `lc_open_date`          datetime     default null,
    `lc_expiry_date`        datetime     default null,
    `last_date_of_shipment` datetime     default null,
    `inspection_company_id` varchar(20)  default null,
    `inspection_order_no`   varchar(100) default null,
    `lca_form_no`           varchar(100) default null,
    `bank_ac_no`            varchar(20)  default null,
    `consignment_note`      varchar(200) default null,
    `ins_cover_note_no`     varchar(100) default null,
    `ins_cover_note_date`   datetime     default null,
    `insurance_company_id`  varchar(150) default null,
    `total_cost`            float        default null,
    `created_at`            datetime     default null,
    `created_by`            varchar(20)  default null,
    `approved_by`           varchar(20)  default null,
    `approved_date`         datetime     default null,
    `approved`              varchar(1)   default null,
    `process`               varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `lc_open_details`
(
    `lc_no`       varchar(100) not null,
    `pi_id`       varchar(20)  not null,
    `product_id`  varchar(20)  not null,
    `qty`         float       default null,
    `pending_qty` float       default null,
    `hdd_ref`     varchar(50) default null,
    `insert_date` datetime    default null,
    `insert_time` datetime    default null,
    `created_by`  varchar(20) default null,
    `sequence`    varchar(10) default null,
    `unit_price`  float       default null,
    `approved`    varchar(1)  default null,
    `process`     varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `lc_retirement`
(
    `lc_retirement_id`      varchar(20) not null,
    `company_id`            varchar(5)  not null,
    `lc_no`                 varchar(100) default null,
    `supplier_id`           varchar(20)  default null,
    `ref_no`                varchar(20)  default null,
    `vessel_name`           varchar(150) default null,
    `voyage_no`             varchar(100) default null,
    `cf_id`                 varchar(20)  default null,
    `crf_no`                varchar(100) default null,
    `inspection_date`       datetime     default null,
    `awb_bill_date`         datetime     default null,
    `awb_bill_no`           varchar(100) default null,
    `bill_of_created_at`    datetime     default null,
    `bill_of_entry_no`      varchar(100) default null,
    `shipping_guaranty_no`  varchar(100) default null,
    `narration`             varchar(200) default null,
    `lc_retirement_date`    datetime    not null,
    `created_by`            varchar(20)  default null,
    `created_at`            datetime     default null,
    `approved_by`           varchar(20)  default null,
    `approved_date`         datetime     default null,
    `total_crf_value`       float        default null,
    `total_duty`            float        default null,
    `total_auto_cost`       float        default null,
    `total_commercial_cost` float        default null,
    `total_cost`            float       not null,
    `approved`              varchar(1)   default null,
    `process`               varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `lc_retirement_details`
(
    `lc_retirement_id`       varchar(20) not null,
    `product_id`             varchar(20) not null,
    `store_id`               varchar(20) default null,
    `qty`                    float       default null,
    `hdd_ref`                varchar(50) default null,
    `insert_date`            datetime    default null,
    `insert_time`            datetime    default null,
    `created_by`             varchar(20) default null,
    `sequence`               varchar(10) default null,
    `serial`                 varchar(50) default null,
    `crf_value`              float       default null,
    `dollar_rate`            float       default null,
    `unit_duty`              float       default null,
    `auto_unit_cost`         float       default null,
    `unit_price_usd`         float       default null,
    `commercial_dollar_rate` float       default null,
    `approved`               varchar(1)  default null,
    `process`                varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `machine`
(
    `company_id`          varchar(20) not null,
    `machine_id`          varchar(20) not null,
    `hddref`              varchar(50) not null,
    `machine_description` varchar(100) default null
) engine = innodb
  default charset = utf8;

create table `main_accounts`
(
    `company_id`              varchar(5)   default null,
    `accounts_sub_group_name` varchar(100) default null,
    `short_name`              varchar(100) default null
) engine = innodb
  default charset = utf8;

create table `main_bank_transaction`
(
    `trans_id`         varchar(20)  default null,
    `bank_transaction` varchar(100) default null,
    `short_name`       varchar(100) default null
) engine = innodb
  default charset = utf8;

create table `menu`
(
    `mnu_user_name` varchar(25) default null,
    `mnu_name`      varchar(40) default null,
    `mnu_enabled`   varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `modifications_bonus_issue`
(
    `company_id` varchar(20) default null,
    `trans`      varchar(50) default null,
    `invoice_no` varchar(20) default null,
    `trn_date`   datetime    default null,
    `cs_id`      varchar(20) default null,
    `m_date`     datetime    default null,
    `m_time`     datetime    default null,
    `hddref`     varchar(50) default null,
    `created_by` varchar(20) default null,
    `product_id` varchar(20) default null,
    `serial`     varchar(50) default null,
    `qty`        float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_bonus_receive`
(
    `company_id` varchar(20) default null,
    `trans`      varchar(50) default null,
    `invoice_no` varchar(20) default null,
    `m_date`     datetime    default null,
    `m_time`     datetime    default null,
    `hddref`     varchar(50) default null,
    `created_by` varchar(20) default null,
    `product_id` varchar(20) default null,
    `serial`     varchar(50) default null,
    `qty`        float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_challan`
(
    `company_id`   varchar(20)  default null,
    `customer_id`  varchar(20)  default null,
    `challan_date` datetime     default null,
    `trans`        varchar(50)  default null,
    `ref_no`       varchar(50)  default null,
    `narration`    varchar(200) default null,
    `invoice_no`   varchar(20)  default null,
    `m_date`       datetime     default null,
    `m_time`       datetime     default null,
    `hddref`       varchar(50)  default null,
    `created_by`   varchar(20)  default null,
    `product_id`   varchar(20)  default null,
    `store_id`     varchar(20)  default null,
    `serial`       varchar(50)  default null,
    `qty`          float        default null,
    `cost`         float        default null,
    `avg_cost`     float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_challan_return`
(
    `company_id`          varchar(20)  default null,
    `customer_id`         varchar(20)  default null,
    `challan_return_date` datetime     default null,
    `trans`               varchar(50)  default null,
    `ref_no`              varchar(50)  default null,
    `invoice_no`          varchar(20)  default null,
    `remarks`             varchar(200) default null,
    `challan_no`          varchar(20)  default null,
    `m_date`              datetime not null,
    `m_time`              datetime     default null,
    `hddref`              varchar(50)  default null,
    `created_by`          varchar(20)  default null,
    `product_id`          varchar(20)  default null,
    `store_id`            varchar(20)  default null,
    `serial`              varchar(50)  default null,
    `qty`                 float        default null,
    `cost`                float        default null,
    `avg_cost`            float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_cheque_in`
(
    `company_id` varchar(20) default null,
    `trans`      varchar(50) default null,
    `invoice_no` varchar(20) default null,
    `m_date`     datetime    default null,
    `m_time`     datetime    default null,
    `hddref`     varchar(50) default null,
    `created_by` varchar(20) default null,
    `account_id` varchar(20) default null,
    `type`       varchar(50) default null,
    `cheque_no`  varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `modifications_cheque_in_cancel`
(
    `company_id` varchar(20) default null,
    `trans`      varchar(50) default null,
    `invoice_no` varchar(20) default null,
    `m_date`     datetime    default null,
    `m_time`     datetime    default null,
    `hddref`     varchar(50) default null,
    `created_by` varchar(20) default null,
    `ledger_id`  varchar(20) default null,
    `cheque_no`  varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `modifications_commercial_invoice`
(
    `company_id`              varchar(20)  default null,
    `ref_no`                  varchar(100) default null,
    `lc_no`                   varchar(100) default null,
    `narration`               varchar(200) default null,
    `commercial_invoice_date` datetime     default null,
    `trans`                   varchar(50)  default null,
    `invoice_no`              varchar(20)  default null,
    `m_date`                  datetime     default null,
    `m_time`                  datetime     default null,
    `hddref`                  varchar(50)  default null,
    `created_by`              varchar(20)  default null,
    `product_id`              varchar(20)  default null,
    `qty`                     float        default null,
    `previous_rate`           float        default null,
    `current_rate`            float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_complain_receive`
(
    `company_id`            varchar(20)  default null,
    `customer_id`           varchar(20)  default null,
    `complain_receive_date` datetime     default null,
    `trans`                 varchar(50)  default null,
    `invoice_no`            varchar(20)  default null,
    `m_date`                datetime     default null,
    `m_time`                datetime     default null,
    `hddref`                varchar(50)  default null,
    `created_by`            varchar(20)  default null,
    `sales_id`              varchar(20)  default null,
    `product_id`            varchar(20)  default null,
    `under_warranty`        varchar(20)  default null,
    `unit_cost`             float        default null,
    `sales_date`            datetime     default null,
    `sold_serial_no`        varchar(50)  default null,
    `store_id`              varchar(20)  default null,
    `delivery_date`         datetime     default null,
    `problem`               varchar(200) default null,
    `engineer_id`           varchar(20)  default null,
    `no_of_times`           float        default null,
    `prev_job_ref`          varchar(20)  default null,
    `narration`             varchar(200) default null,
    `received_serial`       varchar(50)  default null,
    `qty`                   float        default null,
    `amount_charges`        float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_exclusive_program`
(
    `company_id`     varchar(20) default null,
    `trans`          varchar(50) default null,
    `invoice_no`     varchar(20) default null,
    `m_date`         datetime    default null,
    `m_time`         datetime    default null,
    `hddref`         varchar(50) default null,
    `created_by`     varchar(20) default null,
    `dec_product_id` varchar(20) default null,
    `dec_qty`        float       default null,
    `dec_amount`     float       default null,
    `bns_product_id` varchar(20) default null,
    `bns_qty`        float       default null,
    `bns_amount`     float       default null
) engine = innodb
  default charset = utf8;

create table `modification_sfc_transaction`
(
    `company_id`          varchar(20)  default null,
    `supplier_id`         varchar(20)  default null,
    `fc_transaction_date` datetime     default null,
    `trans`               varchar(50)  default null,
    `fc_transaction_no`   varchar(20)  default null,
    `transaction_type`    varchar(15)  default null,
    `m_date`              datetime     default null,
    `m_time`              datetime     default null,
    `hddref`              varchar(50)  default null,
    `created_by`          varchar(20)  default null,
    `invoice_no`          varchar(50)  default null,
    `narration`           varchar(200) default null,
    `bdt_rate`            float        default null,
    `amount_dr`           float        default null,
    `amount_cr`           float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_import`
(
    `company_id`    varchar(20) default null,
    `trans`         varchar(50) default null,
    `invoice_no`    varchar(20) default null,
    `m_date`        datetime    default null,
    `m_time`        datetime    default null,
    `hddref`        varchar(50) default null,
    `created_by`    varchar(20) default null,
    `product_id`    varchar(20) default null,
    `serial`        varchar(50) default null,
    `qty`           float       default null,
    `previous_cost` float       default null,
    `previous_rate` float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_item_issue`
(
    `company_id`             varchar(20)  default null,
    `required_department_id` varchar(20)  default null,
    `item_issue_date`        datetime     default null,
    `trans`                  varchar(50)  default null,
    `narration`              varchar(200) default null,
    `ref_no`                 varchar(50)  default null,
    `invoice_no`             varchar(20)  default null,
    `m_date`                 datetime     default null,
    `m_time`                 datetime     default null,
    `hddref`                 varchar(50)  default null,
    `created_by`             varchar(20)  default null,
    `product_id`             varchar(20)  default null,
    `store_id`               varchar(20)  default null,
    `serial`                 varchar(50)  default null,
    `qty`                    float        default null,
    `cost`                   float        default null,
    `avg_cost`               float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_item_wise_credit_note`
(
    `company_id`       varchar(20) default null,
    `customer_id`      varchar(20) default null,
    `credit_note_date` datetime    default null,
    `trans`            varchar(50) default null,
    `invoice_no`       varchar(20) default null,
    `m_date`           datetime    default null,
    `m_time`           datetime    default null,
    `hddref`           varchar(50) default null,
    `created_by`       varchar(20) default null,
    `product_id`       varchar(20) default null,
    `serial`           varchar(50) default null,
    `qty`              float       default null,
    `previous_rate`    float       default null,
    `current_rate`     float       default null
) engine = innodb
  default charset = utf8;

create table `modification_slc_matured`
(
    `company_id`       varchar(20) default null,
    `trans`            varchar(50) default null,
    `invoice_no`       varchar(20) default null,
    `trn_date`         datetime    default null,
    `cs_id`            varchar(20) default null,
    `m_date`           datetime    default null,
    `m_time`           datetime    default null,
    `hddref`           varchar(50) default null,
    `created_by`       varchar(20) default null,
    `product_id`       varchar(20) default null,
    `p_qty`            float       default null,
    `c_qty`            char(10)    default null,
    `p_unit_price_usd` float       default null,
    `c_unit_price_usd` float       default null,
    `p_unit_cost_taka` float       default null
) engine = innodb
  default charset = utf8;

create table `modification_slc_open`
(
    `company_id`            varchar(20)  default null,
    `pi_id`                 varchar(20)  default null,
    `supplier_id`           varchar(20)  default null,
    `ref_no`                varchar(50)  default null,
    `lc_date`               datetime     default null,
    `importer_id`           varchar(20)  default null,
    `lc_open_date`          datetime     default null,
    `lc_expiry_date`        datetime     default null,
    `inspection_company_id` varchar(20)  default null,
    `inspection_order_no`   varchar(100) default null,
    `lca_form_no`           varchar(100) default null,
    `bank_ac_no`            varchar(20)  default null,
    `consignment_note`      varchar(200) default null,
    `ins_cover_note_no`     varchar(100) default null,
    `ins_cover_note_date`   datetime     default null,
    `insurance_company_id`  varchar(100) default null,
    `trans`                 varchar(50)  default null,
    `invoice_no`            varchar(20)  default null,
    `m_date`                datetime     default null,
    `m_time`                datetime     default null,
    `hddref`                varchar(50)  default null,
    `created_by`            varchar(20)  default null,
    `product_id`            varchar(20)  default null,
    `previous_qty`          float        default null,
    `item_cost`             float        default null
) engine = innodb
  default charset = utf8;

create table `modification_slc_retirement`
(
    `company_id`                      varchar(20)  default null,
    `lc_no`                           varchar(100) default null,
    `cf_id`                           varchar(20)  default null,
    `crf_no`                          varchar(100) default null,
    `inspection_date`                 datetime     default null,
    `awb_bill`                        varchar(100) default null,
    `bill_of_entry_no`                varchar(100) default null,
    `shipping_guaranty_no`            varchar(100) default null,
    `narration`                       varchar(200) default null,
    `lc_retirement_date`              datetime     default null,
    `trans`                           varchar(50)  default null,
    `invoice_no`                      varchar(20)  default null,
    `m_date`                          datetime     default null,
    `m_time`                          datetime     default null,
    `hddref`                          varchar(50)  default null,
    `created_by`                      varchar(20)  default null,
    `product_id`                      varchar(20)  default null,
    `previous_qty`                    float        default null,
    `previous_crf_value`              float        default null,
    `current_crf_value`               float        default null,
    `previous_dollar_rate`            float        default null,
    `current_dollar_rate`             float        default null,
    `previous_duty`                   float        default null,
    `current_duty`                    float        default null,
    `auto_unit_cost`                  float        default null,
    `previous_unit_price_usd`         float        default null,
    `current_unit_price_usd`          float        default null,
    `previous_commercial_dollar_rate` float        default null,
    `current_commercial_dollar_rate`  float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_order_receive`
(
    `company_id`         varchar(20)  default null,
    `customer_id`        varchar(20)  default null,
    `order_receive_date` datetime     default null,
    `trans`              varchar(50)  default null,
    `ref_no`             varchar(50)  default null,
    `attention`          varchar(150) default null,
    `invoice_no`         varchar(20)  default null,
    `m_date`             datetime     default null,
    `m_time`             datetime     default null,
    `hddref`             varchar(50)  default null,
    `created_by`         varchar(20)  default null,
    `product_id`         varchar(20)  default null,
    `p_qty`              float        default null,
    `c_qty`              float        default null,
    `p_warranty`         varchar(100) default null,
    `c_warranty`         varchar(100) default null,
    `previous_rate`      float        default null,
    `current_rate`       float        default null
) engine = innodb
  default charset = utf8;

create table `modifications_payment`
(
    `company_id`       varchar(20) default null,
    `supplier_id`      varchar(20) default null,
    `payment_date`     datetime    default null,
    `trans`            varchar(50) default null,
    `payment_no`       varchar(20) default null,
    `m_date`           datetime    default null,
    `m_time`           datetime    default null,
    `hddref`           varchar(50) default null,
    `created_by`       varchar(20) default null,
    `invoice_no`       varchar(50) default null,
    `payment_type`     varchar(50) default null,
    `cheque_no`        varchar(50) default null,
    `cheque_date`      datetime    default null,
    `sales_slip_no`    varchar(50) default null,
    `authorization_no` varchar(50) default null,
    `amount`           float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_physical_stock_adjustment`
(
    `company_id`                     varchar(20) default null,
    `physical_stock_adjustment_date` datetime    default null,
    `ref_no`                         varchar(50) default null,
    `trans`                          varchar(50) default null,
    `invoice_no`                     varchar(20) default null,
    `m_date`                         datetime    default null,
    `m_time`                         datetime    default null,
    `hddref`                         varchar(50) default null,
    `created_by`                     varchar(20) default null,
    `product_id`                     varchar(20) default null,
    `store_id`                       varchar(20) default null,
    `serial`                         varchar(50) default null,
    `qty`                            float       default null,
    `previous_rate`                  float       default null,
    `current_rate`                   float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_pi`
(
    `company_id`    varchar(20) default null,
    `supplier_id`   varchar(20) default null,
    `pi_date`       datetime    default null,
    `trans`         varchar(50) default null,
    `invoice_no`    varchar(20) default null,
    `m_date`        datetime    default null,
    `m_time`        datetime    default null,
    `hddref`        varchar(50) default null,
    `created_by`    varchar(20) default null,
    `product_id`    varchar(20) default null,
    `qty`           float       default null,
    `previous_rate` float       default null,
    `current_rate`  float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_product_transfer`
(
    `company_id`    varchar(20) default null,
    `trans`         varchar(50) default null,
    `invoice_no`    varchar(20) default null,
    `m_date`        datetime    default null,
    `m_time`        datetime    default null,
    `hddref`        varchar(50) default null,
    `created_by`    varchar(20) default null,
    `product_id`    varchar(20) default null,
    `serial`        varchar(50) default null,
    `qty`           float       default null,
    `previous_rate` float       default null,
    `current_rate`  float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_purchase`
(
    `company_id`    varchar(20) default null,
    `supplier_id`   varchar(20) default null,
    `purchase_date` datetime    default null,
    `trans`         varchar(50) default null,
    `ref_no`        varchar(50) default null,
    `invoice_no`    varchar(20) default null,
    `m_date`        datetime    default null,
    `m_time`        datetime    default null,
    `hddref`        varchar(50) default null,
    `created_by`    varchar(20) default null,
    `product_id`    varchar(20) default null,
    `store_id`      varchar(20) default null,
    `serial`        varchar(50) default null,
    `qty`           float       default null,
    `previous_rate` float       default null,
    `current_rate`  float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_purchase_order`
(
    `company_id`          varchar(20) default null,
    `supplier_id`         varchar(20) default null,
    `purchase_order_date` datetime    default null,
    `trans`               varchar(50) default null,
    `ref_no`              varchar(50) default null,
    `invoice_no`          varchar(20) default null,
    `m_date`              datetime    default null,
    `m_time`              datetime    default null,
    `hddref`              varchar(50) default null,
    `created_by`          varchar(20) default null,
    `product_id`          varchar(20) default null,
    `store_id`            varchar(20) default null,
    `serial`              varchar(50) default null,
    `qty`                 float       default null,
    `previous_rate`       float       default null,
    `current_rate`        float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_purchase_return`
(
    `company_id`           varchar(20) default null,
    `supplier_id`          varchar(20) default null,
    `purchase_return_date` datetime    default null,
    `trans`                varchar(50) default null,
    `invoice_no`           varchar(20) default null,
    `m_date`               datetime    default null,
    `m_time`               datetime    default null,
    `hddref`               varchar(50) default null,
    `created_by`           varchar(20) default null,
    `product_id`           varchar(20) default null,
    `store_id`             varchar(20) default null,
    `serial`               varchar(50) default null,
    `qty`                  float       default null,
    `cost`                 float       default null,
    `avg_cost`             float       default null,
    `previous_rate`        float       default null,
    `current_rate`         float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_receipt`
(
    `company_id`       varchar(20) default null,
    `customer_id`      varchar(20) default null,
    `receipt_date`     datetime    default null,
    `trans`            varchar(50) default null,
    `receipt_no`       varchar(20) default null,
    `m_date`           datetime    default null,
    `m_time`           datetime    default null,
    `hddref`           varchar(50) default null,
    `created_by`       varchar(20) default null,
    `invoice_no`       varchar(50) default null,
    `receipt_type`     varchar(50) default null,
    `cheque_no`        varchar(50) default null,
    `cheque_date`      datetime    default null,
    `sales_slip_no`    varchar(50) default null,
    `authorization_no` varchar(50) default null,
    `amount`           float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_replace_in`
(
    `company_id`        varchar(20)  default null,
    `supplier_id`       varchar(20)  default null,
    `replace_in_date`   datetime     default null,
    `trans`             varchar(50)  default null,
    `invoice_no`        varchar(20)  default null,
    `m_date`            datetime     default null,
    `m_time`            datetime     default null,
    `hddref`            varchar(50)  default null,
    `created_by`        varchar(20)  default null,
    `replace_out_id`    varchar(20)  default null,
    `out_product_id`    varchar(20)  default null,
    `out_qty`           float        default null,
    `out_serial`        varchar(50)  default null,
    `in_option`         float        default null,
    `out_cost`          float        default null,
    `out_avg_cost`      float        default null,
    `in_cost`           float        default null,
    `in_product_id`     varchar(20)  default null,
    `in_serial`         varchar(50)  default null,
    `in_qty`            float        default null,
    `store_id`          varchar(20)  default null,
    `amount_receivable` float        default null,
    `amount_payable`    float        default null,
    `narration`         varchar(200) default null,
    `approved`          varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `modifications_replacement_delivery`
(
    `company_id`                varchar(20)  default null,
    `customer_id`               varchar(20)  default null,
    `replacement_delivery_date` datetime     default null,
    `trans`                     varchar(50)  default null,
    `invoice_no`                varchar(20)  default null,
    `m_date`                    datetime     default null,
    `m_time`                    datetime     default null,
    `hddref`                    varchar(20)  default null,
    `created_by`                varchar(20)  default null,
    `complain_receive_id`       varchar(20)  default null,
    `received_product_id`       varchar(20)  default null,
    `received_qty`              float        default null,
    `received_cost`             float        default null,
    `received_serial`           varchar(50)  default null,
    `narration`                 varchar(200) default null,
    `in_option`                 varchar(2)   default null,
    `store_id`                  varchar(20)  default null,
    `purchase_id`               varchar(20)  default null,
    `ref_id`                    varchar(20)  default null,
    `delivery_product_id`       varchar(20)  default null,
    `delivery_serial`           varchar(50)  default null,
    `delivery_qty`              float        default null,
    `dlv_cost`                  float        default null,
    `dlv_avg_cost`              float        default null,
    `amount_receivable`         float        default null,
    `amount_payable`            float        default null,
    `approved`                  varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `modifications_replace_out`
(
    `company_id`       varchar(20)  default null,
    `supplier_id`      varchar(20)  default null,
    `replace_out_date` datetime     default null,
    `trans`            varchar(50)  default null,
    `invoice_no`       varchar(20)  default null,
    `m_date`           datetime     default null,
    `m_time`           datetime     default null,
    `hddref`           varchar(20)  default null,
    `created_by`       varchar(20)  default null,
    `product_id`       varchar(20)  default null,
    `qty`              float        default null,
    `under_warranty`   varchar(4)   default null,
    `purchase_id`      varchar(20)  default null,
    `ref_id`           varchar(20)  default null,
    `purc_id`          varchar(20)  default null,
    `store_id`         varchar(20)  default null,
    `purchase_date`    datetime     default null,
    `purchase_serial`  varchar(50)  default null,
    `unit_cost`        float        default null,
    `avg_cost`         float        default null,
    `problem`          varchar(200) default null,
    `narration`        varchar(200) default null,
    `no_of_times`      float        default null,
    `prev_job_ref_no`  varchar(20)  default null,
    `sequence`         varchar(10)  default null,
    `out_serial`       varchar(50)  default null,
    `replace_in_id`    varchar(20)  default null,
    `approved`         varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `modifications_rma_product_utilize`
(
    `company_id`               varchar(20) default null,
    `customer_id`              varchar(20) default null,
    `rma_product_utilize_date` datetime    default null,
    `trans`                    varchar(50) default null,
    `invoice_no`               varchar(20) default null,
    `m_date`                   datetime    default null,
    `m_time`                   datetime    default null,
    `hddref`                   varchar(50) default null,
    `created_by`               varchar(20) default null,
    `product_id`               varchar(20) default null,
    `store_id`                 varchar(20) default null,
    `serial`                   varchar(50) default null,
    `qty`                      float       default null,
    `unit_cost`                float       default null,
    `avg_cost`                 float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_sales`
(
    `company_id`    varchar(20)  default null,
    `customer_id`   varchar(20)  default null,
    `sales_date`    datetime     default null,
    `trans`         varchar(50)  default null,
    `ref_no`        varchar(50)  default null,
    `attention`     varchar(150) default null,
    `invoice_no`    varchar(20)  default null,
    `m_date`        datetime     default null,
    `m_time`        datetime     default null,
    `hddref`        varchar(50)  default null,
    `created_by`    varchar(20)  default null,
    `product_id`    varchar(20)  default null,
    `store_id`      varchar(20)  default null,
    `serial`        varchar(50)  default null,
    `qty`           float        default null,
    `p_warranty`    varchar(100) default null,
    `c_warranty`    varchar(100) default null,
    `cost`          float        default null,
    `avg_cost`      float        default null,
    `previous_rate` float        default null,
    `current_rate`  float        default null,
    `inventory`     varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `modifications_sales_return`
(
    `company_id`        varchar(20) default null,
    `customer_id`       varchar(20) default null,
    `sales_return_date` datetime    default null,
    `trans`             varchar(50) default null,
    `invoice_no`        varchar(20) default null,
    `m_date`            datetime    default null,
    `m_time`            datetime    default null,
    `hddref`            varchar(50) default null,
    `created_by`        varchar(20) default null,
    `product_id`        varchar(20) default null,
    `store_id`          varchar(20) default null,
    `serial`            varchar(50) default null,
    `qty`               float       default null,
    `cost`              float       default null,
    `avg_cost`          float       default null,
    `previous_rate`     float       default null,
    `current_rate`      float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_service_bill`
(
    `company_id`      varchar(20)  default null,
    `bill_date`       datetime     default null,
    `trans`           varchar(50)  default null,
    `invoice_no`      varchar(20)  default null,
    `m_date`          datetime     default null,
    `m_time`          datetime     default null,
    `hddref`          varchar(50)  default null,
    `created_by`      varchar(20)  default null,
    `bill_id`         varchar(20)  default null,
    `previous_amount` float        default null,
    `current_amount`  float        default null,
    `narration`       varchar(200) default null,
    `approved`        varchar(2)   default null
) engine = innodb
  default charset = utf8;

create table `modifications_stock_amendment_in`
(
    `company_id`              varchar(20) default null,
    `trans`                   varchar(50) default null,
    `invoice_no`              varchar(20) default null,
    `m_date`                  datetime    default null,
    `m_time`                  datetime    default null,
    `hddref`                  varchar(50) default null,
    `created_by`              varchar(20) default null,
    `product_id`              varchar(20) default null,
    `store_id`                varchar(20) default null,
    `serial`                  varchar(50) default null,
    `qty`                     float       default null,
    `previous_rate`           float       default null,
    `stock_amendment_in_date` datetime    default null,
    `ref_no`                  varchar(20) default null,
    `current_rate`            float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_stock_amendment_out`
(
    `company_id`               varchar(20) default null,
    `stock_amendment_out_date` datetime    default null,
    `trans`                    varchar(50) default null,
    `invoice_no`               varchar(20) default null,
    `m_date`                   datetime    default null,
    `m_time`                   datetime    default null,
    `hddref`                   varchar(50) default null,
    `created_by`               varchar(20) default null,
    `product_id`               varchar(20) default null,
    `store_id`                 varchar(20) default null,
    `serial`                   varchar(50) default null,
    `qty`                      float       default null,
    `unit_cost`                float       default null,
    `avg_cost`                 float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_stock_in`
(
    `company_id`    varchar(20) default null,
    `stock_in_date` datetime    default null,
    `ref_no`        varchar(50) default null,
    `trans`         varchar(50) default null,
    `invoice_no`    varchar(20) default null,
    `m_date`        datetime    default null,
    `m_time`        datetime    default null,
    `hddref`        varchar(50) default null,
    `created_by`    varchar(20) default null,
    `product_id`    varchar(20) default null,
    `store_id`      varchar(20) default null,
    `serial`        varchar(50) default null,
    `qty`           float       default null,
    `previous_rate` float       default null,
    `current_rate`  float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_stock_out`
(
    `company_id`     varchar(20) default null,
    `stock_out_date` datetime    default null,
    `trans`          varchar(50) default null,
    `invoice_no`     varchar(20) default null,
    `m_date`         datetime    default null,
    `m_time`         datetime    default null,
    `hddref`         varchar(50) default null,
    `created_by`     varchar(20) default null,
    `product_id`     varchar(20) default null,
    `store_id`       varchar(20) default null,
    `serial`         varchar(50) default null,
    `qty`            float       default null,
    `unit_cost`      float       default null,
    `avg_cost`       float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_stock_transfer`
(
    `company_id` varchar(20) default null,
    `trans`      varchar(50) default null,
    `invoice_no` varchar(20) default null,
    `m_date`     datetime    default null,
    `m_time`     datetime    default null,
    `hddref`     varchar(50) default null,
    `created_by` varchar(20) default null,
    `product_id` varchar(20) default null,
    `serial`     varchar(50) default null,
    `qty`        float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_stock_transfer_br_to_br`
(
    `company_id`                   varchar(20) default null,
    `transfer_to`                  varchar(20) default null,
    `stock_transfer_br_to_br_date` datetime    default null,
    `trans`                        varchar(50) default null,
    `ref_no`                       varchar(50) default null,
    `invoice_no`                   varchar(20) default null,
    `m_date`                       datetime    default null,
    `m_time`                       datetime    default null,
    `hddref`                       varchar(50) default null,
    `created_by`                   varchar(20) default null,
    `product_id`                   varchar(20) default null,
    `store_id_from`                varchar(20) default null,
    `store_id_to`                  char(10)    default null,
    `serial_from`                  varchar(50) default null,
    `serial_to`                    varchar(50) default null,
    `qty`                          float       default null,
    `cost`                         float       default null,
    `avg_cost`                     float       default null,
    `previous_rate`                float       default null,
    `current_rate`                 float       default null
) engine = innodb
  default charset = utf8;

create table `modifications_stock_transfer_commercial`
(
    `company_id`                     varchar(20) default null,
    `stock_transfer_commercial_date` datetime    default null,
    `trans`                          varchar(50) default null,
    `invoice_no`                     varchar(20) default null,
    `m_date`                         datetime    default null,
    `m_time`                         datetime    default null,
    `hddref`                         varchar(50) default null,
    `created_by`                     varchar(20) default null,
    `product_id`                     varchar(20) default null,
    `store_id_from`                  varchar(20) default null,
    `store_id_to`                    varchar(20) default null,
    `serial`                         varchar(50) default null,
    `qty`                            float       default null,
    `unit_cost`                      float       default null,
    `avg_cost`                       float       default null
) engine = innodb
  default charset = utf8;

create table `mpo`
(
    `mpo_id`     varchar(20)  not null,
    `mpo_name`   varchar(100) default null,
    `short_name` varchar(100) not null,
    `company_id` varchar(5)   not null,
    `address`    varchar(400) default null,
    `email`      varchar(100) default null,
    `mobile`     varchar(100) default null,
    `balance`    float        default null,
    `active`     varchar(1)   default null,
    `created_by` varchar(15)  default null,
    `created_at` datetime     default null
) engine = innodb
  default charset = utf8;

create table `mpo_setup`
(
    `company_id`   varchar(5)  not null,
    `cs_id`        varchar(20) not null,
    `mpo_id`       varchar(20) default null,
    `created_by`   varchar(20) default null,
    `changed_by`   varchar(20) default null,
    `created_at`   datetime    default null,
    `changed_date` datetime    default null,
    `hddrtef`      varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `mpo_wise_reporting`
(
    `company_id`     varchar(20) default null,
    `mpo_id`         varchar(20) default null,
    `mpo_created_at` datetime    default null,
    `mpo_close_date` datetime    default null,
    `status`         varchar(2)  default null
) engine = innodb
  default charset = utf8;

create table `on_conditions`
(
    `on_conditions_id`   varchar(20)  not null,
    `on_conditions_name` varchar(100) default null,
    `short_name`         varchar(100) not null,
    `company_id`         varchar(20)  default null,
    `created_by`         varchar(15)  default null,
    `created_at`         datetime     default null
) engine = innodb
  default charset = utf8;

create table `order_receive`
(
    `order_receive_id`    varchar(20) not null,
    `company_id`          varchar(20) not null,
    `customer_id`         varchar(20)  default null,
    `customer_ship_to_id` varchar(20)  default null,
    `attention`           varchar(200) default null,
    `narration`           varchar(400) default null,
    `mpo_id`              varchar(20)  default null,
    `ref_no`              varchar(20)  default null,
    `order_receive_date`  datetime     default null,
    `order_delivery_date` datetime     default null,
    `payment_date`        datetime     default null,
    `created_by`          varchar(20)  default null,
    `created_at`          datetime     default null,
    `approved_by`         varchar(20)  default null,
    `approved_date`       datetime     default null,
    `total_price`         float        default null,
    `service_charge`      float        default null,
    `discount`            float        default null,
    `item_wise_discount`  float        default null,
    `vat`                 float        default null,
    `vat_prc`             float        default null,
    `approved`            varchar(1)   default null,
    `status`              varchar(1)   default null,
    `sales_status`        varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `order_receive_details`
(
    `order_receive_id` varchar(20) not null,
    `sales_type`       varchar(1)   default null,
    `product_id`       varchar(20) not null,
    `sequence`         varchar(5)   default null,
    `hdd_ref`          varchar(50)  default null,
    `insert_date`      datetime     default null,
    `insert_time`      datetime     default null,
    `created_by`       varchar(20)  default null,
    `qty`              float        default null,
    `bonus_qty`        float        default null,
    `pending_qty`      float        default null,
    `warranty`         varchar(100) default null,
    `discount`         float        default null,
    `vat_prc`          float        default null,
    `vat`              float        default null,
    `unit_price`       float        default null,
    `approved`         varchar(1)   default null,
    `sales_status`     varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `payment`
(
    `company_id`     varchar(20)    default null,
    `payment_id`     varchar(20) not null,
    `supplier_id`    varchar(20)    default null,
    `mpo_id`         varchar(20)    default null,
    `ref_no`         varchar(20)    default null,
    `payment_date`   datetime       default null,
    `payment_time`   datetime       default null,
    `created_by`     varchar(15)    default null,
    `created_at`     datetime       default null,
    `total_amount`   numeric(18, 0) default null,
    `approved_by`    varchar(15)    default null,
    `approved_date`  datetime       default null,
    `approved`       varchar(2)     default null,
    `authentication` varchar(1)     default null,
    `received`       varchar(1)     default null
) engine = innodb
  default charset = utf8;

create table `payment_details`
(
    `payment_id`       varchar(20)  default null,
    `purchase_id`      varchar(20)  default null,
    `id`               varchar(20)  default null,
    `payment_type`     varchar(20)  default null,
    `account_no`       varchar(50)  default null,
    `sales_slip_no`    varchar(50)  default null,
    `authorization_no` varchar(50)  default null,
    `cheque_no`        varchar(50)  default null,
    `cheque_date`      datetime     default null,
    `in_id`            varchar(20)  default null,
    `narration`        varchar(200) default null,
    `amount`           float        default null,
    `approved`         varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `payment_terms`
(
    `payment_terms_id`   varchar(20)  not null,
    `payment_terms_name` varchar(150) default null,
    `short_name`         varchar(150) not null,
    `company_id`         varchar(5)   not null,
    `created_by`         varchar(15)  default null,
    `created_at`         datetime     default null
) engine = innodb
  default charset = utf8;

create table `permission_approval`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_button`
(
    `company_id` varchar(20)  default null,
    `user_id`    varchar(20)  default null,
    `dpt`        varchar(20)  default null,
    `mnu_name`   varchar(100) default null,
    `button`     varchar(100) default null,
    `active`     varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `permission_cancel`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_item_conversion_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_lc_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_mnu`
(
    `company_id` varchar(20)    default null,
    `user_id`    varchar(20)    default null,
    `dpt`        varchar(20)    default null,
    `mnu_name`   varchar(100)   default null,
    `active`     numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_primary_setup`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null,
    `button1`     numeric(18, 0) default null,
    `button2`     numeric(18, 0) default null,
    `button3`     numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_report`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `form_name`   varchar(100)   default null,
    `button_name` varchar(100)   default null,
    `active`      numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_accounts_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_bank_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_commercial_stock_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_production_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_purchase_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_rma_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_rma_stock_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_sales_register`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `permission_rpt_security_centre`
(
    `company_id`  varchar(20)    default null,
    `user_id`     varchar(20)    default null,
    `mnu_name`    varchar(100)   default null,
    `menu_active` numeric(18, 0) default null
) engine = innodb
  default charset = utf8;

create table `personnel_information`
(
    `company_id`             varchar(5)   default null,
    `cs_id`                  varchar(20) not null,
    `mothers_name`           varchar(100) default null,
    `mothers_profession_id`  varchar(20)  default null,
    `fathers_name`           varchar(20)  default null,
    `fathers_profession_id`  varchar(20)  default null,
    `address_present`        varchar(400) default null,
    `address_permanent`      varchar(400) default null,
    `mailing_address`        varchar(400) default null,
    `note`                   varchar(400) default null,
    `rank_id`                varchar(20)  default null,
    `department_id`          varchar(20)  default null,
    `religion_id`            varchar(20)  default null,
    `photograph`             varchar(100) default null,
    `marital_status`         varchar(5)   default null,
    `sex`                    varchar(10)  default null,
    `tin`                    varchar(50)  default null,
    `date_of_birth`          datetime     default null,
    `nationality`            varchar(100) default null,
    `blood_group`            varchar(10)  default null,
    `date_of_joining`        datetime     default null,
    `job_description`        varchar(400) default null,
    `bank_ac_no`             varchar(50)  default null,
    `opening_salary`         float        default null,
    `opening_balance`        float        default null,
    `office_phone`           varchar(100) default null,
    `office_mobile`          varchar(100) default null,
    `pabx`                   varchar(100) default null,
    `office_email`           varchar(100) default null,
    `personal_phone`         varchar(100) default null,
    `personal_mobile`        varchar(100) default null,
    `personal_fax`           varchar(100) default null,
    `personal_email`         varchar(100) default null,
    `referees_name`          varchar(100) default null,
    `referees_profession_id` varchar(20)  default null,
    `referees_job_address`   varchar(400) default null,
    `ref_phone`              varchar(100) default null,
    `ref_mobile`             varchar(100) default null,
    `ref_fax`                varchar(100) default null,
    `ref_email`              varchar(100) default null
) engine = innodb
  default charset = utf8;

create table `physical_stock_adjustment`
(
    `physical_stock_adjustment_id`   varchar(20) not null,
    `company_id`                     varchar(5)  not null,
    `ref_no`                         varchar(20)  default null,
    `remarks`                        varchar(100) default null,
    `physical_stock_adjustment_date` datetime     default null,
    `created_by`                     varchar(20)  default null,
    `created_at`                     datetime     default null,
    `approved_by`                    varchar(20)  default null,
    `approved_date`                  datetime     default null,
    `total_cost`                     float        default null,
    `total_avg_cost`                 float        default null,
    `approved`                       varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `physical_stock_adjustment_details`
(
    `physical_stock_adjustment_id` varchar(20) not null,
    `product_id`                   varchar(20) not null,
    `store_id`                     varchar(20) default null,
    `sequence`                     varchar(5)  default null,
    `hdd_ref`                      varchar(50) default null,
    `insert_date`                  datetime    default null,
    `insert_time`                  datetime    default null,
    `created_by`                   varchar(20) default null,
    `serial`                       varchar(50) not null,
    `qty`                          float       default null,
    `cost`                         float       default null,
    `avg_cost`                     float       default null,
    `approved`                     varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `pi`
(
    `pi_id`             varchar(20) not null,
    `company_id`        varchar(5)  not null,
    `supplier_id`       varchar(20)  default null,
    `bill_to_id`        varchar(20)  default null,
    `ship_to_id`        varchar(20)  default null,
    `ref_no`            varchar(20)  default null,
    `remarks`           varchar(100) default null,
    `pi_date`           datetime     default null,
    `contact_person`    varchar(100) default null,
    `cmp_contact_no`    varchar(75)  default null,
    `cmp_phone`         varchar(75)  default null,
    `cmp_fax`           varchar(75)  default null,
    `cmp_email`         varchar(75)  default null,
    `prsnl_contact_no`  varchar(75)  default null,
    `country_id`        varchar(20)  default null,
    `forwarder_name`    varchar(150) default null,
    `shipping_terms`    varchar(150) default null,
    `ship_via`          varchar(150) default null,
    `narration`         varchar(200) default null,
    `country_of_origin` varchar(150) default null,
    `payment_terms`     varchar(150) default null,
    `bank_ac_id`        varchar(20)  default null,
    `created_by`        varchar(20)  default null,
    `created_at`        datetime     default null,
    `approved_by`       varchar(20)  default null,
    `approved_date`     datetime     default null,
    `total_cost`        float        default null,
    `approved`          varchar(1)   default null,
    `process`           varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `pi_details`
(
    `pi_id`       varchar(20) not null,
    `product_id`  varchar(20) not null,
    `hs_code`     varchar(50) default null,
    `qty`         float       default null,
    `pending_qty` float       default null,
    `hdd_ref`     varchar(50) default null,
    `insert_date` datetime    default null,
    `insert_time` datetime    default null,
    `created_by`  varchar(20) default null,
    `sequence`    varchar(10) default null,
    `unit_price`  float       default null,
    `approved`    varchar(1)  default null,
    `process`     varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `price_level`
(
    `company_id`       varchar(20) default null,
    `product_group_id` varchar(20) default null,
    `column`           varchar(20) default null,
    `created_by`       varchar(20) default null,
    `created_at`       datetime    default null
) engine = innodb
  default charset = utf8;

create table `price_quotation`
(
    `price_quotation_id`   varchar(20) not null,
    `company_id`           varchar(5)  not null,
    `customer_name`        varchar(200) default null,
    `attention`            varchar(200) default null,
    `address`              varchar(400) default null,
    `header`               varchar(400) default null,
    `footer`               varchar(400) default null,
    `ref_no`               varchar(20)  default null,
    `remarks`              varchar(100) default null,
    `price_quotation_date` datetime     default null,
    `created_by`           varchar(20)  default null,
    `created_at`           datetime     default null,
    `approved_by`          varchar(20)  default null,
    `approved_date`        datetime     default null,
    `total_price`          float        default null,
    `service_charge`       float        default null,
    `transport`            float        default null,
    `vat`                  float        default null,
    `others`               float        default null,
    `approved`             varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `price_quotation_details`
(
    `price_quotation_id` varchar(20) not null,
    `product_id`         varchar(20) not null,
    `sequence`           varchar(5)   default null,
    `hdd_ref`            varchar(50)  default null,
    `insert_date`        datetime     default null,
    `insert_time`        datetime     default null,
    `created_by`         varchar(20)  default null,
    `qty`                float        default null,
    `warranty`           varchar(150) default null,
    `unit_price`         float        default null,
    `approved`           varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `price_setup`
(
    `company_id`      varchar(20)  default null,
    `product_id`      varchar(20)  default null,
    `product_caption` varchar(200) default null,
    `qty1_min`        float        default null,
    `qty1_max`        float        default null,
    `prc1_min`        float        default null,
    `prc1_max`        float        default null,
    `qty2_min`        float        default null,
    `qty2_max`        float        default null,
    `prc2`            float        default null,
    `qty3_min`        float        default null,
    `qty3_max`        float        default null,
    `prc3`            float        default null,
    `qty4_min`        float        default null,
    `qty4_max`        float        default null,
    `prc4`            float        default null,
    `qty5_min`        float        default null,
    `qty5_max`        float        default null,
    `prc5`            float        default null,
    `qty6_min`        float        default null,
    `qty6_max`        float        default null,
    `prc6`            float        default null,
    `qty7_min`        float        default null,
    `qty7_max`        float        default null,
    `prc7`            float        default null,
    `qty8_min`        float        default null,
    `qty8_max`        float        default null,
    `prc8`            float        default null,
    `qty9_min`        float        default null,
    `qty9_max`        float        default null,
    `prc9`            float        default null,
    `qty10_min`       float        default null,
    `qty10_max`       float        default null,
    `prc10`           float        default null
) engine = innodb
  default charset = utf8;

create table `problem`
(
    `problem_id`   varchar(20)  not null,
    `problem_name` varchar(100) default null,
    `short_name`   varchar(100) not null,
    `company_id`   varchar(20)  default null,
    `created_by`   varchar(15)  default null,
    `created_at`   datetime     default null
) engine = innodb
  default charset = utf8;

create table `processing_unit`
(
    `company_id`           varchar(20)  default null,
    `processing_unit_id`   varchar(20)  default null,
    `factory_id`           varchar(20)  default null,
    `processing_unit_name` varchar(100) default null,
    `prefix`               varchar(20)  default null,
    `prefixr`              varchar(20)  default null
) engine = innodb
  default charset = utf8;

create table `product`
(
    `company_id`       varchar(5)   default null,
    `product_id`       varchar(20)  not null,
    `product_group_id` varchar(20)  default null,
    `product_caption`  varchar(100) not null,
    `short_caption`    varchar(100) default null,
    `product_name`     varchar(200) not null,
    `product_serial`   varchar(1)   default null,
    `reorder_level`    float        default null,
    `sales_price`      float        default null,
    `red_level`        float        default null,
    `purchase_price`   float        default null,
    `discount`         float        default null,
    `warranty`         varchar(100) default null,
    `hs_code`          varchar(50)  default null,
    `weight`           float        default null,
    `vat`              float        default null,
    `average_price`    float        default null,
    `costing`          varchar(5)   default null,
    `unit`             varchar(50)  default null,
    `active`           varchar(1)   default null,
    `inventory`        varchar(1)   default null,
    `multiple_qty`     varchar(1)   default null,
    `category`         varchar(10)  default null,
    `created_by`       varchar(15)  default null,
    `created_at`       datetime     default null
) engine = innodb
  default charset = utf8;

create table `product_group`
(
    `product_group_id`   varchar(20)  not null,
    `product_group_name` varchar(100) default null,
    `short_name`         varchar(100) not null,
    `company_id`         varchar(20)  default null,
    `created_by`         varchar(15)  default null,
    `created_at`         datetime     default null
) engine = innodb
  default charset = utf8;

create table `product_group_distributions`
(
    `product_id`   varchar(20) not null,
    `brand_id`     varchar(20) default null,
    `category_id`  varchar(20) default null,
    `color_id`     varchar(20) default null,
    `size_id`      varchar(20) default null,
    `created_by`   varchar(20) default null,
    `changed_by`   varchar(20) default null,
    `created_at`   datetime    default null,
    `changed_date` datetime    default null,
    `hddrtef`      varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `product_receive`
(
    `product_receive_id`   varchar(20) not null,
    `company_id`           varchar(5)  not null,
    `branch_id`            varchar(20) default null,
    `ref_no`               varchar(20) default null,
    `product_receive_date` datetime    default null,
    `created_by`           varchar(20) default null,
    `created_at`           datetime    default null,
    `approved_by`          varchar(20) default null,
    `approved_date`        float       default null,
    `total_cost`           float       default null,
    `total_price`          float       default null,
    `approved`             varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `product_receive_details`
(
    `product_receive_id` varchar(20) not null,
    `product_id`         varchar(20) not null,
    `sequence`           varchar(5)  default null,
    `hdd_ref`            varchar(50) default null,
    `insert_date`        datetime    default null,
    `insert_time`        datetime    default null,
    `created_by`         varchar(20) default null,
    `serial`             varchar(50) not null,
    `qty`                float       default null,
    `cost`               float       default null,
    `unit_price`         float       default null,
    `approved`           varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `product_sorting`
(
    `product_id`    varchar(20) default null,
    `sort_group_id` varchar(20) default null,
    `sort_id`       varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `product_transfer`
(
    `product_transfer_id`   varchar(20) not null,
    `company_id`            varchar(5)  not null,
    `branch_id`             varchar(20) default null,
    `order_receive_id`      varchar(20) default null,
    `ref_no`                varchar(20) default null,
    `product_transfer_date` datetime    default null,
    `created_by`            varchar(20) default null,
    `created_at`            datetime    default null,
    `approved_by`           varchar(20) default null,
    `approved_date`         datetime    default null,
    `total_cost`            float       default null,
    `total_price`           float       default null,
    `discount`              float       default null,
    `vat`                   float       default null,
    `approved`              varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `product_transfer_details`
(
    `product_transfer_id` varchar(20) not null,
    `purchase_id`         varchar(20) default null,
    `ref_id`              varchar(20) default null,
    `product_id`          varchar(20) not null,
    `sequence`            varchar(5)  default null,
    `hdd_ref`             varchar(50) default null,
    `insert_date`         datetime    default null,
    `insert_time`         datetime    default null,
    `created_by`          varchar(20) default null,
    `serial`              varchar(50) not null,
    `qty`                 float       default null,
    `b_qty`               float       default null,
    `cost`                float       default null,
    `unit_price`          float       default null,
    `discount`            float       default null,
    `vat`                 float       default null,
    `approved`            varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `profession`
(
    `company_id`      varchar(20)  default null,
    `profession_id`   varchar(20) not null,
    `profession_name` varchar(100) default null,
    `short_name`      varchar(100) default null,
    `created_by`      varchar(15)  default null,
    `created_at`      datetime     default null
) engine = innodb
  default charset = utf8;

create table `purchase`
(
    `purchase_id`           varchar(20) not null,
    `commercial_invoice_id` varchar(20)  default null,
    `company_id`            varchar(5)  not null,
    `supplier_id`           varchar(20)  default null,
    `mpo_id`                varchar(20)  default null,
    `ref_no`                varchar(20)  default null,
    `remarks`               varchar(100) default null,
    `purchase_date`         datetime     default null,
    `created_by`            varchar(20)  default null,
    `created_at`            datetime     default null,
    `approved_by`           varchar(20)  default null,
    `approved_date`         datetime     default null,
    `discount`              float        default null,
    `total_cost`            float        default null,
    `total_cost1`           float        default null,
    `approved`              varchar(1)   default null,
    `status`                varchar(1)   default null,
    `process`               varchar(1)   default null,
    `modified_by`           varchar(50)  default null
) engine = innodb
  default charset = utf8;

create table `purchase_details`
(
    `purchase_id`       varchar(20) not null,
    `product_id`        varchar(20) not null,
    `store_id`          varchar(20) default null,
    `qty`               float       default null,
    `batch_no`          varchar(50) default null,
    `m_date`            datetime    default null,
    `e_date`            datetime    default null,
    `a_sales_ref`       varchar(20) default null,
    `hdd_ref`           varchar(50) default null,
    `insert_date`       datetime    default null,
    `insert_time`       datetime    default null,
    `created_by`        varchar(20) default null,
    `sequence`          varchar(10) default null,
    `serial`            varchar(50) not null,
    `unit_price`        float       default null,
    `approved`          varchar(1)  default null,
    `process`           varchar(1)  default null,
    `inventory`         varchar(1)  default null,
    `purchase_order_id` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `purchase_order`
(
    `purchase_order_id`     varchar(20) not null,
    `commercial_invoice_id` varchar(20)  default null,
    `company_id`            varchar(5)  not null,
    `supplier_id`           varchar(20)  default null,
    `mpo_id`                varchar(50)  default null,
    `ref_no`                varchar(20)  default null,
    `remarks`               varchar(100) default null,
    `purchase_order_date`   datetime     default null,
    `created_by`            varchar(20)  default null,
    `created_at`            datetime     default null,
    `approved_by`           varchar(20)  default null,
    `approved_date`         datetime     default null,
    `discount`              float        default null,
    `total_cost`            float        default null,
    `approved`              varchar(1)   default null,
    `status`                varchar(1)   default null,
    `process`               varchar(1)   default null,
    `cs_mpo`                varchar(50)  default null,
    `modified_by`           varchar(50)  default null
) engine = innodb
  default charset = utf8;

create table `purchase_order_details`
(
    `purchase_order_id` varchar(20) not null,
    `product_id`        varchar(20) not null,
    `store_id`          varchar(20) default null,
    `qty`               float       default null,
    `pending_qty`       float       default null,
    `batch_no`          varchar(50) default null,
    `m_date`            datetime    default null,
    `e_date`            datetime    default null,
    `a_sales_ref`       varchar(20) default null,
    `hdd_ref`           varchar(50) default null,
    `insert_date`       datetime    default null,
    `insert_time`       datetime    default null,
    `created_by`        varchar(20) default null,
    `sequence`          varchar(10) default null,
    `serial`            varchar(50) not null,
    `unit_price`        float       default null,
    `approved`          varchar(1)  default null,
    `process`           varchar(1)  default null,
    `status`            varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `purchase_return`
(
    `purchase_return_id`   varchar(20) not null,
    `company_id`           varchar(5)  not null,
    `remarks`              varchar(150) default null,
    `supplier_id`          varchar(20)  default null,
    `mpo_id`               varchar(20)  default null,
    `ref_no`               varchar(20)  default null,
    `purchase_return_date` datetime     default null,
    `created_by`           varchar(20)  default null,
    `created_at`           datetime     default null,
    `approved_by`          varchar(20)  default null,
    `approved_date`        datetime     default null,
    `total_avg_cost`       float        default null,
    `total_cost`           float        default null,
    `total_price`          float        default null,
    `approved`             varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `purchase_return_details`
(
    `purchase_return_id` varchar(20) not null,
    `purchase_id`        varchar(20) default null,
    `ref_id`             varchar(20) default null,
    `product_id`         varchar(20) not null,
    `store_id`           varchar(20) default null,
    `qty`                float       default null,
    `batch_no`           varchar(50) default null,
    `m_date`             datetime    default null,
    `e_date`             datetime    default null,
    `hdd_ref`            varchar(50) default null,
    `insert_date`        datetime    default null,
    `insert_time`        datetime    default null,
    `created_by`         varchar(20) default null,
    `sequence`           varchar(10) default null,
    `serial`             varchar(50) not null,
    `avg_cost`           float       default null,
    `cost`               float       default null,
    `unit_price`         float       default null,
    `approved`           varchar(1)  default null,
    `inventory`          varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `rank`
(
    `company_id` varchar(20)  default null,
    `rank_id`    varchar(20) not null,
    `rank_name`  varchar(100) default null,
    `short_name` varchar(100) default null,
    `created_by` varchar(15)  default null,
    `created_at` datetime     default null
) engine = innodb
  default charset = utf8;

create table `reason`
(
    `reason_id`   varchar(20)  not null,
    `reason_name` varchar(100) default null,
    `short_name`  varchar(100) not null,
    `company_id`  varchar(20)  default null,
    `created_by`  varchar(15)  default null,
    `created_at`  datetime     default null
) engine = innodb
  default charset = utf8;

create table `reason_of_adjustment`
(
    `reason_of_adjustment_id`   varchar(20)  not null,
    `reason_of_adjustment_name` varchar(100) default null,
    `short_name`                varchar(100) not null,
    `created_by`                varchar(15)  default null,
    `created_at`                datetime     default null
) engine = innodb
  default charset = utf8;

create table `rebate_distributions`
(
    `company_id`  varchar(20) default null,
    `customer_id` varchar(20) default null,
    `product_id`  varchar(20) default null,
    `s_rebate`    float       default null
) engine = innodb
  default charset = utf8;

create table `receipt`
(
    `company_id`    varchar(20)  default null,
    `receipt_id`    varchar(20) not null,
    `customer_id`   varchar(20)  default null,
    `mpo_id`        varchar(20)  default null,
    `ref_no`        varchar(20)  default null,
    `narration`     varchar(400) default null,
    `receipt_date`  datetime     default null,
    `receipt_time`  datetime     default null,
    `created_by`    varchar(15)  default null,
    `created_at`    datetime     default null,
    `total_amount`  float        default null,
    `approved_by`   varchar(15)  default null,
    `approved_date` datetime     default null,
    `approved`      varchar(2)   default null,
    `modified_by`   varchar(50)  default null,
    `cur_dues`      float        default null
) engine = innodb
  default charset = utf8;

create table `receipt_details`
(
    `receipt_id`       varchar(20) not null,
    `sales_id`         varchar(20)  default null,
    `id`               varchar(20)  default null,
    `receipt_type`     varchar(20)  default null,
    `resource_id`      varchar(20)  default null,
    `bank_id`          varchar(20)  default null,
    `bank_branch_id`   varchar(20)  default null,
    `account_no`       varchar(50)  default null,
    `sales_slip_no`    varchar(50)  default null,
    `authorization_no` varchar(50)  default null,
    `cheque_no`        varchar(50)  default null,
    `cheque_date`      datetime     default null,
    `narration`        varchar(200) default null,
    `amount`           float        default null,
    `approved`         varchar(1)   default null,
    `ref_cheque_no`    varchar(20)  default null
) engine = innodb
  default charset = utf8;

create table `religion`
(
    `company_id`    varchar(20)  default null,
    `religion_id`   varchar(20) not null,
    `religion_name` varchar(100) default null,
    `short_name`    varchar(100) default null,
    `created_by`    varchar(15)  default null,
    `created_at`    datetime     default null
) engine = innodb
  default charset = utf8;

create table `replace_in`
(
    `replace_in_id`      varchar(20) not null,
    `company_id`         varchar(5)  not null,
    `supplier_id`        varchar(20)  default null,
    `mpo_id`             varchar(20)  default null,
    `ref_no`             varchar(20)  default null,
    `remarks`            varchar(100) default null,
    `replace_in_date`    datetime     default null,
    `created_by`         varchar(20)  default null,
    `created_at`         datetime     default null,
    `approved_by`        varchar(20)  default null,
    `approved_date`      datetime     default null,
    `total_out_cost`     float        default null,
    `total_out_avg_cost` float        default null,
    `total_in_cost`      float        default null,
    `total_receivable`   float        default null,
    `total_payable`      float        default null,
    `approved`           varchar(1)   default null,
    `status_rec`         varchar(1)   default null,
    `status_pay`         varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `replace_in_details`
(
    `replace_in_id`     varchar(20) not null,
    `replace_out_id`    varchar(20)  default null,
    `purchase_id`       varchar(20)  default null,
    `out_product_id`    varchar(20) not null,
    `out_qty`           float        default null,
    `out_serial`        varchar(50)  default null,
    `narration`         varchar(200) default null,
    `in_option`         varchar(2)   default null,
    `hdd_ref`           varchar(50)  default null,
    `insert_date`       datetime     default null,
    `insert_time`       datetime     default null,
    `created_by`        varchar(20)  default null,
    `store_id`          varchar(20)  default null,
    `in_product_id`     varchar(20)  default null,
    `in_serial`         varchar(50) not null,
    `in_qty`            float        default null,
    `in_cost`           float        default null,
    `out_avg_cost`      float        default null,
    `out_cost`          float        default null,
    `amount_receivable` float        default null,
    `amount_payable`    float        default null,
    `approved`          varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `replacement_delivery`
(
    `replacement_delivery_id`   varchar(20) not null,
    `company_id`                varchar(5)  not null,
    `customer_id`               varchar(20)  default null,
    `mpo_id`                    varchar(20)  default null,
    `ref_no`                    varchar(20)  default null,
    `remarks`                   varchar(100) default null,
    `replacement_delivery_date` datetime     default null,
    `created_by`                varchar(20)  default null,
    `created_at`                datetime     default null,
    `approved_by`               varchar(20)  default null,
    `approved_date`             datetime     default null,
    `total_received_cost`       float        default null,
    `total_dlv_cost`            float        default null,
    `total_dlv_avg_cost`        float        default null,
    `total_receivable`          float        default null,
    `total_payable`             float        default null,
    `approved`                  varchar(1)   default null,
    `status_rec`                varchar(1)   default null,
    `status_pay`                varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `replacement_delivery_details`
(
    `replacement_delivery_id` varchar(20) not null,
    `complain_receive_id`     varchar(20)  default null,
    `received_product_id`     varchar(20) not null,
    `received_qty`            float        default null,
    `received_cost`           float        default null,
    `received_serial`         varchar(50)  default null,
    `narration`               varchar(200) default null,
    `in_option`               varchar(2)   default null,
    `hdd_ref`                 varchar(50)  default null,
    `insert_date`             datetime     default null,
    `insert_time`             datetime     default null,
    `created_by`              varchar(20)  default null,
    `store_id`                varchar(20)  default null,
    `purchase_id`             varchar(20)  default null,
    `ref_id`                  varchar(20)  default null,
    `delivery_product_id`     varchar(20)  default null,
    `delivery_serial`         varchar(50) not null,
    `delivery_qty`            float        default null,
    `dlv_cost`                float        default null,
    `dlv_avg_cost`            float        default null,
    `amount_receivable`       float        default null,
    `amount_payable`          float        default null,
    `approved`                varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `replacement_stock`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `store_id`    varchar(20) default null,
    `qty`         float       default null,
    `avg_cost`    float       default null,
    `serial`      varchar(50) not null,
    `cost`        float       default null
) engine = innodb
  default charset = utf8;

create table `replacement_stock_good`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `qty`         float       default null,
    `serial`      varchar(50) not null,
    `cost`        float       default null
) engine = innodb
  default charset = utf8;

create table `replace_out`
(
    `replace_out_id`   varchar(20) not null,
    `company_id`       varchar(5)  not null,
    `supplier_id`      varchar(20)  default null,
    `mpo_id`           varchar(20)  default null,
    `ref_no`           varchar(20)  default null,
    `remarks`          varchar(100) default null,
    `replace_out_date` datetime     default null,
    `created_by`       varchar(20)  default null,
    `created_at`       datetime     default null,
    `approved_by`      varchar(20)  default null,
    `approved_date`    datetime     default null,
    `total_cost`       float        default null,
    `total_avg_cost`   float        default null,
    `approved`         varchar(1)   default null,
    `replace_in`       varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `replace_out_details`
(
    `replace_out_id`  varchar(20) not null,
    `product_id`      varchar(20) not null,
    `qty`             float        default null,
    `under_warranty`  varchar(4)   default null,
    `purchase_id`     varchar(20)  default null,
    `ref_id`          varchar(20)  default null,
    `purc_id`         varchar(20)  default null,
    `store_id`        varchar(20)  default null,
    `purchase_date`   datetime     default null,
    `purchase_serial` varchar(50)  default null,
    `unit_cost`       float        default null,
    `avg_cost`        float        default null,
    `problem`         varchar(200) default null,
    `narration`       varchar(200) default null,
    `no_of_times`     float        default null,
    `prev_job_ref_no` varchar(20)  default null,
    `hdd_ref`         varchar(50)  default null,
    `insert_date`     datetime     default null,
    `insert_time`     datetime     default null,
    `created_by`      varchar(20)  default null,
    `sequence`        varchar(10)  default null,
    `out_serial`      varchar(50) not null,
    `approved`        varchar(1)   default null,
    `replace_in_id`   varchar(20)  default null
) engine = innodb
  default charset = utf8;

create table `required_department`
(
    `company_id`               varchar(20)  default null,
    `required_department_id`   varchar(15) not null,
    `required_department_name` varchar(200) default null,
    `short_name`               varchar(200) default null,
    `created_by`               varchar(50)  default null,
    `created_at`               datetime     default null
) engine = innodb
  default charset = utf8;

create table `reserve_stock1`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `qty`         float       default null,
    `serial`      varchar(50) not null,
    `cost`        float       default null
) engine = innodb
  default charset = utf8;

create table `reserve_stock2`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `qty`         float       default null,
    `serial`      varchar(50) not null,
    `cost`        float       default null
) engine = innodb
  default charset = utf8;

create table `reserve_stock3`
(
    `company_id`  varchar(5)  not null,
    `purchase_id` varchar(20) default null,
    `ref_id`      varchar(20) default null,
    `product_id`  varchar(20) not null,
    `qty`         float       default null,
    `serial`      varchar(50) not null,
    `cost`        float       default null
) engine = innodb
  default charset = utf8;

create table `resource`
(
    `resource_id`   varchar(20)  default null,
    `resource_name` varchar(100) default null,
    `short_name`    varchar(100) default null
) engine = innodb
  default charset = utf8;

create table `rma_product_utilize`
(
    `rma_product_utilize_id`   varchar(20) not null,
    `company_id`               varchar(5)  not null,
    `customer_id`              varchar(20)  default null,
    `complain_receive_id`      varchar(20)  default null,
    `attention`                varchar(150) default null,
    `ref_no`                   varchar(20)  default null,
    `remarks`                  varchar(100) default null,
    `rma_product_utilize_date` datetime     default null,
    `created_by`               varchar(20)  default null,
    `created_at`               datetime     default null,
    `approved_by`              varchar(20)  default null,
    `approved_date`            datetime     default null,
    `total_avg_cost`           float        default null,
    `total_cost`               float        default null,
    `approved`                 varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `rma_product_utilize_details`
(
    `rma_product_utilize_id` varchar(20) not null,
    `purchase_id`            varchar(20) default null,
    `ref_id`                 varchar(20) default null,
    `product_id`             varchar(20) not null,
    `store_id`               varchar(20) default null,
    `sequence`               varchar(5)  default null,
    `hdd_ref`                varchar(50) default null,
    `insert_date`            datetime    default null,
    `insert_time`            datetime    default null,
    `created_by`             varchar(20) default null,
    `serial`                 varchar(50) not null,
    `qty`                    float       default null,
    `avg_cost`               float       default null,
    `cost`                   float       default null,
    `approved`               varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `rpt_accounts_cr`
(
    `accounts_group_id`   varchar(20)  default null,
    `accounts_group_name` varchar(100) default null,
    `accounts_id`         varchar(20)  default null,
    `accounts_name`       varchar(100) default null,
    `amount`              float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_accounts_dr`
(
    `accounts_group_id`   varchar(20)  default null,
    `accounts_group_name` varchar(100) default null,
    `accounts_id`         varchar(20)  default null,
    `accounts_name`       varchar(100) default null,
    `amount`              float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_branch`
(
    `company_id` varchar(20) default null,
    `branch_id`  varchar(20) default null,
    `created_by` varchar(20) default null,
    `active`     varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_branch_status`
(
    `company_id`          varchar(20) default null,
    `created_by`          varchar(50) default null,
    `product_id`          varchar(20) default null,
    `opening_balance`     float       default null,
    `purchase`            float       default null,
    `purchase_return`     float       default null,
    `sales`               float       default null,
    `sales_return`        float       default null,
    `rma_product_utilize` float       default null,
    `receive_commercial`  float       default null,
    `transfer_commercial` float       default null,
    `transfer_rma`        float       default null,
    `receive_rma`         float       default null,
    `stock_out`           float       default null,
    `stock_in`            float       default null,
    `br_to_br`            float       default null,
    `issue`               float       default null,
    `closing_balance`     float       default null,
    `active`              varchar(1)  default null,
    `product_group_id`    varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_cash_and_bank_ac`
(
    `rpt_tran_group`  varchar(200) default null,
    `rpt_transaction` varchar(200) default null,
    `rpt_amount`      float        default null,
    `rpt_company_id`  varchar(100) default null,
    `rpt_created_by`  varchar(100) default null
) engine = innodb
  default charset = utf8;

create table `rpt_cash_book`
(
    `rpt_company_id` varchar(20)  default null,
    `rpt_user_name`  varchar(50)  default null,
    `rpt_caption`    varchar(200) default null,
    `rpt_ref_no`     varchar(50)  default null,
    `rpt_sequence`   varchar(20)  default null,
    `rpt_voucher`    varchar(15)  default null,
    `rpt_date`       datetime     default null,
    `rpt_narration`  varchar(200) default null,
    `rpt_dr`         float        default null,
    `rpt_cr`         float        default null,
    `rpt_balance`    float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_cash_book_cr`
(
    `rpt_company_id` varchar(20)  default null,
    `rpt_user_name`  varchar(50)  default null,
    `rpt_caption`    varchar(200) default null,
    `rpt_ref_no`     varchar(50)  default null,
    `rpt_sequence`   varchar(20)  default null,
    `rpt_voucher`    varchar(15)  default null,
    `rpt_date`       datetime     default null,
    `rpt_narration`  varchar(200) default null,
    `rpt_dr`         float        default null,
    `rpt_cr`         float        default null,
    `rpt_balance`    float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_cash_book_dr`
(
    `rpt_company_id` varchar(20)  default null,
    `rpt_user_name`  varchar(50)  default null,
    `rpt_caption`    varchar(200) default null,
    `rpt_ref_no`     varchar(50)  default null,
    `rpt_sequence`   varchar(20)  default null,
    `rpt_voucher`    varchar(15)  default null,
    `rpt_date`       datetime     default null,
    `rpt_narration`  varchar(200) default null,
    `rpt_dr`         float        default null,
    `rpt_cr`         float        default null,
    `rpt_balance`    float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_cheque_history`
(
    `company_id`   varchar(20)  default null,
    `user_name`    varchar(50)  default null,
    `caption`      varchar(100) default null,
    `receipt_id`   varchar(20)  default null,
    `receipt_date` datetime     default null,
    `cheque_no`    varchar(50)  default null,
    `cheque_date`  datetime     default null,
    `amount`       float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_cheque_in_hand`
(
    `rpt_company_id`     varchar(20)  default null,
    `rpt_user_name`      varchar(50)  default null,
    `rpt_account_no`     varchar(20)  default null,
    `rpt_narration`      varchar(100) default null,
    `rpt_transaction_id` varchar(20)  default null,
    `rpt_type`           varchar(20)  default null,
    `rpt_cheque_no`      varchar(50)  default null,
    `rpt_cheque_date`    datetime     default null,
    `rpt_amount`         float        default null,
    `receipt_amount`     float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_company_wise_sales`
(
    `process_company_id` varchar(20) default null,
    `company_id`         varchar(20) default null,
    `created_by`         varchar(20) default null,
    `sales_amount`       float       default null,
    `discount`           float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_cost_sheet`
(
    `company_id` varchar(20) default null,
    `created_by` varchar(20) default null,
    `product_id` varchar(20) default null,
    `cost`       float       default null,
    `avg_cost`   float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_cs_wise_net_sales`
(
    `company_id`          varchar(20) default null,
    `customer_id`         varchar(20) default null,
    `product_id`          varchar(20) default null,
    `sales_qty`           float       default null,
    `sales_amount`        float       default null,
    `sales_return_qty`    float       default null,
    `sales_return_amount` float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_current_stock`
(
    `company_id`     varchar(20) default null,
    `created_by`     varchar(50) default null,
    `product_id`     varchar(20) default null,
    `re_order_level` float       default null,
    `qty`            float       default null,
    `cost`           float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_current_stock_all`
(
    `company_id`         varchar(20) default null,
    `created_by`         varchar(50) default null,
    `process_company_id` varchar(20) default null,
    `product_id`         varchar(20) default null,
    `store_id`           varchar(20) default null,
    `qty`                float       default null,
    `avg_cost`           float       default null,
    `org_cost`           float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_customer_wise_net_product_sales`
(
    `company_id`          varchar(20) default null,
    `customer_id`         varchar(20) default null,
    `product_id`          varchar(20) default null,
    `sales_qty`           float       default null,
    `sales_amount`        float       default null,
    `sales_return_qty`    float       default null,
    `sales_return_amount` float       default null,
    `total_sales`         float       default null,
    `total_return`        float       default null,
    `created_by`          varchar(50) default null,
    `sales_date`          datetime    default null,
    `credit_note`         float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_customer_wise_product_sales`
(
    `company_id`  varchar(20) default null,
    `users`       varchar(20) default null,
    `customer_id` varchar(20) default null,
    `product_id`  varchar(20) default null,
    `qty`         float       default null,
    `cost`        float       default null,
    `price`       float       default null,
    `avg_cost`    float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_custom_product_all_customer`
(
    `company_id`          varchar(20) default null,
    `customer_id`         varchar(20) default null,
    `product_id`          varchar(20) default null,
    `sales_qty`           float       default null,
    `sales_amount`        float       default null,
    `sales_return_qty`    float       default null,
    `sales_return_amount` float       default null,
    `invoice_no`          varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_date_wise_receipt`
(
    `company_id`   varchar(20)  default null,
    `user_id`      varchar(20)  default null,
    `receipt_date` datetime     default null,
    `customer_id`  varchar(20)  default null,
    `receipt_type` varchar(50)  default null,
    `invoice_no`   varchar(20)  default null,
    `receipt_id`   varchar(20)  default null,
    `ref_no`       varchar(20)  default null,
    `cheque_no`    varchar(50)  default null,
    `cheque_date`  datetime     default null,
    `narration`    varchar(200) default null,
    `amount`       float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_day_book`
(
    `rpt_auto`       bigint(18) auto_increment primary key not null,
    `rpt_company_id` varchar(20)  default default          null,
    `rpt_user_name`  varchar(400) default default          null,
    `trans`          varchar(400) default default          null,
    `rpt_caption`    varchar(400) default default          null,
    `rpt_ref_no`     varchar(400) default default          null,
    `rpt_voucher`    varchar(20)  default default          null,
    `rpt_narration`  varchar(400) default default          null,
    `rpt_dr`         float        default default          null,
    `rpt_cr`         float        default default          null
) engine = innodb
  default charset = utf8;

create table `rpt_default_company`
(
    `company_id` varchar(20) default null,
    `branch_id`  varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_default_sales_company`
(
    `company_id` varchar(20) default null,
    `branch_id`  varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_discount_details`
(
    `company_id`  varchar(20) default null,
    `customer_id` varchar(20) not null,
    `discount`    float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_dr_cr`
(
    `accounts_group_id`   varchar(20)  default null,
    `accounts_group_name` varchar(100) default null,
    `accounts_id`         varchar(20)  default null,
    `accounts_name`       varchar(100) default null,
    `amount_dr`           float        default null,
    `amount_cr`           float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_expense_income`
(
    `company_id` varchar(20)  default null,
    `user_name`  varchar(50)  default null,
    `exp_id`     varchar(20)  default null,
    `voucher_id` varchar(20)  default null,
    `narration`  varchar(200) default null,
    `amount`     float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_explicit_product_group_wise_sales`
(
    `company_id` varchar(20) default null,
    `created_by` varchar(20) default null,
    `sales_id`   varchar(20) not null
) engine = innodb
  default charset = utf8;

create table `rpt_group_or_band_wise_sales`
(
    `company_id` varchar(20) default null,
    `group_id`   varchar(20) default null,
    `product_id` varchar(20) default null,
    `sales_id`   varchar(20) default null,
    `qty`        float       default null,
    `unit_price` float       default null,
    `avg_cost`   float       default null,
    `cost`       float       default null,
    `created_by` varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_group_wise_accounts_ledger`
(
    `company_id`    varchar(20)  default null,
    `user_name`     varchar(50)  default null,
    `voucher_id`    varchar(15) not null,
    `accounts_name` varchar(200) default null,
    `narration`     varchar(500) default null,
    `v_date`        datetime     default null,
    `dr_amount`     float        default null,
    `cr_amount`     float        default null,
    `balance`       float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_invoice_status`
(
    `company_id`      varchar(20) default null,
    `user_id`         varchar(20) default null,
    `sales_id`        varchar(20) default null,
    `customer_id`     varchar(20) default null,
    `sales_date`      datetime    default null,
    `invoice_amount`  float       default null,
    `receive_amount`  float       default null,
    `balance`         float       default null,
    `sales_return_id` varchar(50) default null,
    `return_amount`   float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_item_compare_in`
(
    `rpt_in_id`      varchar(20)    default null,
    `rpt_out_id`     varchar(20) not null,
    `rpt_company_id` varchar(20)    default null,
    `rpt_user_id`    varchar(20)    default null,
    `rpt_product_id` varchar(20)    default null,
    `rpt_qty`        numeric(18, 0) default null,
    `rpt_cost`       numeric(18, 0) default null,
    `rpt_sequence`   varchar(5)     default null
) engine = innodb
  default charset = utf8;

create table `rpt_item_compare_out`
(
    `rpt_in_id`      varchar(20)    default null,
    `rpt_out_id`     varchar(20) not null,
    `rpt_company_id` varchar(20)    default null,
    `rpt_user_id`    varchar(20)    default null,
    `rpt_product_id` varchar(20)    default null,
    `rpt_qty`        numeric(18, 0) default null,
    `rpt_cost`       numeric(18, 0) default null,
    `rpt_sequence`   varchar(5)     default null
) engine = innodb
  default charset = utf8;

create table `rpt_journal`
(
    `company_id`    varchar(20)  default null,
    `created_by`    varchar(50)  default null,
    `journal_id`    varchar(20)  default null,
    `sequence`      varchar(4)   default null,
    `accounts_type` varchar(5)   default null,
    `account_name`  varchar(100) default null,
    `narration`     varchar(200) default null,
    `amount_dr`     float        default null,
    `amount_cr`     float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_monthly_expenses`
(
    `company_id`  varchar(20) default null,
    `user_name`   varchar(20) default null,
    `expenses_id` varchar(20) default null,
    `january`     float       default null,
    `february`    float       default null,
    `march`       float       default null,
    `april`       float       default null,
    `may`         float       default null,
    `june`        float       default null,
    `july`        float       default null,
    `august`      float       default null,
    `september`   float       default null,
    `october`     float       default null,
    `november`    float       default null,
    `december`    float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_monthly_sales`
(
    `company_id`    varchar(20) default null,
    `user_name`     varchar(20) default null,
    `name_of_month` varchar(50) default null,
    `profit`        float       default null,
    `amount`        float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_mpo_due_list`
(
    `company_id`        varchar(20) default null,
    `mpo_id`            varchar(20) default null,
    `user_id`           varchar(20) default null,
    `sales`             float       default null,
    `sales_return`      float       default null,
    `collection`        float       default null,
    `purchase`          float       default null,
    `purchase_return`   float       default null,
    `payment`           float       default null,
    `jr_dr`             float       default null,
    `jr_cr`             float       default null,
    `lc_retirement`     float       default null,
    `dis_honor_receive` float       default null,
    `dis_honor_paid`    float       default null,
    `rma_receivable`    float       default null,
    `rma_payable`       float       default null,
    `service`           float       default null,
    `due`               float       default null,
    `balance`           float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_mpo_wise_gross_profit`
(
    `company_id` varchar(20) default null,
    `user_id`    varchar(20) default null,
    `mpo_id`     varchar(20) default null,
    `product_id` varchar(20) default null,
    `qty`        varchar(20) default null,
    `cost`       float       default null,
    `price`      float       default null,
    `avg_cost`   float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_mpo_wise_sales`
(
    `company_id`        varchar(20) default null,
    `user_id`           varchar(20) default null,
    `mpo_id`            varchar(20) default null,
    `product_id`        varchar(20) default null,
    `sold_qty`          float       default null,
    `return_qty`        float       default null,
    `sold_unit_price`   float       default null,
    `return_unit_price` float       default null,
    `sold_amount`       float       default null,
    `return_amount`     float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_mpo_wise_statement`
(
    `company_id`        varchar(20) default null,
    `mpo_id`            varchar(20) default null,
    `cs_id`             varchar(20) not null,
    `user_id`           varchar(20) default null,
    `sales`             float       default null,
    `sales_return`      float       default null,
    `collection`        float       default null,
    `purchase`          float       default null,
    `purchase_return`   float       default null,
    `payment`           float       default null,
    `jr_dr`             float       default null,
    `jr_cr`             float       default null,
    `lc_retirement`     float       default null,
    `dis_honor_receive` float       default null,
    `dis_honor_paid`    float       default null,
    `rma_receivable`    float       default null,
    `rma_payable`       float       default null,
    `service`           float       default null,
    `due`               float       default null,
    `balance`           float       default null,
    `type`              varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_net_gp`
(
    `company_id`     varchar(20) default null,
    `created_by`     varchar(50) default null,
    `product_id`     varchar(20) default null,
    `sales_qty`      float       default null,
    `sales_price`    float       default null,
    `purchase_price` float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_out_in_status`
(
    `rpt_out_id`     varchar(20) not null,
    `rpt_company_id` varchar(20) default null,
    `rpt_user_id`    varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_price_quotation_caption`
(
    `caption1`  varchar(50) default null,
    `caption2`  varchar(50) default null,
    `caption3`  varchar(50) default null,
    `caption4`  varchar(50) default null,
    `caption5`  varchar(50) default null,
    `caption6`  varchar(50) default null,
    `caption7`  varchar(50) default null,
    `caption8`  varchar(50) default null,
    `caption9`  varchar(50) default null,
    `caption10` varchar(50) default null,
    `caption11` varchar(50) default null,
    `caption12` varchar(50) default null,
    `caption13` varchar(50) default null,
    `caption14` varchar(50) default null,
    `caption15` varchar(50) default null,
    `caption16` varchar(50) default null,
    `caption17` varchar(50) default null,
    `caption18` varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `rpt_product_group_wise_sales`
(
    `customer_id`      varchar(20) default null,
    `product_group_id` varchar(20) default null,
    `amount`           float       default null,
    `discount`         float       default null,
    `net_amount`       float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_product_ledger`
(
    `rpt_company_id` varchar(20)  default null,
    `rpt_user_name`  varchar(50)  default null,
    `rpt_caption`    varchar(500) default null,
    `rpt_ref_no`     varchar(50)  default null,
    `rpt_voucher`    varchar(15)  default null,
    `rpt_date`       datetime     default null,
    `rpt_dr`         float        default null,
    `rpt_cr`         float        default null,
    `rpt_balance`    float        default null,
    `product_id`     varchar(20)  default null
) engine = innodb
  default charset = utf8;

create table `rpt_product_status`
(
    `company_id`            varchar(20) default null,
    `created_by`            varchar(50) default null,
    `product_id`            varchar(20) default null,
    `opening_balance`       float       default null,
    `purchase`              float       default null,
    `purchase_return`       float       default null,
    `sales`                 float       default null,
    `sales_return`          float       default null,
    `rma_product_utilize`   float       default null,
    `receive_commercial`    float       default null,
    `transfer_commercial`   float       default null,
    `transfer_rma`          float       default null,
    `receive_rma`           float       default null,
    `stock_out`             float       default null,
    `stock_in`              float       default null,
    `closing_balance`       float       default null,
    `opening_value`         float       default null,
    `br_cost_t`             float       default null,
    `br_cost_r`             float       default null,
    `purchase_price`        float       default null,
    `sales_return_price`    float       default null,
    `rate`                  float       default null,
    `purchase_return_price` float       default null,
    `closing_value`         float       default null,
    `sales_price`           float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_product_wise_net_sales`
(
    `company_id`        varchar(20) default null,
    `user_id`           varchar(20) default null,
    `customer_id`       varchar(20) default null,
    `product_id`        varchar(20) default null,
    `sold_qty`          float       default null,
    `sold_unit_price`   float       default null,
    `return_qty`        float       default null,
    `return_unit_price` float       default null,
    `credit_note`       float       default null,
    `sales_cost`        float       default null,
    `return_cost`       float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_purchase_status`
(
    `company_id`                 varchar(20) default null,
    `user_id`                    varchar(20) default null,
    `product_id`                 varchar(20) default null,
    `purchase_qty`               float       default null,
    `purchase_unit_price`        float       default null,
    `purchase_amount`            float       default null,
    `sold_qty`                   float       default null,
    `sold_unit_price`            float       default null,
    `sold_amount`                float       default null,
    `sld_cost`                   float       default null,
    `purchase_return_qty`        float       default null,
    `purchase_return_unit_price` float       default null,
    `purchase_return_amount`     float       default null,
    `pr_cost`                    float       default null,
    `sales_return_qty`           float       default null,
    `sales_return_unit_price`    float       default null,
    `sales_return_amount`        float       default null,
    `sr_cost`                    float       default null,
    `closing_stock_qty`          float       default null,
    `closing_stock_unit_price`   float       default null,
    `closing_stock_amount`       float       default null,
    `profit`                     float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_report`
(
    `invoice_id`  varchar(20) default null,
    `customer_id` varchar(20) default null,
    `product_id`  varchar(50) default null,
    `qty`         float       default null,
    `unit_price`  float       default null,
    `user_id`     varchar(20) default null,
    `company_id`  varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `rpt_rma_report`
(
    `company_id`  varchar(20)  default null,
    `user_id`     varchar(20)  default null,
    `cs_id`       varchar(20)  default null,
    `ref_no1`     varchar(20)  default null,
    `attention`   varchar(100) default null,
    `trans_id1`   varchar(20)  default null,
    `trans_id2`   varchar(20)  default null,
    `trans_id3`   varchar(20)  default null,
    `trans_date1` datetime     default null,
    `trans_date2` datetime     default null,
    `product_id1` varchar(20)  default null,
    `problem`     varchar(200) default null,
    `engineer_id` varchar(20)  default null,
    `qty1`        float        default null,
    `serial1`     varchar(50)  default null,
    `product_id2` varchar(20)  default null,
    `qty2`        float        default null,
    `serial2`     varchar(50)  default null
) engine = innodb
  default charset = utf8;

create table `rpt_sales`
(
    `rpt_sales_id`   varchar(20) not null,
    `rpt_company_id` varchar(20)  default null,
    `rpt_user_id`    varchar(20)  default null,
    `rpt_store_id`   varchar(20)  default null,
    `rpt_product_id` varchar(20)  default null,
    `rpt_qty`        float        default null,
    `rpt_bonus_qty`  float        default null,
    `rpt_round_qty`  float        default null,
    `rpt_con_qty`    float        default null,
    `rpt_weight`     float        default null,
    `rpt_serial`     varchar(100) default null,
    `rpt_unit_price` float        default null,
    `rpt_avg_cost`   float        default null,
    `rpt_sequence`   varchar(5)   default null,
    `rpt_warranty`   varchar(200) default null,
    `rpt_challan_id` varchar(200) default null,
    `rpt_discount`   float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_sales_caption`
(
    `caption1`  varchar(50) default null,
    `caption2`  varchar(50) default null,
    `caption3`  varchar(50) default null,
    `caption4`  varchar(50) default null,
    `caption5`  varchar(50) default null,
    `caption6`  varchar(50) default null,
    `caption7`  varchar(50) default null,
    `caption8`  varchar(50) default null,
    `caption9`  varchar(50) default null,
    `caption10` varchar(50) default null,
    `caption11` varchar(50) default null,
    `caption12` varchar(50) default null,
    `caption13` varchar(50) default null,
    `caption14` varchar(50) default null,
    `caption15` varchar(50) default null,
    `caption16` varchar(50) default null,
    `caption17` varchar(50) default null,
    `caption18` varchar(50) default null
) engine = innodb
  default charset = utf8;

create table `rpt_sdc_monitoring`
(
    `company_id`          varchar(20) not null,
    `cs_id`               varchar(20) default null,
    `type`                varchar(20) default null,
    `last_sales_id`       varchar(20) default null,
    `last_sales_amount`   float       default null,
    `last_receipt_id`     varchar(20) default null,
    `last_receipt_amount` float       default null,
    `due`                 float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_stock_transfer`
(
    `rpt_sales_id`      varchar(20)  not null,
    `rpt_company_id`    varchar(20)    default null,
    `rpt_user_id`       varchar(20)    default null,
    `rpt_product_id`    varchar(20)    default null,
    `rpt_store_id_from` varchar(20)    default null,
    `rpt_store_id_to`   varchar(20)    default null,
    `rpt_qty`           numeric(18, 0) default null,
    `rpt_serial`        varchar(100) not null
) engine = innodb
  default charset = utf8;

create table `rpt_sundry_debtors_creditors_monitoring`
(
    `company_id`          varchar(20) default null,
    `cs_id`               varchar(20) default null,
    `last_sales_id`       varchar(20) default null,
    `last_sales_amount`   float       default null,
    `last_receipt_id`     varchar(20) default null,
    `last_receipt_amount` float       default null,
    `due`                 float       default null
) engine = innodb
  default charset = utf8;

create table `rpt_supplier_ledger`
(
    `rpt_company_id` varchar(20)  default null,
    `rpt_dr_cr_id`   varchar(20)  default null,
    `rpt_user_name`  varchar(50)  default null,
    `rpt_caption`    varchar(500) default null,
    `rpt_ref_no`     varchar(50)  default null,
    `rpt_voucher`    varchar(15)  default null,
    `rpt_date`       datetime     default null,
    `rpt_dr`         float        default null,
    `rpt_cr`         float        default null,
    `qty_cr`         float        default null,
    `qty_dr`         float        default null,
    `price_cr`       float        default null,
    `price_dr`       float        default null,
    `rpt_balance`    float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_supplier_ledger_details`
(
    `rpt_company_id` varchar(20)  default null,
    `rpt_user_name`  varchar(50)  default null,
    `rpt_caption`    varchar(500) default null,
    `rpt_ref_no`     varchar(50)  default null,
    `rpt_voucher`    varchar(15)  default null,
    `rpt_date`       datetime     default null,
    `rpt_dr`         float        default null,
    `rpt_cr`         float        default null,
    `qty`            float        default null,
    `price`          float        default null,
    `rpt_balance`    float        default null
) engine = innodb
  default charset = utf8;

create table `rpt_temp`
(
    `company_id`          varchar(20) default null,
    `customer_id`         varchar(20) default null,
    `product_id`          varchar(20) default null,
    `sales_qty`           float       default null,
    `sales_amount`        float       default null,
    `sales_return_qty`    float       default null,
    `sales_return_amount` float       default null
) engine = innodb
  default charset = utf8;

create table `sales`
(
    `sales_id`           varchar(20) not null,
    `company_id`         varchar(5)  not null,
    `customer_id`        varchar(20)  default null,
    `attention`          varchar(150) default null,
    `order_receive_id`   varchar(20)  default null,
    `challan_id`         varchar(20)  default null,
    `mpo_id`             varchar(20)  default null,
    `job_no`             varchar(80)  default null,
    `model_no`           varchar(80)  default null,
    `reg_no`             varchar(80)  default null,
    `make`               varchar(80)  default null,
    `ref_no`             varchar(20)  default null,
    `remarks`            varchar(100) default null,
    `sales_date`         datetime     default null,
    `payment_date`       datetime     default null,
    `created_by`         varchar(20)  default null,
    `created_at`         datetime     default null,
    `approved_by`        varchar(20)  default null,
    `approved_date`      datetime     default null,
    `total_avg_cost`     float        default null,
    `total_cost`         float        default null,
    `total_price`        float       not null,
    `service_charge`     float        default null,
    `disc_prc`           float        default null,
    `discount`           float        default null,
    `item_wise_discount` float        default null,
    `vat_prc`            float        default null,
    `vat`                float        default null,
    `received_amount`    float        default null,
    `card_id`            varchar(20)  default null,
    `approved`           varchar(1)   default null,
    `status`             varchar(1)   default null,
    `inv_category`       varchar(1)   default null,
    `modified_by`        varchar(50)  default null,
    `cur_dues`           float        default null
) engine = innodb
  default charset = utf8;

create table `sales_date`
(
    `sales_date`   datetime   default null,
    `sales_status` varchar(1) default null
) engine = innodb
  default charset = utf8;

create table `sales_details`
(
    `sales_id`    varchar(20) not null,
    `sales_type`  varchar(1)   default null,
    `purchase_id` varchar(20)  default null,
    `ref_id`      varchar(20)  default null,
    `product_id`  varchar(20) not null,
    `store_id`    varchar(20)  default null,
    `sequence`    varchar(5)   default null,
    `hdd_ref`     varchar(50)  default null,
    `insert_date` datetime     default null,
    `insert_time` datetime     default null,
    `created_by`  varchar(20)  default null,
    `serial`      varchar(50) not null,
    `qty`         float        default null,
    `bonus_qty`   float        default null,
    `avg_cost`    float        default null,
    `cost`        float        default null,
    `warranty`    varchar(100) default null,
    `unit_price`  float        default null,
    `disc_prc`    float        default null,
    `discount`    float        default null,
    `vat_prc`     float        default null,
    `vat`         float        default null,
    `approved`    varchar(1)   default null,
    `inventory`   varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `sales_extra_charges`
(
    `company_id` varchar(20) default null,
    `order_id`   varchar(20) default null,
    `sales_id`   varchar(20) default null,
    `charge1`    float       default null,
    `charge2`    float       default null,
    `charge3`    float       default null,
    `charge4`    float       default null,
    `charge5`    float       default null,
    `charge6`    float       default null,
    `charge7`    float       default null,
    `charge8`    float       default null,
    `created_by` varchar(50) default null,
    `created_at` datetime    default null
) engine = innodb
  default charset = utf8;

create table `sales_from`
(
    `company_id` varchar(20) default null,
    `store_id`   varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `sales_return`
(
    `sales_return_id`   varchar(20) not null,
    `company_id`        varchar(5)  not null,
    `customer_id`       varchar(20)  default null,
    `mpo_id`            varchar(20)  default null,
    `ref_no`            varchar(20)  default null,
    `attention`         varchar(100) default null,
    `sales_return_date` datetime     default null,
    `created_by`        varchar(20)  default null,
    `created_at`        datetime     default null,
    `approved_by`       varchar(20)  default null,
    `approved_date`     datetime     default null,
    `total_price`       float        default null,
    `total_cost`        float        default null,
    `total_avg_cost`    float        default null,
    `approved`          varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `sales_return_details`
(
    `sales_return_id` varchar(20) not null,
    `product_id`      varchar(20) not null,
    `store_id`        varchar(20) default null,
    `qty`             float       default null,
    `batch_no`        varchar(50) default null,
    `sales_id`        varchar(20) default null,
    `purchase_id`     varchar(20) default null,
    `m_date`          datetime    default null,
    `e_date`          datetime    default null,
    `hdd_ref`         varchar(50) default null,
    `insert_date`     datetime    default null,
    `insert_time`     datetime    default null,
    `created_by`      varchar(20) default null,
    `sequence`        varchar(10) default null,
    `serial`          varchar(50) not null,
    `avg_cost`        float       default null,
    `cost`            float       default null,
    `unit_price`      float       default null,
    `approved`        varchar(1)  default null,
    `inventory`       varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `service`
(
    `service_id`   varchar(20)  not null,
    `service_name` varchar(100) default null,
    `short_name`   varchar(100) not null,
    `company_id`   varchar(20)  default null,
    `created_by`   varchar(15)  default null,
    `created_at`   datetime     default null
) engine = innodb
  default charset = utf8;

create table `service_bill`
(
    `service_bill_id`     varchar(20) not null,
    `complain_receive_id` varchar(20)  default null,
    `customer_id`         varchar(20)  default null,
    `mpo_id`              varchar(20)  default null,
    `company_id`          varchar(5)  not null,
    `ref_no`              varchar(20)  default null,
    `remarks`             varchar(100) default null,
    `bill_date`           datetime     default null,
    `created_by`          varchar(20)  default null,
    `created_at`          datetime     default null,
    `approved_by`         varchar(20)  default null,
    `approved_date`       datetime     default null,
    `total_amount`        float        default null,
    `approved`            varchar(1)   default null,
    `status`              varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `service_bill_details`
(
    `service_bill_id` varchar(20) not null,
    `service_id`      varchar(20) not null,
    `narration`       varchar(200) default null,
    `amount`          float        default null,
    `hdd_ref`         varchar(50)  default null,
    `insert_date`     datetime     default null,
    `insert_time`     datetime     default null,
    `created_by`      varchar(20)  default null,
    `sequence`        varchar(10)  default null,
    `approved`        varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `shipment`
(
    `sales_id`       varchar(20) not null,
    `company_id`     varchar(5)  not null,
    `ref_no`         varchar(20)  default null,
    `created_by`     varchar(20)  default null,
    `created_at`     datetime     default null,
    `approved_by`    varchar(20)  default null,
    `approved_date`  datetime     default null,
    `ship_to_name`   varchar(100) default null,
    `address`        varchar(200) default null,
    `contact_person` varchar(100) default null,
    `contact_no`     varchar(100) default null,
    `phone`          varchar(100) default null,
    `fax`            varchar(100) default null,
    `payment_terms`  varchar(150) default null,
    `ship_via`       varchar(150) default null,
    `shipping_terms` varchar(150) default null,
    `shipped_on`     varchar(150) default null,
    `narration`      varchar(200) default null,
    `shipping_date`  datetime     default null,
    `awb_no`         varchar(100) default null,
    `approved`       varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `shipped`
(
    `shipped_id`   varchar(20)  not null,
    `shipped_name` varchar(100) default null,
    `short_name`   varchar(100) not null,
    `company_id`   varchar(5)   default null,
    `created_by`   varchar(15)  default null,
    `created_at`   datetime     default null
) engine = innodb
  default charset = utf8;

create table `shipped_on`
(
    `shipped_on_id`   varchar(20)  not null,
    `shipped_on_name` varchar(150) not null,
    `short_name`      varchar(150) not null,
    `company_id`      varchar(5)   not null,
    `created_by`      varchar(15) default null,
    `created_at`      datetime    default null
) engine = innodb
  default charset = utf8;

create table `shipping_terms`
(
    `shipping_terms_id`   varchar(20)  not null,
    `shipping_terms_name` varchar(150) not null,
    `short_name`          varchar(150) not null,
    `company_id`          varchar(5)   not null,
    `created_by`          varchar(15) default null,
    `created_at`          datetime    default null
) engine = innodb
  default charset = utf8;

create table `ship_to`
(
    `company_id`     varchar(5)   default null,
    `ship_to_id`     varchar(20)  default null,
    `ship_to_name`   varchar(200) default null,
    `short_name`     varchar(200) not null,
    `address`        varchar(400) default null,
    `phone`          varchar(80)  default null,
    `mobile`         varchar(80)  default null,
    `fax`            varchar(80)  default null,
    `email`          varchar(80)  default null,
    `contact_person` varchar(80)  default null,
    `created_by`     varchar(50)  default null,
    `created_at`     datetime     default null
) engine = innodb
  default charset = utf8;

create table `ship_via`
(
    `ship_via_id`   varchar(20)  not null,
    `ship_via_name` varchar(150) not null,
    `short_name`    varchar(150) not null,
    `company_id`    varchar(5)   not null,
    `created_by`    varchar(15) default null,
    `created_at`    datetime    default null
) engine = innodb
  default charset = utf8;

create table `size`
(
    `size_id`    varchar(20)  not null,
    `size_name`  varchar(100) default null,
    `short_name` varchar(100) not null,
    `company_id` varchar(20)  default null,
    `created_by` varchar(15)  default null,
    `created_at` datetime     default null
) engine = innodb
  default charset = utf8;

create table `sorting`
(
    `company_id`       varchar(20) default default           null,
    `sorting_group_id` varchar(20) default default           null,
    `sorting_id`       bigint(18) auto_increment primary key not null,
    `product_id`       varchar(50) default default           null,
    `created_by`       varchar(20) default default           null,
    `created_at`       datetime    default default           null,
    `hddrtef`          varchar(20) default default           null
) engine = innodb
  default charset = utf8;

create table `sorting_group`
(
    `sorting_group_id` varchar(20)  not null,
    `sorting_name`     varchar(100) default null,
    `short_name`       varchar(100) not null,
    `company_id`       varchar(20)  default null,
    `created_by`       varchar(15)  default null,
    `created_at`       datetime     default null
) engine = innodb
  default charset = utf8;

create table `specification`
(
    `product_id`    varchar(20) not null,
    `specification` varchar(1000) default null,
    `created_by`    varchar(20)   default null,
    `changed_by`    varchar(20)   default null,
    `created_at`    datetime      default null,
    `changed_date`  datetime      default null,
    `hddrtef`       varchar(50)   default null
) engine = innodb
  default charset = utf8;

create table `stock_amendment_in`
(
    `stock_amendment_in_id`   varchar(20) not null,
    `company_id`              varchar(5)  not null,
    `reason_of_adjustment_id` varchar(20)  default null,
    `ref_no`                  varchar(20)  default null,
    `narration`               varchar(200) default null,
    `stock_amendment_in_date` datetime     default null,
    `created_by`              varchar(20)  default null,
    `created_at`              datetime     default null,
    `approved_by`             varchar(20)  default null,
    `approved_date`           datetime     default null,
    `total_cost`              float        default null,
    `approved`                varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `stock_amendment_in_details`
(
    `stock_amendment_in_id` varchar(20) not null,
    `product_id`            varchar(20) not null,
    `qty`                   float       default null,
    `store_id`              varchar(20) default null,
    `batch_no`              varchar(50) default null,
    `m_date`                datetime    default null,
    `e_date`                datetime    default null,
    `hdd_ref`               varchar(50) default null,
    `insert_date`           datetime    default null,
    `insert_time`           datetime    default null,
    `created_by`            varchar(20) default null,
    `sequence`              varchar(10) default null,
    `serial`                varchar(50) not null,
    `unit_price`            float       default null,
    `approved`              varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_amendment_out`
(
    `stock_amendment_out_id`   varchar(20) not null,
    `company_id`               varchar(5)  not null,
    `reason_of_adjustment_id`  varchar(20)  default null,
    `ref_no`                   varchar(20)  default null,
    `remarks`                  varchar(200) default null,
    `stock_amendment_out_date` datetime     default null,
    `created_by`               varchar(20)  default null,
    `created_at`               datetime     default null,
    `approved_by`              varchar(20)  default null,
    `approved_date`            datetime     default null,
    `total_cost`               float        default null,
    `total_avg_cost`           float        default null,
    `approved`                 varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `stock_amendment_out_details`
(
    `stock_amendment_out_id` varchar(20) not null,
    `purchase_id`            varchar(20) default null,
    `ref_id`                 varchar(20) default null,
    `product_id`             varchar(20) not null,
    `qty`                    float       default null,
    `store_id`               varchar(20) default null,
    `batch_no`               varchar(50) default null,
    `m_date`                 datetime    default null,
    `e_date`                 datetime    default null,
    `hdd_ref`                varchar(50) default null,
    `insert_date`            datetime    default null,
    `insert_time`            datetime    default null,
    `created_by`             varchar(20) default null,
    `sequence`               varchar(10) default null,
    `serial`                 varchar(50) not null,
    `cost`                   float       default null,
    `avg_cost`               float       default null,
    `approved`               varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_in`
(
    `stock_in_id`        varchar(20) not null,
    `stock_out_id`       varchar(20)  default null,
    `company_id`         varchar(5)  not null,
    `factory_id`         varchar(20)  default null,
    `processing_unit_id` varchar(20)  default null,
    `ref_no`             varchar(20)  default null,
    `remarks`            varchar(100) default null,
    `stock_in_date`      datetime     default null,
    `created_by`         varchar(20)  default null,
    `created_at`         datetime     default null,
    `approved_by`        varchar(20)  default null,
    `approved_date`      datetime     default null,
    `total_cost`         float        default null,
    `approved`           varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `stock_in_details`
(
    `stock_in_id` varchar(20) not null,
    `product_id`  varchar(20) not null,
    `store_id`    varchar(20) default null,
    `sequence`    varchar(5)  default null,
    `hdd_ref`     varchar(50) default null,
    `insert_date` datetime    default null,
    `insert_time` datetime    default null,
    `created_by`  varchar(20) default null,
    `serial`      varchar(50) not null,
    `qty`         float       default null,
    `weight`      float       default null,
    `unit_price`  float       default null,
    `approved`    varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_out`
(
    `stock_out_id`       varchar(20) not null,
    `company_id`         varchar(5)  not null,
    `factory_id`         varchar(20)  default null,
    `processing_unit_id` varchar(20)  default null,
    `ref_no`             varchar(20)  default null,
    `remarks`            varchar(100) default null,
    `stock_out_date`     datetime     default null,
    `created_by`         varchar(20)  default null,
    `created_at`         datetime     default null,
    `approved_by`        varchar(20)  default null,
    `approved_date`      datetime     default null,
    `total_avg_cost`     float        default null,
    `total_cost`         float        default null,
    `approved`           varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `stock_out_details`
(
    `stock_out_id` varchar(20) not null,
    `purchase_id`  varchar(20) default null,
    `ref_id`       varchar(20) default null,
    `product_id`   varchar(20) not null,
    `store_id`     varchar(20) default null,
    `sequence`     varchar(5)  default null,
    `hdd_ref`      varchar(50) default null,
    `insert_date`  datetime    default null,
    `insert_time`  datetime    default null,
    `created_by`   varchar(20) default null,
    `serial`       varchar(50) not null,
    `qty`          float       default null,
    `avg_cost`     float       default null,
    `cost`         float       default null,
    `approved`     varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer`
(
    `stock_transfer_id`   varchar(20) primary key      not null,
    `company_id`          varchar(5)                   not null,
    `stock_id_from`       varchar(20)  default default null,
    `stock_id_to`         varchar(20)  default default null,
    `ref_no`              varchar(20)  default default null,
    `stock_transfer_date` datetime     default default null,
    `remarks`             varchar(100) default default null,
    `created_by`          varchar(20)  default default null,
    `created_at`          datetime     default default null,
    `approved_by`         varchar(20)  default default null,
    `approved_date`       datetime     default default null,
    `total_cost`          float        default default null,
    `total_price`         float        default default null,
    `approved`            varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_br_to_br`
(
    `stock_transfer_br_to_br_id`   varchar(20) not null,
    `company_id`                   varchar(5)  not null,
    `transfer_to`                  varchar(20)  default null,
    `ref_no`                       varchar(20)  default null,
    `stock_transfer_br_to_br_date` datetime     default null,
    `narration`                    varchar(200) default null,
    `created_by`                   varchar(20)  default null,
    `created_at`                   datetime     default null,
    `approved_by`                  varchar(20)  default null,
    `approved_date`                datetime     default null,
    `received_by`                  varchar(20)  default null,
    `received_date`                datetime     default null,
    `total_cost`                   float        default null,
    `total_avg_cost`               float        default null,
    `total_price`                  float        default null,
    `approved`                     varchar(1)   default null,
    `received`                     varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_br_to_br_details`
(
    `stock_transfer_br_to_br_id` varchar(20) not null,
    `purchase_id`                varchar(20) default null,
    `ref_id`                     varchar(20) default null,
    `store_id_from`              varchar(20) default null,
    `store_id_to`                varchar(20) default null,
    `sequence`                   varchar(50) default null,
    `product_id`                 varchar(20) not null,
    `qty`                        float       default null,
    `batch_no`                   varchar(50) default null,
    `m_date`                     datetime    default null,
    `e_date`                     datetime    default null,
    `hdd_ref`                    varchar(50) default null,
    `insert_date`                datetime    default null,
    `insert_time`                datetime    default null,
    `created_by`                 varchar(20) default null,
    `serial_from`                varchar(50) not null,
    `serial_to`                  varchar(50) default null,
    `cost`                       float       default null,
    `avg_cost`                   float       default null,
    `unit_price`                 float       default null,
    `approved`                   varchar(1)  default null,
    `received`                   varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_commercial`
(
    `stock_transfer_commercial_id`   varchar(20) not null,
    `company_id`                     varchar(5)  not null,
    `ref_no`                         varchar(20)  default null,
    `stock_transfer_commercial_date` datetime     default null,
    `remarks`                        varchar(100) default null,
    `created_by`                     varchar(20)  default null,
    `created_at`                     datetime     default null,
    `approved_by`                    varchar(20)  default null,
    `approved_date`                  datetime     default null,
    `total_cost`                     float        default null,
    `total_avg_cost`                 float        default null,
    `approved`                       varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_commercial_details`
(
    `stock_transfer_commercial_id` varchar(20) not null,
    `purchase_id`                  varchar(20) default null,
    `ref_id`                       varchar(20) default null,
    `store_id_from`                varchar(20) default null,
    `store_id_to`                  varchar(20) default null,
    `product_id`                   varchar(20) not null,
    `qty`                          float       default null,
    `batch_no`                     varchar(50) default null,
    `m_date`                       datetime    default null,
    `e_date`                       datetime    default null,
    `hdd_ref`                      varchar(50) default null,
    `insert_date`                  datetime    default null,
    `insert_time`                  datetime    default null,
    `created_by`                   varchar(20) default null,
    `serial`                       varchar(50) not null,
    `cost`                         float       default null,
    `avg_cost`                     float       default null,
    `approved`                     varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_commercial_to_rma`
(
    `stock_transfer_commercial_id`   varchar(20) not null,
    `company_id`                     varchar(5)  not null,
    `ref_no`                         varchar(20)  default null,
    `stock_transfer_commercial_date` datetime     default null,
    `remarks`                        varchar(100) default null,
    `created_by`                     varchar(20)  default null,
    `created_at`                     datetime     default null,
    `approved_by`                    varchar(20)  default null,
    `approved_date`                  datetime     default null,
    `total_cost`                     float        default null,
    `total_avg_cost`                 float        default null,
    `approved`                       varchar(1)   default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_commercial_to_rma_details`
(
    `stock_transfer_commercial_id` varchar(20) not null,
    `purchase_id`                  varchar(20) default null,
    `ref_id`                       varchar(20) default null,
    `store_id_from`                varchar(20) default null,
    `store_id_to`                  varchar(20) default null,
    `product_id`                   varchar(20) not null,
    `qty`                          float       default null,
    `batch_no`                     varchar(50) default null,
    `m_date`                       datetime    default null,
    `e_date`                       datetime    default null,
    `hdd_ref`                      varchar(50) default null,
    `insert_date`                  datetime    default null,
    `insert_time`                  datetime    default null,
    `created_by`                   varchar(20) default null,
    `serial`                       varchar(50) not null,
    `cost`                         float       default null,
    `avg_cost`                     float       default null,
    `approved`                     varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_details`
(
    `stock_transfer_id` varchar(20) not null,
    `purchase_id`       varchar(20) default null,
    `ref_id`            varchar(20) default null,
    `product_id`        varchar(20) not null,
    `qty`               float       default null,
    `batch_no`          varchar(50) default null,
    `m_date`            datetime    default null,
    `e_date`            datetime    default null,
    `hdd_ref`           varchar(50) default null,
    `insert_date`       datetime    default null,
    `insert_time`       datetime    default null,
    `created_by`        varchar(20) default null,
    `sequence`          varchar(10) default null,
    `serial`            varchar(50) not null,
    `cost`              float       default null,
    `unit_price`        float       default null,
    `approved`          varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_rma_to_commercial`
(
    `stock_transfer_commercial_id`   varchar(20) primary key      not null,
    `company_id`                     varchar(5)                   not null,
    `ref_no`                         varchar(20)  default default null,
    `stock_transfer_commercial_date` datetime     default default null,
    `remarks`                        varchar(100) default default null,
    `created_by`                     varchar(20)  default default null,
    `created_at`                     datetime     default default null,
    `approved_by`                    varchar(20)  default default null,
    `approved_date`                  datetime     default default null,
    `total_cost`                     float        default default null,
    `total_avg_cost`                 float        default default null,
    `approved`                       varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `stock_transfer_rma_to_commercial_details`
(
    `stock_transfer_commercial_id` varchar(20) primary key     not null,
    `purchase_id`                  varchar(20) default default null,
    `ref_id`                       varchar(20) default default null,
    `store_id_from`                varchar(20) default default null,
    `store_id_to`                  varchar(20) default default null,
    `product_id`                   varchar(20)                 not null,
    `qty`                          float       default default null,
    `batch_no`                     varchar(50) default default null,
    `m_date`                       datetime    default default null,
    `e_date`                       datetime    default default null,
    `hdd_ref`                      varchar(50) default default null,
    `insert_date`                  datetime    default default null,
    `insert_time`                  datetime    default default null,
    `created_by`                   varchar(20) default default null,
    `serial`                       varchar(50)                 not null,
    `cost`                         float       default default null,
    `avg_cost`                     float       default default null,
    `approved`                     varchar(1)  default default null
) engine = innodb
  default charset = utf8;

create table `store`
(
    `company_id` varchar(20)             default default null,
    `store_id`   varchar(20) primary key default null,
    `store_name` varchar(100)            default default null
) engine = innodb
  default charset = utf8;

create table `store_distributions`
(
    `company_id` varchar(20) default null,
    `department` varchar(50) default null,
    `user_id`    varchar(20) default null,
    `store_id`   varchar(20) default null,
    `created_by` varchar(50) default null,
    `created_at` datetime    default null
) engine = innodb
  default charset = utf8;

create table `summary`
(
    `company_id`    varchar(20)  default null,
    `account_id`    varchar(20)  default null,
    `accounts_name` varchar(200) default null,
    `type`          varchar(50)  default null,
    `balance`       float        default null,
    `created_by`    varchar(20)  default null
) engine = innodb
  default charset = utf8;

create table `supplier_bank`
(
    `supplier_bank_id`   varchar(20) primary key      not null,
    `supplier_bank_name` varchar(100) default default null,
    `short_name`         varchar(100)                 not null,
    `company_id`         varchar(5)   default default null,
    `created_by`         varchar(15)  default default null,
    `created_at`         datetime     default default null
) engine = innodb
  default charset = utf8;

create table `supplier_bank_account`
(
    `company_id`                 varchar(20)  default default null,
    `supplier_id`                varchar(20)  default default null,
    `supplier_bank_account_id`   varchar(15) primary key      not null,
    `supplier_bank_account_name` varchar(100) default default null,
    `short_name`                 varchar(100) default default null,
    `supplier_bank_id`           varchar(15)                  not null,
    `swift_code_no`              varchar(100) default default null,
    `branch_name`                varchar(100) default default null,
    `address`                    varchar(200) default default null,
    `created_by`                 varchar(50)  default default null,
    `created_at`                 datetime     default default null
) engine = innodb
  default charset = utf8;

create table `supplier_wise_auto_payment_fixing`
(
    `company_id`         varchar(20) default null,
    `supplier_id`        varchar(20) default null,
    `customer_id`        varchar(20) default null,
    `receive_company_id` varchar(20) default null,
    `created_by`         varchar(50) default null,
    `created_at`         datetime    default null
) engine = innodb
  default charset = utf8;

create table `sys_col`
(
    `company_id` varchar(20) default null,
    `created_by` varchar(20) default null,
    `created_at` datetime    default null,
    `l_date`     datetime    default null,
    `hddref`     varchar(20) default null
) engine = innodb
  default charset = utf8;

create table `tmp_invoice`
(
    `company_id`       varchar(20) default null,
    `cs_id`            varchar(20) default null,
    `created_by`       varchar(20) default null,
    `invoice_id`       varchar(20) default null,
    `total_amount`     float       default null,
    `collected_amount` float       default null,
    `due_amount`       float       default null
) engine = innodb
  default charset = utf8;

create table `transaction_lock`
(
    `transaction_lock_id` varchar(20) primary key default null,
    `ref_no`              varchar(100)            default default null,
    `lock_date`           datetime                default default null,
    `unlock_date`         datetime                default default null,
    `customer_id`         varchar(20)                             not null,
    `transaction_id`      varchar(20)                             not null,
    `l_reason_id`         varchar(20)             default default null,
    `f_reason_id`         varchar(20)             default default null,
    `l_narration`         varchar(200)            default default null,
    `f_narration`         varchar(200)            default default null,
    `company_id`          varchar(20)             default default null,
    `created_by`          varchar(15)             default default null,
    `created_at`          datetime                default default null,
    `locked`              varchar(1)              default default null
) engine = innodb
  default charset = utf8;

create table `transaction_trade`
(
    `transaction_id`   varchar(20) primary key      not null,
    `company_id`       varchar(5)                   not null,
    `supplier_id`      varchar(20)  default default null,
    `customer_id`      varchar(20)  default default null,
    `mpo_id`           varchar(20)  default default null,
    `ref_no`           varchar(20)  default default null,
    `narration`        varchar(200) default default null,
    `attention`        varchar(100) default default null,
    `transaction_date` datetime     default default null,
    `created_by`       varchar(20)  default default null,
    `created_at`       datetime     default default null,
    `approved_by`      varchar(20)  default default null,
    `approved_date`    datetime     default default null,
    `carrying_charge`  float        default default null,
    `tt_charge`        float        default default null,
    `other_charge`     float        default default null,
    `total_deposit`    float        default default null,
    `total_cf`         float        default default null,
    `total_commission` float        default default null,
    `total_price`      float        default default null,
    `total_cost`       float        default default null,
    `net_total_cost`   float        default default null,
    `net_total_costw`  float        default default null,
    `approved`         varchar(1)   default default null
) engine = innodb
  default charset = utf8;

create table `transaction_trade_details`
(
    `transaction_id` varchar(20) not null,
    `product_id`     varchar(20) not null,
    `qty`            float       default null,
    `hdd_ref`        varchar(50) default null,
    `insert_date`    datetime    default null,
    `insert_time`    datetime    default null,
    `created_by`     varchar(20) default null,
    `sequence`       varchar(10) default null,
    `deposit`        float       default null,
    `cf`             float       default null,
    `commission`     float       default null,
    `cost`           float       default null,
    `unit_price`     float       default null,
    `approved`       varchar(1)  default null,
    `inventory`      varchar(1)  default null
) engine = innodb
  default charset = utf8;

create table `transaction_type`
(
    `transaction_type` varchar(100) default null,
    `short_name`       varchar(80)  default null
) engine = innodb
  default charset = utf8;

create table `users`
(
    `company_id`      varchar(20)  default default null,
    `user_id`         varchar(8) primary key       not null,
    `user_user_name`  varchar(150) default null,
    `user_full_name`  varchar(100) default null,
    `user_password`   varchar(150) default null,
    `user_department` varchar(100) default null,
    `user_user_level` varchar(20)  default default null,
    `user_active`     varchar(2)   default default null
) engine = innodb
  default charset = utf8;

create table `vat`
(
    `company_id` varchar(20) default null,
    `vat`        float       default null
) engine = innodb
  default charset = utf8;

create table `warranty`
(
    `warranty_id`   varchar(20) primary key default null,
    `warranty_name` varchar(100)            default default null,
    `short_name`    varchar(100)            default default null,
    `created_by`    varchar(20)             default default null,
    `created_at`    datetime                default default null
) engine = innodb
  default charset = utf8;