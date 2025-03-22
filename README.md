# blotto-game-soln
Solution to Emile Borel's classic Blotto game - implemented for a Jane Street interview process.

# Blotto - Jane Street Game

## Introduction
My solution to the Blotto game, a puzzle featured in a Jane Street hiring process. I employed a round-robin tournament approach to evaluate different strategies and optimise performance.

## Rules
Two candidates compete for control over 10 districts, numbered 1 through 10. Each district carries a single vote. Players have 100 units to distribute across these districts as they see fit. The opponent does the same, but allocations are made independently.

A candidate wins a district if they commit strictly more than *N* times the resources of their opponent, where *N* is the district number. If neither meets this condition, the district remains contested and unclaimed.

See (https://en.wikipedia.org/wiki/Blotto_game) for more context.

### Example Match - from Jane Street Documentation
| District | D1 | D2 | D3 | D4 | D5 | D6 | D7 | D8 | D9 | D10 |
|----------|----|----|----|----|----|----|----|----|----|-----|
| Alex     | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10 | 10  |
| Jordan   | 5  | 10 | 15 | 17 | 8  | 5  | 5  | 15 | 18 | 2   |

In this match, Alex wins districts 1, 5, 6, 7, 8, 9 and 10 for a score of 46 points, and Jordan wins
castles 3 and 4 for a score of 7 points. No one wins District 2. Alex wins castles 8 and 9
because she has already won the 3 consecutive castles 5,6,7.

## Strategy & Approach
To develop an effective strategy, I ran many thousands of simulations incorporating both randomly generated opponents and selected deterministic strategies. My goal was to identify resource allocations that consistently performed well across a range of scenarios, identify commonalities in successful submissions and avoid weaknesses that can be exploited by trivial solutions.

## Implementation

The code for my simulations and strategy refinement is available in this repository. My solution is implemented using MATLAB.
---

