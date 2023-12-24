import { createClient } from "@supabase/supabase-js";
import type { Database } from "./generated/database";

const url = "http://127.0.0.1:54321"
const key = "your-key-here"

const client = createClient<Database>(url, key);

async function getData() {
    const { data, error } = await client
        .from("tenants")
        .select("*, users(*, something(*))")
    
    if (error) {
        console.error(error);
        return;
    }
    
    console.log('%o', data);
}

function main () {
    getData()
}

main()
