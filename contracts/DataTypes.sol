pragma solidity ^0.8.0;

/*
 * @title Solidity data types
 * @author Michael Solomon
 * @notice A simply smart contract to demonstrate simple data types available in Solidity
 *
 */

contract DataTypes {
    uint256 x = 9;
    int256 i = -68;
    uint8 j = 17;
    bool isEthereumCool = true;
    address owner = msg.sender; // msg.sender is the Ethereum address of the account that sent this transaction
    bytes32 bMsg = "hello";
    string sMsg = "hello";

    function getStateVariables()
        public
        view
        returns (
            uint256,
            int256,
            uint256,
            bool,
            address,
            bytes32,
            string memory
        )
    {
        return (x, i, j, isEthereumCool, owner, bMsg, sMsg);
    }

    function setbMsg(bytes32 newValue) private returns (bytes32) {
        bMsg = newValue;
    }
}
