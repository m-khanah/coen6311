-- Table: public.UserDepartment

-- DROP TABLE IF EXISTS public."UserDepartment";

CREATE TABLE IF NOT EXISTS public."UserDepartment"
(
    "ID" integer NOT NULL DEFAULT nextval('"UserDepartment_ID_seq"'::regclass),
    "UserID" integer NOT NULL,
    "DepartmentID" integer NOT NULL,
    CONSTRAINT "UserDepartment_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT "UserDepartment" FOREIGN KEY ("DepartmentID")
        REFERENCES public."Department" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "UserDepartment_userid" FOREIGN KEY ("UserID")
        REFERENCES public."Users" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."UserDepartment"
    OWNER to root;