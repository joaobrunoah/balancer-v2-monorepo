# 2023-02-13 - Tetu Linear Pool

First deployment of the `TetuLinearPoolFactory`, for Linear Pools with a Tetu yield-bearing token.
Already fixes the reentrancy issue described in https://forum.balancer.fi/t/reentrancy-vulnerability-scope-expanded/4345.
Also has a fix in the `TetuLinearPoolRebalancer` to handle tokens which require the `SafeERC20` library for approvals.

## Useful Files

- [Ethereum mainnet addresses](./output/polygon.json)
- [`TetuLinearPoolFactory` artifact](./artifact/TetuLinearPoolFactory.json)
- [`TetuLinearPool` artifact](./artifact/TetuLinearPool.json)
- [`TetuLinearPoolRebalancer` artifact](./artifact/TetuLinearPoolRebalancer.json)
