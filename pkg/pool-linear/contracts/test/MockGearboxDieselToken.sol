// SPDX-License-Identifier: GPL-3.0-or-later
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

pragma solidity ^0.7.0;

import "@balancer-labs/v2-interfaces/contracts/pool-linear/IGearboxDieselToken.sol";

import "@balancer-labs/v2-solidity-utils/contracts/test/TestToken.sol";

contract MockStaticAToken is TestToken, IGearboxDieselToken {
    uint256 private _rate = 1e27;
    address private immutable _ASSET;

    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        address underlyingAsset
    ) TestToken(name, symbol, decimals) {
        _ASSET = underlyingAsset;
    }

    // solhint-disable-next-line func-name-mixedcase
    function underlyingAsset() external view override returns (address) {
        return _ASSET;
    }

    function getDieselRate_RAY() external view override returns (uint256) {
        return _rate;
    }

    function setRate(uint256 rate) external {
        _rate = rate;
    }

    function addLiquidity(
        uint256,
        address,
        uint256
    ) external pure override returns (uint256) {
        return 0;
    }

    function removeLiquidity(
        uint256,
        address
    ) external pure override returns (uint256, uint256) {
        return (0, 0);
    }
}
