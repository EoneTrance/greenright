-- 회원
DROP TABLE IF EXISTS members RESTRICT;

-- 판매회원
DROP TABLE IF EXISTS sellers RESTRICT;

-- 대분류
DROP TABLE IF EXISTS categorys RESTRICT;

-- 소분류
DROP TABLE IF EXISTS groups RESTRICT;

-- 상품
DROP TABLE IF EXISTS products RESTRICT;

-- 게시글이미지
DROP TABLE IF EXISTS board_photos RESTRICT;

-- 주문
DROP TABLE IF EXISTS orders RESTRICT;

-- 게시판
DROP TABLE IF EXISTS boards RESTRICT;

-- 배송
DROP TABLE IF EXISTS deliverys RESTRICT;

-- 장바구니상품
DROP TABLE IF EXISTS baskets RESTRICT;

-- 옵션
DROP TABLE IF EXISTS options RESTRICT;

-- FAQ
DROP TABLE IF EXISTS faqs RESTRICT;

-- 리뷰
DROP TABLE IF EXISTS reviews RESTRICT;

-- 작가개인전시
DROP TABLE IF EXISTS exhibitions RESTRICT;

-- 리뷰이미지
DROP TABLE IF EXISTS review_photos RESTRICT;

-- 상품이미지
DROP TABLE IF EXISTS product_photos RESTRICT;

-- 상품문의
DROP TABLE IF EXISTS product_questions RESTRICT;

-- 리뷰댓글
DROP TABLE IF EXISTS review_replies RESTRICT;

-- 1:1문의게시글
DROP TABLE IF EXISTS private_questions RESTRICT;

-- 좋아요
DROP TABLE IF EXISTS likes RESTRICT;

-- 추천
DROP TABLE IF EXISTS recommends RESTRICT;

-- 주문상품
DROP TABLE IF EXISTS order_products RESTRICT;

-- 적립금
DROP TABLE IF EXISTS mileages RESTRICT;

-- 1:1문의답변
DROP TABLE IF EXISTS private_answers RESTRICT;

-- 옵션항목
DROP TABLE IF EXISTS option_items RESTRICT;

-- 게시판댓글
DROP TABLE IF EXISTS comments RESTRICT;

-- 회원
CREATE TABLE members (
  member_id          INTEGER      NOT NULL, -- 회원번호
  member_class       INTEGER      NOT NULL DEFAULT 1, -- 회원구분
  registered_date    DATE         NOT NULL, -- 가입일
  id                 VARCHAR(20)  NOT NULL, -- 아이디
  password           VARCHAR(255) NOT NULL, -- 비밀번호
  certification_flag BOOLEAN      NOT NULL DEFAULT 0, -- 인증여부
  cell_phone         VARCHAR(50)  NOT NULL, -- 휴대전화
  nickname           VARCHAR(20)  NULL,     -- 닉네임
  email              VARCHAR(40)  NOT NULL, -- 이메일
  postal_code        VARCHAR(10)  NOT NULL, -- 우편번호
  default_address    VARCHAR(255) NOT NULL, -- 기본주소
  detail_address     VARCHAR(255) NOT NULL, -- 상세주소
  question           VARCHAR(255) NOT NULL, -- 비밀번호찾기질문
  answer             VARCHAR(255) NOT NULL, -- 비밀번호찾기답변
  authkey            VARCHAR(255) NULL,     -- 회원가입인증키
  password_authkey   VARCHAR(255) NULL      -- 비밀번호인증키
);

-- 회원
ALTER TABLE members
  ADD CONSTRAINT PK_members -- 회원 기본키
    PRIMARY KEY (
      member_id -- 회원번호
    );

-- 회원 유니크 인덱스
CREATE UNIQUE INDEX UIX_members
  ON members ( -- 회원
    id ASC -- 아이디
  );

-- 회원 유니크 인덱스2
CREATE UNIQUE INDEX UIX_members2
  ON members ( -- 회원
    cell_phone ASC -- 휴대전화
  );

-- 회원 유니크 인덱스3
CREATE UNIQUE INDEX UIX_members3
  ON members ( -- 회원
    email ASC -- 이메일
  );

-- 회원 유니크 인덱스4
CREATE UNIQUE INDEX UIX_members4
  ON members ( -- 회원
    nickname ASC -- 닉네임
  );

ALTER TABLE members
  MODIFY COLUMN member_id INTEGER NOT NULL AUTO_INCREMENT;

-- 판매회원
CREATE TABLE sellers (
  member_id      INTEGER     NOT NULL, -- 회원번호
  bank_name      VARCHAR(50) NOT NULL, -- 은행명
  account_num    VARCHAR(50) NOT NULL, -- 판매자계좌번호
  account_holder VARCHAR(50) NOT NULL, -- 예금주 명
  tel            VARCHAR(50) NOT NULL, -- 고객응대전화번호
  point          INTEGER     NOT NULL DEFAULT 0 -- 판매포인트
);

-- 판매회원
ALTER TABLE sellers
  ADD CONSTRAINT PK_sellers -- 판매회원 기본키
    PRIMARY KEY (
      member_id -- 회원번호
    );

-- 판매회원 유니크 인덱스
CREATE UNIQUE INDEX UIX_sellers
  ON sellers ( -- 판매회원
    account_num ASC -- 판매자계좌번호
  );

-- 판매회원 유니크 인덱스2
CREATE UNIQUE INDEX UIX_sellers2
  ON sellers ( -- 판매회원
    tel ASC -- 고객응대전화번호
  );

-- 대분류
CREATE TABLE categorys (
  category_id   INTEGER      NOT NULL, -- 대분류번호
  category_name VARCHAR(255) NOT NULL  -- 카테고리
);

-- 대분류
ALTER TABLE categorys
  ADD CONSTRAINT PK_categorys -- 대분류 기본키
    PRIMARY KEY (
      category_id -- 대분류번호
    );

-- 대분류 유니크 인덱스
CREATE UNIQUE INDEX UIX_categorys
  ON categorys ( -- 대분류
    category_name ASC -- 카테고리
  );

ALTER TABLE categorys
  MODIFY COLUMN category_id INTEGER NOT NULL AUTO_INCREMENT;

-- 소분류
CREATE TABLE groups (
  group_id    INTEGER      NOT NULL, -- 소분류번호
  category_id INTEGER      NOT NULL, -- 대분류번호
  group_name  VARCHAR(255) NOT NULL  -- 소분류명
);

-- 소분류
ALTER TABLE groups
  ADD CONSTRAINT PK_groups -- 소분류 기본키
    PRIMARY KEY (
      group_id -- 소분류번호
    );

-- 소분류 유니크 인덱스
CREATE UNIQUE INDEX UIX_groups
  ON groups ( -- 소분류
    group_name ASC -- 소분류명
  );

ALTER TABLE groups
  MODIFY COLUMN group_id INTEGER NOT NULL AUTO_INCREMENT;

-- 상품
CREATE TABLE products (
  product_id      INTEGER      NOT NULL, -- 상품번호
  group_id        INTEGER      NOT NULL, -- 소분류번호
  member_id       INTEGER      NOT NULL, -- 회원번호
  registered_date DATE         NOT NULL, -- 등록일
  diy_flag        BOOLEAN      NOT NULL, -- 직접제작여부
  price           INTEGER      NOT NULL, -- 가격
  product_name    VARCHAR(255) NOT NULL, -- 상품명
  description     VARCHAR(255) NOT NULL, -- 상품설명
  expiration_date DATE         NULL,     -- 유통기한
  origin          VARCHAR(255) NULL      -- 원산지
);

-- 상품
ALTER TABLE products
  ADD CONSTRAINT PK_products -- 상품 기본키
    PRIMARY KEY (
      product_id -- 상품번호
    );

ALTER TABLE products
  MODIFY COLUMN product_id INTEGER NOT NULL AUTO_INCREMENT;

-- 게시글이미지
CREATE TABLE board_photos (
  board_photo_id INTEGER      NOT NULL, -- 이미지번호
  boards_id      INTEGER      NOT NULL, -- 게시판번호
  photo_path     VARCHAR(255) NOT NULL  -- 이미지경로
);

-- 게시글이미지
ALTER TABLE board_photos
  ADD CONSTRAINT PK_board_photos -- 게시글이미지 기본키
    PRIMARY KEY (
      board_photo_id -- 이미지번호
    );

-- 게시글이미지 유니크 인덱스
CREATE UNIQUE INDEX UIX_board_photos
  ON board_photos ( -- 게시글이미지
    photo_path ASC -- 이미지경로
  );

ALTER TABLE board_photos
  MODIFY COLUMN board_photo_id INTEGER NOT NULL AUTO_INCREMENT;

-- 주문
CREATE TABLE orders (
  order_id     INTEGER      NOT NULL, -- 주문번호
  member_id    INTEGER      NOT NULL, -- 회원번호
  payment_date DATE         NOT NULL, -- 결제일자
  payment_flag BOOLEAN      NOT NULL, -- 결제상태
  payment_way  VARCHAR(255) NOT NULL  -- 결제방법
);

-- 주문
ALTER TABLE orders
  ADD CONSTRAINT PK_orders -- 주문 기본키
    PRIMARY KEY (
      order_id -- 주문번호
    );

ALTER TABLE orders
  MODIFY COLUMN order_id INTEGER NOT NULL AUTO_INCREMENT;

-- 게시판
CREATE TABLE boards (
  boards_id    INTEGER       NOT NULL, -- 게시판번호
  member_id    INTEGER       NOT NULL, -- 회원번호
  created_date DATE          NOT NULL, -- 작성일
  title        VARCHAR(255)  NOT NULL, -- 제목
  contents     VARCHAR(2000) NOT NULL, -- 내용
  vw_count     INTEGER       NULL      -- 조회수
);

-- 게시판
ALTER TABLE boards
  ADD CONSTRAINT PK_boards -- 게시판 기본키
    PRIMARY KEY (
      boards_id -- 게시판번호
    );

ALTER TABLE boards
  MODIFY COLUMN boards_id INTEGER NOT NULL AUTO_INCREMENT;

-- 배송
CREATE TABLE deliverys (
  delivery_id         INTEGER      NOT NULL, -- 배송번호
  order_id            INTEGER      NULL,     -- 주문번호
  invoice_num         VARCHAR(255) NOT NULL, -- 송장번호
  delivery_date       DATE         NOT NULL, -- 배송일자
  delivery_flag       BOOLEAN      NOT NULL DEFAULT 0, -- 배송상태
  courier_name        VARCHAR(50)  NOT NULL, -- 택배사명
  reciever_name       VARCHAR(50)  NOT NULL, -- 수취인명
  delivery_address    VARCHAR(255) NOT NULL, -- 배송지주소
  reciever_cell_phone VARCHAR(50)  NOT NULL, -- 수취인휴대전화
  reciever_tel        VARCHAR(50)  NULL,     -- 수취인일반전화
  reciever_email      VARCHAR(40)  NULL,     -- 수취인이메일
  reciever_request    VARCHAR(255) NULL      -- 배송시요청사항
);

-- 배송
ALTER TABLE deliverys
  ADD CONSTRAINT PK_deliverys -- 배송 기본키
    PRIMARY KEY (
      delivery_id -- 배송번호
    );

-- 배송 유니크 인덱스
CREATE UNIQUE INDEX UIX_deliverys
  ON deliverys ( -- 배송
    invoice_num ASC -- 송장번호
  );

ALTER TABLE deliverys
  MODIFY COLUMN delivery_id INTEGER NOT NULL AUTO_INCREMENT;

-- 장바구니상품
CREATE TABLE baskets (
  member_id       INTEGER NOT NULL, -- 회원번호
  option_item_id  INTEGER NOT NULL, -- 옵션항목번호
  registered_date DATE    NOT NULL, -- 등록일
  quantity        INTEGER NOT NULL  -- 수량
);

-- 장바구니상품
ALTER TABLE baskets
  ADD CONSTRAINT PK_baskets -- 장바구니상품 기본키
    PRIMARY KEY (
      member_id,      -- 회원번호
      option_item_id  -- 옵션항목번호
    );

-- 옵션
CREATE TABLE options (
  options_id   INTEGER      NOT NULL, -- 옵션번호
  product_id   INTEGER      NOT NULL, -- 상품번호
  options_name VARCHAR(255) NOT NULL  -- 옵션이름
);

-- 옵션
ALTER TABLE options
  ADD CONSTRAINT PK_options -- 옵션 기본키
    PRIMARY KEY (
      options_id -- 옵션번호
    );

ALTER TABLE options
  MODIFY COLUMN options_id INTEGER NOT NULL AUTO_INCREMENT;

-- FAQ
CREATE TABLE faqs (
  faq_id        INTEGER       NOT NULL, -- FAQ번호
  question_type VARCHAR(255)  NOT NULL, -- 질문유형
  title         VARCHAR(255)  NOT NULL, -- 제목
  contents      VARCHAR(2000) NOT NULL  -- 내용
);

-- FAQ
ALTER TABLE faqs
  ADD CONSTRAINT PK_faqs -- FAQ 기본키
    PRIMARY KEY (
      faq_id -- FAQ번호
    );

-- 리뷰
CREATE TABLE reviews (
  review_id    INTEGER       NOT NULL, -- 리뷰번호
  product_id   INTEGER       NOT NULL, -- 상품번호
  member_id    INTEGER       NOT NULL, -- 회원번호
  created_date DATE          NOT NULL, -- 작성일
  rating       INTEGER       NOT NULL, -- 평점
  title        VARCHAR(255)  NOT NULL, -- 리뷰제목
  contents     VARCHAR(2000) NOT NULL  -- 리뷰내용
);

-- 리뷰
ALTER TABLE reviews
  ADD CONSTRAINT PK_reviews -- 리뷰 기본키
    PRIMARY KEY (
      review_id -- 리뷰번호
    );

ALTER TABLE reviews
  MODIFY COLUMN review_id INTEGER NOT NULL AUTO_INCREMENT;

-- 작가개인전시
CREATE TABLE exhibitions (
  member_id INTEGER     NOT NULL, -- 회원번호
  name      VARCHAR(50) NOT NULL  -- 작가명
);

-- 작가개인전시
ALTER TABLE exhibitions
  ADD CONSTRAINT PK_exhibitions -- 작가개인전시 기본키
    PRIMARY KEY (
      member_id -- 회원번호
    );

-- 작가개인전시 유니크 인덱스
CREATE UNIQUE INDEX UIX_exhibitions
  ON exhibitions ( -- 작가개인전시
    name ASC -- 작가명
  );

-- 리뷰이미지
CREATE TABLE review_photos (
  review_photo_id INTEGER      NOT NULL, -- 리뷰이미지번호
  review_id       INTEGER      NOT NULL, -- 리뷰번호
  photo_path      VARCHAR(255) NOT NULL  -- 이미지경로
);

-- 리뷰이미지
ALTER TABLE review_photos
  ADD CONSTRAINT PK_review_photos -- 리뷰이미지 기본키
    PRIMARY KEY (
      review_photo_id -- 리뷰이미지번호
    );

-- 리뷰이미지 유니크 인덱스
CREATE UNIQUE INDEX UIX_review_photos
  ON review_photos ( -- 리뷰이미지
    photo_path ASC -- 이미지경로
  );

ALTER TABLE review_photos
  MODIFY COLUMN review_photo_id INTEGER NOT NULL AUTO_INCREMENT;

-- 상품이미지
CREATE TABLE product_photos (
  product_photo_id INTEGER      NOT NULL, -- 상품이미지번호
  product_id       INTEGER      NOT NULL, -- 상품번호
  photo_path       VARCHAR(255) NOT NULL, -- 이미지경로
  main_photo_flag  BOOLEAN      NOT NULL  -- 대표사진여부
);

-- 상품이미지
ALTER TABLE product_photos
  ADD CONSTRAINT PK_product_photos -- 상품이미지 기본키
    PRIMARY KEY (
      product_photo_id -- 상품이미지번호
    );

-- 상품이미지 유니크 인덱스
CREATE UNIQUE INDEX UIX_product_photos
  ON product_photos ( -- 상품이미지
    photo_path ASC -- 이미지경로
  );

ALTER TABLE product_photos
  MODIFY COLUMN product_photo_id INTEGER NOT NULL AUTO_INCREMENT;

-- 상품문의
CREATE TABLE product_questions (
  product_question_id INTEGER       NOT NULL, -- 상품문의번호
  member_id           INTEGER       NOT NULL, -- 회원번호
  product_id          INTEGER       NOT NULL, -- 상품번호
  created_date        DATE          NOT NULL, -- 작성일
  secret_flag         BOOLEAN       NOT NULL, -- 비밀여부
  title               VARCHAR(255)  NOT NULL, -- 상품문의제목
  contents            VARCHAR(2000) NOT NULL  -- 상품문의내용
);

-- 상품문의
ALTER TABLE product_questions
  ADD CONSTRAINT PK_product_questions -- 상품문의 기본키
    PRIMARY KEY (
      product_question_id -- 상품문의번호
    );

ALTER TABLE product_questions
  MODIFY COLUMN product_question_id INTEGER NOT NULL AUTO_INCREMENT;

-- 리뷰댓글
CREATE TABLE review_replies (
  review_reply_id INTEGER       NOT NULL, -- 리뷰댓글번호
  review_id       INTEGER       NOT NULL, -- 리뷰번호
  member_id       INTEGER       NOT NULL, -- 회원번호
  created_date    DATE          NOT NULL, -- 작성일
  contents        VARCHAR(2000) NOT NULL  -- 내용
);

-- 리뷰댓글
ALTER TABLE review_replies
  ADD CONSTRAINT PK_review_replies -- 리뷰댓글 기본키
    PRIMARY KEY (
      review_reply_id -- 리뷰댓글번호
    );

ALTER TABLE review_replies
  MODIFY COLUMN review_reply_id INTEGER NOT NULL AUTO_INCREMENT;

-- 1:1문의게시글
CREATE TABLE private_questions (
  private_question_id INTEGER       NOT NULL, -- 1:1문의게시글번호
  questIon_type       VARCHAR(255)  NOT NULL, -- 문의유형
  member_id           INTEGER       NOT NULL, -- 회원번호
  created_date        DATE          NOT NULL, -- 작성일
  title               VARCHAR(255)  NOT NULL, -- 제목
  contents            VARCHAR(2000) NOT NULL  -- 내용
);

-- 1:1문의게시글
ALTER TABLE private_questions
  ADD CONSTRAINT PK_private_questions -- 1:1문의게시글 기본키
    PRIMARY KEY (
      private_question_id -- 1:1문의게시글번호
    );

ALTER TABLE private_questions
  MODIFY COLUMN private_question_id INTEGER NOT NULL AUTO_INCREMENT;

-- 좋아요
CREATE TABLE likes (
  member_id  INTEGER NOT NULL, -- 회원번호
  product_id INTEGER NOT NULL  -- 상품번호
);

-- 좋아요
ALTER TABLE likes
  ADD CONSTRAINT PK_likes -- 좋아요 기본키
    PRIMARY KEY (
      member_id,  -- 회원번호
      product_id  -- 상품번호
    );

-- 추천
CREATE TABLE recommends (
  boards_id INTEGER NOT NULL, -- 게시판번호
  member_id INTEGER NOT NULL  -- 회원번호
);

-- 추천
ALTER TABLE recommends
  ADD CONSTRAINT PK_recommends -- 추천 기본키
    PRIMARY KEY (
      boards_id, -- 게시판번호
      member_id  -- 회원번호
    );

-- 주문상품
CREATE TABLE order_products (
  order_id       INTEGER NOT NULL, -- 주문번호
  option_item_id INTEGER NOT NULL, -- 옵션항목번호
  quantity       INTEGER NOT NULL, -- 수량
  price          INTEGER NOT NULL  -- 금액
);

-- 주문상품
ALTER TABLE order_products
  ADD CONSTRAINT PK_order_products -- 주문상품 기본키
    PRIMARY KEY (
      order_id,       -- 주문번호
      option_item_id  -- 옵션항목번호
    );

-- 적립금
CREATE TABLE mileages (
  member_id     INTEGER NOT NULL, -- 회원번호
  order_id      INTEGER NOT NULL, -- 주문번호
  used_flag     BOOLEAN NOT NULL, -- 입출금유형
  used_date     DATE    NOT NULL, -- 일자
  mileage_point INTEGER NOT NULL  -- 적립금
);

-- 적립금
ALTER TABLE mileages
  ADD CONSTRAINT PK_mileages -- 적립금 기본키
    PRIMARY KEY (
      member_id, -- 회원번호
      order_id,  -- 주문번호
      used_flag  -- 입출금유형
    );

-- 1:1문의답변
CREATE TABLE private_answers (
  private_question_id INTEGER       NOT NULL, -- 1:1문의게시글번호
  created_date        DATE          NOT NULL, -- 작성일
  contents            VARCHAR(2000) NOT NULL  -- 내용
);

-- 1:1문의답변
ALTER TABLE private_answers
  ADD CONSTRAINT PK_private_answers -- 1:1문의답변 기본키
    PRIMARY KEY (
      private_question_id -- 1:1문의게시글번호
    );

-- 옵션항목
CREATE TABLE option_items (
  option_item_id      INTEGER      NOT NULL, -- 옵션항목번호
  options_id          INTEGER      NOT NULL, -- 옵션번호
  option_item_matters VARCHAR(255) NOT NULL, -- 옵션항목사항
  options_price       INTEGER      NOT NULL, -- 옵션가격
  options_quantity    INTEGER      NOT NULL  -- 옵션수량
);

-- 옵션항목
ALTER TABLE option_items
  ADD CONSTRAINT PK_option_items -- 옵션항목 기본키
    PRIMARY KEY (
      option_item_id -- 옵션항목번호
    );

-- 게시판댓글
CREATE TABLE comments (
  comments_id  INTEGER       NOT NULL, -- 댓글번호
  created_date DATE          NOT NULL, -- 작성일
  contents     VARCHAR(2000) NOT NULL, -- 내용
  member_id    INTEGER       NOT NULL, -- 회원번호
  boards_id    INTEGER       NOT NULL  -- 게시판번호
);

-- 게시판댓글
ALTER TABLE comments
  ADD CONSTRAINT PK_comments -- 게시판댓글 기본키
    PRIMARY KEY (
      comments_id -- 댓글번호
    );

-- 판매회원
ALTER TABLE sellers
  ADD CONSTRAINT FK_members_TO_sellers -- 회원 -> 판매회원
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 소분류
ALTER TABLE groups
  ADD CONSTRAINT FK_categorys_TO_groups -- 대분류 -> 소분류
    FOREIGN KEY (
      category_id -- 대분류번호
    )
    REFERENCES categorys ( -- 대분류
      category_id -- 대분류번호
    );

-- 상품
ALTER TABLE products
  ADD CONSTRAINT FK_sellers_TO_products -- 판매회원 -> 상품
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES sellers ( -- 판매회원
      member_id -- 회원번호
    );

-- 상품
ALTER TABLE products
  ADD CONSTRAINT FK_groups_TO_products -- 소분류 -> 상품
    FOREIGN KEY (
      group_id -- 소분류번호
    )
    REFERENCES groups ( -- 소분류
      group_id -- 소분류번호
    );

-- 게시글이미지
ALTER TABLE board_photos
  ADD CONSTRAINT FK_boards_TO_board_photos -- 게시판 -> 게시글이미지
    FOREIGN KEY (
      boards_id -- 게시판번호
    )
    REFERENCES boards ( -- 게시판
      boards_id -- 게시판번호
    );

-- 주문
ALTER TABLE orders
  ADD CONSTRAINT FK_members_TO_orders -- 회원 -> 주문
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 게시판
ALTER TABLE boards
  ADD CONSTRAINT FK_members_TO_boards -- 회원 -> 게시판
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 배송
ALTER TABLE deliverys
  ADD CONSTRAINT FK_orders_TO_deliverys -- 주문 -> 배송
    FOREIGN KEY (
      order_id -- 주문번호
    )
    REFERENCES orders ( -- 주문
      order_id -- 주문번호
    );

-- 장바구니상품
ALTER TABLE baskets
  ADD CONSTRAINT FK_members_TO_baskets -- 회원 -> 장바구니상품
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 장바구니상품
ALTER TABLE baskets
  ADD CONSTRAINT FK_option_items_TO_baskets -- 옵션항목 -> 장바구니상품
    FOREIGN KEY (
      option_item_id -- 옵션항목번호
    )
    REFERENCES option_items ( -- 옵션항목
      option_item_id -- 옵션항목번호
    );

-- 옵션
ALTER TABLE options
  ADD CONSTRAINT FK_products_TO_options -- 상품 -> 옵션
    FOREIGN KEY (
      product_id -- 상품번호
    )
    REFERENCES products ( -- 상품
      product_id -- 상품번호
    );

-- 리뷰
ALTER TABLE reviews
  ADD CONSTRAINT FK_products_TO_reviews -- 상품 -> 리뷰
    FOREIGN KEY (
      product_id -- 상품번호
    )
    REFERENCES products ( -- 상품
      product_id -- 상품번호
    );

-- 리뷰
ALTER TABLE reviews
  ADD CONSTRAINT FK_members_TO_reviews -- 회원 -> 리뷰
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 작가개인전시
ALTER TABLE exhibitions
  ADD CONSTRAINT FK_sellers_TO_exhibitions -- 판매회원 -> 작가개인전시
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES sellers ( -- 판매회원
      member_id -- 회원번호
    );

-- 리뷰이미지
ALTER TABLE review_photos
  ADD CONSTRAINT FK_reviews_TO_review_photos -- 리뷰 -> 리뷰이미지
    FOREIGN KEY (
      review_id -- 리뷰번호
    )
    REFERENCES reviews ( -- 리뷰
      review_id -- 리뷰번호
    );

-- 상품이미지
ALTER TABLE product_photos
  ADD CONSTRAINT FK_products_TO_product_photos -- 상품 -> 상품이미지
    FOREIGN KEY (
      product_id -- 상품번호
    )
    REFERENCES products ( -- 상품
      product_id -- 상품번호
    );

-- 상품문의
ALTER TABLE product_questions
  ADD CONSTRAINT FK_members_TO_product_questions -- 회원 -> 상품문의
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 상품문의
ALTER TABLE product_questions
  ADD CONSTRAINT FK_products_TO_product_questions -- 상품 -> 상품문의
    FOREIGN KEY (
      product_id -- 상품번호
    )
    REFERENCES products ( -- 상품
      product_id -- 상품번호
    );

-- 리뷰댓글
ALTER TABLE review_replies
  ADD CONSTRAINT FK_reviews_TO_review_replies -- 리뷰 -> 리뷰댓글
    FOREIGN KEY (
      review_id -- 리뷰번호
    )
    REFERENCES reviews ( -- 리뷰
      review_id -- 리뷰번호
    );

-- 리뷰댓글
ALTER TABLE review_replies
  ADD CONSTRAINT FK_members_TO_review_replies -- 회원 -> 리뷰댓글
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 1:1문의게시글
ALTER TABLE private_questions
  ADD CONSTRAINT FK_members_TO_private_questions -- 회원 -> 1:1문의게시글
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 좋아요
ALTER TABLE likes
  ADD CONSTRAINT FK_members_TO_likes -- 회원 -> 좋아요
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 좋아요
ALTER TABLE likes
  ADD CONSTRAINT FK_products_TO_likes -- 상품 -> 좋아요
    FOREIGN KEY (
      product_id -- 상품번호
    )
    REFERENCES products ( -- 상품
      product_id -- 상품번호
    );

-- 추천
ALTER TABLE recommends
  ADD CONSTRAINT FK_boards_TO_recommends -- 게시판 -> 추천
    FOREIGN KEY (
      boards_id -- 게시판번호
    )
    REFERENCES boards ( -- 게시판
      boards_id -- 게시판번호
    );

-- 추천
ALTER TABLE recommends
  ADD CONSTRAINT FK_members_TO_recommends -- 회원 -> 추천
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 주문상품
ALTER TABLE order_products
  ADD CONSTRAINT FK_orders_TO_order_products -- 주문 -> 주문상품
    FOREIGN KEY (
      order_id -- 주문번호
    )
    REFERENCES orders ( -- 주문
      order_id -- 주문번호
    );

-- 주문상품
ALTER TABLE order_products
  ADD CONSTRAINT FK_option_items_TO_order_products -- 옵션항목 -> 주문상품
    FOREIGN KEY (
      option_item_id -- 옵션항목번호
    )
    REFERENCES option_items ( -- 옵션항목
      option_item_id -- 옵션항목번호
    );

-- 적립금
ALTER TABLE mileages
  ADD CONSTRAINT FK_members_TO_mileages -- 회원 -> 적립금
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 적립금
ALTER TABLE mileages
  ADD CONSTRAINT FK_orders_TO_mileages -- 주문 -> 적립금
    FOREIGN KEY (
      order_id -- 주문번호
    )
    REFERENCES orders ( -- 주문
      order_id -- 주문번호
    );

-- 1:1문의답변
ALTER TABLE private_answers
  ADD CONSTRAINT FK_private_questions_TO_private_answers -- 1:1문의게시글 -> 1:1문의답변
    FOREIGN KEY (
      private_question_id -- 1:1문의게시글번호
    )
    REFERENCES private_questions ( -- 1:1문의게시글
      private_question_id -- 1:1문의게시글번호
    );

-- 옵션항목
ALTER TABLE option_items
  ADD CONSTRAINT FK_options_TO_option_items -- 옵션 -> 옵션항목
    FOREIGN KEY (
      options_id -- 옵션번호
    )
    REFERENCES options ( -- 옵션
      options_id -- 옵션번호
    );

-- 게시판댓글
ALTER TABLE comments
  ADD CONSTRAINT FK_members_TO_comments -- 회원 -> 게시판댓글
    FOREIGN KEY (
      member_id -- 회원번호
    )
    REFERENCES members ( -- 회원
      member_id -- 회원번호
    );

-- 게시판댓글
ALTER TABLE comments
  ADD CONSTRAINT FK_boards_TO_comments -- 게시판 -> 게시판댓글
    FOREIGN KEY (
      boards_id -- 게시판번호
    )
    REFERENCES boards ( -- 게시판
      boards_id -- 게시판번호
    );