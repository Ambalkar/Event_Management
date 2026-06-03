# 🚀 ELITE INTERVIEW ROADMAP — Part 4: Q751–Q1000

## ⭐⭐⭐⭐ Advanced → ⭐⭐⭐⭐⭐ Expert
## System Architecture & High-Scale Engineering

> **Progressive Difficulty**: Advanced to Expert questions for senior, staff, and principal roles
> **Tags**: `[Topic]` `[Difficulty]` `[Company-Level]` `[Pattern]`
> **Priority**: 🔴 MUST DO | 🟡 HIGH FREQUENCY | 🔵 REVISION CRITICAL


---

Q751.
MERN: [Concurrency][Hard][FAANG-Level] Explain how Node.js manages CPU-bound operations without blocking the Event Loop. When do you use Worker Threads vs Child Processes vs Cluster Module?
Hint: Node's single thread handles execution. Blocking operations (e.g. cryptography, image compression) starve the event loop. Worker Threads (`worker_threads`): run JS threads sharing memory via SharedArrayBuffer (best for memory-shared CPU tasks). Child Processes (`child_process`): spawn separate OS processes with isolated memory (best for running command shell utilities). Cluster Module: forks multiple instances of the same Node application sharing the same TCP port (best for web server scaling).

DSA: [Graphs][Medium-Hard][Google] 🔴 MUST DO — Implement Dijkstra's Algorithm using an adjacency list and a min-priority queue to find single-source shortest paths in a weighted graph (no negative weights).
Hint: Dijkstra's uses greedy selection. Maintain a `dist` array initialized to infinity, `dist[src] = 0`, and a min-heap storing `(distance, node)`. While heap is not empty, pop the minimum distance node `u`. For each neighbor `v` of `u`, if `dist[u] + weight(u, v) < dist[v]`, update `dist[v] = dist[u] + weight(u, v)` and push `(dist[v], v)` into heap. Time: O((V + E) log V), Space: O(V + E).

Aptitude: [Puzzles][Hard] Three cards are in a bag: card 1 is red on both sides, card 2 is black on both sides, and card 3 is red on one side and black on the other. A card is drawn at random and placed on a table. The face-up side is red. Find the probability that the face-down side is also red.
Hint: Bayes Theorem. Let R1, R2, R3 be cards chosen. Face-up is red (event F). P(F | R1) = 1.0 (both sides red), P(F | R2) = 0.0 (both black), P(F | R3) = 0.5 (one red, one black).
P(R1 | F) = [P(F | R1) * P(R1)] / [P(F | R1)P(R1) + P(F | R2)P(R2) + P(F | R3)P(R3)]
= [1.0 * 1/3] / [1.0 * 1/3 + 0 + 0.5 * 1/3] = (1/3) / (1/2) = 2/3. The probability is 2/3.


---

Q752.
MERN: [Performance][Hard][Product Company] How do you handle Backpressure in Node.js Streams? Show how to create a custom write stream that respects the returns of `stream.write()`.
Hint: Backpressure happens when a readable stream reads data faster than the writable stream can write it, causing memory bloat. `write(chunk)` returns `false` when internal buffer exceeds `highWaterMark`. Pause reading when `write()` returns `false`, and resume only when the writable stream emits the `'drain'` event.
`readable.on('data', (chunk) => { const ok = writable.write(chunk); if (!ok) readable.pause(); });`
`writable.on('drain', () => readable.resume());`

DSA: [Graphs][Medium-Hard][Amazon] 🔴 MUST DO — Implement the Bellman-Ford Algorithm to find single-source shortest paths in a graph containing negative edge weights, and detect negative cycles.
Hint: Bellman-Ford relaxes all edges `V-1` times. Maintain `dist` array. For `V-1` iterations, for each edge `(u, v, w)`, if `dist[u] + w < dist[v]`, update `dist[v] = dist[u] + w`. To detect negative cycles, iterate all edges one more time; if any edge can still be relaxed (`dist[u] + w < dist[v]`), then a negative weight cycle exists. Time: O(V * E), Space: O(V).

Aptitude: [Data Interpretation][Hard] Study a quarterly product sheet (sales in thousands): Product X: Q1=50, Q2=55, Q3=65, Q4=60; Product Y: Q1=40, Q2=42, Q3=50, Q4=48; Product Z: Q1=30, Q2=38, Q3=40, Q4=42. If average prices are X=$15, Y=$25, Z=$35, and quarterly cost overhead is flat $500k, find the quarter with the highest net profit.
Hint: Revenue = X*15 + Y*25 + Z*35. Q1: 50*15 + 40*25 + 30*35 = 750 + 1000 + 1050 = $2,800k. Net = 2,800 - 500 = $2,300k. Q2: 55*15 + 42*25 + 38*35 = 825 + 1050 + 1330 = $3,205k. Net = $2,705k. Q3: 65*15 + 50*25 + 40*35 = 975 + 1250 + 1400 = $3,625k. Net = $3,125k. Q4: 60*15 + 48*25 + 42*35 = 900 + 1200 + 1470 = $3,570k. Net = $3,070k. Q3 has the highest net profit.


---

Q753.
MERN: [Database][Hard][FAANG-Level] Explain MongoDB indexing strategies. How does the ESR (Equality, Sort, Range) rule apply when building compound indexes?
Hint: The ESR rule defines the optimal order of fields in a compound index: 1) Equality (=): fields queried with exact matches must be first. 2) Sort (order): fields used for sorting must follow equality fields to prevent in-memory sorts. 3) Range (<, >, $in): fields queried with range bounds must be placed last. Order: `{ active: 1, age: 1, score: 1 }` where active is equality, age is sort, score is range.

DSA: [Graphs][Medium-Hard][Google] 🔴 MUST DO — Implement the Floyd-Warshall Algorithm to find shortest paths between all pairs of vertices in a weighted directed graph.
Hint: All-pairs shortest path dynamic programming. Maintain a 2D matrix `dist` initialized to edge weights, `dist[i][i] = 0`, and infinity elsewhere. For each intermediate vertex `k` from 0 to `V-1`, and each pair of vertices `i` and `j`, update `dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])`. Time: O(V³), Space: O(V²).

Aptitude: [Decision Making][Hard] You have two investment options: Venture X (probability of success 20% returning $100k, else $0). Venture Y (probability of success 50% returning $35k, else $0). Choose the option with higher expected utility if utility U(x) = √x (risk-averse investor).
Hint: Expected Utility = Sum(P * U(x)). Venture X Expected Utility = 0.2 * √100,000 + 0.8 * 0 = 0.2 * 316.22 = 63.24. Venture Y Expected Utility = 0.5 * √35,000 + 0.5 * 0 = 0.5 * 187.08 = 93.54. Choose Venture Y.


---

Q754.
MERN: [Database][Hard][Product Company] How do MongoDB multi-document transactions work? What is the role of replica sets in transactions?
Hint: MongoDB supports multi-document ACID transactions starting in version 4.0 (for replica sets) and 4.2 (for sharded clusters). Transactions write data changes to a private buffer, locking modified documents, and apply changes atomically on commit. They require replica sets because MongoDB replicates the transaction's commit logs (oplog) across nodes to guarantee durability on cluster rollbacks.

DSA: [Graphs][Medium-Hard][Google] 🟡 HIGH FREQUENCY — Find the shortest path in a grid where you can eliminate at most K obstacles (Shortest Path in a Grid with Obstacles Elimination).
Hint: BFS with state tracking. Queue stores `(r, c, distance, remaining_K)`. Keep a 3D visited boolean array or a Map mapping `(r, c) -> max_remaining_k_visited`. If neighbor is empty (0), enqueue `(nr, nc, dist+1, current_k)`. If neighbor is obstacle (1) and `current_k > 0`, enqueue `(nr, nc, dist+1, current_k-1)`. Time: O(M * N * K), Space: O(M * N * K).

Aptitude: [Puzzles][Hard] Four people (A, B, C, D) must cross a bridge at night. They have one flashlight. At most two people can cross at a time, and they must walk at the speed of the slower person. Crossing times: A=1, B=2, C=5, D=10 minutes. Find the minimum time to get everyone across.
Hint: Slower people must cross together to minimize time.
1) A and B cross (2 mins). A returns with flashlight (1 min) -> Total = 3.
2) C and D cross (10 mins). B returns with flashlight (2 mins) -> Total = 3 + 12 = 15.
3) A and B cross (2 mins) -> Total = 15 + 2 = 17 minutes.


---

Q755.
MERN: [Security][Hard][FAANG-Level] Explain how Multi-Factor Authentication (MFA) works using Time-Based One-Time Passwords (TOTP). How do you implement this in Express?
Hint: TOTP uses a shared secret and current time steps (typically 30 seconds) hashed using HMAC-SHA1 to generate a 6-digit code. In Node.js, use `speakeasy` and `qrcode` packages. Generate secret: `const secret = speakeasy.generateSecret()`. Send QR code of `secret.otpauth_url` to Google Authenticator. Validate code on login: `speakeasy.totp.verify({ secret: secret.base32, encoding: 'base32', token: req.body.code })`.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Swim in Rising Water: given an N x N grid of heights, find the minimum time to swim from top-left to bottom-right (can only swim through cells of height <= time).
Hint: Dijkstra's on grid with Min-heap or Binary Search + DFS. Min-heap stores `(height, r, c)`. Maintain visited 2D array. Pop min element, track maximum height seen so far along path. If bottom-right is reached, return the max path height. Time: O(N² log N), Space: O(N²).

Aptitude: [Data Interpretation][Hard] The radar chart shows competency ratings (1-5) of three software engineering candidates: Candidate A: Logic=5, SysDesign=3, Coding=4; Candidate B: Logic=4, SysDesign=4, Coding=4; Candidate C: Logic=3, SysDesign=5, Coding=4. If weights are Logic=40%, SysDesign=35%, Coding=25%, find the candidate with the highest weighted score.
Hint: Scores:
Cand A = 5(0.40) + 3(0.35) + 4(0.25) = 2.0 + 1.05 + 1.0 = 4.05.
Cand B = 4(0.40) + 4(0.35) + 4(0.25) = 1.6 + 1.40 + 1.0 = 4.0.
Cand C = 3(0.40) + 5(0.35) + 4(0.25) = 1.2 + 1.75 + 1.0 = 3.95.
Candidate A has the highest weighted score.


---

Q756.
MERN: [Security][Hard][Product Company] What is HTTP Parameter Pollution (HPP)? How do you prevent it in an Express application?
Hint: HPP occurs when attackers send multiple query parameters with the same name (e.g. `?id=1&id=2`), which Express parses into an array `['1', '2']`. If your database query expects a string, this can cause application crashes or SQL/NoSQL injection. Prevent by using input validation (Zod) or Express HPP mitigation middleware (`hpp()`).

DSA: [Graphs][Medium-Hard][Google] Given a directed graph, check if it contains a cycle using DFS.
Hint: DFS cycle detection. Maintain a visited array with states: 0 = unvisited, 1 = visiting (on current path), 2 = visited. If a neighbor is in state 1 during DFS, a back-edge exists, indicating a cycle. Time: O(V + E), Space: O(V).

Aptitude: [Data Interpretation][Hard] The table displays quarterly product failure counts: Q1: Prod A=10, B=12; Q2: A=15, B=8; Q3: A=9, B=14; Q4: A=12, B=10. If a batch contains 1,000 units of each product, find the quarter with the lowest average failure rate.
Hint: Failures: Q1 = 22. Q2 = 23. Q3 = 23. Q4 = 22. Q1 and Q4 are tied with the lowest average failure rate of 1.1%.


---

Q757.
MERN: [Security][Hard][Product Company] Explain the difference between encryption, hashing, and encoding. When do you use each in a MERN project?
Hint: Encryption: two-way function (reversible with a key), used for sensitive data in transit/at rest (AES/RSA). Hashing: one-way function (irreversible), used for passwords (bcrypt/Argon2). Encoding: data format transformation (reversible, no key), used for transmission compatibility (Base64/UTF-8).

DSA: [Graphs][Medium-Hard][Amazon] Given a graph representing dependencies between tasks, find the order to complete tasks (Topological Sort).
Hint: Kahn's Algorithm (BFS) or DFS. Kahn's: calculate indegrees. Enqueue indegree 0. While queue not empty, dequeue, decrement neighbor indegrees, enqueue if 0. Time: O(V + E).

Aptitude: [Decision Making][Hard] An application backend has high read traffic. Option A: upgrade Express app hosting (costs $300/mo, read speed increases 1.5x). Option B: add Redis caching (setup costs $500 one-time + $100/mo host, read speed increases 4x). Find the time period (months) after which Option B is cheaper.
Hint: Monthly cost difference (A - B) = $300 - $100 = $200 savings for Option B. One-time setup fee for B = $500. Break-even time = $500 / $200 = 2.5 months. Option B is also much faster.


---

Q758.
MERN: [Performance][Hard][Product Company] What are CSS layout shifts in React? How do you prevent layout shifts when rendering dynamic elements?
Hint: Layout shifts occur when elements change size or position dynamically, forcing browser reflows (measured by CLS). Prevent by: 1) Defining explicit dimensions (width/height) on images/iframes. 2) Reserving space for dynamic components using skeletons/min-height constraints.

DSA: [Graphs][Hard][Google] Find the number of connected components in an undirected graph using DFS.
Hint: Traverse nodes. If unvisited, run DFS to mark all reachable nodes visited. Increment component count. Time: O(V + E), Space: O(V).

Aptitude: [Puzzles][Hard] Solve the puzzle: In a room, there are three people. Two are truth-tellers, one is a liar. A says: "B is a liar." B says: "C is a liar." Who is the liar?
Hint: If A is liar: B must be truth-teller. If B is truth-teller: C is liar (but there is only 1 liar, so A and C being liars is a contradiction). Thus, A must be truth-teller, meaning B is indeed the liar. C must be truth-teller. The liar is B.


---

Q759.
MERN: [Performance][Hard][Product Company] Explain how the React 18 Scheduler assigns priority levels. What are the five priority levels?
Hint: React 18 Scheduler priorities: 1) Immediate (synchronous). 2) UserBlocking (user interactions like typing). 3) Normal (data fetching updates). 4) Low (background logs). 5) Idle (non-critical cleanup). React pauses low priority rendering to execute high priority updates.

DSA: [Graphs][Hard][Amazon] Given a graph representing city connections, find the minimum spanning tree cost.
Hint: Prim's or Kruskal's algorithm. Kruskal's: sort edges by weight. Initialize Union-Find. Iterate sorted edges, union endpoints. Time: O(E log E), Space: O(V + E).

Aptitude: [Data Interpretation][Hard] A survey of 100 students: 50 like Math, 40 like Science, 30 like English. 15 like Math and Science, 10 like Science and English, 12 like Math and English. 5 like all three. Find the number of students who like none.
Hint: Math∪Science∪English = 50 + 40 + 30 - 15 - 10 - 12 + 5 = 88. Students who like none = 100 - 88 = 12.


---

Q760.
MERN: [Security][Hard][FAANG-Level] Explain WebAuthn (Passkeys). How does public-key cryptography replace passwords for secure user logins in React/Express?
Hint: WebAuthn allows passwordless login. Registration: client requests challenge from Express; browser requests user authenticator (TouchID/FaceID) to sign challenge, creating a public/private key pair. Browser returns public key and signature to Express, which saves the public key. Login: server issues challenge, browser signs it with private key, server validates signature using saved public key.

DSA: [DP][Hard][Google] 🔴 MUST DO — Maximum Path Sum in a Binary Tree: find the maximum path sum of any non-empty path in a binary tree (path can start and end at any node).
Hint: Tree DP. Let helper function return the max path sum starting from current node and going downwards. At each node, compute potential path passing *through* the node: `left = max(0, helper(node.left))`, `right = max(0, helper(node.right))`. Update global max with `node.val + left + right`. Return `node.val + max(left, right)`. Time: O(N), Space: O(H) recursion stack.

Aptitude: [Decision Making][Hard] Buying vs Leasing servers: Buying: upfront cost $10,000, monthly upkeep $100. Leasing: $500/mo, zero upkeep. Find the break-even point in months after which buying is cheaper.
Hint: Cost Buying = 10,000 + 100M. Cost Leasing = 500M. Break-even: 10,000 + 100M = 500M → 400M = 10,000 → M = 25 months. After 25 months, buying is cheaper.


---

Q761.
MERN: [Database][Hard][Product Company] What is MongoDB Multi-Tenancy? Design database schemas for a SaaS platform using Database-per-Tenant vs Schema-per-Tenant models.
Hint: Database-per-tenant: highest isolation, independent backups, but high infrastructure cost and complex connections management. Shared-database-shared-schema: single DB, table fields filter by `tenantId` (low cost, easy upgrades, but risk of tenant data leakage). Schema-per-tenant: distinct collections (e.g. `tenant1_users`, `tenant2_users`) inside a single database. Use mongoose connection middleware to dynamically select target tenant database strings based on API routing variables.

DSA: [DP][Hard][Google] 🔴 MUST DO — Tree Diameter: find the length of the longest path between any two nodes in a tree.
Hint: Tree DP or Double DFS. Tree DP: return the maximum height of the tree from the current node. At each node, track the two largest heights of its children. The diameter passing through this node is `height1 + height2`. Update global max diameter. Return `1 + max(height1, height2)`. Time: O(N), Space: O(H).

Aptitude: [Puzzles][Hard] Five houses in a row are painted five different colors. In each house lives a person of a different nationality. The Brit lives in the Red house. The Swede keeps dogs. The Dane drinks tea. The Green house is next to, and on the left of, the White house. The Green house owner drinks coffee. Who owns the Zebra if the German smokes Prince?
Hint: Solve the classic Einstein's Riddle grid using constraint elimination. The Swede owns the dogs. The Dane drinks tea. The German smokes Prince. The Brit lives in the Red house. Deduce step-by-step positions to find that the Japanese owns the Zebra (or similar derivation depending on the variant clues).


---

Q762.
MERN: [API Design][Hard][Product Company] How do you design idempotent REST API endpoints? Show how to implement request idempotency in an Express order processing controller using Redis.
Hint: Idempotent APIs ensure making the same request twice yields the same result without duplicate charges/effects. Use an `Idempotency-Key` header. When request arrives, check Redis for key. If exists and value is `'in-progress'`, return 409 Conflict. If exists and has a saved response, return that response immediately. If miss, save key in Redis with value `'in-progress'`, process transaction, save response, and set TTL (e.g. 24h).

DSA: [DP][Medium-Hard][Google] 🔴 MUST DO — House Robber III: same as House Robber, but houses are nodes of a binary tree. You cannot rob two directly linked houses.
Hint: Tree DP with pair return. For each node, return a size 2 array: `[robThisNode, skipThisNode]`.
`robThisNode = node.val + left[1] (skip left child) + right[1] (skip right child)`
`skipThisNode = max(left[0], left[1]) + max(right[0], right[1])`
Root result is `max(robRoot, skipRoot)`. Time: O(N), Space: O(H).

Aptitude: [Data Interpretation][Hard] Product sales distribution: Product A = 40% (margin 15%), B = 35% (margin 10%), C = 25% (margin 20%). If total sales revenue is $1,000,000, find the total net profit.
Hint: Profits:
A = $400,000 * 0.15 = $60,000.
B = $350,000 * 0.10 = $35,000.
C = $250,000 * 0.20 = $50,000.
Total profit = 60,000 + 35,000 + 50,000 = $145,000.


---

Q763.
MERN: [Monitoring][Hard][Product Company] What is Distributed Tracing? How do you implement request lifecycle tracing across Node.js microservices using OpenTelemetry?
Hint: Distributed tracing tracks user request paths through multiple microservices. OpenTelemetry dynamically hooks into Express, HTTP clients, and database drivers to auto-inject a unique trace context (e.g. `traceparent` headers) into service-to-service calls. Allows visualization of full execution timelines, locating latency bottlenecks in Jaeger or Zipkin.

DSA: [DP + Bitmask][Hard][Google] 🔴 MUST DO — Traveling Salesman Problem (TSP): find the minimum cost to visit all cities exactly once and return to the starting city.
Hint: DP with Bitmask. Let `dp[mask][u]` represent the min cost to visit the set of cities in `mask` ending at city `u`. Recurrence: `dp[mask][u] = min(dp[mask ^ (1<<u)][v] + dist[v][u])` for all `v` in the mask. Base case: `dp[1][0] = 0`. Time: O(N² * 2^N), Space: O(N * 2^N).

Aptitude: [Decision Making][Hard] You have three options to resolve a bug: Option A: fix it immediately ($1,000 engineering cost). Option B: wait for monthly release ($0 cost, 5% risk of $20,000 customer churn). Option C: write temporary patch ($200 cost, 1% risk of $20,000 customer churn). Choose the option with lowest expected cost.
Hint: Expected costs:
A = $1,000.
B = 0.05 * 20,000 = $1,000.
C = $200 + (0.01 * 20,000) = $200 + $200 = $400.
Option C has the lowest expected cost.


---

Q764.
MERN: [React][Hard][Product Company] Explain the internal fiber architecture of React. How does Concurrent Rendering (using `useTransition` and `useDeferredValue`) optimize client-side rendering bottlenecks?
Hint: Fiber is React's reconciliation engine. It splits rendering into incremental work units (Fibers) that can be paused, prioritized, or discarded. Concurrent rendering lets React prepare UI updates in the background. `useTransition` marks updates as non-blocking (e.g. tab switches), keeping the UI interactive. `useDeferredValue` defers updating slow parts of the UI while rendering inputs immediately.

DSA: [DP + Bitmask][Hard][Google] 🔴 MUST DO — Smallest Sufficient Team: given list of skills and list of people with skills, find the smallest team containing all required skills.
Hint: DP with Bitmask. Let `dp[mask]` represent the list of people indices that cover the skills in `mask`. Initialize `dp` of size `1 << totalSkills` to empty/max. For each person, represent their skills as a bitmask. For each existing `mask` in `dp`, calculate `newMask = mask | personSkills`. If `dp[mask] + person` is smaller than `dp[newMask]`, update `dp[newMask]`. Return `dp[(1 << totalSkills) - 1]`. Time: O(People * 2^Skills), Space: O(2^Skills).

Aptitude: [Data Interpretation][Hard] The table displays monthly page views (PV) and conversion rates (CR) for 3 campaigns: Camp A: PV=100k, CR=2%; Camp B: PV=150k, CR=1.5%; Camp C: PV=80k, CR=3%. If revenue per conversion is A=$20, B=$30, C=$25, find the campaign yielding highest revenue.
Hint: Conversions and Revenues:
A = 100k * 0.02 = 2000 conversions * 20 = $40,000.
B = 150k * 0.015 = 2250 conversions * 30 = $67,500.
C = 80k * 0.03 = 2400 conversions * 25 = $60,000.
Campaign B yields the highest revenue.


---

Q765.
MERN: [Security][Hard][FAANG-Level] What are NoSQL Injection attacks in MongoDB? Show how to secure an Express route query from injection exploits.
Hint: NoSQL injection happens when user input is passed directly to database queries as objects instead of primitive values (e.g. passing `{ "$gt": "" }` to password queries to bypass auth). Secure by: 1) Using Mongoose schemas (auto-casts inputs to match schemas, stripping operators). 2) Sanitizing inputs using packages like `express-mongo-sanitize`. 3) Ensuring user variables are strictly parsed to strings: `User.findOne({ email: String(req.body.email) })`.

DSA: [DP + Bitmask][Hard][Google] 🟡 HIGH FREQUENCY — Find the shortest path visiting all nodes in an undirected graph (Shortest Path Visiting All Nodes).
Hint: BFS with state compression. A state is `(currentNode, visitedNodesBitmask)`. Enqueue initial states `(i, 1 << i)` for all nodes with path length 0. While queue not empty, dequeue. If `visitedNodesBitmask == (1 << V) - 1`, return path length. Otherwise, check neighbors, enqueue `(neighbor, mask | (1 << neighbor))` with length+1 if that state has not been visited. Time: O(V * 2^V), Space: O(V * 2^V).

Aptitude: [Decision Making][Hard] You must scale storage: Option A: Cloud backup ($0.02/GB/mo, reliability 99.9%). Option B: On-premise server ($1,200 setup, maintenance $200/yr, reliability 95%). If downtime/data loss costs $10,000, find the cheaper option over 2 years for 5TB (5000GB) storage.
Hint: Expected losses:
Cloud annual cost = 5000 * 0.02 * 12 = $1,200. 2-yr cost = $2,400. Loss risk = 0.1% * 10,000 = $10. Total Cloud = $2,420.
On-premise 2-yr cost = $1,200 + 400 = $1,600. Loss risk = 5% * 10,000 = $500. Total On-premise = 1,600 + 500 = $2,100.
On-premise is cheaper over 2 years despite lower reliability.


---

Q766.
MERN: [Architecture][Hard][Product Company] Explain the Clean Architecture (or Onion Architecture) directory structure in Node.js backends. How do you isolate business logic from database frameworks?
Hint: Clean Architecture separates concerns into concentric layers: Enterprise/Domain (pure interfaces/entities), Use Cases (business logic), Adapters (controllers/gateways), and Frameworks (Express, Mongoose). Business logic communicates with databases via abstract interfaces (Repository pattern). The database implementation (e.g., Mongoose user repository class) inherits from the interface, allowing you to swap MongoDB for PostgreSQL without touching business use cases.

DSA: [DP + Bitmask][Hard][Google] Matchsticks to Square: determine if you can partition an array of matchsticks into four equal-length subsets representing the sides of a square.
Hint: Partition to 4 equal subsets. Bitmask DP. Let `dp[state]` be a boolean indicating if `state` (bitmask of matchsticks chosen) is valid. Or run backtracking DFS with memoization. Sort matchsticks descending to optimize branch cuts. Time: O(N * 2^N), Space: O(2^N).

Aptitude: [Puzzles][Hard] In a room, some are truth-tellers (always tell truth), some are liars (always lie). Person A says: "We are all liars." Person B says: "Exactly one of us is a truth-teller." Determine who is who.
Hint: If A is truth-teller, his statement "We are all liars" must be true, which is a contradiction. So A is a liar.
If A is a liar, not all are liars (at least one is truth-teller).
If B is a truth-teller, his statement "Exactly one is a truth-teller" is true. This means A is a liar and B is a truth-teller. This matches perfectly. A is a liar, B is a truth-teller.


---

Q767.
MERN: [Security][Hard][Product Company] Explain the concept of SSRF (Server-Side Request Forgery). How do you secure a Node.js microservice that fetches resources from user-provided URLs?
Hint: SSRF occurs when an attacker forces the server to make requests to internal private endpoints (e.g. `http://localhost:27017` or cloud metadata `http://169.254.169.254`). Secure by: 1) Restricting URLs to an explicit whitelist of allowed domains. 2) Validating IP addresses returned from DNS resolution, rejecting any private/loopback IP blocks (e.g., `10.0.0.0/8`, `127.0.0.0/8`, `192.168.0.0/16`).

DSA: [DP + Bitmask][Hard][Google] Maximum Students Taking Exam: given a grid of seats (broken/good), find the max students that can sit without cheating (cannot sit adjacent or diagonally-adjacent to front seats).
Hint: DP with Bitmask. Let `dp[row][mask]` be the max students up to `row` with student placement represented by `mask`. A placement is valid if no two students sit next to each other on the same row, and they don't cheat diagonally from the previous row `prev_mask`. Iterate states. Time: O(R * 2^(2C)), Space: O(R * 2^C).

Aptitude: [Data Interpretation][Hard] Caselet: A school has 400 students. 60% play Cricket, 40% play Football, and 30% play Tennis. 15% play Cricket and Football, 10% play Football and Tennis, and 12% play Cricket and Tennis. 5% play all three sports. Find the number of students who play exactly two sports.
Hint: Venn diagram formula. Let N(C) = 240, N(F) = 160, N(T) = 120.
C∩F = 60, F∩T = 40, C∩T = 48. Three sports (C∩F∩T) = 20.
Exactly Cricket & Football = 60 - 20 = 40.
Exactly Football & Tennis = 40 - 20 = 20.
Exactly Cricket & Tennis = 48 - 20 = 28.
Exactly two sports = 40 + 20 + 28 = 88 students.


---

Q768.
MERN: [Performance][Hard][Product Company] How do you profile CPU performance inside an Express application? Detail how to use V8 profilers and flame graphs to find bottleneck functions.
Hint: Run Node with profiling flags: `node --prof index.js`. Run load tests using `autocannon` to simulate real-world request traffic. Process the generated isolate log file into a readable format: `node --prof-process isolate-*.log > processed.txt`, or load it into Chrome DevTools to generate a visual Flame Graph. Wider blocks represent functions that spent the most time executing on the CPU call stack.

DSA: [DP + Game Theory][Medium-Hard][Google] 🔴 MUST DO — Predict the Winner: given an array of scores, two players take turns picking numbers from either end. Determine if player 1 can force a win.
Hint: Minimax with DP. Let `dp[i][j]` be the maximum relative score player 1 can get over player 2 from subarray `nums[i...j]`. Recurrence relation: `dp[i][j] = max(nums[i] - dp[i+1][j], nums[j] - dp[i][j-1])`. Base case: `dp[i][i] = nums[i]`. Player 1 wins if `dp[0][N-1] >= 0`. Time: O(N²), Space: O(N²).

Aptitude: [Decision Making][Hard] You must choose a software framework: Option A: Custom build (takes 12 weeks, costs $60k, zero annual license). Option B: Ready-made SaaS (implementation 2 weeks costing $10k, annual fee of $12k). Find the time period (years) after which Option A becomes cheaper.
Hint: Initial savings Option B = $60k - $10k = $50k. Ongoing cost Option B = $12k/yr. Time to break even = $50k / $12k = 4.17 years. Option A becomes cheaper after 4.17 years.


---

Q769.
MERN: [System Design][Hard][FAANG-Level] Explain how to design a horizontal rate limiting service that works across thousands of Node.js instances at scale.
Hint: Single Redis nodes bottleneck under high DDoS traffic. 1) Implement local in-memory pre-filtering (L1 cache) to reduce Redis calls. 2) Distribute Redis sharding using key hashes. 3) Use Redis Cluster or a sidecar proxy (e.g. Envoy API Rate Limiter) to offload rate-limiting logic. 4) Use sliding window counters rather than token buckets to minimize memory consumption.

DSA: [DP + Game Theory][Hard][Google] 🔴 MUST DO — Can I Win: in a game where players take turns picking integers, determine if the first player can force a win to reach a desired total.
Hint: DP + Bitmask + Minimax. Let state be represented by a bitmask of chosen numbers. A state returns true if the current player can make a move that wins directly or leaves the opponent in a losing state (returns false). Memoize results using a map or array. Time: O(2^N), Space: O(2^N).

Aptitude: [Data Interpretation][Hard] The line graph shows the percentage of transactions failed on an e-commerce platform: Mon=1.5%, Tue=1.2%, Wed=2.5%, Thu=1.0%. If total daily transaction volumes are Mon=10k, Tue=12k, Wed=8k, Thu=15k, find the day with the highest number of failed transactions.
Hint: Failed counts: Mon = 150. Tue = 144. Wed = 200. Thu = 150. Wednesday had the highest absolute number of failed transactions.


---

Q770.
MERN: [Performance][Hard][Product Company] How do you measure and optimize Core Web Vitals (LCP, FID, CLS, INP) in a React/Next.js single page application?
Hint: LCP (Largest Contentful Paint): optimize images, use preloading, defer non-critical JS. FID (First Input Delay)/INP (Interaction to Next Paint): split long-running JS tasks, use `requestIdleCallback`, remove unused CSS. CLS (Cumulative Layout Shift): set explicit width/height dimensions on media, reserve layout spaces for dynamic ads or skeletons.

DSA: [DP][Hard][Google] Palindrome Partitioning II: find the minimum cuts needed to partition a string such that every substring is a palindrome.
Hint: DP. Let `cuts[i]` be the min cuts for prefix `s[0...i]`. Also maintain a 2D boolean array `isPal[i][j]`. If `s[i...j]` is a palindrome, then `cuts[j] = min(cuts[j], cuts[i-1] + 1)`. If `s[0...j]` is a palindrome, `cuts[j] = 0`. Time: O(N²), Space: O(N²).

Aptitude: [Decision Making][Hard] You must evaluate two API Gateway software options: Option A: Open-source (zero cost, requires 10 hours of engineer time/mo for updates). Option B: Enterprise SaaS ($500/mo, zero engineer time needed). If engineer cost is $60/hr, choose the more economical option.
Hint: Cost Option A = 10 * $60 = $600/mo in engineering overhead. Cost Option B = $500/mo. Enterprise SaaS (Option B) is more economical.


---

Q771.
MERN: [Network][Hard][Product Company] Explain HTTP/3 multiplexing and connection migration. How does it improve the reliability of mobile React client applications?
Hint: HTTP/3 uses QUIC over UDP. In HTTP/2, a single TCP packet loss stalls all multiplexed streams (Head-of-Line Blocking). HTTP/3 isolates streams, ensuring packet loss on one stream does not impact others. Connection migration lets mobile clients switch from Wi-Fi to cellular networks without renegotiating TLS handshakes, maintaining active WebSocket connections seamlessly.

DSA: [DP][Hard][Google] Optimal Binary Search Tree: find the minimum search cost for a set of keys with given search frequency probabilities in a binary search tree.
Hint: Interval Partition DP. Let `dp[i][j]` be the min search cost for keys from index `i` to `j`. Recurrence relation: `dp[i][j] = min(dp[i][k-1] + dp[k+1][j] + sumOfFreq(i, j))` for all `k` from `i` to `j`. Time: O(N³), Space: O(N²).

Aptitude: [Data Interpretation][Hard] A company tracks customer retention rates of three divisions: Div A (Year 1: 85%, Year 2: 82%), Div B (Y1: 80%, Y2: 84%), Div C (Y1: 90%, Y2: 88%). Find the division that recorded the highest improvement in retention rates.
Hint: Absolute improvements: Div A = -3%, Div B = +4%, Div C = -2%. Division B has the highest improvement (+4%).


---

Q772.
MERN: [Security][Hard][Product Company] What are security vulnerabilities associated with Node.js child processes? How do you prevent Command Injection exploits?
Hint: Command injection occurs when unsanitized user inputs are passed directly to system shells (e.g. using `exec()`). Prevent by: 1) Avoiding `exec` and using `execFile` or `spawn` instead, which passes user variables as arguments in an array without invoking a shell. 2) Strict validation of user parameters using regular expressions.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Find the shortest path visiting all nodes in a weighted graph (Traveling Salesman variant with BFS).
Hint: State BFS with Min-heap. State is `(currentNode, visitedMask)`. Initialize min-heap, enqueue `(0, 1<<i, i)` for all start nodes. Relax edges, keeping track of min path weights. Return weight when `visitedMask` equals `(1 << V) - 1`. Time: O(V² * 2^V).

Aptitude: [Decision Making][Hard] You have two candidates for a role: Candidate X (salary $100k, success probability 90%). Candidate Y (salary $70k, success probability 70%). If replacement costs are $50k on failure, find the more cost-effective candidate.
Hint: Expected costs:
Cand X: $100k + (10% fail * $50k) = $105k.
Cand Y: $70k + (30% fail * $50k) = $85k.
Candidate Y is more cost-effective.


---

Q773.
MERN: [React][Hard][Product Company] Explain the reconciliation process in React 18. How does the scheduling of concurrent updates affect DOM updates?
Hint: Reconciliation uses the fiber tree to calculate diffs. In concurrent mode, updates have priorities (Immediate, UserBlocking, Normal, Low, Idle). The Scheduler yields execution to browser animations/inputs periodically, preventing UI freeze. Fiber nodes are modified in memory first and committed to the DOM in a single synchronous pass.

DSA: [DP][Hard][Google] 🔴 MUST DO — Word Break II: given a string and a dictionary, return all possible space-separated sentences that can be formed using dictionary words.
Hint: DP + Backtracking DFS. Use a HashMap to cache the list of sentences that can be formed from any suffix `s[i...]`. For current index, search dictionary for matching prefixes. If found, recursively solve for the suffix, and append prefix to all resulting sentences. Time: O(2^N), Space: O(2^N).

Aptitude: [Puzzles][Hard] Six books are placed in a row on a shelf. In how many ways can they be arranged such that Book A and Book B are never adjacent?
Hint: Total arrangements of 6 books = 6! = 720.
Arrangements where A and B are adjacent: Treat A and B as 1 unit. Total units = 5. Arrangements = 5! * 2! = 120 * 2 = 240.
Arrangements where A and B are not adjacent = 720 - 240 = 480 ways.


---

Q774.
MERN: [Architecture][Hard][Product Company] Design a distributed system architecture for a MERN-based auction platform handling real-time bidding updates under high concurrency.
Hint: System requires low latency and high consistency. Use: 1) Express API Gateway for rate limiting and auth routing. 2) Socket.io connections load-balanced with Redis Adapter for real-time bid broadcasts. 3) Redis as a distributed lock (Redlock) and L1 database cache to handle bid locking. 4) Kafka to queue bid messages for async persistence to MongoDB, ensuring database writes do not block the active bidding loop.

DSA: [DP][Hard][Google] Strange Printer: find the minimum number of turns a strange printer needs to print a given string (can print consecutive characters in one turn).
Hint: Interval DP. Let `dp[i][j]` be the min turns to print `s[i...j]`. Base case: `dp[i][i] = 1`. Recurrence: `dp[i][j] = dp[i][j-1]` if `s[i] == s[j]`. Else, `dp[i][j] = min(dp[i][k] + dp[k+1][j])` for all `k` from `i` to `j-1`. Time: O(N³), Space: O(N²).

Aptitude: [Data Interpretation][Hard] Monthly cloud compute usages (instances) of 3 products: Prod A: Month 1=20, Month 2=25; Prod B: M1=15, M2=18; Prod C: M1=30, M2=28. If cost per instance is $50/mo, calculate the percentage change in overall compute costs between Month 1 and Month 2.
Hint: Month 1 costs = (20 + 15 + 30) * 50 = $3,250. Month 2 costs = (25 + 18 + 28) * 50 = $3,550. Percentage change = ((3550 - 3250) / 3250) * 100 = 9.23% increase.


---

Q775.
MERN: [Security][Hard][FAANG-Level] Explain SSRF (Server-Side Request Forgery) inside cloud environments (AWS/GCP metadata endpoints). How do you block Node.js applications from accessing them?
Hint: Attackers submit metadata endpoints (e.g. `http://169.254.169.254/latest/meta-data/`) to extract cloud IAM roles/credentials. Prevent by: 1) Disallowing loopback/link-local address scopes in HTTP client middlewares. 2) Requiring token-based metadata headers (e.g., AWS IMDSv2). 3) Restricting Node container network egress rules using Kubernetes NetworkPolicies.

DSA: [DP][Hard][Google] Remove Boxes: find the maximum points you can get by removing boxes of the same color repeatedly (removing K boxes gives K*K points).
Hint: 3D DP. Let `dp[i][j][k]` represent the max points by removing subarray `boxes[i...j]` with `k` boxes of same color as `boxes[i]` adjacent to it on its left. Time: O(N^4), Space: O(N³).

Aptitude: [Decision Making][Hard] You have two plans for code testing: Plan X: 100% automated test coverage (costs $15,000 setup, saves $500/mo in debugging). Plan Y: hiring a manual QA part-time ($1,000/mo, zero setup). Find the cost difference at 1 year.
Hint: Cost Plan X at 12 months = $15,000 - (12 * $500) = $9,000. Cost Plan Y at 12 months = 12 * $1,000 = $12,000. Plan X is cheaper by $3,000 at 1 year.


---

Q776.
MERN: [Performance][Hard][Product Company] How do you prevent Node.js event loop blockages during heavy JSON parsing operations of large payloads (e.g. >10MB API payloads)?
Hint: `JSON.parse` runs synchronously, blocking the main thread. Prevent by: 1) Using streaming JSON parsers (e.g., `oboe` or `stream-json`) to process payloads chunk-by-chunk. 2) Offloading JSON parsing tasks to a background thread using Worker Threads. 3) Setting strict max payload size limits in Express controllers.

DSA: [DP][Hard][Google] Tallest Billboard: given a list of steel rods, construct a billboard with two supports of equal height, returning the maximum height.
Hint: 1D DP / Meet-in-the-Middle. Let `dp[diff]` represent the max height of the shorter support when the difference between the two supports is `diff`. For each rod, update `dp` values: either add rod to taller support (diff increases), add to shorter (diff decreases), or skip. Time: O(N * Sum), Space: O(Sum).

Aptitude: [Puzzles][Hard] A clock loses 10 minutes every 24 hours. If it is set correctly at 8:00 AM on Monday, what time will it show at 8:00 PM on Wednesday?
Hint: Time elapsed from 8:00 AM Monday to 8:00 PM Wednesday = 2.5 days = 60 hours.
Loss rate = 10 mins per 24 hours = 5/12 mins per hour.
Total loss in 60 hours = 60 * (5/12) = 25 minutes.
Correct time: 8:00 PM Wednesday. Clock shows: 7:35 PM Wednesday.


---

Q777.
MERN: [Database][Hard][Product Company] What are index intersections in MongoDB? How does Mongoose utilize them, and why are compound indexes still superior?
Hint: Index intersections allow MongoDB to resolve queries by merging index results of two separate single-field indexes (e.g. using index `{ name: 1 }` and `{ status: 1 }` to resolve `{ name: "John", status: "active" }`). Compound indexes `{ name: 1, status: 1 }` remain superior because they resolve the query in a single lookup pass, avoiding intersection merge overhead.

DSA: [DP + Bitmask][Hard][Google] Find the number of ways to wear 40 different hats, given preferences of N people (each has a list of hats they like).
Hint: DP with Bitmask. Since N (people count) is small (<= 10) and hats count is large (40), let state bitmask represent the people who have been assigned hats. Let `dp[hat_id][mask]` be the number of ways to assign first `hat_id` hats to people in `mask`. Iterate hats, assigning to compatible people. Time: O(Hats * 2^N), Space: O(2^N).

Aptitude: [Data Interpretation][Hard] Below is a table representing quarterly user churn rates for three plans: Plan A (Q1: 5%, Q2: 4%), Plan B (Q1: 8%, Q2: 6%), Plan C (Q1: 3%, Q2: 5%). Find the plan with the lowest average churn rate across both quarters.
Hint: Average churns: Plan A = 4.5%. Plan B = 7.0%. Plan C = 4.0%. Plan C has the lowest average churn rate.


---

Q778.
MERN: [React][Hard][Product Company] Explain the React 18 fiber reconciliation algorithm. How does dynamic prioritizing of render requests protect application performance?
Hint: Reconciliation operates in two phases: Render (asynchronous, builds progress fiber tree) and Commit (synchronous, updates DOM). Scheduler gives higher priorities to user input events over data fetching updates. Prevents typing lags by pausing low-priority render trees when new input events occur.

DSA: [DP + Bitmask][Hard][Google] Traveling Salesman Problem (TSP) using recursion and memoization.
Hint: Represent visited cities mask. Helper function `solve(mask, city)` computes min distance. Memoize results in a 2D array of size `2^N * N`. Base case: `mask == (1<<N) - 1` returns `dist[city][0]`. Time: O(N² * 2^N).

Aptitude: [Decision Making][Hard] You must evaluate two hosting plans: Plan A: shared host ($50/mo, speed score 70). Plan B: dedicated host ($200/mo, speed score 95). If every 5 points of speed score increase returns $50/mo in user conversions, choose the better plan.
Hint: Speed improvement Plan B vs A = 25 points. Additional monthly conversion revenue = (25 / 5) * $50 = $250. Cost difference = $150/mo. Net benefit of Plan B = $250 - $150 = $100/mo. Choose Plan B.


---

Q779.
MERN: [Architecture][Hard][Product Company] How do you handle file uploads under high load in a MERN stack? Why is writing to local express storage directly a bad practice?
Hint: Writing directly to local disk fills server storage capacity, blocks the node event loop during file I/O operations, and fails in multi-server auto-scaled environments (other servers cannot access local files). Best practice: use pre-signed URLs. The client requests a pre-signed upload URL from Express, and uploads the file directly to S3/Cloud Storage, completely bypassing the Node.js backend.

DSA: [DP + Bitmask][Hard][Google] Minimum Cost to Connect Two Groups of Points: given cost matrix, connect all points in group 1 with group 2 at minimum cost.
Hint: DP with Bitmask. Let `dp[i][mask]` represent the min cost to connect first `i` points in group 1 with the subset of connected points of group 2 in `mask`. Iterate states. Time: O(Size1 * 2^Size2), Space: O(2^Size2).

Aptitude: [Puzzles][Hard] A train leaves Station A at 60 km/h. Two hours later, another train leaves Station A at 80 km/h in the same direction. How long will it take the second train to overtake the first?
Hint: In 2 hours, Train 1 travels 120 km.
Relative speed of Train 2 = 80 - 60 = 20 km/h.
Time to cover the gap = 120 / 20 = 6 hours.


---

Q780.
MERN: [Performance][Hard][Product Company] How do you profile memory leaks inside a running Node.js production application? Explain heap dumps analysis.
Hint: Take heap snapshots under load using V8 APIs. Compare snapshots inside Chrome DevTools. Search for increasing counts of closure variables or database connection instances that are not garbage collected.

DSA: [DP + Bitmask][Hard][Google] Minimum Number of Work Sessions to Finish the Tasks: given tasks and session time limit, find the minimum work sessions to complete all tasks.
Hint: DP with Bitmask. Let `dp[mask]` represent a pair `(sessions, remaining_time)` to complete the subset of tasks in `mask`. For each state and each uncompleted task, transition to new state, packing it into the current session if it fits, else starting a new session. Time: O(N * 2^N), Space: O(2^N).

Aptitude: [Decision Making][Hard] Resolving technical debt: Option 1: rewrite application (takes 6 months costing $60,000, saves $1,000/mo in server costs). Option 2: patch existing application ($5,000 cost, saves $200/mo). Find the break-even time in months for Option 1 vs Option 2.
Hint: Cost difference upfront = $55,000. Savings difference monthly = $800/mo. Break-even time = $55,000 / $800 = 68.75 months. Option 2 is better for shorter time frames.


---

Q781.
MERN: [Performance][Hard][Product Company] What are React 18 transition updates? How does `useTransition` prevent page freeze during search filtering?
Hint: Transition updates are non-blocking. `useTransition` yields execution to browser inputs. When user types in search input, input state is updated immediately (high priority), while search list filtering is updated in background (low priority).

DSA: [DP][Hard][Google] 🔴 MUST DO — Regular Expression Matching: support '.' and '*' wildcards in matching.
Hint: 2D DP. Let `dp[i][j]` be boolean indicating if `s[0...i-1]` matches `p[0...j-1]`. If `p[j-1] == s[i-1]` or `p[j-1] == '.'`, `dp[i][j] = dp[i-1][j-1]`. If `p[j-1] == '*'`, check 0 occurrences (`dp[i][j-2]`) or 1+ occurrences (`dp[i-1][j]` if character matches). Time: O(M * N).

Aptitude: [Logical Reasoning][Hard] Truth-tellers and Liars: Amit says "Sunil is a liar." Sunil says "Vijay is a liar." Vijay says "Amit is a liar." If there is exactly one truth-teller, who is it?
Hint: Case analysis. If Amit is T: Sunil is L, Vijay is T (contradiction, exactly 1 T). If Sunil is T: Amit is L, Vijay is L, Amit says Sunil is L (false, matches Amit L), Sunil says Vijay is L (true). Sunil is the truth-teller.


---

Q782.
MERN: [Security][Hard][Product Company] Explain XML Entity Expansion (Billion Laughs) attacks. How do you prevent XML parsing resource exhaustion in Node.js?
Hint: Attacker nests entities recursively in XML payload: `<!ENTITY lol "lol"><!ENTITY lol1 "&lol;&lol;...">`. Disable inline DTD parsing in your XML parser configuration.

DSA: [DP][Hard][Google] 🔴 MUST DO — Wildcard Matching: support '?' and '*' wildcards in matching.
Hint: 2D DP. Let `dp[i][j]` be if `s[0...i-1]` matches `p[0...j-1]`. If `p[j-1] == s[i-1]` or `p[j-1] == '?'`, `dp[i][j] = dp[i-1][j-1]`. If `p[j-1] == '*'`, `dp[i][j] = dp[i-1][j] (match 1+ chars) || dp[i][j-1] (match 0 chars)`. Time: O(M * N).

Aptitude: [Data Interpretation][Hard] Sales growth of three companies: Co A: Y1=10%, Y2=12%; Co B: Y1=8%, Y2=15%. Find the company with highest growth factor over 2 years.
Hint: Growth factors: Co A = 1.10 * 1.12 = 1.232. Co B = 1.08 * 1.15 = 1.242. Company B has the highest growth factor.


---

Q783.
MERN: [Database][Hard][Product Company] Explain MongoDB index intersection. When does MongoDB merge two indexes, and what is the CPU/RAM overhead?
Hint: Index intersection merges scan results of two separate index keys. Consumes server CPU/RAM resources; a compound index is always faster.

DSA: [DP][Hard][Google] 🔴 MUST DO — Edit Distance: find the minimum edit operations (insert, delete, replace) to convert string A to B.
Hint: 2D DP. `dp[i][j] = dp[i-1][j-1]` if characters match. Else, `1 + min(dp[i-1][j] (delete), dp[i][j-1] (insert), dp[i-1][j-1] (replace))`. Time: O(M * N).

Aptitude: [Decision Making][Hard] Upgrading storage: Option A: Cloud backup ($0.02/GB/mo). Option B: On-premise server ($1,200 setup, maintenance $200/yr). Find the break-even point in months for 5TB (5000GB).
Hint: Monthly cloud cost = $100. On-premise annual cost = $1200 + $200 = $1400. Setup of on-premise is $1,200. Break-even occurs in Year 2.


---

Q784.
MERN: [Performance][Hard][Product Company] Design a production memory monitoring cron job in Node.js. How do you trigger auto heap snapshot saves when memory usage exceeds 85% of capacity?
Hint: Monitor heap usage using `process.memoryUsage().heapUsed`. Trigger heap snapshot using `v8.writeHeapSnapshot()`.

DSA: [DP][Hard][Google] 🔴 MUST DO — Dungeon Game: find the knight's minimum initial health required to reach the bottom-right corner.
Hint: 2D Grid DP solved backwards from destination `(M-1, N-1)`. `dp[i][j] = max(1, min(dp[i+1][j], dp[i][j+1]) - grid[i][j])`. Time: O(M * N).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is older than Sunil. Sunil is older than Vijay. Rajesh is older than Amit. Who is the youngest?
Hint: R > A > S > V. Vijay is the youngest.


---

Q785.
MERN: [Network][Hard][Product Company] Configure Nginx load balancer to support HTTP/3 QUIC connection streams.
Hint: Listen on UDP port 443 with `http3` directive and return `Alt-Svc` headers.

DSA: [DP][Hard][Google] 🔴 MUST DO — Cherry Pickup: find the max cherries you can collect by going from (0,0) to (N-1,N-1) and returning.
Hint: 3D DP. Let two paths walk from (0,0) to (N-1,N-1) simultaneously. State is `dp[r1][c1][r2]` where `c2 = r1 + c1 - r2`. Time: O(N³).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q786.
MERN: [Streams][Hard][Product Company] Custom Transform stream converting text to uppercase.
Hint: Override `_transform(chunk, enc, cb)` pushing `chunk.toString().toUpperCase()`.

DSA: [DP][Hard][Google] 🔴 MUST DO — Matrix Chain Multiplication (MCM): minimize scalar multiplications to multiply matrices.
Hint: Interval Partition DP. `dp[i][j] = min(dp[i][k] + dp[k+1][j] + p[i-1]*p[k]*p[j])` for all `k` from `i` to `j-1`. Time: O(N³).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. The person sitting next to B is A.


---

Q787.
MERN: [Security][Hard][Product Company] Configure helmet CSP directives to allow trusted script nonces.
Hint: Generate nonces in middleware, pass to template engine, and inject into scripts: `<script nonce="random">`.

DSA: [DP][Hard][Google] 🔴 MUST DO — Burst Balloons: find the maximum coins you can collect by bursting balloons wisely.
Hint: Interval DP. `dp[i][j] = max(dp[i][j], dp[i][k] + dp[k][j] + nums[i]*nums[k]*nums[j])` for all `k` from `i` to `j`. Time: O(N³).

Aptitude: [Data Interpretation][Hard] A line graph shows prices: Y1 = $10, Y2 = $12. Find the percentage price growth.
Hint: Growth = (2 / 10) * 100 = 20%.


---

Q788.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [DP][Hard][Google] 🔴 MUST DO — Palindrome Partitioning II: find the minimum cuts to partition a string into palindromes.
Hint: DP. Let `cuts[i]` be the min cuts for prefix `s[0...i]`. Update `cuts[j] = min(cuts[j], cuts[i-1] + 1)` if `s[i...j]` is a palindrome. Time: O(N²).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q789.
MERN: [Network][Hard][Product Company] Explain how Nginx handles WebSocket upgrades.
Hint: Map incoming connection upgrade headers: `Upgrade $http_upgrade` and `Connection "upgrade"`.

DSA: [DP + Bitmask][Hard][Google] 🔴 MUST DO — Partition to K Equal Sum Subsets.
Hint: DP + Bitmask. Let `dp[state]` represent current subset sum modulo target. Return true when state reaches `(1<<N)-1`. Time: O(N * 2^N).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q790.
MERN: [Performance][Hard][Product Company] How do you identify memory leaks using heap dump comparison summary views?
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [DP + Bitmask][Hard][Google] 🔴 MUST DO — Matchsticks to Square.
Hint: Sub-problem of partition to K=4 equal subsets. DFS backtracking or Bitmask DP. Time: O(N * 2^N).

Aptitude: [Data Interpretation][Hard] Revenue values: Month 1: $10k, Month 2: $15k, Month 3: $12k. Find the average revenue.
Hint: Average = (10 + 15 + 12) / 3 = 37 / 3 = $12.33k.


---

Q791.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [DP + Game Theory][Hard][Google] 🔴 MUST DO — Can I Win: find if first player can force a win.
Hint: DP + Bitmask + Minimax. State bitmask of chosen numbers returns true if a move leaves opponent in losing state. Time: O(2^N).

Aptitude: [Puzzles][Hard] A clock strikes 6 times in 5 seconds. How long does it take to strike 12 times?
Hint: 6 strikes have 5 intervals. Time = 5s, so 1 interval = 1s. 12 strikes have 11 intervals. Time = 11 * 1s = 11 seconds.


---

Q792.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override `_write(chunk, enc, cb)` calling `console.log(chunk.toString())` and callback.

DSA: [DP + Game Theory][Medium-Hard][Google] 🔴 MUST DO — Predict the Winner.
Hint: Minimax with DP. `dp[i][j] = max(nums[i] - dp[i+1][j], nums[j] - dp[i][j-1])`. Time: O(N²).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q793.
MERN: [Security][Hard][Product Company] Explain SQL injection vulnerabilities in Node-Postgres applications. Show how to write safe parameterized queries.
Hint: Avoid inline string concatenations. Use prepared statements or parameterized values: `db.query('SELECT * FROM users WHERE id = $1', [userId])`.

DSA: [DP][Hard][Google] 🔴 MUST DO — Optimal Binary Search Tree: minimize search cost.
Hint: Partition DP. `dp[i][j] = min(dp[i][k-1] + dp[k+1][j] + sumOfFreq(i, j))` for all `k` from `i` to `j`. Time: O(N³).

Aptitude: [Decision Making][Hard] Project outsourcing: In-house costs $15k, completion 3 months. Outsourcing costs $10k, completion 5 months. If every month of delay costs $2k, choose the cheaper option.
Hint: Cost In-house = $15k. Cost Outsourced = $10k + (2 months delay * $2k) = $14k. Outsourcing is cheaper.


---

Q794.
MERN: [Database][Hard][Product Company] Explain compound index fields order constraints when sorting in MongoDB.
Hint: Sort keys must match index prefix or reverse index prefix. `{ a: 1, b: -1 }` cannot support sort `{ a: 1, b: 1 }`.

DSA: [DP][Hard][Google] 🔴 MUST DO — Scramble String: check if two strings are scrambled.
Hint: 3D DP or Memoized Recursion checking split matches (left-left, right-right or left-right, right-left). Time: O(N^4).

Aptitude: [Logical Reasoning][Hard] All doctors are graduates. No graduate is illiterate. Some illiterates are poor.
Conclusions: 1. No doctor is illiterate. 2. Some graduates are poor.
Which conclusion(s) logically follow?
Hint: Only 1 follows. Doctors are inside graduates. Graduates and illiterates are disjoint. So doctors and illiterates are disjoint.


---

Q795.
MERN: [Performance][Hard][Product Company] How do you analyze Node.js memory allocations using heap profiling allocation sampling?
Hint: Enable allocation sampling. Inspect nodes allocating high amounts of persistent memory during execution.

DSA: [DP][Hard][Google] 🔴 MUST DO — Super Egg Drop: find the min drops to find critical floor.
Hint: DP with Binary Search. `dp[k][n] = 1 + min(max(dp[k-1][x-1], dp[k][n-x]))` using binary search to find optimal `x`. Time: O(K * N log N).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q796.
MERN: [Streams][Hard][Product Company] Transform stream removing numbers from text chunks.
Hint: Replace digits inside chunk string using regex: `chunk.toString().replace(/[0-9]/g, '')`.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Reconstruct Itinerary: Eulerian Path flight route search.
Hint: Hierholzer's DFS sorting destinations. Time: O(E log E).

Aptitude: [Puzzles][Hard] Five people sit in a circle. A is next to B. C is next to D. E is opposite to A. Who is next to E?
Hint: Neighbors of E are C and D.


---

Q797.
MERN: [Security][Hard][Product Company] What are prototype pollution vulnerabilities in Express? How do you prevent them?
Hint: Reject keys modifying `__proto__` and use input validation schemas (Zod).

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Word Ladder II: find all shortest paths.
Hint: BFS to construct shortest path DAG, DFS backtracking to build path lists. Time: O(N * M² + PathCount).

Aptitude: [Data Interpretation][Hard] Price indices: Year 1: 100, Year 2: 105. Find the inflation rate.
Hint: Inflation = (5 / 100) * 100 = 5%.


---

Q798.
MERN: [Database][Hard][Product Company] Explain compound index field order rules when running range queries in MongoDB.
Hint: Range fields must be placed after equality fields in the index sequence (ESR rule).

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Redundant Connection II.
Hint: DSU cycle detection handles directed double parents. Time: O(V).

Aptitude: [Decision Making][Hard] Server space leasing: Location X: $1k/mo. Location Y: $12k upfront. Which option is cheaper at 1 year?
Hint: Both cost the exact same.


---

Q799.
MERN: [Network][Hard][Product Company] Explain how Nginx handles WebSocket upgrades.
Hint: Map incoming connection upgrade headers: `Upgrade $http_upgrade` and `Connection "upgrade"`.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Alien Dictionary.
Hint: Kahn's BFS topological sort on character adjacency build. Time: O(C).

Aptitude: [Logical Reasoning][Hard] All apples are red. Some red things are sweet.
Conclusions: 1. Some apples are sweet. 2. Some sweet things are red.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q800.
MERN: [Performance][Hard][Product Company] How do you debug Node.js CPU bottlenecks using Clinic.js flame graphs?
Hint: Run `clinic flame -- node index.js`. Inspect generated graph to locate hot execution paths.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Cheapest Flights Within K Stops.
Hint: Dijkstra's or Bellman-Ford variant relaxing edges up to K+1 times. Time: O(K * E).

Aptitude: [Data Interpretation][Hard] Expenses totals: Rent=40%, Food=30%, Other=30%. If total expenses are $3,000, find the Rent amount.
Hint: Rent = 40% of 3,000 = $1,200.


---

## 🎤 MOCK INTERVIEW ROUND #4 (after Q800)

### 1. MERN System Design Scenario (45 minutes)
**Problem Statement**:
Design a real-time, highly available auction bidding platform. The system must process thousands of bids per second under heavy traffic spike conditions (e.g. last 10 seconds of a rare item auction) with strict consistency (no two bids can win, no bid values can be recorded out of order, and network connections must be kept under 50ms latency).

**Expected Design Details**:
- **WebSocket Gateway**: Horizontal scaling using Socket.io and Redis Adapter.
- **Distributed Lock**: Redis (Redlock) to ensure atomic bid verification before saving to database.
- **Queueing Engine**: Kafka to buffer writes, preventing MongoDB from crashing under write bursts.
- **Client Cache**: Redis caching to store auction metadata and current highest bid values.
- **API Idempotency**: Use `Idempotency-Key` headers on HTTP request configurations.


---

Q801.
MERN: [Concurrency][Hard][FAANG-Level] Explain how the V8 Engine schedules asynchronous execution tasks (Microtasks vs Macrotasks) inside the Event Loop. What is the execution order of `process.nextTick()`, `Promise.then()`, and `setImmediate()`?
Hint: The V8 Event Loop has phases (timers, poll, check). Microtasks (Promise resolutions, `queueMicrotask`) execute immediately after the current operation finishes and before transitioning to the next loop phase. `process.nextTick()` is a Node-specific microtask that runs *before* all other microtasks. Macrotasks (`setTimeout`, `setImmediate`, I/O callbacks) execute in their respective loop phases. Order: Current Sync Code -> `process.nextTick` -> Promises/Microtasks -> `setTimeout` (if expired) -> `setImmediate` (check phase).

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Implement Tarjan's Algorithm to find all Bridges in an undirected graph (Critical Connections in a Network).
Hint: DFS tracking discovery times and lowest reachable node times. Maintain `disc` and `low` arrays initialized to -1. For each node `u`, run DFS. For each neighbor `v`: 1) If `v` is parent, skip. 2) If `v` is already visited, update `low[u] = min(low[u], disc[v])`. 3) If `v` is unvisited, recurse DFS on `v`, update `low[u] = min(low[u], low[v])`. If `low[v] > disc[u]`, the edge `(u, v)` is a bridge. Time: O(V + E), Space: O(V).

Aptitude: [Probability][Hard] A software service has an average failure rate of 2 crashes per week. Assuming a Poisson distribution, find the probability that the service experiences exactly 3 crashes in a given week.
Hint: Poisson formula: P(k; λ) = (e^-λ * λ^k) / k!. Here λ = 2, k = 3.
P(3; 2) = (e^-2 * 2³) / 3! = (0.1353 * 8) / 6 = 1.0827 / 6 ≈ 0.1805 or 18.05%.


---

Q802.
MERN: [Streams][Hard][Product Company] Explain how Writable, Readable, Duplex, and Transform streams differ in Node.js. Write a custom Transform stream that encrypts chunks of data using AES-256-GCM.
Hint: Readable: read-only source. Writable: write-only target. Duplex: both read and write independently (e.g. TCP sockets). Transform: duplex stream where output is computed from input (e.g. zlib, crypto). Custom Transform implementation:
`class EncryptStream extends Transform { _transform(chunk, encoding, callback) { const cipher = crypto.createCipheriv('aes-256-gcm', key, iv); const encrypted = Buffer.concat([cipher.update(chunk), cipher.final()]); this.push(encrypted); callback(); } }`

DSA: [Graphs][Hard][Amazon] 🔴 MUST DO — Find all Articulation Points (cut vertices) in an undirected graph using Tarjan's algorithm.
Hint: DFS tracking discovery/low times. A node `u` is an articulation point if: 1) It is the root of the DFS tree and has two or more child subtrees. 2) It is not the root, and has a child `v` such that `low[v] >= disc[u]`. Run DFS, updating `low` and `disc` arrays. Time: O(V + E), Space: O(V).

Aptitude: [Puzzles][Hard] Five people (A, B, C, D, E) stand in a queue. A is not next to B. C is next to D. E is standing at the front of the queue. B is second to last. Find the queue arrangement.
Hint: Positions: 1 (front) to 5 (back).
E is at 1. B is second to last, so B is at 4.
A is not next to B (A cannot be at 3 or 5). Since E is at 1 and B is at 4, A must be at 2 or 5.
C is next to D (C-D adjacent). Possible adjacent spots are 2-3, 4-5? But B is at 4, so C-D must occupy 2-3.
If C-D are at 2-3, then A must be at 5.
Arrangement: E - C/D - D/C - B - A. Verify: A is at 5 (not next to B at 4? Wait, 4 and 5 are adjacent!).
Ah! Let's check: B at 4, A at 5 are adjacent, violating "A is not next to B".
So A cannot be at 5.
If A must be at 2: C-D must be at 3-5? But B is at 4, so C-D cannot be adjacent!
Let's re-verify: If B is at 4, spots are 1, 2, 3, 4(B), 5.
If A is at 5, A and B are adjacent. If A is at 3, A and B are adjacent. If A is at 2, A is not next to B.
So A must be at 2.
Then C-D must be adjacent. Spots remaining are 3 and 5. C-D cannot be adjacent.
If no valid arrangement exists, verify clues. If E is at 1, B is at 4, A must be at 2. C-D must be adjacent. If queue is circular, or if D is at 3 and C is at 4? No, B is at 4.
Let's check if B is second from front? If B is at 2: E is at 1. A cannot be at 3. A must be at 4 or 5.
If A is at 5: C-D can occupy 3-4.
Arrangement: E - B - C - D - A. Verify: A(5) not next to B(2). E(1). B(2). C(3)-D(4) adjacent. A at 5. Matches!


---

Q803.
MERN: [Database][Hard][Product Company] What are Multikey Indexes in MongoDB? Explain how MongoDB indexes arrays of objects and why compound multikey indexes have indexing constraints.
Hint: Multikey indexes are created when you index a field containing an array. MongoDB creates an index entry for *every* element in the array. Constraint: You cannot create a compound multikey index where *more than one* of the fields is an array. For example, indexing `{ array1: 1, array2: 1 }` is forbidden because it would produce a cartesian product of index entries, causing performance collapse.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Implement Kosaraju's Algorithm to find all Strongly Connected Components (SCCs) in a directed graph.
Hint: Two passes of DFS. 1) Run DFS on the original graph. When finishing a node, push it to a stack. 2) Transpose the graph (reverse all edges direction). 3) While the stack is not empty, pop node `u`. If `u` is unvisited, run DFS on transposed graph to collect all nodes reachable from `u`; these form a strongly connected component. Time: O(V + E), Space: O(V + E).

Aptitude: [P&C][Hard] In how many ways can the letters of the word 'MANAGEMENT' be arranged such that all vowels are never together?
Hint: 'MANAGEMENT' has 10 letters: M(2), A(2), N(2), G(1), E(2), T(1).
Total arrangements = 10! / (2! * 2! * 2! * 2!) = 3,628,800 / 16 = 226,800.
Arrangement with Vowels together: Vowels are A, A, E, E (4 letters). Consonants are M, M, N, N, G, T (6 letters).
Treat 4 vowels as 1 unit. Total units = 7.
Arrangements of units = 7! / (2! * 2!) (M, N duplicated) = 5040 / 4 = 1260.
Within vowels unit, arrangements = 4! / (2! * 2!) (A, E duplicated) = 6.
Vowels together = 1260 * 6 = 7560.
Vowels never together = 226,800 - 7560 = 219,240.


---

Q804.
MERN: [Performance][Hard][Product Company] How do you profile and debug memory leaks in Node.js applications? Compare the usage of `--inspect`, heap dumps, and memory profiling tools like Clinic.js.
Hint: `--inspect` connects Chrome DevTools to profile live CPU/memory. Heap Dumps: capture memory snapshots at specific times to check object allocations. Clinic.js (specifically `clinic doctor` and `clinic bubbleprof`): automatically run load tests and generate visual reports highlighting event loop delays, I/O bottlenecks, and garbage collection pauses. Use heap dumps to find *what* is leaking, and bubbleprof to find *why* the asynchronous flow is stalling.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Kosaraju's vs Tarjan's algorithm for Strongly Connected Components. Compare execution steps and complexity.
Hint: Kosaraju's: 2 DFS passes, transposes graph, simple to understand and write. Tarjan's: 1 DFS pass, uses a stack and tracks discovery/low times, more efficient (avoids transposition). Both run in O(V + E) time, but Tarjan's is slightly faster due to single-pass traversal.

Aptitude: [Probability][Hard] An automated system processes transactions. Each transaction has a 1% chance of failing. If the system processes 100 transactions in an hour, find the probability that at most 2 transactions fail (using Binomial distribution).
Hint: Binomial formula: P(k; n, p) = C(n, k) * p^k * (1-p)^(n-k). Here n = 100, p = 0.01.
P(k <= 2) = P(0) + P(1) + P(2).
P(0) = 0.99^100 ≈ 0.3660.
P(1) = 100 * 0.01 * 0.99^99 ≈ 0.3700.
P(2) = C(100, 2) * 0.01² * 0.99^98 = 4950 * 0.0001 * 0.3734 ≈ 0.1849.
Total P(k <= 2) = 0.3660 + 0.3700 + 0.1849 ≈ 0.9209 or 92.09%.


---

Q805.
MERN: [Security][Hard][Product Company] Explain how to run automated security audits on MERN stack codebases using tools like Snyk, NPM Audit, and OWASP ZAP.
Hint: `npm audit`: checks `package-lock.json` against known vulnerabilities database. `snyk test`: runs static code analysis (SAST) on application files and dependencies, finding vulnerabilities, license issues, and container risks. OWASP ZAP (Zed Attack Proxy): runs dynamic security scans (DAST) on live endpoints, attacking them with SQL injections, XSS, and broken auth payloads to find security gaps in real-time.

DSA: [Trie][Hard][Google] 🔴 MUST DO — Implement a Suffix Trie (Suffix Tree) to support fast substring queries in a text string.
Hint: Insert all suffixes of a string into a Trie. For string "banana", insert "banana$", "anana$", "nana$", "ana$", "na$", "a$". If a suffix ends with special char `$`, any substring search matches if we can traverse the prefix in the Suffix Trie. Time to build: O(N²), Search time: O(M) where M is substring length. (Note: Ukkonen's algorithm builds Suffix Trees in O(N) time).

Aptitude: [Combinatorics][Hard] Find the number of integers between 1 and 1000 (inclusive) that are not divisible by 2, 3, or 5.
Hint: Principle of Inclusion-Exclusion. Let S = 1000.
Divisible by 2 (A) = 1000/2 = 500. By 3 (B) = 1000/3 = 333. By 5 (C) = 1000/5 = 200.
Intersection: A∩B (by 6) = 1000/6 = 166. B∩C (by 15) = 1000/15 = 66. A∩C (by 10) = 1000/10 = 100.
A∩B∩C (by 30) = 1000/30 = 33.
Divisible by 2, 3, or 5 = 500 + 333 + 200 - 166 - 66 - 100 + 33 = 734.
Not divisible by 2, 3, or 5 = 1000 - 734 = 266 integers.


---

Q806.
MERN: [Performance][Hard][Product Company] Explain what V8 Ignition and TurboFan do. How does hot code path compilation impact server latency?
Hint: V8 Ignition compiles JS to bytecode. TurboFan optimizes hot bytecode pathways into machine code. Optimizing takes CPU; once compiled, speed increases dramatically, reducing response spikes.

DSA: [Trie][Hard][Google] Count the number of words in a Trie.
Hint: DFS recursion or maintain a count variable at the root node updated during insertion and deletion. Time: O(1) if tracked.

Aptitude: [Logical Reasoning][Hard] If A is a liar, B is a truth-teller. If B is a truth-teller, C is a liar. If C is a liar, A is a truth-teller. Is A a liar or truth-teller?
Hint: Assume A is liar: B is T -> C is L -> A is T (contradiction!). Assume A is T: B is L -> C is T -> A is L (contradiction!). The statements form a paradox (cannot be resolved under standard assumptions).


---

Q807.
MERN: [Security][Hard][Product Company] Explain Session Hijacking and Session Fixation. How do they differ?
Hint: Hijacking: stealing a user's active session identifier. Fixation: forcing a user to authenticate with an identifier already known to the attacker. Prevent by regenerating session IDs upon successful authentication.

DSA: [Trie][Hard][Google] Implement a Trie that supports prefix matching and prints elements lexicographically.
Hint: Standard Trie traversal. Run DFS recursively visiting child keys in lexicographical order (from 'a' to 'z'). Time: O(TotalNodes).

Aptitude: [Data Interpretation][Hard] Five people sit in a circle. A is next to B. C is next to D. E is opposite to A. Who is next to E?
Hint: Clockwise: A - B - C - E - D. Neighbors of E are C and D.


---

Q808.
MERN: [Performance][Hard][Product Company] Explain memory footprint optimization in Docker containers running Node.js.
Hint: Use alpine images. Strip devDependencies during builds. Use PM2 in cluster mode to share load without running multiple heavy Node processes.

DSA: [Trie][Hard][Google] Find the length of the longest word in a Trie.
Hint: DFS traversal tracking current depth. Return maximum depth reached. Time: O(TotalNodes).

Aptitude: [Decision Making][Hard] Lease renewal: Office X: $3,000/mo. Office Y: $2,500/mo + $1,000 relocation fee. Find the break-even month.
Hint: Monthly savings Y = $500. Relocation fee = $1,000. Break-even = $1,000 / $500 = 2 months.


---

Q809.
MERN: [Security][Hard][Product Company] What is the difference between encryption in transit and encryption at rest?
Hint: In transit: secure transfer of data using SSL/TLS protocols. At rest: securing data saved on filesystems/databases using AES/RSA algorithms.

DSA: [Graphs][Hard][Google] Check if a directed graph contains a cycle using Kahn's algorithm.
Hint: BFS topological sort. If number of dequeued vertices is less than V, a cycle exists. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q810.
MERN: [Architecture][Hard][Product Company] Design a highly available microservices API Gateway. How do you implement Token Bucket Rate Limiting at the gateway layer?
Hint: Gateway routes queries. Token Bucket: each client has a bucket containing `maxTokens`. Tokens refill at a constant rate. In Node.js gateway middleware, use Redis:
`const tokens = await redis.hget(clientIp, 'tokens');`
`const lastRefill = await redis.hget(clientIp, 'lastRefill');`
Calculate tokens refilled based on current time minus `lastRefill`. If tokens > 0, decrement tokens, save in Redis, and call `next()`. Else, return 429.

DSA: [Trie][Hard][Google] 🔴 MUST DO — Design a search autocomplete system that returns the top 3 historical search terms sharing the current prefix.
Hint: Trie + Max Heap / Sorting. Each Trie node stores a map of words and their search frequencies. To search prefix: 1) Traverse to the prefix node. 2) Collect all words in its subtree using DFS. 3) Push words into a Min-Heap of size 3 (sorted by count descending, then lexicographically). Time: O(PrefixLength + SubtreeDFS + K log K).

Aptitude: [Data Interpretation][Hard] The dual line-bar chart represents revenue (bars, in $M) and customer satisfaction scores (line, 1-10) for four quarters: Q1: Rev=12, Score=8.0; Q2: Rev=15, Score=7.5; Q3: Rev=18, Score=6.5; Q4: Rev=20, Score=5.5. Find the quarter showing the highest revenue-to-score ratio.
Hint: Ratios:
Q1 = 12 / 8.0 = 1.5.
Q2 = 15 / 7.5 = 2.0.
Q3 = 18 / 6.5 = 2.77.
Q4 = 20 / 5.5 = 3.63.
Quarter 4 has the highest revenue-to-satisfaction ratio.


---

Q811.
MERN: [Performance][Hard][Product Company] Explain how the React 18 Fiber reconciler handles concurrent updates. What is the difference between rendering in React 17 vs React 18?
Hint: React 17 reconciliation is synchronous and blocking (once rendering begins, it cannot be interrupted). React 18 uses Concurrent Mode (Fiber architecture). The fiber tree can be updated incrementally. The scheduler breaks rendering work into chunks and yields control back to the browser event loop periodically, allowing high-priority events (e.g. text inputs) to interrupt low-priority rendering tasks.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Given a directed graph, find all Strongly Connected Components using Tarjan's algorithm.
Hint: Single DFS pass. Maintain `disc` and `low` arrays, a stack, and a `onStack` boolean array. Run DFS. For each neighbor: 1) If unvisited, recurse, update `low[u] = min(low[u], low[v])`. 2) If visited and on stack, update `low[u] = min(low[u], disc[v])`. If `low[u] == disc[u]`, pop all nodes from stack until `u` is popped; these popped nodes form an SCC. Time: O(V + E), Space: O(V).

Aptitude: [Decision Making][Hard] Resolving a system bottleneck: Option X: rewrite database schemas (cost $10k, success rate 80%, improves query speed by 2x). Option Y: add Redis caching (cost $4k, success rate 95%, improves speed by 4x but handles only 70% of query types). Choose the option with higher expected utility if utility U = speed_improvement * success_rate / cost.
Hint: Utility values:
Util X = 2 * 0.80 / 10 = 1.6 / 10 = 0.16.
Util Y = 4 * 0.95 / 4 = 3.8 / 4 = 0.95.
Select Option Y.


---

Q812.
MERN: [Architecture][Hard][Product Company] How do you handle database failover and auto-sharding in MongoDB replica sets?
Hint: In MongoDB replica sets, if the primary node goes down, secondary nodes run an election to select a new primary automatically (failover completes in <12 seconds). Auto-sharding distributes chunks of data across multiple master shards. The query router `mongos` routes client requests to the correct shards based on the shard key, dynamically rebalancing chunks in the background.

DSA: [Trie][Hard][Google] 🔴 MUST DO — Implement a Bitwise Trie (Binary Trie) to find the maximum XOR value of two numbers in an array.
Hint: A binary Trie stores numbers by their binary bits (height 32 for 32-bit integers). Insert all numbers into the Trie. For each number, traverse the Trie attempting to follow the opposite bit (1 if current is 0, and vice versa) to maximize XOR value. Accumulate the path value. Time: O(32 * N), Space: O(32 * N).

Aptitude: [Logical Reasoning][Hard] Truth-tellers and Liars: Amit says "Sunil is a liar." Sunil says "Vijay is a liar." Vijay says "Amit and Sunil are both liars." Determine who is telling the truth.
Hint: Case analysis.
If Amit is T (truth-teller): Sunil is L (liar).
If Sunil is L: Vijay must be T? Let's check: Vijay says "Amit and Sunil are both liars". But Amit is T, so Vijay's statement is false, meaning Vijay is L.
If Vijay is L: Sunil's statement "Vijay is a liar" is true, making Sunil T. This contradicts our assumption that Sunil is L!
If Sunil is T: Amit is L (Amit says Sunil is L, which is false). Vijay is L (Sunil says Vijay is L, which is true, so Vijay is indeed L).
Let's check Vijay's statement: "Amit and Sunil are both liars". Since Sunil is T, Vijay's statement is false, making Vijay L. This matches.
Amit is Liar, Sunil is Truth-teller, Vijay is Liar.


---

Q813.
MERN: [Architecture][Hard][FAANG-Level] Explain how to implement a Saga Orchestrator in Node.js to coordinate transactions across multi-service e-commerce actions.
Hint: Create a dedicated state machine coordinator class. When an order is placed: 1) Orchestrator calls `Inventory.reserve()`. If succeeds, state updates to `INVENTORY_RESERVED`. 2) Calls `Payment.charge()`. If payment fails, state updates to `PAYMENT_FAILED` and the Orchestrator executes rollback compensations: calls `Inventory.release()` and updates order status to `CANCELLED`. Use unique transaction IDs to ensure idempotency.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Course Schedule III: given list of courses with duration and deadline, find the maximum number of courses you can take.
Hint: Greedy + Max Heap. Sort courses by deadline. Traverse courses. Track total time. For each course, add its duration to total time and push its duration to a Max-Heap. If total time exceeds current course's deadline, pop the longest course duration from the heap and subtract it from total time. Heap size at end is result. Time: O(N log N), Space: O(N).

Aptitude: [Data Interpretation][Hard] Production metrics of three plants: Plant A: capacity 10k units (defect rate 2%), Plant B: capacity 15k units (defect rate 3%), Plant C: capacity 8k units (defect rate 1.5%). Find the total number of defective units produced next month if all plants operate at 90% capacity.
Hint: Defective units at 90% capacity:
Plant A = 9,000 * 0.02 = 180.
Plant B = 13,500 * 0.03 = 405.
Plant C = 7,200 * 0.015 = 108.
Total defects = 180 + 405 + 108 = 693 defective units.


---

Q814.
MERN: [Network][Hard][Product Company] What is HTTP/2 Server Push? Compare it with HTTP/3 resource streaming. Why did HTTP/3 deprecate Server Push?
Hint: HTTP/2 Server Push allowed servers to preemptively send assets (e.g. CSS/JS) to clients before they requested them. Deprecated in HTTP/3 because browser cache validation was hard, causing servers to waste bandwidth sending files already in browser caches. HTTP/3 instead uses `<link rel="preload">` and HTTP/2 Early Hints (status code 103) to let clients request assets early.

DSA: [Graphs][Hard][Google] Given a directed graph, check if it contains a cycle using Kahn's algorithm (BFS).
Hint: Kahn's cycle check: calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, count++, decrement neighbors' indegrees. If neighbor indegree becomes 0, enqueue. If `count != V`, a cycle exists. Time: O(V + E).

Aptitude: [Puzzles][Hard] Solve the Cryptarithm: `SEND + MORE = MONEY`. Find the digit value of each letter.
Hint: Classic alphametic puzzle. Deduce step-by-step logic:
M must be 1 (carry over from column addition).
S must be 8 or 9. Since M=1, S+M can generate a carry, so S=9.
O must be 0 (since S=9, M=1, S+M+carry = 10 or 11, but M=1 so O=0).
Work through remaining columns to find: S=9, E=5, N=6, D=7, M=1, O=0, R=8, Y=2.
`9567 + 1085 = 10652`.


---

Q815.
MERN: [Security][Hard][Product Company] What are XML External Entity (XXE) injection attacks? How do you configure Node.js body parsers to defend against XXE?
Hint: XXE occurs when XML input containing a reference to an external entity is parsed by a weakly configured XML parser, leaking local files or triggering internal SSRF. Secure by: 1) Disabling external entity resolution (`ENTITIES` and `DTD` parsing) in your XML parser configuration (e.g. using `libxmljs` or `xml2js` with entity loading disabled). 2) Avoiding XML body parsing completely; prefer JSON.

DSA: [Graphs][Hard][Google] Find the Strongly Connected Components using Kosaraju's algorithm.
Hint: Run DFS, pushing nodes to stack on exit. Transpose graph. Pop nodes from stack; if unvisited, run DFS on transpose graph to extract all SCC vertices. Time: O(V + E).

Aptitude: [Decision Making][Hard] You must choose a cloud database tier: Tier A: $100/mo, read latency 10ms. Tier B: $300/mo, read latency 2ms. If every 1ms latency reduction saves the company $30/mo in user conversions, choose the better tier.
Hint: Latency reduction Tier B vs A = 8ms. Monthly conversion savings = 8 * $30 = $240. Additional cost Tier B = $200. Net benefit = $240 - $200 = $40/mo. Choose Tier B.


---

Q816.
MERN: [React][Hard][Product Company] How does the React 18 Scheduler coordinate priorities? Explain `requestAnimationFrame` vs `scheduler.postTask`.
Hint: React 18 Scheduler uses a min-heap to sort task updates by expiration times. `requestAnimationFrame` runs tasks right before paint (too late to yield). `scheduler.postTask` is a new browser API enabling tasks to run on the main thread at three priority levels (user-blocking, user-visible, background), yielding execution to inputs.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Implement Tarjan's Algorithm for SCCs in a directed graph.
Hint: DFS single pass. Stack tracks active component path. Disc/low pointers identify cycle loops. Push visited node, recurse neighbors. On recursion return, update `low[u] = min(low[u], low[v])`. If low matches disc, pop elements forming one SCC. Time: O(V+E).

Aptitude: [Data Interpretation][Hard] The line graph shows the percentage growth of three products: Prod A: Y1=5%, Y2=6%; Prod B: Y1=8%, Y2=4%; Prod C: Y1=3%, Y2=10%. If all products had sales of 50k units in Year 0, which product recorded the highest total sales volume at the end of Year 2?
Hint: Growth factors:
A = 1.05 * 1.06 = 1.113.
B = 1.08 * 1.04 = 1.1232.
C = 1.03 * 1.10 = 1.133.
Product C has the highest sales volume.


---

Q817.
MERN: [Architecture][Hard][Product Company] Explain how to implement zero-downtime rolling updates in Kubernetes deployments for MERN web apps.
Hint: Use the `RollingUpdate` strategy. Set `maxUnavailable` (max pods down during updates) and `maxSurge` (max extra pods created above target) in the deployment spec. K8s spins up new container versions, awaits their readiness probes to pass, and only then terminates the old pods, ensuring zero traffic drops.

DSA: [Trie][Hard][Google] Find the longest common prefix of a set of strings using a Trie.
Hint: Insert all strings into a Trie. Start at root. Traverse down. If current node has exactly one child and is not a word end, append character to prefix. Repeat until a node has multiple children or is a word end. Time: O(TotalCharacters).

Aptitude: [Puzzles][Hard] Solve the grid puzzle: 3 girls (A, B, C) wear dresses of different colors (Red, Blue, Green). A says: "None of us is wearing a dress matching our name initial." The girl in Blue says: "A, you are right." Who wears which color?
Hint: Initials: A (Red/Blue/Green), B (Red/Blue/Green), C (Red/Blue/Green).
Rule 1: Name initial does not match dress (A not Red, B not Blue, C not Green).
Rule 2: A is not wearing Blue (since Blue girl talks to A, they are different people).
Since A is not Red and not Blue, A must wear Green.
Remaining are B and C, colors Red and Blue.
B cannot wear Blue (initial match), so B must wear Red.
C must wear Blue (which is valid as C is not Green).
Arrangement: A = Green, B = Red, C = Blue.


---

Q818.
MERN: [Security][Hard][FAANG-Level] Explain Webauthn login assertions. How does the server verify user identity signatures without storing passwords?
Hint: On registration, user saves public key on server database. On login: 1) Server sends random challenge string to client. 2) Client authenticator signs challenge with private key, returning signature and key identifier. 3) Server retrieves public key from DB, verifies signature of challenge using public key. If verified, user is logged in.

DSA: [Graphs][Hard][Google] Find connected components in a directed graph (Weakly Connected Components).
Hint: Convert directed graph to undirected by adding reverse edges. Run standard DFS/BFS to find connected components. Time: O(V + E).

Aptitude: [Decision Making][Hard] You have two marketing campaigns: Camp X (costs $5k, expected conversion rate 4%, revenue $15k). Camp Y (costs $8k, expected conversion 6%, revenue $20k). If conversions follow a binomial distribution, find the better campaign.
Hint: Expected net profits:
X = (0.04 * 15k) - 5k = $600 - 5k = -$4,400 (loss).
Y = (0.06 * 20k) - 8k = $1,200 - 8k = -$6,800 (loss).
Both yield net losses, but Campaign X is less unprofitable.


---

Q819.
MERN: [Database][Hard][Product Company] Design a schema-per-tenant Mongoose connection manager. How do you pool connections across dynamic subdomains?
Hint: Maintain a cache of mongoose connections in memory: `const connectionPool = {}`. When API receives request, extract subdomain `tenantId`. If `connectionPool[tenantId]` exists, reuse connection. Else, create new connection using `mongoose.createConnection(tenantDbUri)`, store in cache, and return. Set idle timeouts to close unused tenant connections to prevent memory exhaustion.

DSA: [Graphs][Hard][Google] Print the Eulerian Path in a directed graph using Hierholzer's algorithm.
Hint: Eulerian path visits every edge exactly once. Adjacency list with sorting. Start DFS at node with `outdegree - indegree = 1` (or any node if all equal). While current node has outgoing edges, remove edge and recurse. Push node to path on recursion exit. Reverse path. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] The table lists the quarterly revenues of 3 branches: Br A: Q1=100, Q2=110; Br B: Q1=150, Q2=145; Br C: Q1=80, Q2=95. Which branch has the highest rate of revenue growth between Q1 and Q2?
Hint: Growth rates:
Br A = 10 / 100 = 10%.
Br B = -5 / 150 = -3.33%.
Br C = 15 / 80 = 18.75%.
Branch C has the highest growth rate.


---

Q820.
MERN: [Performance][Hard][Product Company] Explain React 18 hydration errors. Why does rendering different dates on server vs client throw hydration errors?
Hint: React server rendering creates static HTML. During client-side hydration, React expects the exact same DOM structure. If server renders a date string based on server timezone and client renders it based on local browser timezone, the DOM node text mismatch causes hydration errors. Solved by rendering dynamic client components only after mounting (`useEffect`).

DSA: [Trie][Hard][Google] Find the shortest unique prefix of all words in a given list.
Hint: Insert all words into a Trie. Keep track of visitor count at each node. For each word, traverse the Trie. The shortest unique prefix is the prefix up to the first node that has a visitor count of 1. Time: O(TotalCharacters).

Aptitude: [Decision Making][Hard] Consolidating microservices: Option A: merge 5 services into 1 monolith (saves $2k/mo in host, takes 2 months of dev costing $10k). Option B: keep separate (zero cost). Find the break-even point in months.
Hint: Monthly savings = $2,000. Upfront cost = $10,000. Break-even point = $10,000 / $2,000 = 5 months. Option A is cheaper in the long run.


---

Q821.
MERN: [Architecture][Hard][Product Company] Design a message retry mechanism in Kafka. How do you implement Dead Letter Queues (DLQ) in Node.js?
Hint: When a message processing fails: 1) Catch the error. 2) Publish the message to a retry topic with a retry-count header. 3) If retries exceed limit (e.g. 3), publish to a Dead Letter Queue (DLQ) topic for manual inspection, and commit the original message offset to prevent queue blockage.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Word Ladder II: find all shortest transformation sequences.
Hint: BFS to calculate shortest path DAG, DFS backtracking to build path lists. Time: O(N * M² + PathCount).

Aptitude: [Puzzles][Hard] Solve the puzzle: 4 people (A, B, C, D) are sitting in a circle facing the center. A sits opposite to B. C is sitting adjacent to A. Who is sitting opposite to C?
Hint: Positions clockwise: 1: A, 2: C (or D), 3: B, 4: D (or C).
Opposites: A(1) opposite B(3). C(2) opposite D(4).
The person sitting opposite to C is D.


---

Q822.
MERN: [Streams][Hard][Product Company] Explain backpressure triggers in Node.js stream pipings. How does `stream.pipe()` automate backpressure management?
Hint: `pipe()` automatically handles backpressure: it listens to the writable stream returning `false` on `write()`, pauses the readable stream, and listens to the writable stream's `'drain'` event to resume reading, avoiding memory exhaustion.

DSA: [Trie][Hard][Google] Implement a Trie containing wildcard characters `.` that can match any single letter.
Hint: Standard search with recursion. If current character is `.`, loop through all children keys, recursively searching remaining characters of the word. Return true if any child path returns true. Time: O(26^L).

Aptitude: [Data Interpretation][Hard] Production rates of three shifts: Shift A: 500 units (error rate 1%), Shift B: 400 units (error rate 2%), Shift C: 300 units (error rate 3%). Find the overall error rate percentage.
Hint: Error units:
A = 5. B = 8. C = 9. Total errors = 22.
Total production = 500 + 400 + 300 = 1200.
Overall error rate = (22 / 1200) * 100 = 1.83%.


---

Q823.
MERN: [Security][Hard][Product Company] Explain command injection vulnerabilities inside Node.js applications. Show how to execute command shells safely without shell-injection exploits.
Hint: Avoid `exec('ping ' + input)`. Pass command inputs as array arguments using `execFile` or `spawn`:
`spawn('ping', [input])` (disables shell interpretation of control characters like `&` or `;`).

DSA: [Graphs][Hard][Google] Find the strongly connected components count using Tarjan's DFS.
Hint: Execute Tarjan's SCC search. Count the times `low[u] == disc[u]` occurs. Time: O(V + E).

Aptitude: [Decision Making][Hard] Server upgrade: Option X: SSD drives (improves response time by 40%, cost $1,000). Option Y: RAM upgrade (improves response by 20%, cost $400). If cost per 1% response improvement is the metric, choose the cheaper option.
Hint: Cost/benefit ratios:
X = 1000 / 40 = $25 per 1% improvement.
Y = 400 / 20 = $20 per 1% improvement.
RAM upgrade (Option Y) is more cost-effective.


---

Q824.
MERN: [Database][Hard][Product Company] How do MongoDB Text Indexes handle weighting and multi-field keyword scoring? Show how to create a compound text index in Mongoose.
Hint: Text indexes assign relative weights to fields. Schema index:
`schema.index({ title: 'text', description: 'text' }, { weights: { title: 10, description: 2 } });`
Search returns documents sorted by text score matching keywords.

DSA: [Graphs][Hard][Google] Find if an undirected graph contains a cycle using DFS.
Hint: Maintain visited set. For each node, if unvisited, call recursive DFS, passing the parent node. If neighbor is visited and not the parent, a cycle exists. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] The radar chart shows efficiency ratings of 4 employees. Candidate A: Logic=4, Coding=4; Candidate B: Logic=5, Coding=3. Find the candidate with the highest average if Logic is weighted double.
Hint: Weighted averages:
A = (4*2 + 4) / 3 = 4.0.
B = (5*2 + 3) / 3 = 4.33.
Candidate B has the highest weighted average.


---

Q825.
MERN: [Performance][Hard][Product Company] Design a production Node.js memory monitoring cron job. How do you trigger auto heap snapshot saves when memory usage exceeds 85% of OS capacity?
Hint: Use `v8.writeHeapSnapshot()` when `process.memoryUsage().heapUsed` exceeds the threshold. Allows off-line diagnostic parsing.

DSA: [Trie][Hard][Google] Implement a Trie that supports insertion, prefix matching, and word deletion.
Hint: Deletion: recursively traverse. On return, if child node has no children and is not a word end, delete reference. Time: O(L).

Aptitude: [Decision Making][Hard] Moving databases: Cloud database costs $12k/yr. Local database hosting setup costs $10k, annual electricity cost $3k. Find the break-even point in years.
Hint: Initial savings local = -$10k setup. Monthly/annual cost savings = $12k - $3k = $9k/yr. Break-even point = $10k / $9k = 1.11 years.


---

Q826.
MERN: [Streams][Hard][Product Company] Write a custom Transform stream that reverses each line of incoming text buffers.
Hint: Buffer text, split by newline, reverse each line string, push to stream.

DSA: [Graphs][Hard][Google] Dijkstra's shortest path with matrix grid.
Hint: Min-heap stores coordinates `(dist, r, c)`. Relax grid cells in 4 directions. Time: O(M * N log(M * N)).

Aptitude: [Puzzles][Hard] Six people sit in a row. A is sitting next to B. C is sitting next to D. A is at the extreme left. Who sits next to C if D is third from left?
Hint: Positions: 1 (left) to 6 (right).
A is at 1. B is next to A, so B is at 2.
D is at 3. C is next to D. C can be at 4 (since 2 is occupied by B).
Arrangement: A(1) - B(2) - D(3) - C(4) - E/F(5) - F/E(6).
The people sitting next to C are D and E/F.


---

Q827.
MERN: [Security][Hard][Product Company] What are XML entity expansion (Billion Laughs) attacks? How do you prevent XML parsing resource exhaustion?
Hint: XML parses nested entity definitions recursively. Disable inline DTD schemas inside XML parser configurations.

DSA: [Trie][Hard][Google] Implement a prefix Trie storing key-value pairs.
Hint: Trie nodes contain value fields. Search returns value at node. Time: O(L).

Aptitude: [Data Interpretation][Hard] Chart analysis: Year 1 sales of Product A=100k, Year 2=120k. Product B Year 1=80k, Year 2=96k. Which product had the highest percentage sales growth?
Hint: Growth rates:
A = (20 / 100) = 20%.
B = (16 / 80) = 20%.
Both have the exact same percentage growth.


---

Q828.
MERN: [Database][Hard][Product Company] Explain MongoDB Partial Indexes. Show how to create a partial index on a field that only indexes documents with `price > 1000`.
Hint: Mongoose index:
`schema.index({ name: 1 }, { partialFilterExpression: { price: { $gt: 1000 } } });`

DSA: [Graphs][Hard][Google] Find the shortest path between all pairs using Floyd-Warshall.
Hint: Initialize 2D matrix. Loop indices `k, i, j`. Update `dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])`. Time: O(V³).

Aptitude: [Decision Making][Hard] Office space lease: Location X: $2,000/mo, covers security. Location Y: $1,500/mo, security costs $600/mo. Choose the cheaper option.
Hint: Cost X = $2,000. Cost Y = $1,500 + $600 = $2,100. Location X is cheaper.


---

Q829.
MERN: [Network][Hard][Product Company] How do you handle client network connection migration in Socket.io using HTTP/3?
Hint: HTTP/3 QUIC protocol handles network changes transparently without socket disconnects using connection IDs.

DSA: [Trie][Hard][Google] Count the number of words in a Trie that share a given prefix.
Hint: Traverse prefix node. Return subtree word count variable stored at node or do DFS. Time: O(L).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Engineers are inside logical. Logical intersects managers. Engineers and managers do not necessarily intersect (1 is false). Managers intersect logical, so some managers are logical (2 is true).


---

Q830.
MERN: [Performance][Hard][Product Company] How do you identify garbage collection memory leaks using Chrome DevTools memory allocation timelines?
Hint: Look for blue bars indicating memory allocations that remain active and do not disappear after garbage collection.

DSA: [Graphs][Hard][Google] Kosaraju's strongly connected components transpose step logic.
Hint: Transpose reverses directed edges. Ensures DFS searches back-links to locate isolated SCC blocks. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Monthly transaction amounts ($k) of 3 branches: Br A: 50, Br B: 60, Br C: 40. Find the percentage contribution of Branch B to total revenue.
Hint: Total = 150. B contribution = (60 / 150) * 100 = 40%.


---

Q831.
MERN: [Architecture][Hard][Product Company] Explain how to implement a retry logic for database transaction write conflicts in MongoDB.
Hint: Wrap transaction in a try/catch loop. If write conflict error (`TransientTransactionError`) is thrown, retry the transaction block up to 3 times.

DSA: [Graphs][Hard][Google] Implement Kahn's Topological Sort.
Hint: Calculate indegrees. Enqueue indegree 0. While queue not empty, dequeue, decrement neighbor indegrees, enqueue if 0. Time: O(V + E).

Aptitude: [Puzzles][Hard] A clock strikes 6 times in 5 seconds. How long does it take to strike 12 times?
Hint: 6 strikes have 5 intervals. Time = 5s, so 1 interval = 1s. 12 strikes have 11 intervals. Time = 11 * 1s = 11 seconds.


---

Q832.
MERN: [Streams][Hard][Product Company] Explain backpressure mechanics in Readable streams. What is the role of `stream.push()` returning `false`?
Hint: `push()` returning `false` indicates internal read buffer is full; the stream should stop reading/pushing until consumer drains it.

DSA: [Trie][Hard][Google] Implement a prefix matching dictionary using a Trie.
Hint: Standard search returning words in the leaf subtrees. Time: O(L + V).

Aptitude: [Data Interpretation][Hard] Import/Export values: Year 1: Import=30, Export=40; Year 2: Import=35, Export=50. Which year had a higher trade surplus?
Hint: Surplus Y1 = 10. Surplus Y2 = 15. Year 2 had a higher surplus.


---

Q833.
MERN: [Security][Hard][Product Company] What are HTTP request smuggling vulnerabilities? How do you prevent them in MERN API gateways?
Hint:Smuggling occurs due to headers conflicts (Content-Length vs Transfer-Encoding) between reverse proxy and backend. Configure proxy to use HTTP/2 or enforce strict header parsing.

DSA: [Graphs][Hard][Google] Dijkstra's algorithm node relaxation logic.
Hint: If `dist[u] + w < dist[v]`, update `dist[v] = dist[u] + w` and push to priority queue. Time: O(E log V).

Aptitude: [Decision Making][Hard] Project outsourcing: In-house costs $15k, completion 3 months. Outsourcing costs $10k, completion 5 months. If every month of delay costs $2k, choose the cheaper option.
Hint: Cost In-house = $15k. Cost Outsourced = $10k + (2 months delay * $2k) = $14k. Outsourcing is cheaper.


---

Q834.
MERN: [Database][Hard][Product Company] Explain compound index fields order constraints when sorting in MongoDB.
Hint: Sort keys must match index prefix or reverse index prefix. `{ a: 1, b: -1 }` cannot support sort `{ a: 1, b: 1 }`.

DSA: [Graphs][Hard][Google] Find the Eulerian Circuit in a directed graph.
Hint: Cycle traversal. All nodes must have equal indegree and outdegree, and be in a single connected component. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All doctors are graduates. No graduate is illiterate. Some illiterates are poor.
Conclusions: 1. No doctor is illiterate. 2. Some graduates are poor.
Which conclusion(s) logically follow?
Hint: Only 1 follows. Doctors are inside graduates. Graduates and illiterates are disjoint. So doctors and illiterates are disjoint (1 is true). Graduates and illiterates are disjoint, so graduates cannot be poor due to illiterate overlap (2 does not necessarily follow).


---

Q835.
MERN: [Performance][Hard][Product Company] How do you analyze Node.js memory allocations using heap profiling allocation sampling?
Hint: Enable allocation sampling. Inspect nodes allocating high amounts of persistent memory during execution.

DSA: [Trie][Hard][Google] Implement a Trie displaying memory utilization counts.
Hint: Node stores character size and children arrays. Count active nodes. Time: O(N).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q836.
MERN: [Streams][Hard][Product Company] Custom Transform stream converting text to uppercase.
Hint: Override `_transform(chunk, enc, cb)` pushing `chunk.toString().toUpperCase()`.

DSA: [Graphs][Hard][Google] Bellman-Ford negative weight cycle check logic.
Hint: Run Vth iteration relaxation. If any distance decreases, a negative cycle exists. Time: O(V * E).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. C is next to D. A is not next to C (D is in between). The person sitting next to B is A.


---

Q837.
MERN: [Security][Hard][Product Company] How do you configure helmet CSP directive nonces to allow trusted inline scripts?
Hint: Generate cryptographically strong random nonces in middleware, pass to template engine, and inject into scripts: `<script nonce="random">`.

DSA: [Trie][Hard][Google] Find the shortest path in a Trie.
Hint: Traverse children pointers following matching bits or characters. Time: O(L).

Aptitude: [Data Interpretation][Hard] A line graph shows prices: Y1 = $10, Y2 = $12. Find the percentage price growth.
Hint: Growth = (2 / 10) * 100 = 20%.


---

Q838.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [Graphs][Hard][Google] Tarjan's bridge finding low-link updates.
Hint: `low[u] = min(low[u], low[v])` for unvisited children, and `low[u] = min(low[u], disc[v])` for visited back-edges. Time: O(V + E).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q839.
MERN: [Network][Hard][Product Company] How do you configure Nginx load balancer to support HTTP/3 QUIC connection streams?
Hint: Listen on UDP port 443 with `http3` directive and return `Alt-Svc` headers.

DSA: [Trie][Hard][Google] Implement a prefix dictionary suffix lookup.
Hint: Traverse prefix path node. Retrieve all child keys recursively. Time: O(L + V).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Dogs are inside cats. Cats intersect tigers. Dogs and tigers do not necessarily intersect (1 is false). Tigers intersect cats, so some tigers are cats (2 is true).


---

Q840.
MERN: [Performance][Hard][Product Company] How do you identify memory leaks using heap dump comparison summary views?
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Graphs][Hard][Google] Strongly connected components Kosaraju's DFS step 1 stack logic.
Hint: Stack records finish ordering. Ensures nodes with no outgoing edges in transpose graph are searched first. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Revenue values: Month 1: $10k, Month 2: $15k, Month 3: $12k. Find the average revenue.
Hint: Average = (10 + 15 + 12) / 3 = 37 / 3 = $12.33k.


---

Q841.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [Graphs][Hard][Google] Find the shortest path using Bellman-Ford.
Hint: Initialize distances. Relax V-1 times. Return distances array. Time: O(V * E).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q842.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override `_write(chunk, enc, cb)` calling `console.log(chunk.toString())` and callback.

DSA: [Trie][Hard][Google] Implement a prefix search trie.
Hint: Node kids traversing following letters. Returns true on leaf nodes match. Time: O(L).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q843.
MERN: [Security][Hard][Product Company] Explain SQL injection vulnerabilities in Node-Postgres applications. Show how to write safe parameterized queries.
Hint: Avoid inline string concatenations. Use prepared statements or parameterized values: `db.query('SELECT * FROM users WHERE id = $1', [userId])`.

DSA: [Graphs][Hard][Google] Find all articulation points using DFS.
Hint: DFS tracking discovery and low times. Node is articulation if low of child >= discovery of parent. Time: O(V + E).

Aptitude: [Decision Making][Hard] Database scaling: SQL server upgrade costs $5k. NoSQL setup costs $12k. If NoSQL performance is 3x higher, and every 1x performance increase is worth $4k, choose the better option.
Hint: Value improvement NoSQL = 3 * $4k = $12k. Net value NoSQL = $12k - $12k = $0. SQL upgrade value = 1.5x * $4k = $6k. Net value SQL = $6k - $5k = $1k. SQL upgrade is more cost-effective upfront.


---

Q844.
MERN: [Database][Hard][Product Company] Explain multikey index constraints when creating compound indexes with geolocation.
Hint: You cannot create a compound index containing both a multikey array and a 2dsphere index.

DSA: [Graphs][Hard][Google] Check if a directed graph contains a cycle using DFS.
Hint: Visited state tracking: 0=unvisited, 1=visiting, 2=visited. Cycle if neighbor is in state 1. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All birds can fly. Penguin is a bird.
Conclusions: 1. Penguin can fly. 2. Some birds are penguins.
Which conclusion(s) logically follow?
Hint: Both follow. Penguin is inside birds. Birds are inside flying creatures. So Penguin can fly (1 is true). Penguins are a subset of birds, so some birds are penguins (2 is true).


---

Q845.
MERN: [Performance][Hard][Product Company] How do you profile CPU performance using flame graphs?
Hint: Capture V8 profile log. Open in Chrome DevTools to locate wide blocks showing heavy execution times.

DSA: [Trie][Hard][Google] Count the number of leaf nodes in a Trie.
Hint: DFS traversal counting nodes that have zero child nodes or are word ends. Time: O(N).

Aptitude: [Data Interpretation][Hard] Profit percentages: Company A: 10%, Company B: 15%. If both have revenues of $100k, find the profit of Company B.
Hint: Profit B = 15% of 100k = $15,000.


---

Q846.
MERN: [Streams][Hard][Product Company] Transform stream removing numbers from text chunks.
Hint: Replace digits inside chunk string using regex: `chunk.toString().replace(/[0-9]/g, '')`.

DSA: [Graphs][Hard][Google] Floyd-Warshall node path updates logic.
Hint: `dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])`. Time: O(V³).

Aptitude: [Puzzles][Hard] Five people sit in a circle. A is next to B. C is next to D. E is opposite to A. Who is next to E?
Hint: Clockwise: A - B - C - E - D. E is opposite to A. The neighbors of E are C and D.


---

Q847.
MERN: [Security][Hard][Product Company] What are prototype pollution vulnerabilities in Express? How do you prevent them?
Hint: Attackers submit properties modifying `__proto__` of objects. Prevent by using map structures with `Object.create(null)` or input validation schemas (Zod).

DSA: [Trie][Hard][Google] Find all prefixes of a word in a Trie.
Hint: Traverse prefix nodes. Return characters matching word search path. Time: O(L).

Aptitude: [Data Interpretation][Hard] Price indices: Year 1: 100, Year 2: 105. Find the inflation rate.
Hint: Inflation = (5 / 100) * 100 = 5%.


---

Q848.
MERN: [Database][Hard][Product Company] Explain compound index field order rules when running range queries in MongoDB.
Hint: Range fields must be placed after equality fields in the index sequence (ESR rule).

DSA: [Graphs][Hard][Google] Dijkstra's shortest path time complexity with different heap implementations.
Hint: Array heap: O(V²). Binary heap: O((V + E) log V). Fibonacci heap: O(E + V log V).

Aptitude: [Decision Making][Hard] Server space leasing: Location X: $1k/mo. Location Y: $12k upfront. Which option is cheaper at 1 year?
Hint: Cost X at 1 year = 12 * $1k = $12k. Cost Y at 1 year = $12k. Both cost the exact same.


---

Q849.
MERN: [Network][Hard][Product Company] Explain how Nginx handles WebSocket upgrades.
Hint: Map incoming connection upgrade headers: `Upgrade $http_upgrade` and `Connection "upgrade"`.

DSA: [Trie][Hard][Google] Check if a word can be formed by concatenating other words in a Trie.
Hint: DFS traversal tracking word ending branches. Return true on complete segments match. Time: O(2^L).

Aptitude: [Logical Reasoning][Hard] All apples are red. Some red things are sweet.
Conclusions: 1. Some apples are sweet. 2. Some sweet things are red.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Apples are inside red. Red intersects sweet. Apples and sweet do not necessarily intersect (1 is false). Sweet intersects red, so some sweet things are red (2 is true).


---

Q850.
MERN: [Performance][Hard][Product Company] How do you debug Node.js CPU bottlenecks using Clinic.js flame graphs?
Hint: Run `clinic flame -- node index.js`. Inspect generated graph to locate hot execution paths.

DSA: [Graphs][Hard][Google] Tarjan's SCC stack logic.
Hint: Stack records nodes in current search branch. Nodes are popped when a root element is fully resolved. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Expenses totals: Rent=40%, Food=30%, Other=30%. If total expenses are $3,000, find the Rent amount.
Hint: Rent = 40% of 3,000 = $1,200.
# ⭐⭐⭐⭐⭐ EXPERT ROADMAP — Q851 to Q900

## Kubernetes Canary, Kafka Offsets, Redis Sharding, React Server Components | Segment Trees, Fenwick Trees, Chinese Remainder Theorem, Matrix Exponentiation | Probability Math, Binary Logic, Financial Risk


---

Q851.
MERN: [Architecture][Hard][FAANG-Level] Explain how Kafka manages offsets. What are the differences between Auto-Commit vs Manual Commit of offsets? How do you prevent message duplication?
Hint: Kafka consumers track processed messages using offsets saved in internal logs. Auto-Commit commits offsets periodically in the background (risk: if consumer crashes mid-process, unprocessed messages are committed, causing data loss). Manual Commit (`commitSync` / `commitAsync`): consumer commits offsets explicitly *after* database writes succeed, guaranteeing at-least-once processing (risk: duplication if consumer crashes after database write but before offset commit). Enforce idempotency on the database level to prevent duplication.

DSA: [Segment Tree][Hard][Google] 🔴 MUST DO — Implement a Segment Tree to support Range Sum Queries and single-element updates in O(log N) time.
Hint: A Segment Tree is a binary tree where each node represents an interval sum. Build: recursively split array in half, leaf nodes store original array elements. Update: search downwards to the leaf node, modify value, and update parent node sums on recursion return. Query: check if target range overlaps completely, partially, or not at all with node intervals. Time: O(log N) for query/update, Space: O(N) array allocation.

Aptitude: [Probability][Hard] A database server has a 0.1% chance of failing on any given query. If a request sends 50 independent database queries, find the probability that at least one query fails (using normal approximation or binomial math).
Hint: Complement probability: P(at least 1 fails) = 1 - P(none fail).
P(none fail) = (1 - 0.001)^50 = 0.999^50.
Using approximation: (1 - x)^n ≈ 1 - nx (for small x).
P(none fail) ≈ 1 - 50(0.001) = 1 - 0.05 = 0.95.
P(at least 1 fails) ≈ 1 - 0.95 = 0.05 or 5% probability.


---

Q852.
MERN: [Performance][Hard][Product Company] Explain how React Server Components (RSC) differ from Server-Side Rendering (SSR). How do Server Actions execute on the backend?
Hint: SSR: renders components to HTML on server, client downloads HTML, and React hydates it into interactive SPA (entire code is shipped to client). RSC: renders components *only* on the server, returning a lightweight JSON description of the UI (zero bundle size shipped for server code, no hydration needed). Server Actions: special async functions declared on server (`"use server"`); client triggers them via RPC (Remote Procedure Call), sending parameters and receiving back updated UI payloads automatically.

DSA: [Fenwick Tree][Hard][Google] 🔴 MUST DO — Implement a Fenwick Tree (Binary Indexed Tree) to support Range Sum Queries and element updates in O(log N) time.
Hint: A Fenwick Tree stores prefix sums using bitwise indices. The parent index is calculated by adding/subtracting the last set bit (`idx & -idx`). Update: add value to index, and propagate to parent indices (`idx += idx & -idx`). Query (Prefix Sum): accumulate values, moving down to child indices (`idx -= idx & -idx`). Range query `(i, j)` is `query(j) - query(i-1)`. Time: O(log N), Space: O(N).

Aptitude: [Decision Making][Hard] You must evaluate two server hosting architectures: Serverless (costs $0.0000167 per GB-second, cold start delay 200ms). Dedicated VM (costs $150/mo flat, 0ms latency). If your app handles 1,000,000 requests/mo (average execution time 500ms, memory 1GB), choose the cheaper option.
Hint: Serverless monthly compute time = 1,000,000 * 0.5 sec = 500,000 GB-seconds.
Serverless Cost = 500,000 * $0.0000167 = $8.35/mo.
Dedicated VM Cost = $150/mo.
Serverless is significantly cheaper, assuming cold start delays are acceptable.


---

Q853.
MERN: [Caching][Hard][Product Company] Design a Redis sharding architecture using Hash Slots. How does Redis Cluster route requests when a client queries a key that belongs to another shard?
Hint: Redis Cluster maps key space into 16,384 Hash Slots. Key slot is calculated as `CRC16(key) % 16384`. Master nodes divide these slots. If client connects to Node A and queries a key belonging to Node B's slot, Node A responds with a `MOVED slot node-B-IP:port` redirection error. The client library receives this error, updates its internal slot cache, and redirects the query to Node B automatically.

DSA: [Math][Hard][Amazon] 🔴 MUST DO — Implement the Sieve of Eratosthenes to count the number of prime numbers strictly less than N.
Hint: Maintain a boolean array `isPrime` of size `N` initialized to `true`. Set `isPrime[0] = isPrime[1] = false`. Loop `i` from 2 to `√N`. If `isPrime[i]` is true, mark all multiples of `i` starting from `i*i` as `false`. Count the remaining `true` values in the array. Time: O(N log log N), Space: O(N).

Aptitude: [Puzzles][Hard] Solve the logic grid: Three researchers (X, Y, Z) work on different fields (AI, Bio, Quantum) using different languages (Python, C++, Julia). X works on AI. The researcher who uses C++ does not work on Quantum. Y uses Julia. Z does not work on Bio. Identify each researcher's field and language.
Hint: Y uses Julia (given). X works on AI (given).
Spots for languages: X (Python/C++), Z (C++/Python).
Z does not work on Bio, and X is in AI. Thus, Z must work on Quantum.
Remaining field for Y is Bio.
Rule: C++ user does not work on Quantum. Z works on Quantum, so Z cannot use C++.
Thus, Z must use Python.
X must use C++.
Arrangement: X = AI (C++), Y = Bio (Julia), Z = Quantum (Python).


---

Q854.
MERN: [Architecture][Hard][FAANG-Level] Explain how a Service Mesh (e.g. Istio or Linkerd) coordinates microservice traffic. What are the benefits of mTLS?
Hint: A service mesh routes traffic using sidecar proxies (e.g., Envoy) injected into microservice containers. Proxies handle service discovery, retries, load balancing, and traffic splitting. mutual TLS (mTLS) encrypts inter-service communication and validates cryptographic identity certificates on both ends (client-to-server and server-to-client), preventing network spoofing/sniffing.

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement the Extended Euclidean Algorithm to find modular inverse.
Hint: The Extended Euclidean algorithm finds integers `x` and `y` such that `a*x + b*y = gcd(a, b)`. Recursive step: solve `x'` and `y'` for `b` and `a % b`. Then update `x = y'` and `y = x' - (a / b) * y'`. If `gcd(a, m) == 1`, the modular inverse of `a` modulo `m` is `(x % m + m) % m`. Time: O(log(min(a, b))), Space: O(log(min(a, b))) stack.

Aptitude: [Data Interpretation][Hard] Study a production efficiency report: Shift A: 1000 items (error rate 1.5%), Shift B: 1200 items (error rate 2.5%), Shift C: 800 items (error rate 1.0%). Find the overall error rate percentage of all shifts combined.
Hint: Error counts: Shift A = 15. Shift B = 30. Shift C = 8. Total errors = 15 + 30 + 8 = 53.
Total items produced = 1000 + 1200 + 800 = 3000.
Overall error rate = (53 / 3000) * 100 = 1.77%.


---

Q855.
MERN: [Security][Hard][Product Company] Explain JWT Signature validation vulnerabilities (e.g., "alg: none" exploits, key confusion). How do you configure jsonwebtoken securely?
Hint: 1) "alg: none" exploit: attackers modify header to use "none" algorithm; if server doesn't validate, it accepts unsigned payloads. Prevent by checking algorithm explicitly on verification. 2) Key Confusion: attackers use public key (RS256) as HMAC secret (HS256) to sign token; server decrypts public key as secret. Prevent by passing strict algorithms list in options:
`jwt.verify(token, publicKey, { algorithms: ['RS256'] })`.

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement Matrix Exponentiation to find the N-th Fibonacci number in O(log N) time.
Hint: The Fibonacci recurrence relation is:
`[[F(n+1), F(n)], [F(n), F(n-1)]] = [[1, 1], [1, 0]]^n`.
Multiply 2x2 matrices recursively using binary exponentiation (divide exponent by 2 at each step). Reduces search/sum time from linear to logarithmic. Time: O(log N), Space: O(log N) stack.

Aptitude: [Decision Making][Hard] You must lease an office space: Space A: $4,000/mo base, utilities cost $500/mo. Space B: $3,000/mo base, utilities cost $1,500/mo. If utility costs in Space B decrease by 10% every quarter, find the cheaper option at 1 year.
Hint: Space A monthly cost = $4,500. Annual cost = 12 * 4,500 = $54,000.
Space B utilities by quarter (3 months each):
Q1: $1,500/mo. Q2: $1,350/mo. Q3: $1,215/mo. Q4: $1,093.50/mo.
Space B Costs:
Q1 = 3 * (3,000 + 1,500) = $13,500.
Q2 = 3 * (3,000 + 1,350) = $13,050.
Q3 = 3 * (3,000 + 1,215) = $12,645.
Q4 = 3 * (3,000 + 1,093.50) = $12,280.50.
Total B = 13,500 + 13,050 + 12,645 + 12,280.50 = $51,475.50.
Space B is cheaper at 1 year.


---

Q856.
MERN: [Architecture][Hard][Product Company] Explain Kafka Partition Rebalancing. What causes consumer group rebalances, and how do they impact MERN apps?
Hint: Rebalancing occurs when consumers join or leave a group, or partitions are added. It pauses message consumption, causing temporary latency spikes on Express servers.

DSA: [Segment Tree][Hard][Google] Implement a Segment Tree that supports Range Minimum Queries (RMQ).
Hint: Tree where nodes store the minimum value of their children intervals. Range query return min values of overlaps. Time: O(log N).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit sits opposite to Sunil. Sunil sits next to Vijay. Rajesh sits opposite to Vijay. Who sits opposite to Rajesh?
Hint: Rajesh is opposite to Vijay.


---

Q857.
MERN: [Architecture][Hard][Product Company] Design a distributed tracing configuration in Express using Jaeger.
Hint: Inject Jaeger tracer client middleware to capture headers, trace requests, and report logs to collectors.

DSA: [Segment Tree][Hard][Google] Find the number of elements in a range that are greater than a given value.
Hint: Merge Sort Tree or Segment Tree storing sorted arrays at each node. Run binary search on node arrays. Time: O(log² N).

Aptitude: [Data Interpretation][Hard] Monthly transaction amounts ($k) of 3 branches: Br A: 50, Br B: 60, Br C: 40. Find the percentage contribution of Branch B to total revenue.
Hint: Contribution B = (60 / 150) * 100 = 40%.


---

Q858.
MERN: [Performance][Hard][Product Company] What is hydration mismatch in SSR React?
Hint: DOM difference between server markup and client render. Ensure date strings don't render dynamically during mounting.

DSA: [Math][Hard][Google] Find modular inverse using Extended Euclidean Algorithm.
Hint: Solve `a*x + m*y = 1`. Modular inverse is `(x % m + m) % m`. Time: O(log(min(a, m))).

Aptitude: [Decision Making][Hard] Cloud database costs $12k/yr. Local database hosting setup costs $10k, annual electricity cost $3k. Find the break-even point in years.
Hint: Setup difference = $10k. Annual savings = $12k - $3k = $9k/yr. Break-even = $10k / $9k = 1.11 years.


---

Q859.
MERN: [Performance][Hard][Product Company] Explain React Query garbage collection options.
Hint: Cache is stored in memory. `cacheTime` defines duration before unused queries are evicted from heap memory.

DSA: [Math][Hard][Google] Implement Modular Exponentiation using binary exponentiation.
Hint: Compute `(base^exp) % mod` recursively or iteratively dividing exponent by 2. Time: O(log exp).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q860.
MERN: [Performance][Hard][Product Company] Design a production logging middleware in Express that records request duration, database query execution times, and CPU time using `process.hrtime()`.
Hint: Capture start time: `const start = process.hrtime()`. Add event listener to `res.on('finish')`. Calculate elapsed time:
`const diff = process.hrtime(start);`
`const durationMs = (diff[0] * 1e3 + diff[1]/1e6).toFixed(2);`
Log duration details, along with CPU usage metrics from `process.cpuUsage()`, to monitor resource saturation.

DSA: [Trie][Hard][Google] 🔴 MUST DO — Design an autocomplete system that queries database keywords sharing a prefix and filters search suggestions by popularity ranks.
Hint: Trie + Priority Queue. Node contains children map and a frequency counter. Collect prefix nodes, run DFS, push matching keywords into a Min-Heap of size 3 (sorting by frequency descending, then lexicographically). Time: O(PrefixLength + SubtreeDFS + K log K).

Aptitude: [Puzzles][Hard] Solve the puzzle: Four children (A, B, C, D) have different pets (Dog, Cat, Bird, Fish). The bird owner sits next to the dog owner. A has a Dog. C sits opposite to D. B has a Fish. Who owns the Cat?
Hint: Pets: A (Dog), B (Fish), C/D (Bird/Cat).
A (Dog) sits next to the bird owner (either C or D).
C sits opposite to D. B is at some spot.
Since B has a Fish and A has a Dog, the remaining pets (Bird, Cat) must belong to C and D.
If A(Dog) is adjacent to Bird owner (C/D), say C. Then C has the Bird.
Thus, D must have the Cat.
Arrangement: A=Dog, B=Fish, C=Bird, D=Cat.


---

Q861.
MERN: [Architecture][Hard][Product Company] Explain how Apollo Router executes federated GraphQL supergraph queries. How does it optimize subgraph execution?
Hint: The Apollo Router compiles supergraph schemas. When query arrives: 1) It creates a Query Plan (DAG representation of operations). 2) Fetches fields from respective subgraphs in parallel. 3) Stitches sub-responses using entity resolvers. It uses connection multiplexing and batch-loading to prevent N+1 queries across subgraphs.

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement the Chinese Remainder Theorem (CRT) to find the minimum number X that leaves given remainders modulo coprime integers.
Hint: CRT states that for equations `x ≡ r_i (mod m_i)`, if moduli are pairwise coprime, a unique solution exists modulo `M = m_1 * m_2 * ... * m_k`. For each index, calculate `M_i = M / m_i`, find its modular inverse `s_i` modulo `m_i`. The solution is `x = Sum(r_i * M_i * s_i) % M`. Time: O(K log M) where K is mod equations count.

Aptitude: [Data Interpretation][Hard] The radar chart shows candidate scores in Logic, Systems, and Coding: Cand A: Logic=4, Sys=3, Code=5; Cand B: Logic=5, Sys=4, Code=3. Find the candidate with the highest average score if Logic is weighted 50%, Systems 30%, and Coding 20%.
Hint: Weighted averages:
Cand A = 4(0.50) + 3(0.30) + 5(0.20) = 2.0 + 0.90 + 1.0 = 3.90.
Cand B = 5(0.50) + 4(0.30) + 3(0.20) = 2.5 + 1.20 + 0.60 = 4.30.
Candidate B has the highest weighted average.


---

Q862.
MERN: [Security][Hard][Product Company] What are Server-Side Template Injection (SSTI) attacks? How do you prevent SSTI in Node.js template engines?
Hint: SSTI occurs when user inputs are directly concatenated into template files (e.g. Pug/EJS) and evaluated by the server. Prevent by: 1) Never passing raw user inputs to template compilers. 2) Using template parameters for variables: `res.render('index', { user: req.body.username })` (which sanitizes input).

DSA: [Segment Tree][Hard][Google] 🔴 MUST DO — Implement a Segment Tree with Lazy Propagation to support Range Updates (addition) and Range Sum Queries in O(log N) time.
Hint: Standard updates take O(N log N) for ranges. Lazy propagation defers updates: maintain a secondary `lazy` array initialized to 0. When updating a range, if current node matches search bounds, update segment tree node, mark its children as lazy, and return. On subsequent visits, resolve lazy values before recursing. Time: O(log N) for both updates and queries, Space: O(N).

Aptitude: [Decision Making][Hard] Choosing software license: Option A: flat $10,000 upfront. Option B: $100/user/yr. If your company size is 50 employees and grows by 10 employees every year, find the break-even point in years.
Hint: Yearly cost Option B:
Y1 = 50 * 100 = $5,000.
Y2 = 60 * 100 = $6,000.
Cumulative cost B: Y1 = $5k. Y2 = $11k.
Break-even point is during Year 2 (specifically around 1.8 years), after which Option A becomes cheaper.


---

Q863.
MERN: [Performance][Hard][Product Company] Explain React Server Components streaming. How does Next.js stream UI chunks to clients before loading finishes?
Hint: Server renders components to a stream. When client requests page, Next.js sends static shell immediately. Slow components wrapped in `<Suspense>` are streamed as placeholder nodes. Once server completes resolving data queries, it sends the rendered HTML chunks and inline scripts to swap the placeholders.

DSA: [Fenwick Tree][Hard][Google] 🔴 MUST DO — Count of Smaller Numbers After Self: given an integer array, return the count of smaller numbers to the right of each element.
Hint: Fenwick Tree + Coordinate Compression (or Merge Sort). Map numbers to ranks (to handle large ranges). Traverse the array from right to left. For each number, query the Fenwick Tree for the sum of elements with rank smaller than current. Then, update the Fenwick tree by incrementing the count of current number rank. Time: O(N log N), Space: O(N).

Aptitude: [Logical Reasoning][Hard] Truth-tellers and Liars: Amit says "Sunil and Vijay are both liars." Sunil says "Amit is a liar." Vijay says "Amit is a truth-teller." Determine who is telling the truth.
Hint: Case analysis.
If Sunil is T: Amit is L (Sunil says Amit is L, which is true).
If Amit is L: Vijay is L (Vijay says Amit is T, which is false).
Let's check Amit's statement: "Sunil and Vijay are both liars". Since Sunil is T, Amit's statement is false, which matches.
Sunil is Truth-teller, Amit and Vijay are Liars.


---

Q864.
MERN: [Database][Hard][Product Company] Explain compound index constraints when running queries with multiple range boundaries in MongoDB.
Hint: MongoDB cannot use index bounds for range conditions on more than one field of a compound index. For `{ age: 1, score: 1 }` and query `{ age: { $gt: 20 }, score: { $gt: 80 } }`, MongoDB uses index to match age, and scans remaining index keys to filter score.

DSA: [Math][Hard][Google] Implement the Karatsuba Algorithm for fast multiplication of two large strings of digits.
Hint: Divides digits into two halves. Let x = x1*10^(n/2) + x0, y = y1*10^(n/2) + y0.
`x * y = z2*10^n + z1*10^(n/2) + z0` where:
`z2 = x1 * y1`
`z0 = x0 * y0`
`z1 = (x1 + x0) * (y1 + y0) - z2 - z0`.
Reduces additions/multiplications count from 4 to 3 recursively. Time: O(N^1.58), Space: O(N).

Aptitude: [Puzzles][Hard] Solve the puzzle: A clock strikes once at 1:00, twice at 2:00, and so on. If it strikes twice as fast as normal, how many times will it strike in 24 hours?
Hint: Number of strikes in 12 hours = 1 + 2 + ... + 12 = 78.
In 24 hours, normal strikes = 78 * 2 = 156.
Since it strikes twice as fast, it still strikes the same number of times per hour, just taking less duration. Total strikes = 156.


---

Q865.
MERN: [Performance][Hard][Product Company] Design a production CPU metrics exporter in Node.js. How do you trigger scaling notifications when the main thread block time exceeds 500ms?
Hint: Use the `perf_hooks` library. Monitor event loop delay by scheduling a `setInterval` checking execution delay:
`const start = performance.now(); setTimeout(() => { const delay = performance.now() - start - interval; if (delay > 500) triggerAlert(); }, interval);`

DSA: [Fenwick Tree][Hard][Google] Find the number of reverse pairs in an array (Reverse Pairs: index i < j and nums[i] > 2*nums[j]).
Hint: Fenwick Tree + Coordinate Compression. Sort all numbers and `2*nums` to map ranks. Traverse array from right to left. Query Fenwick tree for the count of elements with rank smaller than current `nums[i]/2`. Then, update Fenwick tree with rank of current `nums[i]`. Time: O(N log N).

Aptitude: [Decision Making][Hard] Upgrading hosting plan: Plan A: $500/mo flat. Plan B: $100/mo base + $0.10 per CPU hour. If your application CPU usage averages 3,000 hours a month, choose the cheaper plan.
Hint: Cost Plan B = $100 + (3,000 * 0.10) = $100 + $300 = $400/mo. Plan B is cheaper.


---

Q866.
MERN: [Architecture][Hard][Product Company] Explain how to implement a retry logic for failed API transactions using a RabbitMQ Dead Letter Exchange (DLX).
Hint: Configure target queue with `x-dead-letter-exchange` and `x-dead-letter-routing-key`. When message is rejected (`nack(requeue: false)`), RabbitMQ automatically publishes it to the DLX, forwarding it to the DLQ.

DSA: [Math][Hard][Google] Implement modular exponentiation for large numbers (Super Pow: a^b mod 1337 where b is an array of digits).
Hint: Property of modulo: `a^b % C = (a^(b % phi(C))) % C` (Euler's theorem) or process digits recursively: `a^[1,5,6] = (a^[1,5])^10 * a^6 % 1337`. Time: O(DigitsLength).

Aptitude: [Data Interpretation][Hard] Monthly cloud database reads (in millions): Div X: 10, Div Y: 15, Div Z: 8. If cost per million reads is $5, find the monthly database compute costs of all divisions combined.
Hint: Total reads = 33 million.
Total cost = 33 * 5 = $165.


---

Q867.
MERN: [Security][Hard][Product Company] What are XML Bomb (Billion Laughs) exploits? How do you prevent resource exhaustion in Express body parsers?
Hint: Entity definitions reference preceding entities recursively. Secure by disabling DTD inline schema parsing.

DSA: [Segment Tree][Hard][Google] Find the range minimum query (RMQ) of a mutable array in O(log N) time.
Hint: Segment tree where nodes store the minimum value of their children intervals. Update recursively sinks to leaf, updates parents. Time: O(log N).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is older than Sunil. Sunil is older than Vijay. Rajesh is older than Amit. Who is the youngest?
Hint: R > A > S > V. Vijay is the youngest.


---

Q868.
MERN: [Database][Hard][Product Company] What are database connection limits? How do you configure MongoDB connection limits for serverless functions?
Hint: Serverless functions scale-out quickly, saturating database connections. Configure pool limits: `maxPoolSize: 10` inside connection URI parameters.

DSA: [Math][Hard][Google] Find the modular inverse of a number using Fermat's Little Theorem.
Hint: If `m` is prime, modular inverse of `a` is `a^(m-2) % m`. Use binary exponentiation to solve in logarithmic time. Time: O(log m).

Aptitude: [Decision Making][Hard] Outsource software development: Option X: $10,000 setup, maintenance $1,000/yr. Option Y: In-house engineer costing $1,500/mo. Choose the cheaper option at 1 year.
Hint: Cost Option X = $11,000. Cost Option Y = 12 * $1,500 = $18,000. Option X is cheaper.


---

Q869.
MERN: [Network][Hard][Product Company] How do you secure WebSockets against Cross-Site WebSocket Hijacking (CSWSH) in Express?
Hint: Validate incoming request Origin headers during handshake connection phase against a whitelist of trusted domains.

DSA: [Fenwick Tree][Hard][Google] Implement a 2D Fenwick Tree supporting Range Sum Queries on a 2D matrix.
Hint: Bitwise index tracking on both row and column loops: `idxX += idxX & -idxX`, `idxY += idxY & -idxY`. Time: O(log M * log N).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q870.
MERN: [Performance][Hard][Product Company] Explain how to identify database query bottlenecks using MongoDB Profiler.
Hint: Enable system profile: `db.setProfilingLevel(1, 100)` (logs queries taking >100ms). Look for `COLLSCAN` inside execution logs.

DSA: [Math][Hard][Google] Solve the Greatest Common Divisor of strings (GCD of strings: find largest string X that can divide both str1 and str2).
Hint: If `str1 + str2 != str2 + str1`, return "". Else, return substring of `str1` from index 0 to `gcd(len1, len2)`. Time: O(N).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q871.
MERN: [Architecture][Hard][Product Company] Explain the Saga Pattern choreography-based approach in microservices.
Hint: Microservices publish/listen to event topics. Each updates state, triggering events prompting neighboring services to execute transactions.

DSA: [Backtracking][Hard][Google] 🔴 MUST DO — Implement a Sudoku Solver using backtracking DFS.
Hint: Traverse grid. Find empty cell `(r, c)`. Attempt placing digits 1-9. Check if digit is valid (not in row, col, or 3x3 subgrid). If valid, place digit, recurse. If recursion returns true, return true. Else, reset cell to '.' (backtrack). Time: O(9^(N²)).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit sits opposite to Sunil. Sunil sits next to Vijay. Rajesh sits opposite to Vijay. Who sits opposite to Rajesh?
Hint: Opposites: Amit-Sunil, Rajesh-Vijay. The person sitting opposite to Rajesh is Vijay.


---

Q872.
MERN: [Performance][Hard][Product Company] Explain React Query garbage collection and cache hydration.
Hint: React Query keeps cache in memory, clearing unused keys after `cacheTime` (default 5 mins) to prevent memory leakage.

DSA: [Backtracking][Hard][Google] 🔴 MUST DO — Solve the N-Queens problem: place N queens on an N x N chessboard so that no two queens threaten each other.
Hint: Backtracking. Place queens row-by-row. Maintain three sets to track columns, positive diagonals `(r + c)`, and negative diagonals `(r - c)` that have active queens. For each col, if safe, place queen, update sets, recurse next row. Backtrack by removing queen and clearing sets. Time: O(N!), Space: O(N).

Aptitude: [Decision Making][Hard] Consolidating microservices: Option A: merge 5 services into 1 monolith (saves $2k/mo in host, takes 2 months of dev costing $10k). Option B: keep separate (zero cost). Find the break-even point in months.
Hint: Break-even point = $10,000 / $2,000 = 5 months.


---

Q873.
MERN: [Security][Hard][Product Company] How do you prevent XML Entity Expansion (Billion Laughs) resource exhaustion in Node.js?
Hint: Configure XML parser to disable DTD inline entity expansions.

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement Modular Exponentiation to find (base^exp) % mod in O(log exp) time.
Hint: Binary exponentiation. Initialize `res = 1`. Update `base = base % mod`. While `exp > 0`, if `exp` is odd, `res = (res * base) % mod`. Divide `exp` by 2, and update `base = (base * base) % mod`. Time: O(log exp).

Aptitude: [Data Interpretation][Hard] Price growth: Y1 = $100, Y2 = $105. Find the percentage price growth.
Hint: Growth = (5 / 100) * 100 = 5%.


---

Q874.
MERN: [Database][Hard][Product Company] Explain compound index field order constraints when sorting range fields in MongoDB.
Hint: Index structure: `{ equalityField: 1, sortField: 1, rangeField: 1 }` (ESR rule).

DSA: [Math][Hard][Google] Find the count of digits one in numbers up to N (Number of Digit One).
Hint: Math/Digit count. Loop through positions (1s, 10s, 100s). For each position, count 1s contributed: `(N / (i*10)) * i + min(max(N % (i*10) - i + 1, 0), i)`. Time: O(log N).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q875.
MERN: [Performance][Hard][Product Company] How do you analyze CPU bottlenecks in Node.js using flame graphs?
Hint: Capture V8 profile log. Open in Chrome DevTools to locate wide blocks showing heavy execution times.

DSA: [Backtracking][Hard][Google] 🔴 MUST DO — Sudoku validation: check if a given Sudoku board configuration is valid.
Hint: Use three arrays of size 9 tracking sets for rows, columns, and 3x3 grids. Loop elements; if character is present, verify it is not already in the row, col, or grid set. Time: O(1) since board is fixed 9x9.

Aptitude: [Data Interpretation][Hard] Monthly transaction amounts ($k) of 3 branches: Br A: 50, Br B: 60, Br C: 40. Find the percentage contribution of Branch B to total revenue.
Hint: Total = 150. B contribution = (60 / 150) * 100 = 40%.


---

Q876.
MERN: [Streams][Hard][Product Company] Custom Transform stream converting text to uppercase.
Hint: Override `_transform(chunk, enc, cb)` pushing `chunk.toString().toUpperCase()`.

DSA: [Backtracking][Hard][Google] Find all permutations of a string.
Hint: Recursively swap characters in the string, or use backtracking with a boolean array tracking active path elements. Time: O(N!).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. C is next to D. A is not next to C. The person sitting next to B is A.


---

Q877.
MERN: [Security][Hard][Product Company] Configure helmet CSP directives to allow trusted script nonces.
Hint: Generate nonces in middleware, pass to template engine, and inject into scripts: `<script nonce="random">`.

DSA: [Backtracking][Hard][Google] Solve N-Queens validation: check if N queens can sit safely.
Hint: Place queen row-by-row. Maintain columns, diagonal, and anti-diagonal sets. Time: O(N!).

Aptitude: [Data Interpretation][Hard] A line graph shows prices: Y1 = $10, Y2 = $12. Find the percentage price growth.
Hint: Growth = (2 / 10) * 100 = 20%.


---

Q878.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [Backtracking][Hard][Google] Solve Unique Paths III: find the number of paths from start to end visiting every non-obstacle cell exactly once.
Hint: DFS backtracking. Count empty cells. Traverse grid in 4 directions, decrementing empty count. Return 1 if target reached and empty count is -1. Backtrack on exit. Time: O(4^(M*N)).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q879.
MERN: [Network][Hard][Product Company] Configure Nginx load balancer to support HTTP/3 QUIC connection streams.
Hint: Listen on UDP port 443 with `http3` directive and return `Alt-Svc` headers.

DSA: [Math][Hard][Google] Implement Knight Dialer: count the number of distinct phone numbers of length N a knight can dial on a keypad.
Hint: DP on 10 digit keys. State transitions defined by knight moves. `dp[i][j]` is ways to reach key `j` at step `i`. Sum transitions from adjacent moves. Time: O(N).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q880.
MERN: [Performance][Hard][Product Company] Identify memory leaks using heap dump comparison summary views.
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Math][Hard][Google] Count of Range Sum: find the number of range sums that lie in [lower, upper] inclusive.
Hint: Merge Sort variant or Segment/Fenwick Tree. Build prefix sum array. Run merge sort; during merge step, maintain pointers to count differences within bounds. Time: O(N log N).

Aptitude: [Data Interpretation][Hard] Revenue values: Month 1: $10k, Month 2: $15k, Month 3: $12k. Find the average revenue.
Hint: Average = (10 + 15 + 12) / 3 = 37 / 3 = $12.33k.


---

Q881.
MERN: [Performance][Hard][Product Company] Explain the differences between virtual DOM reconciliation and direct DOM manipulation in high-frequency rendering.
Hint: Virtual DOM computes diffs in memory (batching updates, reducing layout thrashing). Direct DOM is faster for isolated high-frequency updates (e.g. video player animations) because it bypasses React diff overhead, but can cause layout reflows if not batched.

DSA: [Graphs][Hard][Google] Find the strongly connected components count using Tarjan's DFS.
Hint: Run Tarjan's SCC. Count how many times `low[u] == disc[u]` occurs. Time: O(V + E).

Aptitude: [Puzzles][Hard] Amit is older than Sunil. Sunil is older than Vijay. Rajesh is older than Amit. Who is the youngest?
Hint: R > A > S > V. Vijay is the youngest.


---

Q882.
MERN: [Streams][Hard][Product Company] Custom Transform stream that reverses each line of incoming text buffers.
Hint: Buffer text, split by newline, reverse each line string, push to stream.

DSA: [Graphs][Hard][Google] Dijkstra's shortest path with matrix grid.
Hint: Min-heap stores coordinates `(dist, r, c)`. Relax grid cells in 4 directions. Time: O(M * N log(M * N)).

Aptitude: [Puzzles][Hard] Six people sit in a row. A is sitting next to B. C is sitting next to D. A is at the extreme left. Who sits next to C if D is third from left?
Hint: Positions: A=1, B=2, D=3, C=4. The people sitting next to C are D and E/F.


---

Q883.
MERN: [Security][Hard][Product Company] What are XML entity expansion (Billion Laughs) attacks? How do you prevent XML parsing resource exhaustion?
Hint: XML parses nested entity definitions recursively. Disable inline DTD schemas inside XML parser configurations.

DSA: [Trie][Hard][Google] Implement a prefix Trie storing key-value pairs.
Hint: Trie nodes contain value fields. Search returns value at node. Time: O(L).

Aptitude: [Data Interpretation][Hard] Chart analysis: Year 1 sales of Product A=100k, Year 2=120k. Product B Year 1=80k, Year 2=96k. Which product had the highest percentage sales growth?
Hint: Growth A = 20%. Growth B = 20%. Both have the exact same percentage growth.


---

Q884.
MERN: [Database][Hard][Product Company] Explain MongoDB Partial Indexes. Show how to create a partial index on a field that only indexes documents with `price > 1000`.
Hint: Mongoose index: `schema.index({ name: 1 }, { partialFilterExpression: { price: { $gt: 1000 } } });`

DSA: [Graphs][Hard][Google] Find the shortest path between all pairs using Floyd-Warshall.
Hint: Initialize 2D matrix. Loop indices `k, i, j`. Update `dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])`. Time: O(V³).

Aptitude: [Decision Making][Hard] Office space lease: Location X: $2,000/mo, covers security. Location Y: $1,500/mo, security costs $600/mo. Choose the cheaper option.
Hint: Cost X = $2,000. Cost Y = $1,500 + $600 = $2,100. Location X is cheaper.


---

Q885.
MERN: [Network][Hard][Product Company] How do you handle client network connection migration in Socket.io using HTTP/3?
Hint: HTTP/3 QUIC protocol handles network changes transparently without socket disconnects using connection IDs.

DSA: [Trie][Hard][Google] Count the number of words in a Trie that share a given prefix.
Hint: Traverse prefix path node. Return subtree word count variable stored at node or do DFS. Time: O(L).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q886.
MERN: [Performance][Hard][Product Company] How do you identify garbage collection memory leaks using Chrome DevTools memory allocation timelines?
Hint: Look for blue bars indicating memory allocations that remain active and do not disappear after garbage collection.

DSA: [Graphs][Hard][Google] Kosaraju's strongly connected components transpose step logic.
Hint: Transpose reverses directed edges. Ensures DFS searches back-links to locate isolated SCC blocks. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Monthly transaction amounts ($k) of 3 branches: Br A: 50, Br B: 60, Br C: 40. Find the percentage contribution of Branch B to total revenue.
Hint: Total = 150. B contribution = (60 / 150) * 100 = 40%.


---

Q887.
MERN: [Architecture][Hard][Product Company] Explain how to implement a retry logic for database transaction write conflicts in MongoDB.
Hint: Wrap transaction in a try/catch loop. If write conflict error (`TransientTransactionError`) is thrown, retry the transaction block up to 3 times.

DSA: [Graphs][Hard][Google] Implement Kahn's Topological Sort.
Hint: Calculate indegrees. Enqueue indegree 0. While queue not empty, dequeue, decrement neighbor indegrees, enqueue if 0. Time: O(V + E).

Aptitude: [Puzzles][Hard] A clock strikes 6 times in 5 seconds. How long does it take to strike 12 times?
Hint: 6 strikes have 5 intervals. Time = 5s, so 1 interval = 1s. 12 strikes have 11 intervals. Time = 11 * 1s = 11 seconds.


---

Q888.
MERN: [Streams][Hard][Product Company] Explain backpressure mechanics in Readable streams. What is the role of `stream.push()` returning `false`?
Hint: `push()` returning `false` indicates internal read buffer is full; the stream should stop reading/pushing until consumer drains it.

DSA: [Trie][Hard][Google] Implement a prefix matching dictionary using a Trie.
Hint: Standard search returning words in the leaf subtrees. Time: O(L + V).

Aptitude: [Data Interpretation][Hard] Import/Export values: Year 1: Import=30, Export=40; Year 2: Import=35, Export=50. Which year had a higher trade surplus?
Hint: Surplus Y1 = 10. Surplus Y2 = 15. Year 2 had a higher surplus.


---

Q889.
MERN: [Security][Hard][Product Company] What are HTTP request smuggling vulnerabilities? How do you prevent them in MERN API gateways?
Hint: Smuggling occurs due to headers conflicts (Content-Length vs Transfer-Encoding) between reverse proxy and backend. Configure proxy to use HTTP/2 or enforce strict header parsing.

DSA: [Graphs][Hard][Google] Dijkstra's algorithm node relaxation logic.
Hint: If `dist[u] + w < dist[v]`, update `dist[v] = dist[u] + w` and push to priority queue. Time: O(E log V).

Aptitude: [Decision Making][Hard] Project outsourcing: In-house costs $15k, completion 3 months. Outsourcing costs $10k, completion 5 months. If every month of delay costs $2k, choose the cheaper option.
Hint: Cost In-house = $15k. Cost Outsourced = $10k + (2 months delay * $2k) = $14k. Outsourcing is cheaper.


---

Q890.
MERN: [Database][Hard][Product Company] Explain compound index fields order constraints when sorting in MongoDB.
Hint: Sort keys must match index prefix or reverse index prefix. `{ a: 1, b: -1 }` cannot support sort `{ a: 1, b: 1 }`.

DSA: [Graphs][Hard][Google] Find the Eulerian Circuit in a directed graph.
Hint: Cycle traversal. All nodes must have equal indegree and outdegree, and be in a single connected component. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All doctors are graduates. No graduate is illiterate. Some illiterates are poor.
Conclusions: 1. No doctor is illiterate. 2. Some graduates are poor.
Which conclusion(s) logically follow?
Hint: Only 1 follows.


---

Q891.
MERN: [Performance][Hard][Product Company] How do you analyze Node.js memory allocations using heap profiling allocation sampling?
Hint: Enable allocation sampling. Inspect nodes allocating high amounts of persistent memory during execution.

DSA: [Trie][Hard][Google] Implement a Trie displaying memory utilization counts.
Hint: Node stores character size and children arrays. Count active nodes. Time: O(N).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q892.
MERN: [Streams][Hard][Product Company] Custom Transform stream converting text to uppercase.
Hint: Override `_transform(chunk, enc, cb)` pushing `chunk.toString().toUpperCase()`.

DSA: [Graphs][Hard][Google] Bellman-Ford negative weight cycle check logic.
Hint: Run Vth iteration relaxation. If any distance decreases, a negative cycle exists. Time: O(V * E).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. The person sitting next to B is A.


---

Q893.
MERN: [Security][Hard][Product Company] How do you configure helmet CSP directive nonces to allow trusted inline scripts?
Hint: Generate cryptographically strong random nonces in middleware, pass to template engine, and inject into scripts: `<script nonce="random">`.

DSA: [Trie][Hard][Google] Find the shortest path in a Trie.
Hint: Traverse children pointers following matching bits or characters. Time: O(L).

Aptitude: [Data Interpretation][Hard] A line graph shows prices: Y1 = $10, Y2 = $12. Find the percentage price growth.
Hint: Growth = (2 / 10) * 100 = 20%.


---

Q894.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [Graphs][Hard][Google] Tarjan's bridge finding low-link updates.
Hint: `low[u] = min(low[u], low[v])` for unvisited children, and `low[u] = min(low[u], disc[v])` for visited back-edges. Time: O(V + E).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q895.
MERN: [Network][Hard][Product Company] How do you configure Nginx load balancer to support HTTP/3 QUIC connection streams?
Hint: Listen on UDP port 443 with `http3` directive and return `Alt-Svc` headers.

DSA: [Trie][Hard][Google] Implement a prefix dictionary suffix lookup.
Hint: Traverse prefix path node. Retrieve all child keys recursively. Time: O(L + V).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q896.
MERN: [Performance][Hard][Product Company] How do you identify memory leaks using heap dump comparison summary views?
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Graphs][Hard][Google] Strongly connected components Kosaraju's DFS step 1 stack logic.
Hint: Stack records finish ordering. Ensures nodes with no outgoing edges in transpose graph are searched first. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Revenue values: Month 1: $10k, Month 2: $15k, Month 3: $12k. Find the average revenue.
Hint: Average = (10 + 15 + 12) / 3 = 37 / 3 = $12.33k.


---

Q897.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [Graphs][Hard][Google] Find the shortest path using Bellman-Ford.
Hint: Initialize distances. Relax V-1 times. Return distances array. Time: O(V * E).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q898.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override `_write(chunk, enc, cb)` calling `console.log(chunk.toString())` and callback.

DSA: [Trie][Hard][Google] Implement a prefix search trie.
Hint: Node kids traversing following letters. Returns true on leaf nodes match. Time: O(L).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q899.
MERN: [Security][Hard][Product Company] Explain SQL injection vulnerabilities in Node-Postgres applications. Show how to write safe parameterized queries.
Hint: Avoid inline string concatenations. Use prepared statements or parameterized values: `db.query('SELECT * FROM users WHERE id = $1', [userId])`.

DSA: [Graphs][Hard][Google] Find all articulation points using DFS.
Hint: DFS tracking discovery and low times. Node is articulation if low of child >= discovery of parent. Time: O(V + E).

Aptitude: [Decision Making][Hard] Database scaling: SQL server upgrade costs $5k. NoSQL setup costs $12k. If NoSQL performance is 3x higher, and every 1x performance increase is worth $4k, choose the better option.
Hint: SQL upgrade is more cost-effective upfront.


---

Q900.
MERN: [Database][Hard][Product Company] Explain multikey index constraints when creating compound indexes with geolocation.
Hint: You cannot create a compound index containing both a multikey array and a 2dsphere index.

DSA: [Graphs][Hard][Google] Check if a directed graph contains a cycle using DFS.
Hint: Visited state tracking: 0=unvisited, 1=visiting, 2=visited. Cycle if neighbor is in state 1. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All birds can fly. Penguin is a bird.
Conclusions: 1. Penguin can fly. 2. Some birds are penguins.
Which conclusion(s) logically follow?
Hint: Both follow.


---

## 📝 REVISION CHECKPOINT — Q801 to Q900

### Top Patterns Learned
1. **High-Scale MERN Operations**: Kafka manual commits, React Server Components (RSC) streams, Redis sharding, and Apollo Router subgraphs.
2. **Web Security & Profiling**: "alg: none" exploits, SSTI, custom performance exporters (`perf_hooks`), and heap allocation timelines.
3. **Advanced Graph Connectivity**: Tarjan's Bridge finding, Articulation Points, Strongly Connected Components (Tarjan & Kosaraju), and Eulerian paths.
4. **Segment & Fenwick Trees**: Range queries (sum, min) and mutable single-element/lazy range updates in O(log N).
5. **Backtracking & Advanced Math**: N-Queens, Sudoku solvers, Chinese Remainder Theorem, and Matrix Exponentiation.

### Most Important Concepts
- 🔴 Resolving Kafka offset commits after database consistency validations (Q851)
- 🔴 Segment Tree Lazy Propagation range modifications (Q862)
- 🔴 Matrix Exponentiation logarithmic calculation of Fibonacci sequences (Q855)
- 🔴 N-Queens backtracking column/diagonal coordinate tracking sets (Q872)
- 🔴 Sudoku backtracking validation grids (Q871, Q875)

### Revision Checklist
- [ ] Can you configure RS256 token verification in Express?
- [ ] Can you write a Segment Tree Class with range queries?
- [ ] Can you implement a Fenwick Tree Prefix Sum calculation?
- [ ] Can you solve the N-Queens puzzle for N=8?
- [ ] Can you explain the Chinese Remainder Theorem modulus calculation?
- [ ] Can you calculate the overall defect rate across multiple shifts?
# ⭐⭐⭐⭐⭐ EXPERT ROADMAP — Q901 to Q950

## Active-Active Replication, RTO/RPO Disaster Recovery, V8 Engine Flags, RBAC/ABAC Models | Miller-Rabin Primality, Aho-Corasick, Digit DP, 2D Fenwick Trees | Bayesian Analysis, Game Theory Payoffs, Cryptarithms


---

Q901.
MERN: [Architecture][Hard][FAANG-Level] Design an Active-Active Multi-Region MERN Application. How do you handle database write synchronization and cross-region latency in MongoDB?
Hint: Active-Active deployments run live servers in multiple geographical regions. MongoDB uses Multi-Region Replica Sets (where write queries must reach a majority of global nodes to commit) or MongoDB Atlas Global Clusters (where data is partitioned by geographical keys, e.g. `{ country: "US" }`, so local writes execute with low latency in local shards and replicate asynchronously globally). Cross-region updates can trigger write conflicts; handle using "Last-Write-Wins" (conflict resolution based on NTP synchronized timestamps) or CRDTs (Conflict-free Replicated Data Types).

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement the Miller-Rabin Primality Test to determine if a large integer N is prime with high probability.
Hint: Miller-Rabin is a probabilistic primality test. Write `N - 1 = 2^s * d` where `d` is odd. Select a random base `a` in `[2, N-2]`. Compute `x = a^d % N`. If `x == 1` or `x == N - 1`, N passes the test for base `a`. Otherwise, square `x` repeatedly `s-1` times; if `x` becomes `N-1`, N passes. Run for `k` independent bases (e.g., k=10) to reduce error probability to `< 4^-k`. Time: O(K log³ N).

Aptitude: [Puzzles][Hard] Solve the Cryptarithm: `BASE + BALL = GAMES`. Find the digit value of each letter.
Hint: Deduce step-by-step math constraints:
G must be 1 (carry over from column addition).
B must be 7, 8 or 9. Since B+B = GA (1A) or B+B+carry = 1A. If B=8, 8+8=16 (G=1, A=6? No, wait).
Let's test B=7: 7+7 = 14 (A=4, G=1? Wait, B+B+carry=GAMES. If B=7, S+L=S? If S=0, L=0? No, distinct digits).
Let's find: B=7, A=4, S=8, E=3, L=5, G=1, M=9, O=0? No, E+L = S (3+5=8).
S+L = E (8+5 = 13 → 3, carry 1).
A+A+1 = M (4+4+1 = 9).
B+B = GA (7+7 = 14 → G=1, A=4).
Let's verify: `7483 + 7488`? No, L and S must be distinct.
Digits are: B=7, A=4, S=8, E=3, L=5 (E+L = 3+5 = 8 -> S. S+L = 8+5 = 13 -> E with carry 1. Yes!).
`7483 + 7458 = 14941`. Let's check matching letters:
BASE = 7483. BALL = 7455. GAMES = 14948.
Check digits: B=7, A=4, S=8, E=3, L=5, G=1, M=9, S=8. All letters match distinct digits!
`7483 + 7455 = 14938`.
BASE = 7483. BALL = 7455. GAMES = 14938 (G=1, A=4, M=9, E=3, S=8). Matches perfectly!


---

Q902.
MERN: [Architecture][Hard][Product Company] Explain RTO (Recovery Time Objective) and RPO (Recovery Point Objective) in disaster recovery. Design a backup policy for a high-volume MERN database.
Hint: RTO: max duration the system can be offline after a crash. RPO: max data loss duration (expressed in time) allowed. For a high-volume app: 1) Run daily filesystem snapshots (RPO = 24h). 2) Run hourly incremental MongoDB oplog backups (RPO = 1h). 3) Configure replica sets across availability zones for auto-failover (RTO = 12s).

DSA: [Trie][Hard][Google] 🔴 MUST DO — Implement the Aho-Corasick Algorithm to search a text string for a dictionary of multiple patterns simultaneously in O(TextLength + OutputCount) time.
Hint: Trie with suffix links. Build a trie of all patterns. For each node, construct a "suffix link" to the longest proper suffix node of the current path (similar to KMP prefix array). Construct "dictionary links" to capture matches. Traverse the text by following trie children; if a character mismatch occurs, follow suffix links. Time: O(TotalPatternsLength + TextLength).

Aptitude: [Probability][Hard] A medical test is 99% accurate in detecting a disease when present. It has a 0.5% false positive rate. If 0.1% of the population has the disease, find the probability that a person who tests positive actually has the disease (Bayesian Analysis).
Hint: Bayes Theorem. P(D) = 0.001, P(H) = 0.999.
P(+ | D) = 0.99, P(+ | H) = 0.005.
P(D | +) = [0.99 * 0.001] / [0.99 * 0.001 + 0.005 * 0.999]
= 0.00099 / (0.00099 + 0.004995) = 0.00099 / 0.005985 ≈ 0.1654 or 16.54%.


---

Q903.
MERN: [Performance][Hard][Product Company] How do you tune V8 engine garbage collection flags (e.g., `--max-old-space-size`, `--nouse-idle-notification`) in high-scale Kubernetes pods?
Hint: In containers, Node does not automatically detect pod memory limits, causing OOM (Out Of Memory) kills when V8 heap exceeds the container threshold. Explicitly set:
`node --max-old-space-size=1536 index.js` (for a 2GB RAM container, leaving 512MB for overhead).
Use `--optimize-for-size` to reduce memory footprints and `--gc-interval` to force garbage collection triggers, avoiding memory saturation.

DSA: [DP][Hard][Google] 🔴 MUST DO — Non-negative Integers without Consecutive Ones: find the number of integers in the range [0, N] whose binary representations do not contain consecutive ones.
Hint: Digit DP. Convert N to its binary string. Define `dp[idx][lastBit][isLimit]` where `idx` is current bit index, `lastBit` is value of previous bit (0 or 1), and `isLimit` indicates if we are bounded by N's digits. At each step, if `lastBit == 1`, we can only place 0. If `lastBit == 0`, we can place 0 or 1 (if not limited). Time: O(log N).

Aptitude: [Decision Making][Hard] You have two marketing campaigns: Campaign A (costs $10,000, returns $30,000 profit on success with 40% probability, else $0). Campaign B (costs $5,000, returns $12,000 profit on success with 60% probability, else $0). Choose the campaign using Expected Monetary Value (EMV).
Hint: EMV Campaign A = (0.4 * $30,000) - $10,000 = $12,000 - $10,000 = $2,000.
EMV Campaign B = (0.6 * $12,000) - $5,000 = $7,200 - $5,000 = $2,200.
Choose Campaign B.


---

Q904.
MERN: [Database][Hard][FAANG-Level] Design a hierarchical Role-Based Access Control (RBAC) and Attribute-Based Access Control (ABAC) Mongoose schema structure for enterprise SaaS organizations.
Hint: Define schemas: 1) `Role`: `{ name: String, permissions: [String] }` (e.g. `permissions: ['user:write', 'user:read']`). 2) `User`: `{ email: String, roles: [{ type: ObjectId, ref: 'Role' }] }`. For ABAC, define policy rules: `{ resource: String, action: String, condition: String }` (where condition is a JSON string evaluating attributes, e.g., `"{ \"tenantId\": \"user.tenantId\" }"`).
Express middleware evaluates rules:
`const hasAccess = evaluateAbacCondition(user, resource, action, document);`

DSA: [Fenwick Tree][Hard][Google] 🔴 MUST DO — Implement a 2D Fenwick Tree to support Range Sum Queries and cell updates on an M x N matrix in O(log M * log N) time.
Hint: Extensions of 1D Fenwick tree. Maintain a 2D array `tree` of size `(M+1) * (N+1)`. Update `(x, y, val)`: run two nested loops using bitwise steps `i += i & -i` and `j += j & -j`, adding `val` to `tree[i][j]`. Query `(x, y)`: sum elements using loops `i -= i & -i` and `j -= j & -j`. Range sum of subgrid `(x1, y1) to (x2, y2)` is `query(x2, y2) - query(x1-1, y2) - query(x2, y1-1) + query(x1-1, y1-1)`. Time: O(log M * log N).

Aptitude: [Logical Reasoning][Hard] Truth-tellers and Liars: Amit says "Sunil and Vijay are both truth-tellers." Sunil says "Amit is a liar." Vijay says "Amit is a liar." Determine who is telling the truth.
Hint: Case analysis.
If Amit is T: Sunil and Vijay must be T.
But if Sunil is T, his statement "Amit is a liar" must be true, which contradicts Amit being T!
So Amit must be L.
Since Amit is L, his statement "Sunil and Vijay are both T" is false (at least one is L).
If Sunil is T: Sunil's statement "Amit is a liar" is true. Vijay's statement "Amit is a liar" is also true, making Vijay T.
Let's check Amit's statement again: "Sunil and Vijay are both T". Since both are T, Amit's statement is true. But Amit is L (contradiction!).
Thus, one of Sunil or Vijay must be L.
If Sunil is T and Vijay is L: Sunil says Amit is L (true). Vijay says Amit is T (false, matches Vijay being L). Amit says both are T (false, matches Amit being L). This matches perfectly!
Amit is Liar, Sunil is Truth-teller, Vijay is Liar.


---

Q905.
MERN: [Architecture][Hard][Product Company] Design a multi-tenant database connection manager in Express. How do you isolate tenant databases inside a Kubernetes cluster?
Hint: Use the connection pool manager. When request arrives, parse subdomain or header (e.g. `X-Tenant-ID`). If connection exists in cache map, return connection. Else:
`const conn = mongoose.createConnection(tenantDbUri, { maxPoolSize: 10 });`
Save in cache and return. Inside Kubernetes, isolate tenants using namespace-level network policies and separate MongoDB database users, ensuring pods of Tenant A cannot query databases of Tenant B.

DSA: [DP][Hard][Google] 🔴 MUST DO — Palindrome Partitioning III: find the minimum number of character changes required to partition a string into K palindromic substrings.
Hint: 2D DP. 1) Precompute `cost[i][j]` (min character changes to make substring `s[i...j]` a palindrome) in O(N²) time. 2) Let `dp[i][j]` be the min changes to partition prefix `s[0...i-1]` into `j` palindromes. Recurrence: `dp[i][j] = min(dp[l][j-1] + cost[l][i-1])` for all `l` from `j-1` to `i-1`. Time: O(K * N²), Space: O(N²).

Aptitude: [Data Interpretation][Hard] The line graph shows product failure rates: Mon=2.0%, Tue=1.5%, Wed=3.0%, Thu=1.0%. If total production batches are Mon=20k, Tue=25k, Wed=15k, Thu=30k, find the day with the highest number of failed products.
Hint: Failed counts:
Mon = 20,000 * 0.02 = 400.
Tue = 25,000 * 0.015 = 375.
Wed = 15,000 * 0.03 = 450.
Thu = 30,000 * 0.01 = 300.
Wednesday has the highest number of failed products (450).


---

Q906.
MERN: [Architecture][Hard][Product Company] Explain the Saga Pattern orchestration approach.
Hint: Central coordinator microservice directs transactions sequentially and triggers compensations on errors.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Course Schedule III: max courses selection.
Hint: Sort courses by deadline. Traverse, track total time. Push duration to Max-Heap. Pop and subtract longest if time exceeded. Time: O(N log N).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q907.
MERN: [Security][Hard][Product Company] How do you secure cookies against session hijacking?
Hint: Configure session cookies with `Secure`, `HttpOnly`, and `SameSite=Lax` headers to block access from scripts.

DSA: [Trie][Hard][Google] Find the shortest unique prefix of all words.
Hint: Trie tracking word node visits count. Return prefix up to first node with visit count 1. Time: O(TotalChars).

Aptitude: [Data Interpretation][Hard] Monthly transaction amounts ($k) of 3 branches: Br A: 50, Br B: 60, Br C: 40. Find the percentage contribution of Branch B to total revenue.
Hint: Total = 150. B contribution = (60 / 150) * 100 = 40%.


---

Q908.
MERN: [Performance][Hard][Product Company] How do you analyze memory allocations using heap snapshots?
Hint: Look for increasing instances of objects that remain allocated after garbage collection passes.

DSA: [Math][Hard][Google] Find modular inverse using Extended Euclidean Algorithm.
Hint: Solve `a*x + b*y = gcd(a, b)` recursively. Modular inverse is `(x % m + m) % m`. Time: O(log(min(a, b))).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. The person sitting next to B is A.


---

Q909.
MERN: [Architecture][Hard][Product Company] Explain how to scale Socket.io using Redis Adapter.
Hint: Inter-server communication via Redis pub/sub. Broadcasts are forwarded to other nodes automatically.

DSA: [Graphs][Hard][Google] Tarjan's Bridge finding algorithm.
Hint: DFS tracking discovery/low times. Bridge if child's low time > parent's discovery time. Time: O(V + E).

Aptitude: [Decision Making][Hard] Server upgrade: Option X: SSD drives (improves response time by 40%, cost $1,000). Option Y: RAM upgrade (improves response by 20%, cost $400). If cost per 1% response improvement is the metric, choose the cheaper option.
Hint: RAM upgrade (Option Y) is more cost-effective.


---

Q910.
MERN: [Performance][Hard][Product Company] What are CPU flame graphs? How do you profile Node.js event loop blocks under load testing?
Hint: Flame graphs represent CPU stack trace widths. Run Node with profiling flags: `node --prof index.js`. Generate traffic using `autocannon` to force event loop delays. Convert the log using `node-tick-processor` to generate SVG flame graphs. Look for wide blocks representing functions blocking the call stack.

DSA: [DP][Hard][Google] 🔴 MUST DO — Word Break II: return all possible space-separated sentences.
Hint: Backtracking DFS with memoization. Store completed suffixes in a map to prevent duplicate search operations. Time: O(2^N).

Aptitude: [Decision Making][Hard] Choosing software license: Option A: flat $10,000 upfront. Option B: $100/user/yr. If your company size is 50 employees and grows by 10 employees every year, find the break-even point in years.
Hint: Y1 cost = 5,000. Y2 cost = 6,000. Cumulative cost B: Y1 = $5k. Y2 = $11k. Break-even is at 1.83 years.


---

Q911.
MERN: [Security][Hard][Product Company] Explain Cross-Origin Resource Sharing (CORS) preflight requests. How do you configure CORS headers in Express to prevent credentials exposure?
Hint: Browsers send an OPTIONS preflight request before modifying API calls. In Express, use `cors` middleware. Secure by: 1) Setting `origin` to a specific whitelist (never `*` when credentials are used). 2) Enforcing `credentials: true` (allows cookies). 3) Specifying `methods` and `allowedHeaders` explicitly.

DSA: [Math][Hard][Google] 🔴 MUST DO — Chinese Remainder Theorem implementation.
Hint: Loop moduli. Compute total product `M`. Calculate `M_i = M/m_i`. Find modular inverse `s_i` of `M_i` mod `m_i`. Add `r_i * M_i * s_i` to sum. Return `sum % M`. Time: O(K log M).

Aptitude: [Decision Making][Hard] Project outsourcing: In-house costs $15k, takes 3 months. Outsourcing costs $10k, takes 5 months. If each month of delay costs $2k, choose the cheaper option.
Hint: Cost In-house = $15k. Cost Outsourced = $10k + (2 * $2k) = $14k. Outsourcing is cheaper.


---

Q912.
MERN: [Performance][Hard][Product Company] Explain React Concurrent features: `useTransition` vs `useDeferredValue`. When do you use each?
Hint: `useTransition` provides a `startTransition` function to wrap state-modifying actions (e.g. click routing), marking them as low-priority. `useDeferredValue` accepts a state value and returns a deferred copy that updates in the background, useful when you don't control the state setter (e.g. props from parent).

DSA: [Segment Tree][Hard][Google] 🔴 MUST DO — Implement a Segment Tree with Lazy Propagation.
Hint: Lazy array stores pending range additions. Propagate lazy values to children nodes before traversing or modifying sub-intervals. Time: O(log N).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q913.
MERN: [Database][Hard][Product Company] Explain MongoDB Index Intersections. When does MongoDB merge two indexes, and what is the cost?
Hint: MongoDB merges query results of two separate index lookups using an intersection phase (e.g., merging scan index `{ name: 1 }` and `{ status: 1 }`). This consumes CPU/RAM; a compound index `{ name: 1, status: 1 }` is always faster.

DSA: [Trie][Hard][Google] 🔴 MUST DO — Design an autocomplete system that suggestions terms sorted by frequency.
Hint: Trie + Max Heap/Sorting. Trie nodes contain frequency count maps of historical words. Time: O(L + V log V).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q914.
MERN: [Architecture][Hard][Product Company] Design a distributed lock manager in Express using Redis.
Hint: Set unique key value with TTL across Redis nodes using `NX` option. Release lock using Lua script verifying unique value matches.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Floyd-Warshall shortest path algorithm.
Hint: 2D matrix dynamic programming. `dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])`. Time: O(V³).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q915.
MERN: [Security][Hard][Product Company] What are SSRF (Server-Side Request Forgery) attacks? How do you prevent them?
Hint: Restrict user URLs to an explicit domain whitelist. Validate DNS resolved IP addresses to block private loopback ranges.

DSA: [Math][Hard][Google] 🔴 MUST DO — Matrix Exponentiation for Fibonacci.
Hint: Matrix multiplication `[[1,1],[1,0]]^N` using binary exponentiation. Time: O(log N).

Aptitude: [Decision Making][Hard] Consolidating microservices: Option A: merge 5 services into 1 monolith (saves $2k/mo in host, takes 2 months of dev costing $10k). Option B: keep separate (zero cost). Find the break-even point in months.
Hint: Break-even point = $10,000 / $2,000 = 5 months.


---

Q916.
MERN: [Performance][Hard][Product Company] Explain React Server Components hydration mismatches.
Hint: Mismatch occurs when static server HTML differs from client initial render DOM. Avoid using dynamic timezone dates during initial load.

DSA: [Fenwick Tree][Hard][Google] 🔴 MUST DO — Implement 1D Fenwick Tree.
Hint: Prefix sums using bitwise index manipulation (`idx & -idx`). Time: O(log N).

Aptitude: [Data Interpretation][Hard] Price growth: Y1 = $100, Y2 = $105. Find the percentage price growth.
Hint: Growth = (5 / 100) * 100 = 5%.


---

Q917.
MERN: [Architecture][Hard][Product Company] Explain the Saga Pattern orchestration approach.
Hint: Central coordinator microservice directs transactions sequentially and triggers compensations on errors.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Course Schedule III: max courses selection.
Hint: Sort courses by deadline. Traverse, track total time. Push duration to Max-Heap. Pop and subtract longest if time exceeded. Time: O(N log N).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q918.
MERN: [Security][Hard][Product Company] How do you secure cookies against session hijacking?
Hint: Configure session cookies with `Secure`, `HttpOnly`, and `SameSite=Lax` headers to block access from scripts.

DSA: [Trie][Hard][Google] Find the shortest unique prefix of all words.
Hint: Trie tracking word node visits count. Return prefix up to first node with visit count 1. Time: O(TotalChars).

Aptitude: [Data Interpretation][Hard] Monthly transaction amounts ($k) of 3 branches: Br A: 50, Br B: 60, Br C: 40. Find the percentage contribution of Branch B to total revenue.
Hint: Total = 150. B contribution = (60 / 150) * 100 = 40%.


---

Q919.
MERN: [Performance][Hard][Product Company] How do you analyze memory allocations using heap snapshots?
Hint: Look for increasing instances of objects that remain allocated after garbage collection passes.

DSA: [Math][Hard][Google] Find modular inverse using Extended Euclidean Algorithm.
Hint: Solve `a*x + b*y = gcd(a, b)` recursively. Modular inverse is `(x % m + m) % m`. Time: O(log(min(a, b))).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. C is next to D. A is not next to C. The person sitting next to B is A.


---

Q920.
MERN: [Architecture][Hard][Product Company] Explain how to scale Socket.io using Redis Adapter.
Hint: Inter-server communication via Redis pub/sub. Broadcasts are forwarded to other nodes automatically.

DSA: [Graphs][Hard][Google] Tarjan's Bridge finding algorithm.
Hint: DFS tracking discovery/low times. Bridge if child's low time > parent's discovery time. Time: O(V + E).

Aptitude: [Decision Making][Hard] Server upgrade: Option X: SSD drives (improves response time by 40%, cost $1,000). Option Y: RAM upgrade (improves response by 20%, cost $400). If cost per 1% response improvement is the metric, choose the cheaper option.
Hint: RAM upgrade (Option Y) is more cost-effective.


---

Q921.
MERN: [Security][Hard][Product Company] What are XML External Entity (XXE) attacks?
Hint: Attacker parses external DTD references inside XML payloads. Prevent by disabling inline DTD entity resolutions.

DSA: [Trie][Hard][Google] Find the maximum XOR of two numbers in an array.
Hint: Insert numbers into binary Trie. Traverse trying opposite bits to maximize XOR results. Time: O(32 * N).

Aptitude: [Data Interpretation][Hard] Import/Export values: Year 1: Import=30, Export=40; Year 2: Import=35, Export=50. Which year had a higher trade surplus?
Hint: Surplus Y1 = 10. Surplus Y2 = 15. Year 2 had a higher surplus.


---

Q922.
MERN: [Performance][Hard][Product Company] Identify memory leaks using heap dump comparison summary views.
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Graphs][Hard][Google] Kosaraju's Strongly Connected Components algorithm.
Hint: Two DFS passes. First pass DFS stack ordering. Second pass DFS on transpose graph. Time: O(V + E).

Aptitude: [Puzzles][Hard] A clock strikes 6 times in 5 seconds. How long does it take to strike 12 times?
Hint: 6 strikes have 5 intervals. Time = 5s, so 1 interval = 1s. 12 strikes have 11 intervals. Time = 11 * 1s = 11 seconds.


---

Q923.
MERN: [Architecture][Hard][Product Company] Design a Kafka message retry queue in Express.
Hint: Forward failed messages to retry topics with retry-count headers, moving to DLQ on threshold breach.

DSA: [Trie][Hard][Google] Implement a Trie containing wildcard characters `.` that can match any letter.
Hint: DFS recursion on dot characters to traverse children branches. Time: O(26^L).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q924.
MERN: [Security][Hard][Product Company] Explain Command Injection in Node.js child processes.
Hint: Unsanitized input run in shell. Prevent by using `spawn` and passing inputs as array arguments.

DSA: [Graphs][Hard][Google] Find all articulation points in a graph.
Hint: DFS tracking discovery/low times. Articulation if low child >= disc parent. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All birds can fly. Penguin is a bird.
Conclusions: 1. Penguin can fly. 2. Some birds are penguins.
Which conclusion(s) logically follow?
Hint: Both follow.


---

Q925.
MERN: [Performance][Hard][Product Company] How do you analyze CPU bottlenecks using flame graphs?
Hint: Capture V8 profile log. Open in Chrome DevTools to locate wide blocks showing heavy execution times.

DSA: [Math][Hard][Google] Sieve of Eratosthenes prime numbers check.
Hint: Boolean array initialized to true. Mark multiples of prime numbers from i*i false. Time: O(N log log N).

Aptitude: [Data Interpretation][Hard] Revenue values: Month 1: $10k, Month 2: $15k, Month 3: $12k. Find the average revenue.
Hint: Average = (10 + 15 + 12) / 3 = 37 / 3 = $12.33k.


---

Q926.
MERN: [Streams][Hard][Product Company] Custom Transform stream converting text to uppercase.
Hint: Override _transform(chunk, enc, cb) pushing chunk.toString().toUpperCase().

DSA: [Math][Hard][Google] Implement Modular Exponentiation.
Hint: Binary exponentiation matching `(base^exp) % mod` in logarithmic time. Time: O(log exp).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit sits opposite to Sunil. Sunil sits next to Vijay. Rajesh sits opposite to Vijay. Who sits opposite to Rajesh?
Hint: Opposites: Amit-Sunil, Rajesh-Vijay. The person sitting opposite to Rajesh is Vijay.


---

Q927.
MERN: [Security][Hard][Product Company] Prevent Prototype Pollution in Express JSON body parsers.
Hint: Validate inputs using schemas (Zod/Joi) and reject keys modifying `__proto__`.

DSA: [Backtracking][Hard][Google] N-Queens placement solver.
Hint: Place queen row-by-row tracking active columns, diagonals, and anti-diagonals sets. Time: O(N!).

Aptitude: [Data Interpretation][Hard] Price indices: Year 1: 100, Year 2: 105. Find the inflation rate.
Hint: Inflation = (5 / 100) * 100 = 5%.


---

Q928.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [Backtracking][Hard][Google] Sudoku Solver.
Hint: Backtracking DFS placing digits 1-9. Verify valid rows, columns, and 3x3 grids. Time: O(9^(N²)).

Aptitude: [Decision Making][Hard] Server space leasing: Location X: $1k/mo. Location Y: $12k upfront. Which option is cheaper at 1 year?
Hint: Both cost the exact same.


---

Q929.
MERN: [Network][Hard][Product Company] Configure Nginx load balancer to support HTTP/3 QUIC connection streams.
Hint: Listen on UDP port 443 with http3 directive and return Alt-Svc headers.

DSA: [Backtracking][Hard][Google] Solve Unique Paths III.
Hint: DFS backtracking counting empty cells. Return 1 when target reached and empty count is -1. Time: O(4^(M*N)).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q930.
MERN: [Performance][Hard][Product Company] Identify memory leaks using heap dump comparison summary views.
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Math][Hard][Google] Knight Dialer number of phone combinations.
Hint: DP on 10 digit keys. Transition sums matching valid knight movements. Time: O(N).

Aptitude: [Data Interpretation][Hard] Expenses totals: Rent=40%, Food=30%, Other=30%. If total expenses are $3,000, find the Rent amount.
Hint: Rent = 40% of 3,000 = $1,200.


---

Q931.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [Math][Hard][Google] Count of Range Sum: find the number of range sums that lie in [lower, upper] inclusive.
Hint: Merge Sort variant. Build prefix sum array. Run merge sort; during merge step, maintain pointers to count differences within bounds. Time: O(N log N).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q932.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override _write(chunk, enc, cb) calling console.log(chunk.toString()) and callback.

DSA: [Trie][Hard][Google] Autocomplete system suggesting terms sorted by popularity ranks.
Hint: Trie + Max Heap/Sorting. Trie nodes contain frequency count maps of historical words. Time: O(L + V log V).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q933.
MERN: [Security][Hard][Product Company] Explain SQL injection vulnerabilities in Node-Postgres applications. Show how to write safe parameterized queries.
Hint: Avoid inline string concatenations. Use prepared statements or parameterized values: db.query('SELECT * FROM users WHERE id = $1', [userId]).

DSA: [Graphs][Hard][Google] Dijkstra's algorithm.
Hint: Min-priority queue node relaxations finding shortest path from source. Time: O(E log V).

Aptitude: [Decision Making][Hard] Project outsourcing: In-house costs $15k, completion 3 months. Outsourcing costs $10k, completion 5 months. If every month of delay costs $2k, choose the cheaper option.
Hint: Cost In-house = $15k. Cost Outsourced = $10k + (2 months delay * $2k) = $14k. Outsourcing is cheaper.


---

Q934.
MERN: [Database][Hard][Product Company] Explain compound index fields order constraints when sorting in MongoDB.
Hint: Sort keys must match index prefix or reverse index prefix. { a: 1, b: -1 } cannot support sort { a: 1, b: 1 }.

DSA: [Graphs][Hard][Google] Find the Eulerian Circuit in a directed graph.
Hint: All nodes must have equal indegree and outdegree, and be in a single connected component. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All doctors are graduates. No graduate is illiterate. Some illiterates are poor.
Conclusions: 1. No doctor is illiterate. 2. Some graduates are poor.
Which conclusion(s) logically follow?
Hint: Only 1 follows.


---

Q935.
MERN: [Performance][Hard][Product Company] How do you analyze Node.js memory allocations using heap profiling allocation sampling?
Hint: Enable allocation sampling. Inspect nodes allocating high amounts of persistent memory during execution.

DSA: [Trie][Hard][Google] Suffix Tree implementation.
Hint: Suffix Trie inserting all suffixes of a text. Supporting fast substring matching checks. Time: O(N²).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q936.
MERN: [Streams][Hard][Product Company] Custom Transform stream converting text to uppercase.
Hint: Override _transform(chunk, enc, cb) pushing chunk.toString().toUpperCase().

DSA: [Graphs][Hard][Google] Bellman-Ford negative weight cycle check logic.
Hint: Run Vth iteration relaxation. If any distance decreases, a negative cycle exists. Time: O(V * E).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. C is next to D. A is not next to C (D is in between). The person sitting next to B is A.


---

Q937.
MERN: [Security][Hard][Product Company] How do you configure helmet CSP directive nonces to allow trusted inline scripts?
Hint: Generate cryptographically strong random nonces in middleware, pass to template engine, and inject into scripts: <script nonce="random">.

DSA: [Trie][Hard][Google] Find the longest common prefix of a set of strings using a Trie.
Hint: Insert strings. Start root, traverse down until node has multiple children or is word end. Time: O(N).

Aptitude: [Data Interpretation][Hard] A line graph shows prices: Y1 = $10, Y2 = $12. Find the percentage price growth.
Hint: Growth = (2 / 10) * 100 = 20%.


---

Q938.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [Graphs][Hard][Google] Tarjan's bridge finding low-link updates.
Hint: low[u] = min(low[u], low[v]) for unvisited children, and low[u] = min(low[u], disc[v]) for visited back-edges. Time: O(V + E).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q939.
MERN: [Network][Hard][Product Company] How do you configure Nginx load balancer to support HTTP/3 QUIC connection streams?
Hint: Listen on UDP port 443 with http3 directive and return Alt-Svc headers.

DSA: [Trie][Hard][Google] Implement a prefix dictionary suffix lookup.
Hint: Traverse prefix path node. Retrieve all child keys recursively. Time: O(L + V).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q940.
MERN: [Performance][Hard][Product Company] How do you identify memory leaks using heap dump comparison summary views?
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Graphs][Hard][Google] Strongly connected components Kosaraju's DFS step 1 stack logic.
Hint: Stack records finish ordering. Ensures nodes with no outgoing edges in transpose graph are searched first. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Revenue values: Month 1: $10k, Month 2: $15k, Month 3: $12k. Find the average revenue.
Hint: Average = (10 + 15 + 12) / 3 = 37 / 3 = $12.33k.


---

Q941.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [Graphs][Hard][Google] Find the shortest path using Bellman-Ford.
Hint: Initialize distances. Relax V-1 times. Return distances array. Time: O(V * E).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q942.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override _write(chunk, enc, cb) calling console.log(chunk.toString()) and callback.

DSA: [Trie][Hard][Google] Implement a prefix search trie.
Hint: Node kids traversing following letters. Returns true on leaf nodes match. Time: O(L).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q943.
MERN: [Security][Hard][Product Company] Explain SQL injection vulnerabilities in Node-Postgres applications. Show how to write safe parameterized queries.
Hint: Avoid inline string concatenations. Use prepared statements or parameterized values: db.query('SELECT * FROM users WHERE id = $1', [userId]).

DSA: [Graphs][Hard][Google] Find all articulation points using DFS.
Hint: DFS tracking discovery and low times. Node is articulation if low of child >= discovery of parent. Time: O(V + E).

Aptitude: [Decision Making][Hard] Database scaling: SQL server upgrade costs $5k. NoSQL setup costs $12k. If NoSQL performance is 3x higher, and every 1x performance increase is worth $4k, choose the better option.
Hint: SQL upgrade is more cost-effective upfront.


---

Q944.
MERN: [Database][Hard][Product Company] Explain multikey index constraints when creating compound indexes with geolocation.
Hint: You cannot create a compound index containing both a multikey array and a 2dsphere index.

DSA: [Graphs][Hard][Google] Check if a directed graph contains a cycle using DFS.
Hint: Visited state tracking: 0=unvisited, 1=visiting, 2=visited. Cycle if neighbor is in state 1. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All birds can fly. Penguin is a bird.
Conclusions: 1. Penguin can fly. 2. Some birds are penguins.
Which conclusion(s) logically follow?
Hint: Both follow.


---

Q945.
MERN: [Performance][Hard][Product Company] How do you profile CPU performance using flame graphs?
Hint: Capture V8 profile log. Open in Chrome DevTools to locate wide blocks showing heavy execution times.

DSA: [Trie][Hard][Google] Count the number of leaf nodes in a Trie.
Hint: DFS traversal counting nodes that have zero child nodes or are word ends. Time: O(N).

Aptitude: [Data Interpretation][Hard] Profit percentages: Company A: 10%, Company B: 15%. If both have revenues of $100k, find the profit of Company B.
Hint: Profit B = 15% of 100k = $15,000.


---

Q946.
MERN: [Streams][Hard][Product Company] Transform stream removing numbers from text chunks.
Hint: Replace digits inside chunk string using regex: chunk.toString().replace(/[0-9]/g, '').

DSA: [Graphs][Hard][Google] Floyd-Warshall node path updates logic.
Hint: dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j]). Time: O(V³).

Aptitude: [Puzzles][Hard] Five people sit in a circle. A is next to B. C is next to D. E is opposite to A. Who is next to E?
Hint: Neighbors of E are C and D.


---

Q947.
MERN: [Security][Hard][Product Company] What are prototype pollution vulnerabilities in Express? How do you prevent them?
Hint: Reject keys modifying __proto__ and use input validation schemas (Zod).

DSA: [Trie][Hard][Google] Find all prefixes of a word in a Trie.
Hint: Traverse prefix nodes. Return characters matching word search path. Time: O(L).

Aptitude: [Data Interpretation][Hard] Price indices: Year 1: 100, Year 2: 105. Find the inflation rate.
Hint: Inflation = (5 / 100) * 100 = 5%.


---

Q948.
MERN: [Database][Hard][Product Company] Explain compound index field order rules when running range queries in MongoDB.
Hint: Range fields must be placed after equality fields in the index sequence (ESR rule).

DSA: [Graphs][Hard][Google] Dijkstra's shortest path.
Hint: Min priority queue node relaxation. Time: O((V + E) log V).

Aptitude: [Decision Making][Hard] Server space leasing: Location X: $1k/mo. Location Y: $12k upfront. Which option is cheaper at 1 year?
Hint: Both cost the exact same.


---

Q949.
MERN: [Network][Hard][Product Company] Explain how Nginx handles WebSocket upgrades.
Hint: Map incoming connection upgrade headers: Upgrade $http_upgrade and Connection "upgrade".

DSA: [Trie][Hard][Google] Check if a word can be formed by concatenating other words in a Trie.
Hint: DFS traversal tracking word ending branches. Return true on complete segments match. Time: O(2^L).

Aptitude: [Logical Reasoning][Hard] All apples are red. Some red things are sweet.
Conclusions: 1. Some apples are sweet. 2. Some sweet things are red.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q950.
MERN: [Performance][Hard][Product Company] How do you debug Node.js CPU bottlenecks using Clinic.js flame graphs?
Hint: Run clinic flame -- node index.js. Inspect generated graph to locate hot execution paths.

DSA: [Graphs][Hard][Google] Tarjan's SCC stack logic.
Hint: Stack records nodes in current search branch. Nodes are popped when a root element is fully resolved. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Expenses totals: Rent=40%, Food=30%, Other=30%. If total expenses are $3,000, find the Rent amount.
Hint: Rent = 40% of 3,000 = $1,200.
# ⭐⭐⭐⭐⭐ EXPERT ROADMAP — Q951 to Q1000

## Multi-Region Scaling, Advanced V8 Profiling, Mongoose Transactions, Cryptography | Segment Trees Range Queries, Fenwick Trees, Primality, Knight Dialer | Complex Logic Grids, Bayesian Analysis, Expected Monetary Value


---

Q951.
MERN: [Architecture][Hard][FAANG-Level] Design a multi-region Active-Active MERN application. How do you resolve database write conflicts when users in different regions update the same document?
Hint: Active-Active replication replicates writes bidirectionally. Handle conflicts using: 1) Conflict-free Replicated Data Types (CRDTs) where operations are mathematically commutative. 2) Operational Transformation. 3) Last-Write-Wins (LWW) which selects the update with the highest physical NTP-synchronized timestamp. 4) Application-level merging (writing conflicts to a collection and prompting human review).

DSA: [Segment Tree][Hard][Google] 🔴 MUST DO — Implement a Segment Tree with Lazy Propagation that supports Range Updates (addition to a range of elements) and Range Minimum Queries (RMQ) in O(log N) time.
Hint: Lazy propagation defers updates. Maintain `lazy` array. When updating range, if current node matches bounds, update node minimum value, mark its children as lazy, and return. On subsequent queries or updates, resolve lazy values by updating children's node values and passing lazy values down before recursing. Time: O(log N), Space: O(N).

Aptitude: [Probability][Hard] An automated system processes transactions. Each transaction has a 0.5% chance of failing. If the system processes 200 independent transactions, find the probability that at most 1 transaction fails (using Binomial distribution).
Hint: P(k <= 1) = P(0) + P(1). Here n = 200, p = 0.005.
P(0) = 0.995^200 ≈ 0.3669.
P(1) = 200 * 0.005 * 0.995^199 ≈ 0.3688.
Total P(k <= 1) = 0.3669 + 0.3688 ≈ 0.7357 or 73.57% probability.


---

Q952.
MERN: [Performance][Hard][Product Company] Explain how the V8 Engine manages heap memory allocations (New space vs Old space). How do you configure Node's Garbage Collector flags in a memory-constrained container environment?
Hint: New Space (Scavenge GC): stores short-lived allocations, executes fast, runs frequently. Old Space (Mark-Sweep-Compact GC): stores long-lived data, runs slower. In containers, set `--max-old-space-size` to prevent OOM kills (e.g. `--max-old-space-size=1536` for a 2GB RAM pod container). Use `--optimize-for-size` to force early garbage collection cycles.

DSA: [Fenwick Tree][Hard][Google] 🔴 MUST DO — Count of Smaller Numbers After Self: given an integer array, return the count of smaller numbers to the right of each element.
Hint: Fenwick Tree + Coordinate Compression. Map numbers to ranks (1 to unique count). Traverse array from right to left. Query Fenwick tree for the prefix sum of elements with rank smaller than current. Then, update the Fenwick tree by incrementing the count of current number rank. Time: O(N log N), Space: O(N).

Aptitude: [Decision Making][Hard] You must choose between two hosting plans: Plan A: shared host ($50/mo, speed score 70). Plan B: dedicated host ($200/mo, speed score 95). If every 5 points of speed score increase returns $50/mo in user conversions, choose the better plan.
Hint: Speed improvement Plan B vs A = 25 points. Additional monthly conversion revenue = (25 / 5) * $50 = $250. Cost difference = $150/mo. Net benefit of Plan B = $250 - $150 = $100/mo. Choose Plan B.


---

Q953.
MERN: [Database][Hard][FAANG-Level] Explain MongoDB transaction write conflict handling. How do you implement retry logic in Mongoose for transactions that abort due to write conflicts?
Hint: In MongoDB, concurrent transactions modifying the same document cause a Write Conflict, aborting one transaction. Mongoose does not automatically retry. Wrap the transaction inside a retry loop (up to 3 times) and check if the error contains `TransientTransactionError` or `UnknownTransactionCommitResult` before repeating the transaction block.

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement the Miller-Rabin Primality Test to determine if a large integer N is prime with high probability.
Hint: Probabilistic test. Write `N - 1 = 2^s * d`. Select a random base `a` in `[2, N-2]`. Compute `x = a^d % N`. If `x == 1` or `x == N - 1`, N passes. Otherwise, square `x` repeatedly `s-1` times; if `x` becomes `N-1`, N passes. Run for `k` independent bases (e.g., k=10) to reduce error probability to `< 4^-k`. Time: O(K log³ N).

Aptitude: [Puzzles][Hard] Solve the Cryptarithm: `SEND + MORE = MONEY`. Find the digit value of each letter.
Hint: Classic alphametic puzzle. Deduce step-by-step logic:
M must be 1 (carry over from column addition).
S must be 8 or 9. Since M=1, S+M can generate a carry, so S=9.
O must be 0 (since S=9, M=1, S+M+carry = 10 or 11, but M=1 so O=0).
Work through remaining columns to find: S=9, E=5, N=6, D=7, M=1, O=0, R=8, Y=2.
`9567 + 1085 = 10652`.


---

Q954.
MERN: [Security][Hard][Product Company] What is XML External Entity (XXE) injection? How do you configure Node.js body parsers to defend against XXE attacks?
Hint: XXE occurs when XML input containing a reference to an external entity is parsed by a weakly configured XML parser, leaking local files or triggering internal SSRF. Secure by: 1) Disabling external entity resolution (`ENTITIES` and `DTD` parsing) in your XML parser configuration. 2) Avoiding XML body parsing completely; prefer JSON.

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement the Chinese Remainder Theorem (CRT) to find the minimum number X that leaves given remainders modulo coprime integers.
Hint: CRT states that for equations `x ≡ r_i (mod m_i)`, if moduli are pairwise coprime, a unique solution exists modulo `M = m_1 * m_2 * ... * m_k`. For each index, calculate `M_i = M / m_i`, find its modular inverse `s_i` modulo `m_i`. The solution is `x = Sum(r_i * M_i * s_i) % M`. Time: O(K log M).

Aptitude: [Data Interpretation][Hard] The radar chart shows efficiency ratings of 4 employees. Candidate A: Logic=4, Coding=4; Candidate B: Logic=5, Coding=3. Find the candidate with the highest average if Logic is weighted double.
Hint: Weighted averages:
A = (4*2 + 4) / 3 = 4.0.
B = (5*2 + 3) / 3 = 4.33.
Candidate B has the highest weighted average.


---

Q955.
MERN: [Performance][Hard][Product Company] Design a production memory monitoring script in Node.js. How do you trigger auto heap snapshot saves when memory usage exceeds 85% of OS capacity?
Hint: Use the `v8` module. Schedule a cron job checking heap usage. If `process.memoryUsage().heapUsed` exceeds the threshold, write snapshot:
`const fs = require('fs'); const v8 = require('v8');`
`const stream = v8.getHeapSnapshot(); const writer = fs.createWriteStream('heap-' + Date.now() + '.heapsnapshot'); stream.pipe(writer);`
Allows off-line diagnostic parsing in Chrome DevTools.

DSA: [Math][Hard][Google] 🔴 MUST DO — Implement Matrix Exponentiation to find the N-th Fibonacci number in O(log N) time.
Hint: The Fibonacci recurrence relation is:
`[[F(n+1), F(n)], [F(n), F(n-1)]] = [[1, 1], [1, 0]]^n`.
Multiply 2x2 matrices recursively using binary exponentiation (divide exponent by 2 at each step). Reduces search/sum time from linear to logarithmic. Time: O(log N).

Aptitude: [Decision Making][Hard] Resolving technical debt: Option 1: rewrite application (takes 6 months costing $60,000, saves $1,000/mo in server costs). Option 2: patch existing application ($5,000 cost, saves $200/mo). Find the break-even time in months for Option 1 vs Option 2.
Hint: Cost difference upfront = $55,000. Savings difference monthly = $800/mo. Break-even time = $55,000 / $800 = 68.75 months. Option 2 is better for shorter time frames.


---

Q956.
MERN: [Security][Hard][Product Company] What are XML External Entity (XXE) attacks?
Hint: Attacker parses external DTD references inside XML payloads. Prevent by disabling inline DTD entity resolutions.

DSA: [Trie][Hard][Google] Find the maximum XOR of two numbers in an array.
Hint: Insert numbers into binary Trie. Traverse trying opposite bits to maximize XOR results. Time: O(32 * N).

Aptitude: [Data Interpretation][Hard] Import/Export values: Year 1: Import=30, Export=40; Year 2: Import=35, Export=50. Which year had a higher trade surplus?
Hint: Surplus Y1 = 10. Surplus Y2 = 15. Year 2 had a higher surplus.


---

Q957.
MERN: [Performance][Hard][Product Company] Identify memory leaks using heap dump comparison summary views.
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Graphs][Hard][Google] Kosaraju's Strongly Connected Components algorithm.
Hint: Two DFS passes. First pass DFS stack ordering. Second pass DFS on transpose graph. Time: O(V + E).

Aptitude: [Puzzles][Hard] A clock strikes 6 times in 5 seconds. How long does it take to strike 12 times?
Hint: 6 strikes have 5 intervals. Time = 5s, so 1 interval = 1s. 12 strikes have 11 intervals. Time = 11 * 1s = 11 seconds.


---

Q958.
MERN: [Architecture][Hard][Product Company] Design a Kafka message retry queue in Express.
Hint: Forward failed messages to retry topics with retry-count headers, moving to DLQ on threshold breach.

DSA: [Trie][Hard][Google] Implement a Trie containing wildcard characters `.` that can match any letter.
Hint: DFS recursion on dot characters to traverse children branches. Time: O(26^L).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q959.
MERN: [Security][Hard][Product Company] Explain Command Injection in Node.js child processes.
Hint: Unsanitized input run in shell. Prevent by using `spawn` and passing inputs as array arguments.

DSA: [Graphs][Hard][Google] Find all articulation points in a graph.
Hint: DFS tracking discovery/low times. Articulation if low child >= disc parent. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All birds can fly. Penguin is a bird.
Conclusions: 1. Penguin can fly. 2. Some birds are penguins.
Which conclusion(s) logically follow?
Hint: Both follow.


---

Q960.
MERN: [Security][Hard][FAANG-Level] Explain Webauthn login assertions. How does the server verify user identity signatures without storing passwords?
Hint: On registration, user saves public key on server database. On login: 1) Server sends random challenge string to client. 2) Client authenticator signs challenge with private key, returning signature and key identifier. 3) Server retrieves public key from DB, verifies signature of challenge using public key. If verified, user is logged in.

DSA: [Math][Hard][Google] Knight Dialer: count the number of distinct phone numbers of length N a knight can dial on a keypad.
Hint: DP on 10 digit keys. State transitions defined by knight moves. `dp[i][j]` is ways to reach key `j` at step `i`. Sum transitions from adjacent moves. Time: O(N).

Aptitude: [Logical Reasoning][Hard] Statements: All engineers are logical. Some logical people are managers.
Conclusions: 1. Some engineers are managers. 2. Some managers are logical.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Engineers are inside logical. Logical intersects managers. Engineers and managers do not necessarily intersect (1 is false). Managers intersect logical, so some managers are logical (2 is true).


---

Q961.
MERN: [Architecture][Hard][Product Company] Design a message retry mechanism in Kafka. How do you implement Dead Letter Queues (DLQ) in Node.js?
Hint: When a message processing fails: 1) Catch the error. 2) Publish the message to a retry topic with a retry-count header. 3) If retries exceed limit (e.g. 3), publish to a Dead Letter Queue (DLQ) topic for manual inspection, and commit the original message offset to prevent queue blockage.

DSA: [Trie][Hard][Google] 🔴 MUST DO — Implement the Aho-Corasick Algorithm to search a text string for a dictionary of multiple patterns simultaneously in O(TextLength + OutputCount) time.
Hint: Trie with suffix links. Build a trie of all patterns. For each node, construct a "suffix link" to the longest proper suffix node of the current path. Construct "dictionary links" to capture matches. Traverse the text by following trie children; if a character mismatch occurs, follow suffix links. Time: O(TotalPatternsLength + TextLength).

Aptitude: [Data Interpretation][Hard] The line graph shows the percentage of transactions failed on an e-commerce platform: Mon=1.5%, Tue=1.2%, Wed=2.5%, Thu=1.0%. If total daily transaction volumes are Mon=10k, Tue=12k, Wed=8k, Thu=15k, find the day with the highest number of failed transactions.
Hint: Failed counts: Mon = 150. Tue = 144. Wed = 200. Thu = 150. Wednesday had the highest absolute number of failed transactions.


---

Q962.
MERN: [Performance][Hard][Product Company] Explain React 18 hydration errors. Why does rendering different dates on server vs client throw hydration errors?
Hint: React server rendering creates static HTML. During client-side hydration, React expects the exact same DOM structure. If server renders a date string based on server timezone and client renders it based on local browser timezone, the DOM node text mismatch causes hydration errors. Solved by rendering dynamic client components only after mounting (`useEffect`).

DSA: [Fenwick Tree][Hard][Google] 🔴 MUST DO — Implement a 2D Fenwick Tree to support Range Sum Queries and cell updates on an M x N matrix in O(log M * log N) time.
Hint: Extensions of 1D Fenwick tree. Maintain a 2D array tree of size (M+1) * (N+1). Update: run two nested loops using bitwise steps `i += i & -i` and `j += j & -j`. Query: sum elements using loops `i -= i & -i` and `j -= j & -j`. Time: O(log M * log N).

Aptitude: [Decision Making][Hard] You must evaluate two API Gateway software options: Option A: Open-source (zero cost, requires 10 hours of engineer time/mo for updates). Option B: Enterprise SaaS ($500/mo, zero engineer time needed). If engineer cost is $60/hr, choose the more economical option.
Hint: Cost Option A = 10 * $60 = $600/mo in engineering overhead. Cost Option B = $500/mo. Enterprise SaaS (Option B) is more economical.


---

Q963.
MERN: [Security][Hard][Product Company] Explain command injection vulnerabilities inside Node.js applications. Show how to execute command shells safely without shell-injection exploits.
Hint: Avoid `exec('ping ' + input)`. Pass command inputs as array arguments using `execFile` or `spawn`:
`spawn('ping', [input])` (disables shell interpretation of control characters like `&` or `;`).

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Find if an undirected graph contains a cycle using DFS.
Hint: Maintain visited set. For each node, if unvisited, call recursive DFS, passing the parent node. If neighbor is visited and not the parent, a cycle exists. Time: O(V + E).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit sits opposite to Sunil. Sunil sits next to Vijay. Rajesh sits opposite to Vijay. Who sits opposite to Rajesh?
Hint: Opposites: Amit-Sunil, Rajesh-Vijay. The person sitting opposite to Rajesh is Vijay.


---

Q964.
MERN: [Database][Hard][Product Company] How do MongoDB Text Indexes handle weighting and multi-field keyword scoring? Show how to create a compound text index in Mongoose.
Hint: Text indexes assign relative weights to fields. Schema index:
`schema.index({ title: 'text', description: 'text' }, { weights: { title: 10, description: 2 } });`
Search returns documents sorted by text score matching keywords.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Kosaraju's algorithm for Strongly Connected Components.
Hint: Two passes of DFS. 1) Run DFS on the original graph, pushing nodes to a stack on finish. 2) Transpose the graph. 3) While the stack is not empty, pop node `u`. If unvisited, run DFS on transposed graph to collect SCC nodes. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Price indices: Year 1: 100, Year 2: 105. Find the inflation rate.
Hint: Inflation = (5 / 100) * 100 = 5%.


---

Q965.
MERN: [Streams][Hard][Product Company] Explain backpressure triggers in Node.js stream pipings. How does `stream.pipe()` automate backpressure management?
Hint: `pipe()` automatically handles backpressure: it listens to the writable stream returning `false` on `write()`, pauses the readable stream, and listens to the writable stream's `'drain'` event to resume reading, avoiding memory exhaustion.

DSA: [Graphs][Hard][Google] 🔴 MUST DO — Tarjan's algorithm for Strongly Connected Components.
Hint: DFS single pass. Stack tracks active component path. Disc/low pointers identify cycle loops. Push visited node, recurse neighbors. On return, update `low[u] = min(low[u], low[v])`. If low matches disc, pop elements forming one SCC. Time: O(V + E).

Aptitude: [Decision Making][Hard] Database scaling: SQL server upgrade costs $5k. NoSQL setup costs $12k. If NoSQL performance is 3x higher, and every 1x performance increase is worth $4k, choose the better option.
Hint: SQL upgrade is more cost-effective upfront.


---

Q966.
MERN: [Security][Hard][Product Company] What are XML entity expansion (Billion Laughs) attacks? How do you prevent XML parsing resource exhaustion?
Hint: XML parses nested entity definitions recursively. Disable inline DTD schemas inside XML parser configurations.

DSA: [Backtracking][Hard][Google] 🔴 MUST DO — Sudoku Solver.
Hint: Backtracking DFS placing digits 1-9. Verify valid rows, columns, and 3x3 grids. Time: O(9^(N²)).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q967.
MERN: [Streams][Hard][Product Company] Write a custom Transform stream that reverses each line of incoming text buffers.
Hint: Buffer text, split by newline, reverse each line string, push to stream.

DSA: [Backtracking][Hard][Google] 🔴 MUST DO — Solve the N-Queens problem: place N queens on an N x N chessboard so that no two queens threaten each other.
Hint: Backtracking. Place queens row-by-row. Maintain three sets to track columns, positive diagonals `(r + c)`, and negative diagonals `(r - c)` that have active queens. Time: O(N!).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q968.
MERN: [Security][Hard][Product Company] What are prototype pollution vulnerabilities in Express? How do you prevent them?
Hint: Attackers submit properties modifying `__proto__` of objects. Prevent by using map structures with `Object.create(null)` or input validation schemas (Zod).

DSA: [Backtracking][Hard][Google] Solve Unique Paths III: find the number of paths from start to end visiting every non-obstacle cell exactly once.
Hint: DFS backtracking. Count empty cells. Traverse grid in 4 directions, decrementing empty count. Return 1 if target reached and empty count is -1. Time: O(4^(M*N)).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. C is next to D. A is not next to C. The person sitting next to B is A.


---

Q969.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [Math][Hard][Google] Count of Range Sum: find the number of range sums that lie in [lower, upper] inclusive.
Hint: Merge Sort variant or Segment/Fenwick Tree. Build prefix sum array. Run merge sort; during merge step, maintain pointers to count differences within bounds. Time: O(N log N).

Aptitude: [Decision Making][Hard] Server space leasing: Location X: $1k/mo. Location Y: $12k upfront. Which option is cheaper at 1 year?
Hint: Both cost the exact same.


---

Q970.
MERN: [Performance][Hard][Product Company] How do you identify garbage collection memory leaks using Chrome DevTools memory allocation timelines?
Hint: Look for blue bars indicating memory allocations that remain active and do not disappear after garbage collection.

DSA: [Graphs][Hard][Google] Find all articulation points in a graph.
Hint: DFS tracking discovery/low times. Articulation if low child >= disc parent. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All apples are red. Some red things are sweet.
Conclusions: 1. Some apples are sweet. 2. Some sweet things are red.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q971.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [Trie][Hard][Google] Find the longest common prefix of a set of strings using a Trie.
Hint: Insert strings. Start root, traverse down until node has multiple children or is word end. Time: O(N).

Aptitude: [Data Interpretation][Hard] Expenses totals: Rent=40%, Food=30%, Other=30%. If total expenses are $3,000, find the Rent amount.
Hint: Rent = 40% of 3,000 = $1,200.


---

Q972.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override `_write(chunk, enc, cb)` calling `console.log(chunk.toString())` and callback.

DSA: [Graphs][Hard][Google] Find the shortest path using Bellman-Ford.
Hint: Initialize distances. Relax V-1 times. Return distances array. Time: O(V * E).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q973.
MERN: [Security][Hard][Product Company] Configure helmet CSP directives to allow trusted script nonces.
Hint: Generate nonces in middleware, pass to template engine, and inject into scripts: `<script nonce="random">`.

DSA: [Trie][Hard][Google] Autocomplete system suggesting terms sorted by popularity ranks.
Hint: Trie + Max Heap/Sorting. Trie nodes contain frequency count maps of historical words. Time: O(L + V log V).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q974.
MERN: [Database][Hard][Product Company] Explain compound index field order rules when running range queries in MongoDB.
Hint: Range fields must be placed after equality fields in the index sequence (ESR rule).

DSA: [Graphs][Hard][Google] Dijkstra's shortest path.
Hint: Min priority queue node relaxation. Time: O((V + E) log V).

Aptitude: [Decision Making][Hard] Project outsourcing: In-house costs $15k, completion 3 months. Outsourcing costs $10k, completion 5 months. If every month of delay costs $2k, choose the cheaper option.
Hint: Cost In-house = $15k. Cost Outsourced = $10k + (2 months delay * $2k) = $14k. Outsourcing is cheaper.


---

Q975.
MERN: [Network][Hard][Product Company] Explain how Nginx handles WebSocket upgrades.
Hint: Map incoming connection upgrade headers: Upgrade $http_upgrade and Connection "upgrade".

DSA: [Graphs][Hard][Google] Find the Eulerian Circuit in a directed graph.
Hint: All nodes must have equal indegree and outdegree, and be in a single connected component. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All doctors are graduates. No graduate is illiterate. Some illiterates are poor.
Conclusions: 1. Some doctor is illiterate. 2. Some graduates are poor.
Which conclusion(s) logically follow?
Hint: Only 2 does not necessarily follow. Only 1 is false (so No doctor is illiterate follows).


---

Q976.
MERN: [Performance][Hard][Product Company] How do you debug Node.js CPU bottlenecks using Clinic.js flame graphs?
Hint: Run clinic flame -- node index.js. Inspect generated graph to locate hot execution paths.

DSA: [Trie][Hard][Google] Suffix Tree implementation.
Hint: Suffix Trie inserting all suffixes of a text. Supporting fast substring matching checks. Time: O(N²).

Aptitude: [Data Interpretation][Hard] Revenue distributions: Div A: 50%, Div B: 30%, Div C: 20%. If total revenue is $200k, find the revenue of Division B.
Hint: Div B = 30% of 200k = $60,000.


---

Q977.
MERN: [Streams][Hard][Product Company] Custom Transform stream converting text to uppercase.
Hint: Override _transform(chunk, enc, cb) pushing chunk.toString().toUpperCase().

DSA: [Graphs][Hard][Google] Bellman-Ford negative weight cycle check logic.
Hint: Run Vth iteration relaxation. If any distance decreases, a negative cycle exists. Time: O(V * E).

Aptitude: [Puzzles][Hard] Four people sit in a row. A is next to B. C is next to D. A is not next to C. Who is sitting next to B?
Hint: Order: C - D - A - B. B is next to A. C is next to D. A is not next to C (D is in between). The person sitting next to B is A.


---

Q978.
MERN: [Security][Hard][Product Company] How do you configure helmet CSP directive nonces to allow trusted inline scripts?
Hint: Generate cryptographically strong random nonces in middleware, pass to template engine, and inject into scripts: <script nonce="random">.

DSA: [Trie][Hard][Google] Find the longest common prefix of a set of strings using a Trie.
Hint: Insert strings. Start root, traverse down until node has multiple children or is word end. Time: O(N).

Aptitude: [Data Interpretation][Hard] A line graph shows prices: Y1 = $10, Y2 = $12. Find the percentage price growth.
Hint: Growth = (2 / 10) * 100 = 20%.


---

Q979.
MERN: [Database][Hard][Product Company] What are covered queries in MongoDB? How do they improve search latency?
Hint: Queries where all fields match indexes and return fields are projected, bypassing document scan passes completely.

DSA: [Graphs][Hard][Google] Tarjan's bridge finding low-link updates.
Hint: low[u] = min(low[u], low[v]) for unvisited children, and low[u] = min(low[u], disc[v]) for visited back-edges. Time: O(V + E).

Aptitude: [Decision Making][Hard] Software buying: Option A: $5,000 upfront. Option B: $500/mo. Find the break-even month.
Hint: Break-even month = $5,000 / $500 = 10 months.


---

Q980.
MERN: [Network][Hard][Product Company] How do you configure Nginx load balancer to support HTTP/3 QUIC connection streams?
Hint: Listen on UDP port 443 with http3 directive and return Alt-Svc headers.

DSA: [Trie][Hard][Google] Implement a prefix dictionary suffix lookup.
Hint: Traverse prefix path node. Retrieve all child keys recursively. Time: O(L + V).

Aptitude: [Logical Reasoning][Hard] All dogs are cats. Some cats are tigers.
Conclusions: 1. Some dogs are tigers. 2. Some tigers are cats.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q981.
MERN: [Performance][Hard][Product Company] How do you identify memory leaks using heap dump comparison summary views?
Hint: Compare snapshot sizes. Search for delta values showing significant count increments of objects.

DSA: [Graphs][Hard][Google] Strongly connected components Kosaraju's DFS step 1 stack logic.
Hint: Stack records finish ordering. Ensures nodes with no outgoing edges in transpose graph are searched first. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Revenue values: Month 1: $10k, Month 2: $15k, Month 3: $12k. Find the average revenue.
Hint: Average = (10 + 15 + 12) / 3 = 37 / 3 = $12.33k.


---

Q982.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [Graphs][Hard][Google] Find the shortest path using Bellman-Ford.
Hint: Initialize distances. Relax V-1 times. Return distances array. Time: O(V * E).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q983.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override _write(chunk, enc, cb) calling console.log(chunk.toString()) and callback.

DSA: [Trie][Hard][Google] Implement a prefix search trie.
Hint: Node kids traversing following letters. Returns true on leaf nodes match. Time: O(L).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q984.
MERN: [Security][Hard][Product Company] Explain SQL injection vulnerabilities in Node-Postgres applications. Show how to write safe parameterized queries.
Hint: Avoid inline string concatenations. Use prepared statements or parameterized values: db.query('SELECT * FROM users WHERE id = $1', [userId]).

DSA: [Graphs][Hard][Google] Find all articulation points using DFS.
Hint: DFS tracking discovery and low times. Node is articulation if low of child >= discovery of parent. Time: O(V + E).

Aptitude: [Decision Making][Hard] Database scaling: SQL server upgrade costs $5k. NoSQL setup costs $12k. If NoSQL performance is 3x higher, and every 1x performance increase is worth $4k, choose the better option.
Hint: SQL upgrade is more cost-effective upfront.


---

Q985.
MERN: [Database][Hard][Product Company] Explain multikey index constraints when creating compound indexes with geolocation.
Hint: You cannot create a compound index containing both a multikey array and a 2dsphere index.

DSA: [Graphs][Hard][Google] Check if a directed graph contains a cycle using DFS.
Hint: Visited state tracking: 0=unvisited, 1=visiting, 2=visited. Cycle if neighbor is in state 1. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All birds can fly. Penguin is a bird.
Conclusions: 1. Penguin can fly. 2. Some birds are penguins.
Which conclusion(s) logically follow?
Hint: Both follow.


---

Q986.
MERN: [Performance][Hard][Product Company] How do you profile CPU performance using flame graphs?
Hint: Capture V8 profile log. Open in Chrome DevTools to locate wide blocks showing heavy execution times.

DSA: [Trie][Hard][Google] Count the number of leaf nodes in a Trie.
Hint: DFS traversal counting nodes that have zero child nodes or are word ends. Time: O(N).

Aptitude: [Data Interpretation][Hard] Profit percentages: Company A: 10%, Company B: 15%. If both have revenues of $100k, find the profit of Company B.
Hint: Profit B = 15% of 100k = $15,000.


---

Q987.
MERN: [Streams][Hard][Product Company] Transform stream removing numbers from text chunks.
Hint: Replace digits inside chunk string using regex: chunk.toString().replace(/[0-9]/g, '').

DSA: [Graphs][Hard][Google] Floyd-Warshall node path updates logic.
Hint: dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j]). Time: O(V³).

Aptitude: [Puzzles][Hard] Five people sit in a circle. A is next to B. C is next to D. E is opposite to A. Who is next to E?
Hint: Neighbors of E are C and D.


---

Q988.
MERN: [Security][Hard][Product Company] What are prototype pollution vulnerabilities in Express? How do you prevent them?
Hint: Reject keys modifying __proto__ and use input validation schemas (Zod).

DSA: [Trie][Hard][Google] Find all prefixes of a word in a Trie.
Hint: Traverse prefix nodes. Return characters matching word search path. Time: O(L).

Aptitude: [Data Interpretation][Hard] Price indices: Year 1: 100, Year 2: 105. Find the inflation rate.
Hint: Inflation = (5 / 100) * 100 = 5%.


---

Q989.
MERN: [Database][Hard][Product Company] Explain compound index field order rules when running range queries in MongoDB.
Hint: Range fields must be placed after equality fields in the index sequence (ESR rule).

DSA: [Graphs][Hard][Google] Dijkstra's shortest path.
Hint: Min priority queue node relaxation. Time: O((V + E) log V).

Aptitude: [Decision Making][Hard] Server space leasing: Location X: $1k/mo. Location Y: $12k upfront. Which option is cheaper at 1 year?
Hint: Both cost the exact same.


---

Q990.
MERN: [Network][Hard][Product Company] Explain how Nginx handles WebSocket upgrades.
Hint: Map incoming connection upgrade headers: Upgrade $http_upgrade and Connection "upgrade".

DSA: [Trie][Hard][Google] Check if a word can be formed by concatenating other words in a Trie.
Hint: DFS traversal tracking word ending branches. Return true on complete segments match. Time: O(2^L).

Aptitude: [Logical Reasoning][Hard] All apples are red. Some red things are sweet.
Conclusions: 1. Some apples are sweet. 2. Some sweet things are red.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

Q991.
MERN: [Performance][Hard][Product Company] How do you debug Node.js CPU bottlenecks using Clinic.js flame graphs?
Hint: Run clinic flame -- node index.js. Inspect generated graph to locate hot execution paths.

DSA: [Graphs][Hard][Google] Tarjan's SCC stack logic.
Hint: Stack records nodes in current search branch. Nodes are popped when a root element is fully resolved. Time: O(V + E).

Aptitude: [Data Interpretation][Hard] Expenses totals: Rent=40%, Food=30%, Other=30%. If total expenses are $3,000, find the Rent amount.
Hint: Rent = 40% of 3,000 = $1,200.


---

Q992.
MERN: [Architecture][Hard][Product Company] Explain how to use a Redis cache layer to solve transaction query contention in MongoDB.
Hint: Read/write to Redis first. Run deferred batch updates to MongoDB in the background.

DSA: [Math][Hard][Google] Count of Range Sum: find the number of range sums that lie in [lower, upper] inclusive.
Hint: Merge Sort variant. Build prefix sum array. Run merge sort; during merge step, maintain pointers to count differences within bounds. Time: O(N log N).

Aptitude: [Puzzles][Hard] Solve the puzzle: Amit is taller than Sunil. Sunil is taller than Vijay. Rajesh is taller than Amit. Who is the shortest?
Hint: R > A > S > V. Vijay is the shortest.


---

Q993.
MERN: [Streams][Hard][Product Company] Custom Writable stream writing incoming buffers to console.
Hint: Override _write(chunk, enc, cb) calling console.log(chunk.toString()) and callback.

DSA: [Trie][Hard][Google] Autocomplete system suggesting terms sorted by popularity ranks.
Hint: Trie + Max Heap/Sorting. Trie nodes contain frequency count maps of historical words. Time: O(L + V log V).

Aptitude: [Data Interpretation][Hard] Sales totals: Q1=50, Q2=70. Find the sales growth rate.
Hint: Growth = (20 / 50) * 100 = 40%.


---

Q994.
MERN: [Security][Hard][Product Company] Explain SQL injection vulnerabilities in Node-Postgres applications. Show how to write safe parameterized queries.
Hint: Avoid inline string concatenations. Use prepared statements or parameterized values: db.query('SELECT * FROM users WHERE id = $1', [userId]).

DSA: [Graphs][Hard][Google] Find all articulation points using DFS.
Hint: DFS tracking discovery and low times. Node is articulation if low of child >= discovery of parent. Time: O(V + E).

Aptitude: [Decision Making][Hard] Project outsourcing: In-house costs $15k, completion 3 months. Outsourcing costs $10k, completion 5 months. If every month of delay costs $2k, choose the cheaper option.
Hint: Cost In-house = $15k. Cost Outsourced = $10k + (2 months delay * $2k) = $14k. Outsourcing is cheaper.


---

Q995.
MERN: [Database][Hard][Product Company] Explain multikey index constraints when creating compound indexes with geolocation.
Hint: You cannot create a compound index containing both a multikey array and a 2dsphere index.

DSA: [Graphs][Hard][Google] Check if a directed graph contains a cycle using DFS.
Hint: Visited state tracking: 0=unvisited, 1=visiting, 2=visited. Cycle if neighbor is in state 1. Time: O(V + E).

Aptitude: [Logical Reasoning][Hard] All birds can fly. Penguin is a bird.
Conclusions: 1. Penguin can fly. 2. Some birds are penguins.
Which conclusion(s) logically follow?
Hint: Both follow.


---

Q996.
MERN: [Performance][Hard][Product Company] How do you profile CPU performance using flame graphs?
Hint: Capture V8 profile log. Open in Chrome DevTools to locate wide blocks showing heavy execution times.

DSA: [Trie][Hard][Google] Count the number of leaf nodes in a Trie.
Hint: DFS traversal counting nodes that have zero child nodes or are word ends. Time: O(N).

Aptitude: [Data Interpretation][Hard] Profit percentages: Company A: 10%, Company B: 15%. If both have revenues of $100k, find the profit of Company B.
Hint: Profit B = 15% of 100k = $15,000.


---

Q997.
MERN: [Streams][Hard][Product Company] Transform stream removing numbers from text chunks.
Hint: Replace digits inside chunk string using regex: chunk.toString().replace(/[0-9]/g, '').

DSA: [Graphs][Hard][Google] Floyd-Warshall node path updates logic.
Hint: dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j]). Time: O(V³).

Aptitude: [Puzzles][Hard] Five people sit in a circle. A is next to B. C is next to D. E is opposite to A. Who is next to E?
Hint: Neighbors of E are C and D.


---

Q998.
MERN: [Security][Hard][Product Company] What are prototype pollution vulnerabilities in Express? How do you prevent them?
Hint: Reject keys modifying __proto__ and use input validation schemas (Zod).

DSA: [Trie][Hard][Google] Find all prefixes of a word in a Trie.
Hint: Traverse prefix nodes. Return characters matching word search path. Time: O(L).

Aptitude: [Data Interpretation][Hard] Price indices: Year 1: 100, Year 2: 105. Find the inflation rate.
Hint: Inflation = (5 / 100) * 100 = 5%.


---

Q999.
MERN: [Database][Hard][Product Company] Explain compound index field order rules when running range queries in MongoDB.
Hint: Range fields must be placed after equality fields in the index sequence (ESR rule).

DSA: [Graphs][Hard][Google] Dijkstra's shortest path.
Hint: Min priority queue node relaxation. Time: O((V + E) log V).

Aptitude: [Decision Making][Hard] Server space leasing: Location X: $1k/mo. Location Y: $12k upfront. Which option is cheaper at 1 year?
Hint: Both cost the exact same.


---

Q1000.
MERN: [Network][Hard][Product Company] Explain how Nginx handles WebSocket upgrades.
Hint: Map incoming connection upgrade headers: Upgrade $http_upgrade and Connection "upgrade".

DSA: [Trie][Hard][Google] Check if a word can be formed by concatenating other words in a Trie.
Hint: DFS traversal tracking word ending branches. Return true on complete segments match. Time: O(2^L).

Aptitude: [Logical Reasoning][Hard] All apples are red. Some red things are sweet.
Conclusions: 1. Some apples are sweet. 2. Some sweet things are red.
Which conclusion(s) logically follow?
Hint: Only 2 follows.


---

## 🎤 MOCK INTERVIEW ROUND #5 (after Q1000)

### 1. MERN Architecture & Infrastructure (45 minutes)
**Problem Statement**:
You are a Principal Software Engineer designing a multi-region SaaS CRM platform for high-scale enterprise clients. The platform must offer a 99.99% availability SLA, handle database writes locally in US, EU, and APAC zones with eventual global synchronization, isolate tenant structures completely inside a shared Kubernetes infrastructure, and guarantee that no network data sniffing can occur between microservices.

**Expected Solutions**:
- **Multi-Region Writes**: Multi-Region MongoDB Atlas clusters shard-keyed by region coordinates.
- **Conflict Resolution**: Implementing CRDT models for numerical objects, and LWW rules for text edits.
- **Tenant Isolation**: Namespace-level K8s networking policies, separated connection strings dynamically resolved via Express request headers.
- **Microservices Encryption**: Deploying an Istio Service Mesh using Envoy sidecars to enforce mTLS.