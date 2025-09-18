How to write and deploy contract:
    write .sol file
    write .ts file in ignition modules for deployment
    compile: npx hardhat compile
    deploy & verify: npx hardhat ignition deploy ignition/modules/HelloWorld.ts --network sepolia --verify

Primitive data types (ex: bool public isActive = true)
    bool
    uint8, uint16, uint256
    int8, int16, int 256
    bytes1
    address

Variables
    local: inside function, not stored on blockchain
    state: outside function, stored on blockchain
    global: provide blockchain information (msg.sender)
    constant
    immutable: same as constant, but it can be set inside constructor or set value when declared only

Ether and Wei (currency)
    wei = 1 uint
    gwei = 10^9 wei
    ether = 10^9 gwei

Transaction fee + Gas
    gas: for example 1 transaction executed costs 21000 gas
    gas price = 30 gwei
    -> transaction fee = 21000 * 30 (gwei currency)
    gas limit: max gas user willing to use for the transaction

If/Else

For and While Loop