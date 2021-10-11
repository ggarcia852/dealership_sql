CREATE TABLE "sales_person" (
  "employee_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  PRIMARY KEY ("employee_id")
);

CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "address" VARCHAR(100),
  "phone_number" VARCHAR(15),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "service_ticket" (
  "service_id" SERIAL,
  "vin_number" VARCHAR(50),
  "customer_id" INTEGER,
  "mechanic_id" INTEGER,
  "service_date" DATE,
  "parts_name" VARCHAR(50),
  "price" NUMERIC(6,2),
  PRIMARY KEY ("service_id"),
  CONSTRAINT "FK_service_ticket.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customer"("customer_id")
);

CREATE TABLE "mechanic" (
  "mechainc_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  PRIMARY KEY ("mechainc_id")
);

CREATE TABLE "invoice" (
  "invoice_id" SERIAL,
  "customer_id" INTEGER,
  "employee_id" INTEGER,
  "lot_id" INTEGER,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_invoice.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "customer"("customer_id"),
  CONSTRAINT "FK_invoice.employee_id"
    FOREIGN KEY ("employee_id")
      REFERENCES "sales_person"("employee_id")
);

CREATE TABLE "car_inventory" (
  "lot_id" SERIAL,
  "vin_number" VARCHAR(50),
  "make" VARCHAR(50),
  "model" VARCHAR(50),
  "year" VARCHAR(50),
  "car_price" NUMERIC(7,2),
  PRIMARY KEY ("lot_id")
);

