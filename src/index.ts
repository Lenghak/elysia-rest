import { swagger } from "@elysiajs/swagger";
import { Elysia } from "elysia";

const app = new Elysia()
	.use(swagger())
	.get("/", () => "Hello Elysia")
	.listen(4000);
