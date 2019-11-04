-- ȸ��
DROP TABLE IF EXISTS members RESTRICT;

-- �Ǹ�ȸ��
DROP TABLE IF EXISTS sellers RESTRICT;

-- ��з�
DROP TABLE IF EXISTS categorys RESTRICT;

-- �Һз�
DROP TABLE IF EXISTS groups RESTRICT;

-- ��ǰ
DROP TABLE IF EXISTS products RESTRICT;

-- �Խñ��̹���
DROP TABLE IF EXISTS board_photos RESTRICT;

-- �ֹ�
DROP TABLE IF EXISTS orders RESTRICT;

-- �Խ���
DROP TABLE IF EXISTS boards RESTRICT;

-- ���
DROP TABLE IF EXISTS deliverys RESTRICT;

-- ��ٱ��ϻ�ǰ
DROP TABLE IF EXISTS baskets RESTRICT;

-- �ɼ�
DROP TABLE IF EXISTS options RESTRICT;

-- FAQ
DROP TABLE IF EXISTS faqs RESTRICT;

-- ����
DROP TABLE IF EXISTS reviews RESTRICT;

-- �۰���������
DROP TABLE IF EXISTS exhibitions RESTRICT;

-- �����̹���
DROP TABLE IF EXISTS review_photos RESTRICT;

-- ��ǰ�̹���
DROP TABLE IF EXISTS product_photos RESTRICT;

-- ��ǰ����
DROP TABLE IF EXISTS product_questions RESTRICT;

-- ������
DROP TABLE IF EXISTS review_replies RESTRICT;

-- 1:1���ǰԽñ�
DROP TABLE IF EXISTS private_questions RESTRICT;

-- ���ƿ�
DROP TABLE IF EXISTS likes RESTRICT;

-- ��õ
DROP TABLE IF EXISTS recommends RESTRICT;

-- �ֹ���ǰ
DROP TABLE IF EXISTS order_products RESTRICT;

-- ������
DROP TABLE IF EXISTS mileages RESTRICT;

-- 1:1���Ǵ亯
DROP TABLE IF EXISTS private_answers RESTRICT;

-- �ɼ��׸�
DROP TABLE IF EXISTS option_items RESTRICT;

-- �Խ��Ǵ��
DROP TABLE IF EXISTS comments RESTRICT;

-- ȸ��
CREATE TABLE members (
	member_id          INTEGER      NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	registered_date    DATE         NOT NULL COMMENT '������', -- ������
	id                 VARCHAR(20)  NOT NULL COMMENT '���̵�', -- ���̵�
	password           VARCHAR(255) NOT NULL COMMENT '��й�ȣ', -- ��й�ȣ
	certification_flag BOOLEAN      NOT NULL COMMENT '��������', -- ��������
	cell_phone         VARCHAR(50)  NOT NULL COMMENT '�޴���ȭ', -- �޴���ȭ
	tel                VARCHAR(50)  NULL     COMMENT '��ȭ��ȣ', -- ��ȭ��ȣ
	nickname           VARCHAR(20)  NOT NULL COMMENT '�г���', -- �г���
	name               VARCHAR(50)  NOT NULL COMMENT '�̸�', -- �̸�
	email              VARCHAR(40)  NOT NULL COMMENT '�̸���', -- �̸���
	postal_code        VARCHAR(10)  NOT NULL COMMENT '�����ȣ', -- �����ȣ
	default_address    VARCHAR(255) NOT NULL COMMENT '�⺻�ּ�', -- �⺻�ּ�
	detail_address     VARCHAR(255) NOT NULL COMMENT '���ּ�', -- ���ּ�
	question           VARCHAR(255) NOT NULL COMMENT '��й�ȣã������', -- ��й�ȣã������
	answer             VARCHAR(255) NOT NULL COMMENT '��й�ȣã��亯' -- ��й�ȣã��亯
)
COMMENT 'ȸ��';

-- ȸ��
ALTER TABLE members
	ADD CONSTRAINT PK_members -- ȸ�� �⺻Ű
		PRIMARY KEY (
			member_id -- ȸ����ȣ
		);

-- ȸ�� ����ũ �ε���
CREATE UNIQUE INDEX UIX_members
	ON members ( -- ȸ��
		id ASC -- ���̵�
	);

-- ȸ�� ����ũ �ε���2
CREATE UNIQUE INDEX UIX_members2
	ON members ( -- ȸ��
		cell_phone ASC -- �޴���ȭ
	);

-- ȸ�� ����ũ �ε���3
CREATE UNIQUE INDEX UIX_members3
	ON members ( -- ȸ��
		email ASC -- �̸���
	);

-- ȸ�� ����ũ �ε���4
CREATE UNIQUE INDEX UIX_members4
	ON members ( -- ȸ��
		nickname ASC -- �г���
	);

ALTER TABLE members
	MODIFY COLUMN member_id INTEGER NOT NULL AUTO_INCREMENT COMMENT 'ȸ����ȣ';

-- �Ǹ�ȸ��
CREATE TABLE sellers (
	member_id      INTEGER     NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	account_num    INTEGER     NOT NULL COMMENT '�Ǹ��ڰ��¹�ȣ', -- �Ǹ��ڰ��¹�ȣ
	account_holder VARCHAR(50) NOT NULL COMMENT '������ ��', -- ������ ��
	tel            VARCHAR(50) NOT NULL COMMENT '��������ȭ��ȣ', -- ��������ȭ��ȣ
	point          INTEGER     NOT NULL COMMENT '�Ǹ�����Ʈ' -- �Ǹ�����Ʈ
)
COMMENT '�Ǹ�ȸ��';

-- �Ǹ�ȸ��
ALTER TABLE sellers
	ADD CONSTRAINT PK_sellers -- �Ǹ�ȸ�� �⺻Ű
		PRIMARY KEY (
			member_id -- ȸ����ȣ
		);

-- �Ǹ�ȸ�� ����ũ �ε���
CREATE UNIQUE INDEX UIX_sellers
	ON sellers ( -- �Ǹ�ȸ��
		account_num ASC -- �Ǹ��ڰ��¹�ȣ
	);

-- �Ǹ�ȸ�� ����ũ �ε���2
CREATE UNIQUE INDEX UIX_sellers2
	ON sellers ( -- �Ǹ�ȸ��
		tel ASC -- ��������ȭ��ȣ
	);

-- ��з�
CREATE TABLE categorys (
	category_id   INTEGER      NOT NULL COMMENT '��з���ȣ', -- ��з���ȣ
	category_name VARCHAR(255) NOT NULL COMMENT 'ī�װ�' -- ī�װ�
)
COMMENT '��з�';

-- ��з�
ALTER TABLE categorys
	ADD CONSTRAINT PK_categorys -- ��з� �⺻Ű
		PRIMARY KEY (
			category_id -- ��з���ȣ
		);

-- ��з� ����ũ �ε���
CREATE UNIQUE INDEX UIX_categorys
	ON categorys ( -- ��з�
		category_name ASC -- ī�װ�
	);

ALTER TABLE categorys
	MODIFY COLUMN category_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '��з���ȣ';

-- �Һз�
CREATE TABLE groups (
	group_id    INTEGER      NOT NULL COMMENT '�Һз���ȣ', -- �Һз���ȣ
	category_id INTEGER      NOT NULL COMMENT '��з���ȣ', -- ��з���ȣ
	group_name  VARCHAR(255) NOT NULL COMMENT '�Һз���' -- �Һз���
)
COMMENT '�Һз�';

-- �Һз�
ALTER TABLE groups
	ADD CONSTRAINT PK_groups -- �Һз� �⺻Ű
		PRIMARY KEY (
			group_id -- �Һз���ȣ
		);

-- �Һз� ����ũ �ε���
CREATE UNIQUE INDEX UIX_groups
	ON groups ( -- �Һз�
		group_name ASC -- �Һз���
	);

ALTER TABLE groups
	MODIFY COLUMN group_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�Һз���ȣ';

-- ��ǰ
CREATE TABLE products (
	product_id      INTEGER      NOT NULL COMMENT '��ǰ��ȣ', -- ��ǰ��ȣ
	group_id        INTEGER      NOT NULL COMMENT '�Һз���ȣ', -- �Һз���ȣ
	member_id       INTEGER      NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	registered_date DATE         NOT NULL COMMENT '�����', -- �����
	diy_flag        BOOLEAN      NOT NULL COMMENT '�������ۿ���', -- �������ۿ���
	price           INTEGER      NOT NULL COMMENT '����', -- ����
	product_name    VARCHAR(255) NOT NULL COMMENT '��ǰ��', -- ��ǰ��
	description     VARCHAR(255) NOT NULL COMMENT '��ǰ����', -- ��ǰ����
	expiration_date DATE         NULL     COMMENT '�������', -- �������
	origin          VARCHAR(255) NULL     COMMENT '������' -- ������
)
COMMENT '��ǰ';

-- ��ǰ
ALTER TABLE products
	ADD CONSTRAINT PK_products -- ��ǰ �⺻Ű
		PRIMARY KEY (
			product_id -- ��ǰ��ȣ
		);

ALTER TABLE products
	MODIFY COLUMN product_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '��ǰ��ȣ';

-- �Խñ��̹���
CREATE TABLE board_photos (
	board_photo_id INTEGER      NOT NULL COMMENT '�̹�����ȣ', -- �̹�����ȣ
	boards_id      INTEGER      NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	photo_path     VARCHAR(255) NOT NULL COMMENT '�̹������' -- �̹������
)
COMMENT '�Խñ��̹���';

-- �Խñ��̹���
ALTER TABLE board_photos
	ADD CONSTRAINT PK_board_photos -- �Խñ��̹��� �⺻Ű
		PRIMARY KEY (
			board_photo_id -- �̹�����ȣ
		);

-- �Խñ��̹��� ����ũ �ε���
CREATE UNIQUE INDEX UIX_board_photos
	ON board_photos ( -- �Խñ��̹���
		photo_path ASC -- �̹������
	);

ALTER TABLE board_photos
	MODIFY COLUMN board_photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�̹�����ȣ';

-- �ֹ�
CREATE TABLE orders (
	order_id     INTEGER      NOT NULL COMMENT '�ֹ���ȣ', -- �ֹ���ȣ
	member_id    INTEGER      NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	payment_date DATE         NOT NULL COMMENT '��������', -- ��������
	payment_flag BOOLEAN      NOT NULL COMMENT '��������', -- ��������
	payment_way  VARCHAR(255) NOT NULL COMMENT '�������' -- �������
)
COMMENT '�ֹ�';

-- �ֹ�
ALTER TABLE orders
	ADD CONSTRAINT PK_orders -- �ֹ� �⺻Ű
		PRIMARY KEY (
			order_id -- �ֹ���ȣ
		);

ALTER TABLE orders
	MODIFY COLUMN order_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�ֹ���ȣ';

-- �Խ���
CREATE TABLE boards (
	boards_id    INTEGER       NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	member_id    INTEGER       NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	created_date DATE          NOT NULL COMMENT '�ۼ���', -- �ۼ���
	title        VARCHAR(255)  NOT NULL COMMENT '����', -- ����
	contents     VARCHAR(2000) NOT NULL COMMENT '����', -- ����
	vw_count     INTEGER       NULL     COMMENT '��ȸ��' -- ��ȸ��
)
COMMENT '�Խ���';

-- �Խ���
ALTER TABLE boards
	ADD CONSTRAINT PK_boards -- �Խ��� �⺻Ű
		PRIMARY KEY (
			boards_id -- �Խ��ǹ�ȣ
		);

ALTER TABLE boards
	MODIFY COLUMN boards_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�Խ��ǹ�ȣ';

-- ���
CREATE TABLE deliverys (
	delivery_id         INTEGER      NOT NULL COMMENT '��۹�ȣ', -- ��۹�ȣ
	order_id            INTEGER      NULL     COMMENT '�ֹ���ȣ', -- �ֹ���ȣ
	invoice_num         VARCHAR(255) NOT NULL COMMENT '�����ȣ', -- �����ȣ
	delivery_date       DATE         NOT NULL COMMENT '�������', -- �������
	delivery_flag       BOOLEAN      NOT NULL COMMENT '��ۻ���', -- ��ۻ���
	courier_name        VARCHAR(50)  NOT NULL COMMENT '�ù���', -- �ù���
	reciever_name       VARCHAR(50)  NOT NULL COMMENT '�����θ�', -- �����θ�
	delivery_address    VARCHAR(255) NOT NULL COMMENT '������ּ�', -- ������ּ�
	reciever_cell_phone VARCHAR(50)  NOT NULL COMMENT '�������޴���ȭ', -- �������޴���ȭ
	reciever_tel        VARCHAR(50)  NULL     COMMENT '�������Ϲ���ȭ', -- �������Ϲ���ȭ
	reciever_email      VARCHAR(40)  NULL     COMMENT '�������̸���' -- �������̸���
)
COMMENT '���';

-- ���
ALTER TABLE deliverys
	ADD CONSTRAINT PK_deliverys -- ��� �⺻Ű
		PRIMARY KEY (
			delivery_id -- ��۹�ȣ
		);

-- ��� ����ũ �ε���
CREATE UNIQUE INDEX UIX_deliverys
	ON deliverys ( -- ���
		invoice_num ASC -- �����ȣ
	);

ALTER TABLE deliverys
	MODIFY COLUMN delivery_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '��۹�ȣ';

-- ��ٱ��ϻ�ǰ
CREATE TABLE baskets (
	member_id       INTEGER NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	product_id      INTEGER NOT NULL COMMENT '��ǰ��ȣ', -- ��ǰ��ȣ
	registered_date DATE    NOT NULL COMMENT '�����', -- �����
	quantity        INTEGER NOT NULL COMMENT '����' -- ����
)
COMMENT '��ٱ��ϻ�ǰ';

-- ��ٱ��ϻ�ǰ
ALTER TABLE baskets
	ADD CONSTRAINT PK_baskets -- ��ٱ��ϻ�ǰ �⺻Ű
		PRIMARY KEY (
			member_id,  -- ȸ����ȣ
			product_id  -- ��ǰ��ȣ
		);

-- �ɼ�
CREATE TABLE options (
	options_id   INTEGER      NOT NULL COMMENT '�ɼǹ�ȣ', -- �ɼǹ�ȣ
	product_id   INTEGER      NOT NULL COMMENT '��ǰ��ȣ', -- ��ǰ��ȣ
	options_name VARCHAR(255) NOT NULL COMMENT '�ɼ��̸�' -- �ɼ��̸�
)
COMMENT '�ɼ�';

-- �ɼ�
ALTER TABLE options
	ADD CONSTRAINT PK_options -- �ɼ� �⺻Ű
		PRIMARY KEY (
			options_id -- �ɼǹ�ȣ
		);

ALTER TABLE options
	MODIFY COLUMN options_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�ɼǹ�ȣ';

-- FAQ
CREATE TABLE faqs (
	faq_id        INTEGER       NOT NULL COMMENT 'FAQ��ȣ', -- FAQ��ȣ
	question_type VARCHAR(255)  NOT NULL COMMENT '��������', -- ��������
	title         VARCHAR(255)  NOT NULL COMMENT '����', -- ����
	contents      VARCHAR(2000) NOT NULL COMMENT '����' -- ����
)
COMMENT 'FAQ';

-- FAQ
ALTER TABLE faqs
	ADD CONSTRAINT PK_faqs -- FAQ �⺻Ű
		PRIMARY KEY (
			faq_id -- FAQ��ȣ
		);

-- ����
CREATE TABLE reviews (
	review_id    INTEGER       NOT NULL COMMENT '�����ȣ', -- �����ȣ
	product_id   INTEGER       NOT NULL COMMENT '��ǰ��ȣ', -- ��ǰ��ȣ
	member_id    INTEGER       NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	created_date DATE          NOT NULL COMMENT '�ۼ���', -- �ۼ���
	rating       INTEGER       NOT NULL COMMENT '����', -- ����
	title        VARCHAR(255)  NOT NULL COMMENT '��������', -- ��������
	contents     VARCHAR(2000) NOT NULL COMMENT '���䳻��' -- ���䳻��
)
COMMENT '����';

-- ����
ALTER TABLE reviews
	ADD CONSTRAINT PK_reviews -- ���� �⺻Ű
		PRIMARY KEY (
			review_id -- �����ȣ
		);

ALTER TABLE reviews
	MODIFY COLUMN review_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�����ȣ';

-- �۰���������
CREATE TABLE exhibitions (
	member_id       INTEGER      NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	name            VARCHAR(50)  NOT NULL COMMENT '�۰���', -- �۰���
	photo_path      VARCHAR(255) NOT NULL COMMENT '�۰��������', -- �۰��������
	main_photo_path VARCHAR(255) NOT NULL COMMENT '��ǥ��ǰ���' -- ��ǥ��ǰ���
)
COMMENT '�۰���������';

-- �۰���������
ALTER TABLE exhibitions
	ADD CONSTRAINT PK_exhibitions -- �۰��������� �⺻Ű
		PRIMARY KEY (
			member_id -- ȸ����ȣ
		);

-- �۰��������� ����ũ �ε���
CREATE UNIQUE INDEX UIX_exhibitions
	ON exhibitions ( -- �۰���������
		name ASC -- �۰���
	);

-- �����̹���
CREATE TABLE review_photos (
	review_photo_id INTEGER      NOT NULL COMMENT '�����̹�����ȣ', -- �����̹�����ȣ
	review_id       INTEGER      NOT NULL COMMENT '�����ȣ', -- �����ȣ
	photo_path      VARCHAR(255) NOT NULL COMMENT '�̹������' -- �̹������
)
COMMENT '�����̹���';

-- �����̹���
ALTER TABLE review_photos
	ADD CONSTRAINT PK_review_photos -- �����̹��� �⺻Ű
		PRIMARY KEY (
			review_photo_id -- �����̹�����ȣ
		);

-- �����̹��� ����ũ �ε���
CREATE UNIQUE INDEX UIX_review_photos
	ON review_photos ( -- �����̹���
		photo_path ASC -- �̹������
	);

ALTER TABLE review_photos
	MODIFY COLUMN review_photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�����̹�����ȣ';

-- ��ǰ�̹���
CREATE TABLE product_photos (
	product_photo_id INTEGER      NOT NULL COMMENT '��ǰ�̹�����ȣ', -- ��ǰ�̹�����ȣ
	product_id       INTEGER      NOT NULL COMMENT '��ǰ��ȣ', -- ��ǰ��ȣ
	photo_path       VARCHAR(255) NOT NULL COMMENT '�̹������', -- �̹������
	main_photo_flag  BOOLEAN      NOT NULL COMMENT '��ǥ��������' -- ��ǥ��������
)
COMMENT '��ǰ�̹���';

-- ��ǰ�̹���
ALTER TABLE product_photos
	ADD CONSTRAINT PK_product_photos -- ��ǰ�̹��� �⺻Ű
		PRIMARY KEY (
			product_photo_id -- ��ǰ�̹�����ȣ
		);

-- ��ǰ�̹��� ����ũ �ε���
CREATE UNIQUE INDEX UIX_product_photos
	ON product_photos ( -- ��ǰ�̹���
		photo_path ASC -- �̹������
	);

ALTER TABLE product_photos
	MODIFY COLUMN product_photo_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '��ǰ�̹�����ȣ';

-- ��ǰ����
CREATE TABLE product_questions (
	product_question_id INTEGER       NOT NULL COMMENT '��ǰ���ǹ�ȣ', -- ��ǰ���ǹ�ȣ
	member_id           INTEGER       NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	product_id          INTEGER       NOT NULL COMMENT '��ǰ��ȣ', -- ��ǰ��ȣ
	created_date        DATE          NOT NULL COMMENT '�ۼ���', -- �ۼ���
	secret_flag         BOOLEAN       NOT NULL COMMENT '��п���', -- ��п���
	title               VARCHAR(255)  NOT NULL COMMENT '��ǰ��������', -- ��ǰ��������
	contents            VARCHAR(2000) NOT NULL COMMENT '��ǰ���ǳ���' -- ��ǰ���ǳ���
)
COMMENT '��ǰ����';

-- ��ǰ����
ALTER TABLE product_questions
	ADD CONSTRAINT PK_product_questions -- ��ǰ���� �⺻Ű
		PRIMARY KEY (
			product_question_id -- ��ǰ���ǹ�ȣ
		);

ALTER TABLE product_questions
	MODIFY COLUMN product_question_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '��ǰ���ǹ�ȣ';

-- ������
CREATE TABLE review_replies (
	review_reply_id INTEGER       NOT NULL COMMENT '�����۹�ȣ', -- �����۹�ȣ
	review_id       INTEGER       NOT NULL COMMENT '�����ȣ', -- �����ȣ
	member_id       INTEGER       NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	created_date    DATE          NOT NULL COMMENT '�ۼ���', -- �ۼ���
	contents        VARCHAR(2000) NOT NULL COMMENT '����' -- ����
)
COMMENT '������';

-- ������
ALTER TABLE review_replies
	ADD CONSTRAINT PK_review_replies -- ������ �⺻Ű
		PRIMARY KEY (
			review_reply_id -- �����۹�ȣ
		);

ALTER TABLE review_replies
	MODIFY COLUMN review_reply_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '�����۹�ȣ';

-- 1:1���ǰԽñ�
CREATE TABLE private_questions (
	private_question_id INTEGER       NOT NULL COMMENT '1:1���ǰԽñ۹�ȣ', -- 1:1���ǰԽñ۹�ȣ
	questIon_type       VARCHAR(255)  NOT NULL COMMENT '��������', -- ��������
	member_id           INTEGER       NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	created_date        DATE          NOT NULL COMMENT '�ۼ���', -- �ۼ���
	title               VARCHAR(255)  NOT NULL COMMENT '����', -- ����
	contents            VARCHAR(2000) NOT NULL COMMENT '����' -- ����
)
COMMENT '1:1���ǰԽñ�';

-- 1:1���ǰԽñ�
ALTER TABLE private_questions
	ADD CONSTRAINT PK_private_questions -- 1:1���ǰԽñ� �⺻Ű
		PRIMARY KEY (
			private_question_id -- 1:1���ǰԽñ۹�ȣ
		);

ALTER TABLE private_questions
	MODIFY COLUMN private_question_id INTEGER NOT NULL AUTO_INCREMENT COMMENT '1:1���ǰԽñ۹�ȣ';

-- ���ƿ�
CREATE TABLE likes (
	member_id  INTEGER NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	product_id INTEGER NOT NULL COMMENT '��ǰ��ȣ' -- ��ǰ��ȣ
)
COMMENT '���ƿ�';

-- ���ƿ�
ALTER TABLE likes
	ADD CONSTRAINT PK_likes -- ���ƿ� �⺻Ű
		PRIMARY KEY (
			member_id,  -- ȸ����ȣ
			product_id  -- ��ǰ��ȣ
		);

-- ��õ
CREATE TABLE recommends (
	boards_id INTEGER NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	member_id INTEGER NOT NULL COMMENT 'ȸ����ȣ' -- ȸ����ȣ
)
COMMENT '��õ';

-- ��õ
ALTER TABLE recommends
	ADD CONSTRAINT PK_recommends -- ��õ �⺻Ű
		PRIMARY KEY (
			boards_id, -- �Խ��ǹ�ȣ
			member_id  -- ȸ����ȣ
		);

-- �ֹ���ǰ
CREATE TABLE order_products (
	order_id   INTEGER NOT NULL COMMENT '�ֹ���ȣ', -- �ֹ���ȣ
	product_id INTEGER NOT NULL COMMENT '��ǰ��ȣ', -- ��ǰ��ȣ
	quantity   INTEGER NOT NULL COMMENT '����', -- ����
	price      INTEGER NOT NULL COMMENT '�ݾ�' -- �ݾ�
)
COMMENT '�ֹ���ǰ';

-- �ֹ���ǰ
ALTER TABLE order_products
	ADD CONSTRAINT PK_order_products -- �ֹ���ǰ �⺻Ű
		PRIMARY KEY (
			order_id,   -- �ֹ���ȣ
			product_id  -- ��ǰ��ȣ
		);

-- ������
CREATE TABLE mileages (
	member_id     INTEGER NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	order_id      INTEGER NOT NULL COMMENT '�ֹ���ȣ', -- �ֹ���ȣ
	used_flag     BOOLEAN NOT NULL COMMENT '���������', -- ���������
	used_date     DATE    NOT NULL COMMENT '����', -- ����
	mileage_point INTEGER NOT NULL COMMENT '������' -- ������
)
COMMENT '������';

-- ������
ALTER TABLE mileages
	ADD CONSTRAINT PK_mileages -- ������ �⺻Ű
		PRIMARY KEY (
			member_id, -- ȸ����ȣ
			order_id,  -- �ֹ���ȣ
			used_flag  -- ���������
		);

-- 1:1���Ǵ亯
CREATE TABLE private_answers (
	private_question_id INTEGER       NOT NULL COMMENT '1:1���ǰԽñ۹�ȣ', -- 1:1���ǰԽñ۹�ȣ
	created_date        DATE          NOT NULL COMMENT '�ۼ���', -- �ۼ���
	contents            VARCHAR(2000) NOT NULL COMMENT '����' -- ����
)
COMMENT '1:1���Ǵ亯';

-- 1:1���Ǵ亯
ALTER TABLE private_answers
	ADD CONSTRAINT PK_private_answers -- 1:1���Ǵ亯 �⺻Ű
		PRIMARY KEY (
			private_question_id -- 1:1���ǰԽñ۹�ȣ
		);

-- �ɼ��׸�
CREATE TABLE option_items (
	option_item_id      INTEGER      NOT NULL COMMENT '�ɼ��׸��ȣ', -- �ɼ��׸��ȣ
	options_id          INTEGER      NOT NULL COMMENT '�ɼǹ�ȣ', -- �ɼǹ�ȣ
	option_item_matters VARCHAR(255) NOT NULL COMMENT '�ɼ��׸����' -- �ɼ��׸����
)
COMMENT '�ɼ��׸�';

-- �ɼ��׸�
ALTER TABLE option_items
	ADD CONSTRAINT PK_option_items -- �ɼ��׸� �⺻Ű
		PRIMARY KEY (
			option_item_id -- �ɼ��׸��ȣ
		);

-- �Խ��Ǵ��
CREATE TABLE comments (
	comments_id  INTEGER       NOT NULL COMMENT '��۹�ȣ', -- ��۹�ȣ
	created_date DATE          NOT NULL COMMENT '�ۼ���', -- �ۼ���
	contents     VARCHAR(2000) NOT NULL COMMENT '����', -- ����
	member_id    INTEGER       NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	boards_id    INTEGER       NOT NULL COMMENT '�Խ��ǹ�ȣ' -- �Խ��ǹ�ȣ
)
COMMENT '�Խ��Ǵ��';

-- �Խ��Ǵ��
ALTER TABLE comments
	ADD CONSTRAINT PK_comments -- �Խ��Ǵ�� �⺻Ű
		PRIMARY KEY (
			comments_id -- ��۹�ȣ
		);

-- �Ǹ�ȸ��
ALTER TABLE sellers
	ADD CONSTRAINT FK_members_TO_sellers -- ȸ�� -> �Ǹ�ȸ��
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- �Һз�
ALTER TABLE groups
	ADD CONSTRAINT FK_categorys_TO_groups -- ��з� -> �Һз�
		FOREIGN KEY (
			category_id -- ��з���ȣ
		)
		REFERENCES categorys ( -- ��з�
			category_id -- ��з���ȣ
		);

-- ��ǰ
ALTER TABLE products
	ADD CONSTRAINT FK_sellers_TO_products -- �Ǹ�ȸ�� -> ��ǰ
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES sellers ( -- �Ǹ�ȸ��
			member_id -- ȸ����ȣ
		);

-- ��ǰ
ALTER TABLE products
	ADD CONSTRAINT FK_groups_TO_products -- �Һз� -> ��ǰ
		FOREIGN KEY (
			group_id -- �Һз���ȣ
		)
		REFERENCES groups ( -- �Һз�
			group_id -- �Һз���ȣ
		);

-- �Խñ��̹���
ALTER TABLE board_photos
	ADD CONSTRAINT FK_boards_TO_board_photos -- �Խ��� -> �Խñ��̹���
		FOREIGN KEY (
			boards_id -- �Խ��ǹ�ȣ
		)
		REFERENCES boards ( -- �Խ���
			boards_id -- �Խ��ǹ�ȣ
		);

-- �ֹ�
ALTER TABLE orders
	ADD CONSTRAINT FK_members_TO_orders -- ȸ�� -> �ֹ�
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- �Խ���
ALTER TABLE boards
	ADD CONSTRAINT FK_members_TO_boards -- ȸ�� -> �Խ���
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- ���
ALTER TABLE deliverys
	ADD CONSTRAINT FK_orders_TO_deliverys -- �ֹ� -> ���
		FOREIGN KEY (
			order_id -- �ֹ���ȣ
		)
		REFERENCES orders ( -- �ֹ�
			order_id -- �ֹ���ȣ
		);

-- ��ٱ��ϻ�ǰ
ALTER TABLE baskets
	ADD CONSTRAINT FK_members_TO_baskets -- ȸ�� -> ��ٱ��ϻ�ǰ
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- ��ٱ��ϻ�ǰ
ALTER TABLE baskets
	ADD CONSTRAINT FK_products_TO_baskets -- ��ǰ -> ��ٱ��ϻ�ǰ
		FOREIGN KEY (
			product_id -- ��ǰ��ȣ
		)
		REFERENCES products ( -- ��ǰ
			product_id -- ��ǰ��ȣ
		);

-- �ɼ�
ALTER TABLE options
	ADD CONSTRAINT FK_products_TO_options -- ��ǰ -> �ɼ�
		FOREIGN KEY (
			product_id -- ��ǰ��ȣ
		)
		REFERENCES products ( -- ��ǰ
			product_id -- ��ǰ��ȣ
		);

-- ����
ALTER TABLE reviews
	ADD CONSTRAINT FK_products_TO_reviews -- ��ǰ -> ����
		FOREIGN KEY (
			product_id -- ��ǰ��ȣ
		)
		REFERENCES products ( -- ��ǰ
			product_id -- ��ǰ��ȣ
		);

-- ����
ALTER TABLE reviews
	ADD CONSTRAINT FK_members_TO_reviews -- ȸ�� -> ����
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- �۰���������
ALTER TABLE exhibitions
	ADD CONSTRAINT FK_sellers_TO_exhibitions -- �Ǹ�ȸ�� -> �۰���������
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES sellers ( -- �Ǹ�ȸ��
			member_id -- ȸ����ȣ
		);

-- �����̹���
ALTER TABLE review_photos
	ADD CONSTRAINT FK_reviews_TO_review_photos -- ���� -> �����̹���
		FOREIGN KEY (
			review_id -- �����ȣ
		)
		REFERENCES reviews ( -- ����
			review_id -- �����ȣ
		);

-- ��ǰ�̹���
ALTER TABLE product_photos
	ADD CONSTRAINT FK_products_TO_product_photos -- ��ǰ -> ��ǰ�̹���
		FOREIGN KEY (
			product_id -- ��ǰ��ȣ
		)
		REFERENCES products ( -- ��ǰ
			product_id -- ��ǰ��ȣ
		);

-- ��ǰ����
ALTER TABLE product_questions
	ADD CONSTRAINT FK_members_TO_product_questions -- ȸ�� -> ��ǰ����
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- ��ǰ����
ALTER TABLE product_questions
	ADD CONSTRAINT FK_products_TO_product_questions -- ��ǰ -> ��ǰ����
		FOREIGN KEY (
			product_id -- ��ǰ��ȣ
		)
		REFERENCES products ( -- ��ǰ
			product_id -- ��ǰ��ȣ
		);

-- ������
ALTER TABLE review_replies
	ADD CONSTRAINT FK_reviews_TO_review_replies -- ���� -> ������
		FOREIGN KEY (
			review_id -- �����ȣ
		)
		REFERENCES reviews ( -- ����
			review_id -- �����ȣ
		);

-- ������
ALTER TABLE review_replies
	ADD CONSTRAINT FK_members_TO_review_replies -- ȸ�� -> ������
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- 1:1���ǰԽñ�
ALTER TABLE private_questions
	ADD CONSTRAINT FK_members_TO_private_questions -- ȸ�� -> 1:1���ǰԽñ�
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- ���ƿ�
ALTER TABLE likes
	ADD CONSTRAINT FK_members_TO_likes -- ȸ�� -> ���ƿ�
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- ���ƿ�
ALTER TABLE likes
	ADD CONSTRAINT FK_products_TO_likes -- ��ǰ -> ���ƿ�
		FOREIGN KEY (
			product_id -- ��ǰ��ȣ
		)
		REFERENCES products ( -- ��ǰ
			product_id -- ��ǰ��ȣ
		);

-- ��õ
ALTER TABLE recommends
	ADD CONSTRAINT FK_boards_TO_recommends -- �Խ��� -> ��õ
		FOREIGN KEY (
			boards_id -- �Խ��ǹ�ȣ
		)
		REFERENCES boards ( -- �Խ���
			boards_id -- �Խ��ǹ�ȣ
		);

-- ��õ
ALTER TABLE recommends
	ADD CONSTRAINT FK_members_TO_recommends -- ȸ�� -> ��õ
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- �ֹ���ǰ
ALTER TABLE order_products
	ADD CONSTRAINT FK_orders_TO_order_products -- �ֹ� -> �ֹ���ǰ
		FOREIGN KEY (
			order_id -- �ֹ���ȣ
		)
		REFERENCES orders ( -- �ֹ�
			order_id -- �ֹ���ȣ
		);

-- �ֹ���ǰ
ALTER TABLE order_products
	ADD CONSTRAINT FK_products_TO_order_products -- ��ǰ -> �ֹ���ǰ
		FOREIGN KEY (
			product_id -- ��ǰ��ȣ
		)
		REFERENCES products ( -- ��ǰ
			product_id -- ��ǰ��ȣ
		);

-- ������
ALTER TABLE mileages
	ADD CONSTRAINT FK_members_TO_mileages -- ȸ�� -> ������
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- ������
ALTER TABLE mileages
	ADD CONSTRAINT FK_orders_TO_mileages -- �ֹ� -> ������
		FOREIGN KEY (
			order_id -- �ֹ���ȣ
		)
		REFERENCES orders ( -- �ֹ�
			order_id -- �ֹ���ȣ
		);

-- 1:1���Ǵ亯
ALTER TABLE private_answers
	ADD CONSTRAINT FK_private_questions_TO_private_answers -- 1:1���ǰԽñ� -> 1:1���Ǵ亯
		FOREIGN KEY (
			private_question_id -- 1:1���ǰԽñ۹�ȣ
		)
		REFERENCES private_questions ( -- 1:1���ǰԽñ�
			private_question_id -- 1:1���ǰԽñ۹�ȣ
		);

-- �ɼ��׸�
ALTER TABLE option_items
	ADD CONSTRAINT FK_options_TO_option_items -- �ɼ� -> �ɼ��׸�
		FOREIGN KEY (
			options_id -- �ɼǹ�ȣ
		)
		REFERENCES options ( -- �ɼ�
			options_id -- �ɼǹ�ȣ
		);

-- �Խ��Ǵ��
ALTER TABLE comments
	ADD CONSTRAINT FK_members_TO_comments -- ȸ�� -> �Խ��Ǵ��
		FOREIGN KEY (
			member_id -- ȸ����ȣ
		)
		REFERENCES members ( -- ȸ��
			member_id -- ȸ����ȣ
		);

-- �Խ��Ǵ��
ALTER TABLE comments
	ADD CONSTRAINT FK_boards_TO_comments -- �Խ��� -> �Խ��Ǵ��
		FOREIGN KEY (
			boards_id -- �Խ��ǹ�ȣ
		)
		REFERENCES boards ( -- �Խ���
			boards_id -- �Խ��ǹ�ȣ
		);