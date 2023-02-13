# 2023-02-13 - Silo Linear Pool

First deployment of the `SiloLinearPoolFactory`, for Linear Pools with a Silo yield-bearing token.
Already fixes the reentrancy issue described in https://forum.balancer.fi/t/reentrancy-vulnerability-scope-expanded/4345.
Also has a fix in the `SiloLinearPoolRebalancer` to handle tokens which require the `SafeERC20` library for approvals.

## Useful Files

- [Ethereum mainnet addresses](./output/mainnet.json)
- [`SiloLinearPoolFactory` artifact](./artifact/SiloLinearPoolFactory.json)
- [`SiloLinearPool` artifact](./artifact/SiloLinearPool.json)
- [`SiloLinearPoolRebalancer` artifact](./artifact/SiloLinearPoolRebalancer.json)
