require("dotenv").config();
const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();
async function main() {
  const client = await prisma.client.create({
    data: {
      client_name: "Anastasia",
      last_name: "Andrienko",
      email: "nasty@gmail.com",
      phone_number: "+380874563241",
    },
  });

  console.log(client);
}
main();
