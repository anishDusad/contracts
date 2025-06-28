contract GraphIQSaaS {
  address public owner;
  uint256 public deployFee = 0.01 ether;

  struct User {
      uint256 subgraphsDeployed;
      uint256 lastPaymentTime;
  }
  mapping(address => User) public users;

    event SubgraphDeployed(address indexed user, uint256 timestamp, string contractAddressIndexed);
    event FeeUpdated(uint256 newFee);
    event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }
    
