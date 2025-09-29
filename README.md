How to write and deploy contract:
    write .sol file
    write .ts file in ignition modules for deployment
    clean: npx hardhat clean
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

Mapping
    mapping(address => uint256) public myMap -> {addr1: 1}
    mapping(address => mapping(uint256 => bool)) public nestedMap -> {addr1: {1:true, 2: false}}
    value in map will be default value, not null
    set a map: myMap[_addr] = _i
    delete myMap[_addr]: set value to default value

Array
    default value
    push
    pop

Enum
    enum value will be uint

Structs

Data Locations - Storage, Memory and Calldata
    storage - variable state, stored on the blockchain
    memory - variable in memory, exists while a function is being called
    calldata - special data location contains function arguments
        ex: we have this variable: mapping(uint256 => MyStruct) myStructs; -> in function we can get myStruct in 2 ways:
            // get a struct from a mapping
            MyStruct storage myStruct = myStructs[1]; 
            // create a struct in memory
            MyStruct memory myMemStruct = MyStruct(0);

Inheritance
    ex: contract B is A
    can be multi-inheritance
    inheritance graph
    super() 

Visibility
    private: access inside the contract
    internal: access inside contract and inherited contracts
    public: access by any contracts and accounts
    external: can only be called by contracts and accounts
    note: variable is the same, but dont have EXTERNAL

Gas
    gas: number of cost gas
    gasPrice: price of 1 gas in wei
    gasLimit: limit gas user set
    fee: gas * gas Price
    1 native token = 10^18 wei

Merkle Tree

        ABCD
    AB       CD
    A B      C D

    leaf: A is leaf
    sibling node: B is sibling node
    proof: B, CD is proof

Payable:
    that means: can be receive Native Token

Fallback function: 
    fallback if call wrong or send Native token

Sending Ether:
        function sendViaTransfer(address payable _to) public {
            _to.transfer(msg.value);
        }
    
    -> this means send the msg.value from 'sender' to '_to'

