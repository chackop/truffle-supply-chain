pragma solidity ^0.8.0;

/*
 * @title Solidity data types
 * @author Michael Solomon
 * @notice A simply smart contract to demonstrate simple data types available in Solidity
 *
 */

contract FlowControl {
    function calcDozenDiscountIF(uint256 purchaseQty)
        public
        pure
        returns (bool)
    {
        bool giveDozenPrice = false;

        if (purchaseQty >= 12) {
            giveDozenPrice = true;
        } else {
            giveDozenPrice = false;
        }

        return (giveDozenPrice);
    }

    function calcDozenDiscountWHILE(uint256 purchaseQty)
        public
        pure
        returns (bool)
    {
        bool giveDozenPrice = false;
        uint256 numDonuts = 1;

        while (numDonuts < purchaseQty) {
            numDonuts++;
            if (numDonuts >= 12) {
                giveDozenPrice = true;
                break;
            }
        }
    }
}
