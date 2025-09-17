import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("HelloWorldModule", (m) => {
  const helloWorld = m.contract("HelloWorld");

  // Optionally set a custom greeting after deployment
  m.call(helloWorld, "setGreeting", ["Hello from Hardhat Ignition!"]);

  return { helloWorld };
});
