ALTER TABLE "lab_requests" RENAME COLUMN "handled_by_user_id" TO "handled_by";--> statement-breakpoint
ALTER TABLE "lab_requests" DROP CONSTRAINT "lab_requests_handled_by_user_id_users_id_fk";
--> statement-breakpoint
ALTER TABLE "class_groups" ALTER COLUMN "start_time" SET DATA TYPE varchar;--> statement-breakpoint
ALTER TABLE "comments" ADD COLUMN "request_id" integer;--> statement-breakpoint
ALTER TABLE "experiment_wastes" ADD COLUMN "container" varchar;--> statement-breakpoint
ALTER TABLE "experiment_wastes" ADD COLUMN "treatment" varchar DEFAULT 'Neutralizar y verter al drenaje';--> statement-breakpoint
ALTER TABLE "experiments" ADD COLUMN "description" text NOT NULL;--> statement-breakpoint
ALTER TABLE "labs" ADD COLUMN "is_active" boolean DEFAULT true NOT NULL;--> statement-breakpoint
ALTER TABLE "wastes" ADD COLUMN "container" varchar;--> statement-breakpoint
ALTER TABLE "wastes" ADD COLUMN "treatment" varchar DEFAULT 'Neutralizar y verter al drenaje';--> statement-breakpoint
ALTER TABLE "comments" ADD CONSTRAINT "comments_request_id_lab_requests_id_fk" FOREIGN KEY ("request_id") REFERENCES "public"."lab_requests"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "lab_requests" ADD CONSTRAINT "lab_requests_handled_by_users_id_fk" FOREIGN KEY ("handled_by") REFERENCES "public"."users"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "request_wastes" DROP COLUMN "quantity";--> statement-breakpoint
ALTER TABLE "request_wastes" DROP COLUMN "unit";--> statement-breakpoint
ALTER TABLE "request_reagents" DROP COLUMN "quantity";--> statement-breakpoint
ALTER TABLE "request_reagents" DROP COLUMN "unit";