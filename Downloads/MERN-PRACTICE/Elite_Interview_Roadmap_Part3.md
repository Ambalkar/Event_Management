# 🚀 ELITE INTERVIEW ROADMAP — Part 3: Q501–Q750

## ⭐⭐⭐ Upper-Intermediate → ⭐⭐⭐⭐ Advanced Start
## Advanced Engineering

> **Progressive Difficulty**: Upper-Intermediate questions for senior/mid-senior roles
> **Tags**: `[Topic]` `[Difficulty]` `[Company-Level]` `[Pattern]`
> **Priority**: 🔴 MUST DO | 🟡 HIGH FREQUENCY | 🔵 REVISION CRITICAL

---
# ⭐⭐⭐ UPPER-INTERMEDIATE ROADMAP — Q501 to Q550

## Advanced Authentication, Testing, Redux, TypeScript | Graph Algorithms (BFS/DFS, Cycles, Connectivity) | Advanced Quant, Seating Arrangements, Critical Thinking

---

Q501.
MERN: [Authentication][Medium-Hard][FAANG-Level] How do you handle JWT access token expiration and refresh token renewal race conditions in a React client?
Hint: Use an Axios interceptor. Maintain a `isRefreshing` flag and a `failedQueue` array. If an API request returns a 401 error, push the request into `failedQueue`. If `isRefreshing` is false, set it to true, request a new access token, then retry all queued requests with the new token and clear queue.

DSA: [Graphs][Medium][Google] 🔴 MUST DO — Clone an undirected graph. Each node contains a label and a list of its neighbors.
Hint: DFS or BFS with a HashMap. The HashMap maps the original node to its cloned counterpart. Traverse the graph; for each visited node, if its neighbor is not in the map, clone the neighbor and recurse/enqueue, then add the cloned neighbor to the cloned node's neighbors list. Time: O(V + E), Space: O(V).

Aptitude: [SI/CI][Medium-Hard] A sum of money is invested at compound interest, compounded annually. The interest in the second year is ₹220, and in the third year is ₹242. Find the rate of interest and the original sum.
Hint: Interest in 3rd year is 242, in 2nd year is 220.
The increase in interest (242 - 220 = ₹22) is the interest earned on the 2nd year interest (220).
Rate of interest = (22 / 220) × 100 = 10% per annum.
Interest in 2nd year = P(1 + R/100)R/100 = P × 1.1 × 0.1 = 0.11P = 220 → P = ₹2,000.

---

Q502.
MERN: [Authentication][Medium-Hard][Product Company] What is Passport.js? Show how to configure Passport Local Strategy inside an Express application.
Hint: Passport.js is an authentication middleware for Node.js. Setup Local Strategy:
`passport.use(new LocalStrategy(async (username, password, done) => { const user = await User.findOne({ username }); if (!user || !await user.comparePassword(password)) return done(null, false, { message: 'Incorrect credentials' }); return done(null, user); }));`
Initialize in Express: `app.use(passport.initialize()); app.use(passport.session());`.

DSA: [Graphs][Medium][Amazon] 🔴 MUST DO — Given a 2D grid of '1's (land) and '0's (water), count the number of islands. (Number of Islands).
Hint: DFS or BFS. Loop through each cell in the grid. If cell is '1', increment island count and call recursive DFS to sink the island (set all connected '1's to '0's). Time: O(M * N), Space: O(M * N) recursion stack.

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a circle facing the center. A sits opposite to B. C is between A and E. D sits to the immediate left of B. Who is sitting opposite to F?
Hint: Order clockwise: A - C - E - B - D - F.
Opposites: A(1) opposite B(4). C(2) opposite D(5)? No, C is opposite to D if order is A-C-E-B-D-F. Let's check: B is 4th. Left of B (clockwise is left facing center): pos 5. So D is at 5.
Remaining pos is 6: F.
Opposites: A(1)-B(4), C(2)-D(5), E(3)-F(6).
The person sitting opposite to F is E.

---

Q503.
MERN: [Authentication][Medium-Hard][Product Company] How do you configure a session store using Redis and Express-Session? What are the benefits of storing sessions in Redis?
Hint: Benefits: session data is stored in memory (fast) instead of single-server RAM, allowing session persistence across server restarts and scale-out load balancers. Setup:
`const RedisStore = require('connect-redis').default; const redisClient = redis.createClient();`
`app.use(session({ store: new RedisStore({ client: redisClient }), secret: 'sec', resave: false }));`

DSA: [Graphs][Easy-Medium][Amazon] 🔴 MUST DO — Find the shortest path in an unweighted graph between a source node and all other nodes.
Hint: Breadth-First Search (BFS) is guaranteed to find the shortest path in an unweighted graph. Use a queue. Maintain a `dist` array initialized to -1 (or infinity), and `dist[src] = 0`. Dequeue node, check neighbors, if unvisited (`dist[neighbor] == -1`), update `dist[neighbor] = dist[node] + 1` and enqueue. Time: O(V + E), Space: O(V).

Aptitude: [Critical Thinking][Medium] **Argument**: "Studies show that schools offering music classes record 15% higher average math scores. Therefore, playing music directly enhances a student's cognitive ability to solve mathematical equations."
**Question**: Identify the primary logical flaw in this argument.
Hint: Correlation vs Causation. The argument assumes that music classes cause higher math scores, ignoring confounding variables (e.g., wealthier schools can afford music classes and also have better math tutors, or students who choose music are already academically motivated).

---

Q504.
MERN: [CORS][Medium-Hard][Product Company] Explain the CORS Preflight caching mechanism. How does the server specify preflight cache duration, and why is this critical for API performance?
Hint: Preflight OPTIONS requests add network latency. Servers can cache preflight responses using the `Access-Control-Max-Age` header (specifying seconds, e.g. 86400 for 24h). This prevents browsers from sending preflight options requests on subsequent API calls, optimizing response times.

DSA: [Graphs][Medium][Google] 🔴 MUST DO — Course Schedule I: given total courses and list of prerequisite pairs, check if you can finish all courses.
Hint: Detect cycle in a directed graph. Represent prerequisites as an adjacency list. Use DFS with a `visited` array tracking states: 0=unvisited, 1=visiting (current DFS path), 2=visited. If we encounter a node in state 1, a cycle exists (cannot finish). Alternatively, use Kahn's BFS Topological Sort (indegree array). Time: O(V + E), Space: O(V + E).

Aptitude: [Time & Work][Medium-Hard] A can do a work in 15 days. B is 50% more efficient than A. In how many days can B alone complete the work?
Hint: Efficiency ratio of B to A = 1.5 : 1 = 3 : 2.
Time taken is inversely proportional to efficiency.
Time ratio of B to A = 2 : 3.
Since A takes 15 days (3 units = 15), B will take 2 units = 10 days.

---

Q505.
MERN: [TypeScript][Medium-Hard][Product Company] What are User-Defined Type Guards in TypeScript? Write a type guard function that determines if an object implements a `User` interface.
Hint: Type guards use the `parameterName is Type` return signature. Example:
`interface User { name: string; email: string; }`
`function isUser(obj: any): obj is User { return obj && typeof obj.name === 'string' && typeof obj.email === 'string'; }`
Allows TypeScript to narrow type within conditional blocks safely.

DSA: [Graphs][Medium][Amazon] 🟡 HIGH FREQUENCY — Check if a graph is Bipartite (vertices can be divided into two independent sets such that every edge connects vertices of different sets).
Hint: Graph 2-coloring. Traverse the graph using BFS or DFS. Assign a color (0 or 1) to the starting node. For each neighbor, if uncolored, assign the opposite color and recurse/enqueue. If colored and colors match parent, the graph is not bipartite. Time: O(V + E), Space: O(V).

Aptitude: [Puzzles][Medium-Hard] Eight people sitting in a straight line: A, B, C, D, E, F, G, and H. Some face North, some face South. A sits third to the left of C. C faces North. G sits at extreme right. D sits next to G. F sits second to the left of D. F and D face opposite directions. Find the seating arrangement.
Hint: Deduce positions:
Positions: 1 to 8. G is at 8. D is next to G, so D is at 7.
F is second to left of D. If D faces North, left is 5. If D faces South, left is 9 (out of bounds). So D must face North, F is at 5.
F and D face opposite directions, so F faces South.
A sits third to left of C. C faces North, left is left. So positions can be C at 4, A at 1. Or C at 6, A at 3.
Work through remaining clues to locate all seats.

---

Q506.
MERN: [TypeScript][Medium-Hard][Product Company] What are Mapped Types and Conditional Types in TypeScript? Write a utility type `Nullable<T>` that makes all properties of an object nullable.
Hint: Mapped types iterate keys: `{ [P in keyof T]: T[P] }`. Conditional types select types based on relationships: `T extends U ? X : Y`. Nullable utility:
`type Nullable<T> = { [P in keyof T]: T[P] | null };`

DSA: [Graphs][Medium][Google] Given a 2D matrix of heights, find the coordinates where rainwater can flow to both Pacific (top/left) and Atlantic (bottom/right) oceans. (Pacific Atlantic Water Flow).
Hint: Run DFS/BFS from ocean borders. Start DFS from top/left borders for Pacific, marking all reachable cells. Start DFS from bottom/right borders for Atlantic, marking all reachable cells. The intersection of Pacific-reachable and Atlantic-reachable coordinates is the result. Time: O(M * N), Space: O(M * N).

Aptitude: [Critical Thinking][Medium-Hard] **Argument**: "The government must subsidize electric vehicles (EVs). Subsidy implementation will increase EV ownership, reducing carbon emissions and immediately improving urban air quality."
**Question**: Which of the following, if true, most weakens the argument?
(a) EVs are more expensive to maintain than gasoline vehicles.
(b) 80% of the country's electricity is generated by burning coal.
(c) EV battery manufacturing produces toxic mining waste.
Hint: (b) weakens the argument most because if EV power relies heavily on coal combustion, increasing EV ownership will simply shift emissions to coal power plants, failing to reduce net carbon emissions.

---

Q507.
MERN: [Redux][Medium-Hard][Product Company] Write a complete Redux Saga flow that listens to a `FETCH_USER_REQUEST` action, calls an API, and dispatches success or failure.
Hint: Sagas use generator functions and effects. Example:
`function* fetchUserSaga(action) { try { const user = yield call(api.fetchUser, action.payload); yield put({ type: 'FETCH_USER_SUCCESS', payload: user }); } catch (e) { yield put({ type: 'FETCH_USER_FAIL', error: e.message }); } }`
`function* watchUser() { yield takeLatest('FETCH_USER_REQUEST', fetchUserSaga); }`

DSA: [Graphs][Hard][Amazon] 🔴 MUST DO — Word Ladder: given a begin word, end word, and dictionary, find the length of the shortest transformation sequence from begin to end (change 1 letter at a time, word must be in dictionary).
Hint: BFS (shortest path in unweighted state space). Keep visited set. Add begin word with step count 1 to queue. While queue not empty, dequeue, generate all 1-character modifications. If in dict and unvisited, add to queue with steps+1. If equals end word, return count. Time: O(N * M²), Space: O(N * M) where M is word length.

Aptitude: [Time-Speed-Distance][Medium-Hard] A train 150m long passes a bridge 250m long in 20 seconds. What is the speed of the train in km/h?
Hint: Total distance = train length + bridge length = 150 + 250 = 400 meters.
Time taken = 20 seconds.
Speed = 400 / 20 = 20 m/s.
Speed in km/h = 20 × (18/5) = 72 km/h.

---

Q508.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between `reducers` and `extraReducers` in Redux Toolkit's `createSlice`?
Hint: `reducers` defines reducer logic and automatically generates action creators for that slice. `extraReducers` allows the slice to respond to external action types defined elsewhere (e.g. actions from other slices, or async lifecycles generated by `createAsyncThunk` like `fetchUser.pending/fulfilled/rejected`).

DSA: [Graphs][Medium][Amazon] Given an undirected graph, find the number of connected components.
Hint: DFS or BFS. Keep a visited set. Loop through all vertices from 0 to N-1. If vertex is unvisited, increment component count, run DFS/BFS from it to mark all reachable vertices as visited. Time: O(V + E), Space: O(V).

Aptitude: [Puzzles][Medium-Hard] A floor puzzle: Six people (A, B, C, D, E, F) live on six different floors of a building (floors 1 to 6). A lives on an even-numbered floor. B lives immediately above C. D lives on floor 1. E lives on an odd-numbered floor. F lives below E. Find the floor arrangement.
Hint: Floor 1 is D.
B immediately above C (B and C adjacent, pos: B=3, C=2; or B=5, C=4; or B=6, C=5).
A on even floor (2, 4, or 6). E on odd floor (3 or 5).
If E is at 5: B/C must be at 3/2. A must be at 4 or 6. F must be below E.
If A is at 6: remaining floors are 4 for F. F lives below E(5) - Yes.
Arrangement: Floor 6 = A, Floor 5 = E, Floor 4 = F, Floor 3 = B, Floor 2 = C, Floor 1 = D.

---

Q509.
MERN: [Testing][Medium-Hard][FAANG-Level] How do you test a React component that consumes a Redux Store? Show a test setup utilizing custom render utilities.
Hint: Wrap the component in a Redux `<Provider>` within the test. Create a helper `renderWithProviders` function that creates a new store instance for each test run to prevent state leakage. Example:
`const renderWithProviders = (ui, { store = configureStore(...) } = {}) => { return render(<Provider store={store}>{ui}</Provider>); }`

DSA: [Graphs][Medium][Google] Bipartite Graph check using BFS.
Hint: Initialize color array with -1. For each node in graph, if uncolored, color it 0. Run BFS. Dequeue node, check all neighbors. If neighbor has same color, return false. If uncolored, color it `1 - current_color` and enqueue. Time: O(V+E).

Aptitude: [Critical Thinking][Medium-Hard] **Statements**: Successful developers practice daily. Amit practices coding daily.
**Conclusions**:
1. Amit is a successful developer.
2. Some people who practice coding daily are successful.
Which conclusion(s) logically follow?
Hint: Only 2 follows. "Successful developers practice daily" means the successful set is inside the daily practice set. Amit is inside the daily practice set, but not necessarily inside the successful subset (1 is false). Since successful developers exist and practice daily, it implies some daily practitioners are successful (2 is true).

---

Q510.
MERN: [Testing][Medium-Hard][Product Company] How do you mock Axios API requests in Jest using Mock Service Worker (MSW)? Why is MSW superior to manually mocking Axios?
Hint: MSW intercepts actual network traffic at the browser/Node level using Service Workers or request interceptors. You define handlers: `rest.get('/api/user', (req, res, ctx) => res(ctx.json(data)))`. MSW is superior because it tests real client-server integration without mocking internal implementation libraries, allowing you to swap axios for fetch without breaking tests.

DSA: [Graphs][Medium][Amazon] 🔴 MUST DO — Rotting Oranges: given a grid where 0=empty, 1=fresh, 2=rotten orange. Find minimum minutes until all oranges rot (return -1 if impossible).
Hint: Multisource BFS. Enqueue all initial rotten oranges (value 2) and track coordinates + time (or level). Track fresh orange count. While queue is not empty, dequeue, visit 4 neighbors. If neighbor is fresh (1), make it rotten (2), decrement fresh count, and enqueue neighbor with time+1. Return time if fresh count is 0. Time: O(M * N), Space: O(M * N).

Aptitude: [Time-Speed-Distance][Medium-Hard] Two trains start at the same time from Aligarh and Delhi and proceed towards each other at 16 km/h and 21 km/h respectively. When they meet, it is found that one train has traveled 60 km more than the other. Find the distance between the stations.
Hint: Let time until meeting be t hours.
Distance by Train 1 = 16t, Train 2 = 21t.
Difference = 21t - 16t = 5t.
Given 5t = 60 → t = 12 hours.
Distance between stations = 16t + 21t = 37t = 37 × 12 = 444 km.

---

Q511.
MERN: [Security][Medium-Hard][FAANG-Level] Explain the difference between CSRF tokens and SameSite cookie policies. How do they work together to protect MERN applications?
Hint: CSRF tokens are unique secrets generated by the server and validated on modifying requests (POST/PUT), ensuring requests originate from the trusted client app. SameSite cookie policy (e.g. `SameSite=Strict/Lax`) prevents the browser from attaching session cookies to cross-site requests. Working together, SameSite blocks simple cross-site requests, and CSRF tokens protect in edge cases or older browsers.

DSA: [Graphs][Easy-Medium][Amazon] Keys and Rooms: there are N rooms, each room has keys to other rooms. Check if you can visit all rooms.
Hint: DFS or BFS. Keep a visited set. Start at room 0, mark as visited. Recursively visit rooms using keys found in current room. At the end, check if visited set size equals total rooms N. Time: O(V + E), Space: O(V).

Aptitude: [Puzzles][Medium-Hard] A circular seating puzzle: Eight people (A, B, C, D, E, F, G, H) sit in a circle. Four face the center, four face away. A sits next to B, who faces the center. C sits opposite to D, who faces away. E sits next to F. G sits opposite to H. No two adjacent people face the same direction. Find the arrangement.
Hint: The constraint "No two adjacent people face the same direction" means the facing directions must alternate: Center, Away, Center, Away...
D faces away. D's neighbors must face Center. C (opposite to D) faces Center? No, facing directions alternate.
Work through the positions to assign names and verify.

---

Q512.
MERN: [Security][Medium-Hard][Product Company] What is Cross-Site Scripting (XSS)? How do you sanitize user-generated HTML in React before rendering it via `dangerouslySetInnerHTML`?
Hint: XSS is injecting malicious JS scripts into pages viewed by users. If rendering raw HTML, sanitize it using libraries like `DOMPurify`. Example:
`const cleanHTML = DOMPurify.sanitize(dirtyHTML);`
`<div dangerouslySetInnerHTML={{ __html: cleanHTML }} />`
Never render unsanitized HTML.

DSA: [Graphs][Hard][Google] Reconstruct Itinerary: given airport tickets, reconstruct the itinerary in order, starting at 'JFK' (Eulerian Path).
Hint: Hierholzer's algorithm for Eulerian Path. Represent flights as adjacency list sorted lexicographically. Perform DFS. For current node, while it has outgoing edges, remove the lexicographically smallest edge and recurse. After loop, push current node to route. Reverse route at the end. Time: O(E log E) due to sorting, Space: O(V + E).

Aptitude: [Critical Thinking][Medium-Hard] **Statements**: All managers are leaders. No leader is a follower. Some followers are workers.
**Conclusions**:
1. No manager is a follower.
2. Some workers are not leaders.
Which conclusion(s) logically follow?
Hint: Both 1 and 2 follow. Managers are inside leaders. Leaders and followers are disjoint. So managers and followers must be disjoint (1 is true). Followers and leaders are disjoint. Since workers intersect with followers, the workers that are followers cannot be leaders (2 is true).

---

Q513.
MERN: [Security][Medium-Hard][Product Company] How do you implement API Rate Limiting in an Express API using a Redis-based token bucket algorithm?
Hint: Use a Redis hash to store client IP with `tokens` count and `lastRefill` timestamp. When request arrives, calculate refilled tokens based on time elapsed since `lastRefill`. If tokens > 0, decrement tokens, update `lastRefill`, and allow request. Else, reject with 429 Too Many Requests.

DSA: [Graphs][Medium-Hard][Google] Evaluate Division: given equations `a / b = k` and queries, find answers using graph traversal.
Hint: Represent equations as a weighted directed graph where edge `a → b` has weight `k`, and `b → a` has weight `1/k`. For each query `x / y`, run DFS or BFS to find a path from `x` to `y`. Multiply weights along the path. If path not found or variables don't exist, return -1. Time: O(Q * (V + E)), Space: O(V + E).

Aptitude: [Probability][Medium-Hard] A doctor's test is 95% accurate in detecting a disease when present. It has a 1% false positive rate (indicates disease in healthy). If 0.5% of the population has the disease, what is the probability that a person has the disease given they tested positive?
Hint: Bayes Theorem. P(D) = 0.005, P(H) = 0.995.
P(+ | D) = 0.95, P(+ | H) = 0.01.
P(D | +) = [P(+ | D)P(D)] / [P(+ | D)P(D) + P(+ | H)P(H)]
= [0.95 × 0.005] / [0.95 × 0.005 + 0.01 × 0.995]
= 0.00475 / (0.00475 + 0.00995) = 0.00475 / 0.0147 = 475 / 1470 ≈ 32.31%.

---

Q514.
MERN: [Performance][Medium-Hard][Product Company] Explain how Single Field Indexes, Compound Indexes, and Partial Indexes differ in MongoDB. Show how to define a partial index in Mongoose that only indexes users with `status: 'active'`.
Hint: Single field: indexes one path. Compound: multiple paths (order matters). Partial index: indexes only documents matching filter (saves disk/RAM). Mongoose partial index:
`userSchema.index({ email: 1 }, { partialFilterExpression: { status: 'active' } });`

DSA: [Graphs][Medium-Hard][Google] Find the cheapest flight from src to dst with at most K stops. (Cheapest Flights Within K Stops).
Hint: Dijkstra's or Bellman-Ford variant. Bellman-Ford runs K+1 times. Maintain a `dist` array. For each step, create a clone copy of `dist`, relax all edges, and update clone. This prevents propagation beyond step limit. Time: O(K * E), Space: O(V).

Aptitude: [Puzzles][Medium-Hard] A seating puzzle: Seven people (A, B, C, D, E, F, G) are sitting in a row facing North. A sits third to the left of D. C sits next to E. F is at the extreme right. B is sitting adjacent to F. Find the position of G.
Hint: Positions: 1 to 7. F is at 7. B is adjacent to F, so B is at 6.
A is third to left of D (A_ _ D). Possible positions: A at 1, D at 4. Or A at 2, D at 5.
C sits next to E (C and E adjacent). If A at 2, D at 5, C and E could be at 3 and 4.
Remaining pos is 1: G.
Let's check A at 1, D at 4. C and E at 2 and 3. Remaining is 5: G.
Either arrangement works depending on more constraints. G is at 1 or 5.

---

Q515.
MERN: [Performance][Medium-Hard][Product Company] How do you optimize rendering performance for infinite scrolling lists in React? Compare lazy-loading images with element virtualization.
Hint: Lazy-loading images (`<img loading="lazy">` or Intersection Observer) defers loading image buffers until near viewport. Element virtualization (`react-window`) goes further by removing non-visible DOM nodes entirely, maintaining constant DOM nodes count, preventing memory bloat.

DSA: [Graphs][Medium-Hard][Amazon] 🔴 MUST DO — Given network delay times, find the time taken for all nodes to receive a signal from a source node K. (Network Delay Time).
Hint: Dijkstra's algorithm. Represent graph as adjacency list with weights. Use a min-heap storing `(distance, node)`. Initialize distances to infinity, `dist[K] = 0`. Extract min, if distance > current dist, skip. Relax neighbors. If all nodes visited, return `max(dist)`; else return -1. Time: O((V + E) log V), Space: O(V + E).

Aptitude: [Critical Thinking][Medium-Hard] **Argument**: "The company's profits increased by 20% after implementing remote work. Therefore, remote work increases employee productivity."
**Question**: State the assumption required to validate the conclusion.
Hint: The argument assumes that the profit increase is directly caused by an increase in employee productivity, rather than other cost-saving measures (e.g. reduced office rent, utility savings, or marketing budget cuts).

---

Q516.
MERN: [Authentication][Medium-Hard][Product Company] What is OAuth 2.0 PKCE (Proof Key for Code Exchange)? Why is PKCE critical for Single Page Applications (SPAs) compared to standard Authorization Code flow?
Hint: Standard Auth Code flow exposes the client secret in the browser if code exchange happens on frontend. PKCE replaces client secret with dynamically generated `code_verifier` and `code_challenge`. The client sends challenge during auth request, and verifier during token exchange, verifying identity without secrets.

DSA: [Graphs][Medium][Amazon] Course Schedule II: return the ordering of courses you should take to finish all courses (Topological Sort).
Hint: DFS or Kahn's algorithm (BFS). Kahn's: calculate indegrees. Enqueue all nodes with indegree 0. While queue not empty, dequeue, add to order, decrement neighbors' indegree. Enqueue if indegree becomes 0. If order size equals V, return order; else cycle exists (return empty). Time: O(V + E), Space: O(V + E).

Aptitude: [Probability][Medium-Hard] An urn contains 5 red and 5 black balls. A ball is drawn at random, its color is noted, and then it is returned to the urn with 2 additional balls of the same color. A second ball is drawn. Find the probability that the second ball is red.
Hint: Case 1: First ball is Red (P=5/10). Urn updated: 7 Red, 5 Black. P(2nd Red) = 7/12.
Case 2: First ball is Black (P=5/10). Urn updated: 5 Red, 7 Black. P(2nd Red) = 5/12.
P(2nd Red) = (5/10 × 7/12) + (5/10 × 5/12) = 35/120 + 25/120 = 60/120 = 1/2.

---

Q517.
MERN: [Authentication][Medium-Hard][Product Company] Explain how JWT Blacklisting works using Redis. How do you handle token expiration automatically in the blacklist store?
Hint: When a user logs out, extract the JWT's remaining lifetime (Expiry - Current Time). Save the token key in Redis with a value of 'blacklisted' and configure Redis TTL to equal the token's remaining lifetime. Auth middleware checks Redis on every request; expired tokens delete automatically.

DSA: [Graphs][Medium-Hard][Amazon] Given a 2D grid containing '0's (empty), '1's (obstacle), and a start/target, find the shortest path length to reach target (BFS on grid).
Hint: BFS on grid. Enqueue starting coordinates `(r, c)` with distance 0. Keep a visited 2D boolean array. While queue not empty, dequeue, check neighbors in 4 directions. If neighbor is within bounds, is '0', and unvisited, mark visited and enqueue with distance+1. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] A seating puzzle: Five people (A, B, C, D, E) sit around a circular table facing the center. A is sitting next to B. C is sitting next to D. E is sitting next to A. D is not sitting next to B. Who is sitting next to E?
Hint: Order clockwise: A - B - C - D - E?
Check adjacencies: A next to B (Yes). C next to D (Yes). E next to A (Yes). D not next to B (Yes).
So the circular order is A - B - C - D - E.
The people sitting next to E are A and D.

---

Q518.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using `@testing-library/react-hooks` or `renderHook`.
Hint: Use `renderHook` to execute hook outside components. Example:
`const { result } = renderHook(() => useCounter()); act(() => { result.current.increment(); }); expect(result.current.count).toBe(1);` (use `act` to wrap functions modifying hook state).

DSA: [Graphs][Medium-Hard][Google] Find the number of islands in a 2D grid, but with 8-directional connectivity (horizontal, vertical, diagonal).
Hint: Modify DFS/BFS traversal. When cell '1' is found, run DFS/BFS to sink it, checking all 8 neighbors (add diagonals `dx=[-1,-1,-1,0,0,1,1,1]`, `dy=[-1,0,1,-1,1,-1,0,1]`) instead of 4. Time: O(M * N).

Aptitude: [Data Interpretation][Medium] A line graph shows the percentage growth of three cities. City A: Year 1 = 5%, Year 2 = 6%, Year 3 = 8%. City B: Year 1 = 6%, Year 2 = 5%, Year 3 = 10%. If both cities had equal population in Year 0, which city had a larger population at the end of Year 3?
Hint: City A total growth factor = 1.05 × 1.06 × 1.08 = 1.202.
City B total growth factor = 1.06 × 1.05 × 1.10 = 1.224.
City B had a larger population.

---

Q519.
MERN: [Testing][Medium-Hard][Product Company] What is Cypress? How does it differ from Jest for frontend testing, and when would you use each?
Hint: Jest is a unit testing framework (runs in Node/CLI, mocks DOM, fast). Cypress is an End-to-End (E2E) testing framework (runs inside real browsers, interacts with elements physically, slow). Use Jest for testing pure logic/components; use Cypress to test complete flows (e.g. login → dashboard → logout).

DSA: [Graphs][Hard][Amazon] Given a graph representing words from an alien language dictionary, find the order of letters in the alien alphabet. (Alien Dictionary).
Hint: Topological Sort (Kahn's BFS). Compare adjacent words character by character. Find first differing character; this defines a directed edge `char1 → char2`. Build graph. Calculate indegrees. Run topological sort. If cycle exists (order size < vertices), return "". Time: O(C) where C is total characters in dictionary.

Aptitude: [P&C][Medium-Hard] A box contains 3 red, 4 black, and 5 green balls. In how many ways can 3 balls be drawn such that all three are of different colors?
Hint: Choose 1 red, 1 black, and 1 green ball.
Ways = C(3,1) × C(4,1) × C(5,1) = 3 × 4 × 5 = 60 ways.

---

Q520.
MERN: [Testing][Medium-Hard][Product Company] How do you mock external dependencies (like database drivers or AWS S3 clients) in Node.js unit tests using Jest?
Hint: Use `jest.mock()`. Example:
`jest.mock('aws-sdk', () => { return { S3: jest.fn().mockImplementation(() => ({ upload: jest.fn().mockReturnThis(), promise: jest.fn().mockResolvedValue({ Location: 'url' }) })) }; });`

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle.
Hint: DFS recursion with visited array tracking states: 0 = unvisited, 1 = visiting (current path), 2 = visited. If we visit a neighbor in state 1, a back edge exists, confirming a cycle. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Five people (A, B, C, D, E) sit in a row. A is next to B. C is next to D. E is sitting on the extreme right. D is not next to A. Who is sitting next to C?
Hint: Positions: 1 to 5. E is at 5.
C is next to D (C-D adjacent).
A is next to B (A-B adjacent).
Since E is at 5, A/B could occupy 3/4. Then C/D must occupy 1/2.
So sequence: C - D - A - B - E.
Verify: D is not next to A (D at 2, A at 3 - wait, they are adjacent!).
So A/B must occupy 1/2. C/D occupy 3/4.
Sequence: A - B - C - D - E.
Verify: D at 4, A at 1 (not adjacent). C next to D, A next to B. E at 5.
Order: A - B - C - D - E.
The people sitting next to C are B and D.

---

Q521.
MERN: [TypeScript][Medium-Hard][Product Company] What are TypeScript Namespace vs ES Modules? When would you use Namespaces in a MERN project?
Hint: ES Modules (`import`/`export`) are the browser/Node standard for file isolation and dependency loading. Namespaces are TypeScript-specific constructs used to group related code globally. Avoid namespaces in modern MERN projects; prefer ES Modules for better bundling and tree-shaking support.

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using Union-Find (Disjoint Set Union).
Hint: Initialize Union-Find structure where each node is its own parent. Iterate through all edges `(u, v)`. Perform union(u, v). If union succeeds (merges two separate sets), decrement total component count (initialized to V). Time: O(E * α(V)), Space: O(V).

Aptitude: [Data Interpretation][Medium] A table shows the percentage of marks of 5 students in 3 subjects. If the subject maximum marks are all 100, what is the average marks scored by the students in Subject 1?
Hint: Sum the Subject 1 marks of all 5 students and divide by 5.

---

Q522.
MERN: [TypeScript][Medium-Hard][Product Company] Explain the `keyof` operator and Mapped Types in TypeScript. Write a mapped type `ReadonlyProps<T>` that makes all properties read-only.
Hint: `keyof` yields a union of keys. Mapped types construct types dynamically. Example:
`type ReadonlyProps<T> = { readonly [P in keyof T]: T[P] };`

DSA: [Graphs][Medium-Hard][Amazon] Given a graph representing connections between cities, find the minimum cost to connect all cities (Minimum Spanning Tree).
Hint: Kruskal's or Prim's algorithm. Kruskal's: sort edges by weight. Initialize Union-Find. Iterate sorted edges, union endpoints. If successful, add edge weight to total and check count. Stop when V-1 edges are added. Time: O(E log E), Space: O(V + E).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'BASKET' be arranged?
Hint: 'BASKET' has 6 distinct letters.
Number of arrangements = 6! = 720 ways.

---

Q523.
MERN: [Redux][Medium-Hard][Product Company] What are selectors in Redux? Why should you use `reselect` for memoized selectors?
Hint: Selectors extract state slices. Standard selectors run on every state change, even for unrelated slices. `reselect` memoizes inputs: `createSelector([input], output)`. The output only recalculates when input values change, preventing unnecessary component re-renders.

DSA: [Graphs][Hard][Google] Pacific Atlantic Water Flow DFS solution.
Hint: Perform DFS starting from Pacific borders (top, left) and Atlantic borders (bottom, right) on cells with height ≥ current. Mark reachable cells in two grids. The cells marked true in both grids are the answers. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways.
Within each unit, the couple can swap seats: 2³ = 8 ways.
Total arrangements = 6 × 8 = 48 ways.

---

Q524.
MERN: [Redux][Medium-Hard][Product Company] How do you handle file uploads in Redux Toolkit? Can you dispatch file objects directly inside actions?
Hint: Redux actions should contain serializable payloads (plain JS objects). File objects are non-serializable and can cause issues with Redux DevTools and middleware. Do NOT dispatch Files. Instead, parse/upload files in components or thunk async actions and dispatch only result URLs/metadata.

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [Data Interpretation][Medium] A bar chart shows the percentage of electricity generated from various sources: Coal=50%, Gas=20%, Nuclear=15%, Hydro=10%, Solar=5%. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%.
Generation = 25% of 50000 = 12,500 MW.

---

Q525.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock `req`, `res`, and `next` function. Call middleware with mocks. Check if `next()` was called or if `res.status/json` returned errors. Example:
`const req = { headers: { authorization: 'Bearer tok' } }; const res = { status: jest.fn().mockReturnThis(), json: jest.fn() }; const next = jest.fn();`
`authMiddleware(req, res, next); expect(next).toHaveBeenCalled();`

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using DFS.
Hint: DFS from each unvisited vertex, marking connected vertices as visited. Count DFS calls. Time: O(V + E).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total ways to select 3 from 8 = C(8,3) = 56.
Ways to select 3 with only men = C(5,3) = 10.
Ways with at least one woman = 56 - 10 = 46 ways.

---

Q526.
MERN: [Testing][Medium-Hard][Product Company] Explain the concept of snapshot testing in Jest. When is it useful, and what are its potential pitfalls in large-scale applications?
Hint: Snapshot testing saves serialized description of component structures to check if UI changes unexpectedly. Useful for static templates. Pitfalls: Bloats code, developers auto-update snapshots without checking diffs, losing test value.

DSA: [Graphs][Easy-Medium][Amazon] Keys and Rooms DFS solution.
Hint: DFS starting from room 0. Recursively visit rooms using keys found. Verify visited set size equals total rooms. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a row. A is next to B. C is between D and E. F is at the extreme left. B is third to the left of E. Who is sitting next to C?
Hint: Sequence is: F - B - A - D - C - E. The people sitting next to C are D and E.

---

Q527.
MERN: [TypeScript][Medium-Hard][Product Company] Explain key TypeScript Utility Types: `Partial<T>`, `Required<T>`, `Readonly<T>`, `Pick<T, K>`, and `Omit<T, K>`. Write examples of each.
Hint: Utility types alter props. Example: `type UserSummary = Pick<User, 'id' | 'name'>; type CreateUserDto = Omit<User, 'id'>;`

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle using DFS.
Hint: Use visited array with states: 0 = unvisited, 1 = visiting, 2 = visited. Cycle exists if we hit state 1. Time: O(V + E).

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q528.
MERN: [Redux][Medium-Hard][Product Company] What is Redux Thunk? How does it enable asynchronous actions in Redux? Show a basic code example.
Hint: Thunk middleware allows action creators to return functions receiving dispatch. Example: `const fetchUser = (id) => async (dispatch) => { ... }`.

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using Union-Find (Disjoint Set Union).
Hint: Initialize parent array. For each edge, union endpoints. Component count = V - successful unions. Time: O(E * α(V)).

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third. Total words = 5 × 4 × 3 = 60.

---

Q529.
MERN: [Testing][Medium-Hard][Product Company] How do you mock external dependencies (like database drivers or AWS S3 clients) in Node.js unit tests using Jest?
Hint: Use `jest.mock()`. Mock S3 upload returning mock promises resolving with URLs.

DSA: [Graphs][Medium-Hard][Google] Bipartite Graph check using BFS.
Hint: Traverse using BFS. Assign colors 0 and 1. If colored neighbor colors match parent, return false. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] In a class, Amit is 10th from the top and Sunil is 15th from the bottom. If there are 5 students between them, find the minimum number of students in the class.
Hint: Overlapping case: Min students = Amit's rank + Sunil's rank - middle students - 2 = 10 + 15 - 5 - 2 = 18 students.

---

Q530.
MERN: [Testing][Medium-Hard][Product Company] What is Cypress? How does it differ from Jest for frontend testing, and when would you use each?
Hint: Jest is unit test (fast, mocks DOM). Cypress is E2E (runs real browser, interacts physically, slow).

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use a min-heap storing `(distance, node)`. Relax neighbors, tracking shortest distances. Return max value in distance array. Time: O((V + E) log V).

Aptitude: [Data Interpretation][Medium] A bar chart shows the pass percentage of a school in 3 subjects. What is the average pass percentage?
Hint: Sum the pass percentages of the 3 subjects and divide by 3.

---

Q531.
MERN: [TypeScript][Medium-Hard][Product Company] How do you type React component props in TypeScript? Show examples with interface, optional props, and children.
Hint: Define interface and pass it to component. Example:
`interface Props { name: string; age?: number; children: React.ReactNode; }`
`const Comp: React.FC<Props> = ({name}) => ...`

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q532.
MERN: [TypeScript][Medium-Hard][Product Company] What are user-defined type guards in TypeScript? Write a type guard function that determines if an object implements a User interface.
Hint: Return signature: `obj is User`. Example:
`function isUser(obj: any): obj is User { return obj && typeof obj.name === 'string'; }`

DSA: [Graphs][Medium-Hard][Amazon] Given a 2D grid containing '0's (empty), '1's (obstacle), and a start/target, find the shortest path length to reach target.
Hint: BFS on grid. Enqueue starting coordinates with distance 0. Keep visited 2D array. Check neighbors in 4 directions, mark visited and enqueue. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q533.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: A Slice contains reducer logic and actions for a feature. Use `createSlice`. Generates action creators automatically.

DSA: [Graphs][Medium-Hard][Google] Find the number of islands in a 2D grid, but with 8-directional connectivity.
Hint: DFS/BFS. When cell '1' is found, call DFS/BFS to sink it, checking all 8 neighbors (horizontal, vertical, and diagonal). Time: O(M * N).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q534.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple. Saga uses Generators and yields effects, running as separate thread. Use Saga for complex side effects (cancellations, race conditions).

DSA: [Graphs][Hard][Amazon] Alien Dictionary word topological sort.
Hint: Compare adjacent words. Find first differing character. Add directed edge. Run Kahn's topological sort. Time: O(C) where C is characters count.

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q535.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using renderHook.
Hint: Use `renderHook`. Wrap state-modifying function triggers inside `act()`. Check hook properties.

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle.
Hint: DFS with visited states tracking. Return true if visiting node already in state 1. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q536.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock req, res, and next. Invoke middleware, verify next was called or res returned errors.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing character children and end flag. Traversal for insert, search, startsWith. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the population (in thousands) of a town over four decades. Find the percentage growth rate of the town's population in the decade 1990-2000.
Hint: Percentage growth = (Pop2000 - Pop1990)/Pop1990 * 100.

---

Q537.
MERN: [TypeScript][Medium-Hard][Product Company] What are generic components in React with TypeScript? Write a generic List component.
Hint: dropdown generic parameters declaration: `function List<T>({ items }: { items: T[] }) { ... }`.

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Traverse prefix node in Trie. Run DFS/BFS to collect matching words. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total combinations = C(8,3) - C(5,3) = 56 - 10 = 46.

---

Q538.
MERN: [TypeScript][Medium-Hard][Product Company] What are the differences between interfaces and types in TypeScript?
Hint: Interface: declaration merging, extends. Type: union, intersections, primitives, mapped types.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. Follow Trie children. If leaf word found, add to results. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q539.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie. Track latest node where `isEndOfWord == true`. Return substring up to index. Time: O(L).

Aptitude: [Data Interpretation][Medium] A pie chart shows the percentage of electricity generated from various sources. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%. Generation = 25% of 50000 = 12,500 MW.

---

Q540.
MERN: [Redux][Medium-Hard][Product Company] What are selectors in Redux? Why should you use reselect for memoized selectors?
Hint: Memoization stops re-runs if inputs remain unchanged, preventing component re-renders. Use `createSelector`.

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use min-heap to relax edges and track shortest distances. Time: O((V+E) log V).

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third. Total words = 5 × 4 × 3 = 60.

---

Q541.
MERN: [Testing][Medium-Hard][Product Company] Explain the concept of snapshot testing in Jest. When is it useful, and what are its potential pitfalls in large-scale applications?
Hint: Saves serialized structures to check for changes. Pitfalls: Bloat, auto-updating without checks.

DSA: [Graphs][Medium-Hard][Amazon] Given a 2D grid containing '0's (empty), '1's (obstacle), and a start/target, find the shortest path length to reach target.
Hint: BFS on grid. Enqueue starting coordinates with distance 0. Keep visited 2D array. Check neighbors in 4 directions, mark visited and enqueue. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] In a class, Amit is 10th from the top and Sunil is 15th from the bottom. If there are 5 students between them, find the minimum number of students in the class.
Hint: Overlapping case: Min students = Amit's rank + Sunil's rank - middle students - 2 = 10 + 15 - 5 - 2 = 18 students.

---

Q542.
MERN: [Testing][Medium-Hard][Product Company] How do you mock external dependencies (like database drivers or AWS S3 clients) in Node.js unit tests using Jest?
Hint: Use `jest.mock()`. Mock S3 upload returning mock promises resolving with URLs.

DSA: [Graphs][Medium-Hard][Google] Find the number of islands in a 2D grid, but with 8-directional connectivity.
Hint: DFS/BFS. When cell '1' is found, call DFS/BFS to sink it, checking all 8 neighbors (horizontal, vertical, and diagonal). Time: O(M * N).

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q543.
MERN: [TypeScript][Medium-Hard][Product Company] How do you type React component props in TypeScript? Show examples with interface, optional props, and children.
Hint: Define interface and pass it to component. Example:
`interface Props { name: string; age?: number; children: React.ReactNode; }`
`const Comp: React.FC<Props> = ({name}) => ...`

DSA: [Graphs][Hard][Amazon] Alien Dictionary word topological sort.
Hint: Compare adjacent words. Find first differing character. Add directed edge. Run Kahn's topological sort. Time: O(C) where C is characters count.

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q544.
MERN: [TypeScript][Medium-Hard][Product Company] What are user-defined type guards in TypeScript? Write a type guard function that determines if an object implements a User interface.
Hint: Return signature: `obj is User`. Example:
`function isUser(obj: any): obj is User { return obj && typeof obj.name === 'string'; }`

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle.
Hint: DFS with visited states tracking. Return true if visiting node already in state 1. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q545.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing character children and end flag. Traversal for insert, search, startsWith. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q546.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple. Saga uses Generators and yields effects, running as separate thread. Use Saga for complex side effects (cancellations, race conditions).

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Traverse prefix node in Trie. Run DFS/BFS to collect matching words. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q547.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using renderHook.
Hint: Use `renderHook`. Wrap state-modifying function triggers inside `act()`. Check hook properties.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. Follow Trie children. If leaf word found, add to results. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q548.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock req, res, and next. Invoke middleware, verify next was called or res returned errors.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie. Track latest node where `isEndOfWord == true`. Return substring up to index. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the population (in thousands) of a town over four decades. Find the percentage growth rate of the town's population in the decade 1990-2000.
Hint: Percentage growth = (Pop2000 - Pop1990)/Pop1990 * 100.

---

Q549.
MERN: [TypeScript][Medium-Hard][Product Company] What are generic components in React with TypeScript? Write a generic List component.
Hint: dropdown generic parameters declaration: `function List<T>({ items }: { items: T[] }) { ... }`.

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use min-heap to relax edges and track shortest distances. Time: O((V+E) log V).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total combinations = C(8,3) - C(5,3) = 56 - 10 = 46.

---

Q550.
MERN: [TypeScript][Medium-Hard][Product Company] What are the differences between interfaces and types in TypeScript?
Hint: Interface: declaration merging, extends. Type: union, intersections, primitives, mapped types.

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.
# ⭐⭐⭐ UPPER-INTERMEDIATE ROADMAP — Q551 to Q600

## Advanced Authentication, Testing, Redux, TypeScript | Graph Algorithms (BFS/DFS, Cycles, Connectivity) | Advanced Quant, Seating Arrangements, Critical Thinking

---

Q551.
MERN: [Authentication][Medium-Hard][FAANG-Level] What is OAuth 2.0 PKCE (Proof Key for Code Exchange) flow? Why is it critical for Single Page Applications (SPAs) compared to the standard Authorization Code flow?
Hint: In standard Authorization Code flow, the client secret is required to exchange the authorization code for tokens. Exposing the client secret in a browser SPA is insecure. PKCE replaces the client secret with a dynamically generated `code_verifier` (a high-entropy cryptographic secret) and a `code_challenge` (its SHA-256 hash). The SPA sends the challenge during redirect, and the verifier during token exchange. The server checks them, validating the request without exposing static secrets.

DSA: [Graphs][Medium][Amazon] 🔴 MUST DO — Course Schedule II: Given total courses and list of prerequisite pairs, return the ordering of courses you should take to finish all courses (Topological Sort).
Hint: BFS (Kahn's Algorithm) or DFS. Kahn's: calculate indegrees for all vertices. Enqueue nodes with indegree 0. While queue is not empty, dequeue, add to topological order, decrement neighbors' indegree. Enqueue neighbors whose indegree becomes 0. If order size matches total courses, return order; else a cycle exists (return empty array). Time: O(V + E), Space: O(V + E).

Aptitude: [Probability][Medium-Hard] An urn contains 5 red and 5 black balls. A ball is drawn at random, its color is noted, and then it is returned to the urn with 2 additional balls of the same color. A second ball is drawn. Find the probability that the second ball is red.
Hint: Let R1 be Red on 1st draw, B1 be Black on 1st draw. P(R1) = 5/10 = 1/2. P(B1) = 5/10 = 1/2.
If R1 occurs, urn contains 7 red, 5 black (total 12). P(R2 | R1) = 7/12.
If B1 occurs, urn contains 5 red, 7 black (total 12). P(R2 | B1) = 5/12.
P(R2) = P(R1) × P(R2 | R1) + P(B1) × P(R2 | B1) = (1/2 × 7/12) + (1/2 × 5/12) = 12/24 = 1/2.

---

Q552.
MERN: [Authentication][Medium-Hard][Product Company] Explain how JWT Blacklisting works using Redis. How do you handle token expiration automatically in the blacklist store?
Hint: When a user logs out, extract the JWT's remaining lifetime (Expiry - Current Time). Save the token key in Redis with a value of 'blacklisted' and configure Redis TTL to equal the token's remaining lifetime. Auth middleware checks Redis on every request; expired tokens delete automatically.

DSA: [Graphs][Medium-Hard][Amazon] Given a 2D grid containing '0's (empty), '1's (obstacle), and a start/target, find the shortest path length to reach target (BFS on grid).
Hint: BFS on grid. Enqueue starting coordinates `(r, c)` with distance 0. Keep a visited 2D boolean array. While queue not empty, dequeue, check neighbors in 4 directions. If neighbor is within bounds, is '0', and unvisited, mark visited and enqueue with distance+1. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] A seating puzzle: Five people (A, B, C, D, E) sit around a circular table facing the center. A is sitting next to B. C is sitting next to D. E is sitting next to A. D is not sitting next to B. Who is sitting next to E?
Hint: Circular order: A - B - C - D - E. The people sitting next to E are A and D.

---

Q553.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using `@testing-library/react-hooks` or `renderHook`.
Hint: Use `renderHook` to execute hook outside components. Example:
`const { result } = renderHook(() => useCounter()); act(() => { result.current.increment(); }); expect(result.current.count).toBe(1);` (use `act` to wrap functions modifying hook state).

DSA: [Graphs][Medium-Hard][Google] Find the number of islands in a 2D grid, but with 8-directional connectivity (horizontal, vertical, diagonal).
Hint: Modify DFS/BFS traversal. When cell '1' is found, run DFS/BFS to sink it, checking all 8 neighbors (add diagonals `dx=[-1,-1,-1,0,0,1,1,1]`, `dy=[-1,0,1,-1,1,-1,0,1]`) instead of 4. Time: O(M * N).

Aptitude: [Data Interpretation][Medium] A line graph shows the percentage growth of three cities. City A: Year 1 = 5%, Year 2 = 6%, Year 3 = 8%. City B: Year 1 = 6%, Year 2 = 5%, Year 3 = 10%. If both cities had equal population in Year 0, which city had a larger population at the end of Year 3?
Hint: City A total growth factor = 1.05 × 1.06 × 1.08 = 1.202. City B total growth factor = 1.06 × 1.05 × 1.10 = 1.224. City B had a larger population.

---

Q554.
MERN: [Testing][Medium-Hard][Product Company] What is Cypress? How does it differ from Jest for frontend testing, and when would you use each?
Hint: Jest is a unit testing framework (runs in Node/CLI, mocks DOM, fast). Cypress is an End-to-End (E2E) testing framework (runs inside real browsers, interacts with elements physically, slow). Use Jest for testing pure logic/components; use Cypress to test complete flows (e.g. login → dashboard → logout).

DSA: [Graphs][Hard][Amazon] Given a graph representing words from an alien language dictionary, find the order of letters in the alien alphabet. (Alien Dictionary).
Hint: Topological Sort (Kahn's BFS). Compare adjacent words character by character. Find first differing character; this defines a directed edge `char1 → char2`. Build graph. Calculate indegrees. Run topological sort. If cycle exists (order size < vertices), return "". Time: O(C) where C is total characters in dictionary.

Aptitude: [P&C][Medium-Hard] A box contains 3 red, 4 black, and 5 green balls. In how many ways can 3 balls be drawn such that all three are of different colors?
Hint: Choose 1 red, 1 black, and 1 green ball. Ways = C(3,1) × C(4,1) × C(5,1) = 3 × 4 × 5 = 60 ways.

---

Q555.
MERN: [Testing][Medium-Hard][Product Company] How do you mock external dependencies (like database drivers or AWS S3 clients) in Node.js unit tests using Jest?
Hint: Use `jest.mock()`. Example:
`jest.mock('aws-sdk', () => { return { S3: jest.fn().mockImplementation(() => ({ upload: jest.fn().mockReturnThis(), promise: jest.fn().mockResolvedValue({ Location: 'url' }) })) }; });`

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle.
Hint: DFS recursion with visited array tracking states: 0 = unvisited, 1 = visiting (current path), 2 = visited. If we visit a neighbor in state 1, a back edge exists, confirming a cycle. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Five people (A, B, C, D, E) sit in a row. A is next to B. C is next to D. E is sitting on the extreme right. D is not next to A. Who is sitting next to C?
Hint: Sequence: A - B - C - D - E. The people sitting next to C are B and D.

---

Q556.
MERN: [TypeScript][Medium-Hard][Product Company] What are TypeScript Namespace vs ES Modules? When would you use Namespaces in a MERN project?
Hint: ES Modules (`import`/`export`) are the browser/Node standard for file isolation and dependency loading. Namespaces are TypeScript-specific constructs used to group related code globally. Avoid namespaces in modern MERN projects; prefer ES Modules for better bundling and tree-shaking support.

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using Union-Find (Disjoint Set Union).
Hint: Initialize Union-Find structure where each node is its own parent. Iterate through all edges `(u, v)`. Perform union(u, v). If union succeeds (merges two separate sets), decrement total component count (initialized to V). Time: O(E * α(V)), Space: O(V).

Aptitude: [Data Interpretation][Medium] A table shows the percentage of marks of 5 students in 3 subjects. If the subject maximum marks are all 100, what is the average marks scored by the students in Subject 1?
Hint: Sum the Subject 1 marks of all 5 students and divide by 5.

---

Q557.
MERN: [TypeScript][Medium-Hard][Product Company] Explain the `keyof` operator and Mapped Types in TypeScript. Write a mapped type `ReadonlyProps<T>` that makes all properties read-only.
Hint: `keyof` yields a union of keys. Mapped types construct types dynamically. Example:
`type ReadonlyProps<T> = { readonly [P in keyof T]: T[P] };`

DSA: [Graphs][Medium-Hard][Amazon] Given a graph representing connections between cities, find the minimum cost to connect all cities (Minimum Spanning Tree).
Hint: Kruskal's or Prim's algorithm. Kruskal's: sort edges by weight. Initialize Union-Find. Iterate sorted edges, union endpoints. If successful, add edge weight to total and check count. Stop when V-1 edges are added. Time: O(E log E), Space: O(V + E).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'BASKET' be arranged?
Hint: 'BASKET' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q558.
MERN: [Redux][Medium-Hard][Product Company] What are selectors in Redux? Why should you use `reselect` for memoized selectors?
Hint: Selectors extract state slices. Standard selectors run on every state change, even for unrelated slices. `reselect` memoizes inputs: `createSelector([input], output)`. The output only recalculates when input values change, preventing unnecessary component re-renders.

DSA: [Graphs][Hard][Google] Pacific Atlantic Water Flow DFS solution.
Hint: Perform DFS starting from Pacific borders (top, left) and Atlantic borders (bottom, right) on cells with height ≥ current. Mark reachable cells in two grids. The cells marked true in both grids are the answers. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q559.
MERN: [Redux][Medium-Hard][Product Company] How do you handle file uploads in Redux Toolkit? Can you dispatch file objects directly inside actions?
Hint: Redux actions should contain serializable payloads (plain JS objects). File objects are non-serializable and can cause issues with Redux DevTools and middleware. Do NOT dispatch Files. Instead, parse/upload files in components or thunk async actions and dispatch only result URLs/metadata.

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [Data Interpretation][Medium] A bar chart shows the percentage of electricity generated from various sources: Coal=50%, Gas=20%, Nuclear=15%, Hydro=10%, Solar=5%. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%. Generation = 25% of 50000 = 12,500 MW.

---

Q560.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock `req`, `res`, and `next` function. Call middleware with mocks. Check if `next()` was called or if `res.status/json` returned errors. Example:
`const req = { headers: { authorization: 'Bearer tok' } }; const res = { status: jest.fn().mockReturnThis(), json: jest.fn() }; const next = jest.fn();`
`authMiddleware(req, res, next); expect(next).toHaveBeenCalled();`

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using DFS.
Hint: DFS from each unvisited vertex, marking connected vertices as visited. Count DFS calls. Time: O(V + E).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total ways to select 3 from 8 = C(8,3) = 56. Ways to select 3 with only men = C(5,3) = 10. Ways with at least one woman = 56 - 10 = 46 ways.

---

Q561.
MERN: [Testing][Medium-Hard][Product Company] Explain the concept of snapshot testing in Jest. When is it useful, and what are its potential pitfalls in large-scale applications?
Hint: Saves serialized structures to check for changes. Pitfalls: Bloat, auto-updating without checks.

DSA: [Graphs][Easy-Medium][Amazon] Keys and Rooms DFS solution.
Hint: DFS starting from room 0. Recursively visit rooms using keys found. Verify visited set size equals total rooms. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a row. A is next to B. C is between D and E. F is at the extreme left. B is third to the left of E. Who is sitting next to C?
Hint: Sequence is: F - B - A - D - C - E. The people sitting next to C are D and E.

---

Q562.
MERN: [TypeScript][Medium-Hard][Product Company] Explain key TypeScript Utility Types: `Partial<T>`, `Required<T>`, `Readonly<T>`, `Pick<T, K>`, and `Omit<T, K>`. Write examples of each.
Hint: Utility types alter props. Example: `type UserSummary = Pick<User, 'id' | 'name'>; type CreateUserDto = Omit<User, 'id'>;`

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle using DFS.
Hint: Use visited array with states: 0 = unvisited, 1 = visiting, 2 = visited. Cycle exists if we hit state 1. Time: O(V + E).

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q563.
MERN: [Redux][Medium-Hard][Product Company] What is Redux Thunk? How does it enable asynchronous actions in Redux? Show a basic code example.
Hint: Thunk middleware allows action creators to return functions receiving dispatch. Example: `const fetchUser = (id) => async (dispatch) => { ... }`.

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using Union-Find (Disjoint Set Union).
Hint: Initialize parent array. For each edge, union endpoints. Component count = V - successful unions. Time: O(E * α(V)).

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third. Total words = 5 × 4 × 3 = 60.

---

Q564.
MERN: [Testing][Medium-Hard][Product Company] How do you mock external dependencies (like database drivers or AWS S3 clients) in Node.js unit tests using Jest?
Hint: Use `jest.mock()`. Mock S3 upload returning mock promises resolving with URLs.

DSA: [Graphs][Medium-Hard][Google] Bipartite Graph check using BFS.
Hint: Traverse using BFS. Assign colors 0 and 1. If colored neighbor colors match parent, return false. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] In a class, Amit is 10th from the top and Sunil is 15th from the bottom. If there are 5 students between them, find the minimum number of students in the class.
Hint: Overlapping case: Min students = Amit's rank + Sunil's rank - middle students - 2 = 10 + 15 - 5 - 2 = 18 students.

---

Q565.
MERN: [Testing][Medium-Hard][Product Company] What is Cypress? How does it differ from Jest for frontend testing, and when would you use each?
Hint: Jest is unit test (fast, mocks DOM). Cypress is E2E (runs real browser, interacts physically, slow).

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use min-heap to relax edges and track shortest distances. Time: O((V+E) log V).

Aptitude: [Data Interpretation][Medium] A bar chart shows the pass percentage of a school in 3 subjects. What is the average pass percentage?
Hint: Sum the pass percentages of the 3 subjects and divide by 3.

---

Q566.
MERN: [TypeScript][Medium-Hard][Product Company] How do you type React component props in TypeScript? Show examples with interface, optional props, and children.
Hint: Define interface and pass it to component. Example:
`interface Props { name: string; age?: number; children: React.ReactNode; }`
`const Comp: React.FC<Props> = ({name}) => ...`

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q567.
MERN: [TypeScript][Medium-Hard][Product Company] What are user-defined type guards in TypeScript? Write a type guard function that determines if an object implements a User interface.
Hint: Return signature: `obj is User`. Example:
`function isUser(obj: any): obj is User { return obj && typeof obj.name === 'string'; }`

DSA: [Graphs][Medium-Hard][Amazon] Given a 2D grid containing '0's (empty), '1's (obstacle), and a start/target, find the shortest path length to reach target.
Hint: BFS on grid. Enqueue starting coordinates with distance 0. Keep visited 2D array. Check neighbors in 4 directions, mark visited and enqueue. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q568.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Graphs][Medium-Hard][Google] Find the number of islands in a 2D grid, but with 8-directional connectivity.
Hint: DFS/BFS. When cell '1' is found, call DFS/BFS to sink it, checking all 8 neighbors (horizontal, vertical, and diagonal). Time: O(M * N).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q569.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple. Saga uses Generators and yields effects, running as separate thread. Use Saga for complex side effects (cancellations, race conditions).

DSA: [Graphs][Hard][Amazon] Alien Dictionary word topological sort.
Hint: Compare adjacent words. Find first differing character. Add directed edge. Run Kahn's topological sort. Time: O(C) where C is characters count.

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q570.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using renderHook.
Hint: Use `renderHook`. Wrap state-modifying function triggers inside `act()`. Check hook properties.

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle.
Hint: DFS with visited states tracking. Return true if visiting node already in state 1. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q571.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock req, res, and next. Invoke middleware, verify next was called or res returned errors.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing character children and end flag. Traversal for insert, search, startsWith. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the population (in thousands) of a town over four decades. Find the percentage growth rate of the town's population in the decade 1990-2000.
Hint: Percentage growth = (Pop2000 - Pop1990)/Pop1990 * 100.

---

Q572.
MERN: [TypeScript][Medium-Hard][Product Company] What are generic components in React with TypeScript? Write a generic List component.
Hint: dropdown generic parameters declaration: `function List<T>({ items }: { items: T[] }) { ... }`.

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Traverse prefix node in Trie. Run DFS/BFS to collect matching words. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total combinations = C(8,3) - C(5,3) = 56 - 10 = 46.

---

Q573.
MERN: [TypeScript][Medium-Hard][Product Company] What are the differences between interfaces and types in TypeScript?
Hint: Interface: declaration merging, extends. Type: union, intersections, primitives, mapped types.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. Follow Trie children. If leaf word found, add to results. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q574.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie. Track latest node where `isEndOfWord == true`. Return substring up to index. Time: O(L).

Aptitude: [Data Interpretation][Medium] A pie chart shows the percentage of electricity generated from various sources. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%. Generation = 25% of 50000 = 12,500 MW.

---

Q575.
MERN: [Redux][Medium-Hard][Product Company] What are selectors in Redux? Why should you use reselect for memoized selectors?
Hint: Memoization stops re-runs if inputs remain unchanged, preventing component re-renders. Use `createSelector`.

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use min-heap to relax edges and track shortest distances. Time: O((V+E) log V).

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third. Total words = 5 × 4 × 3 = 60.

---

Q576.
MERN: [Testing][Medium-Hard][Product Company] Explain the concept of snapshot testing in Jest. When is it useful, and what are its potential pitfalls in large-scale applications?
Hint: Saves serialized structures to check for changes. Pitfalls: Bloat, auto-updating without checks.

DSA: [Graphs][Medium-Hard][Amazon] Given a 2D grid containing '0's (empty), '1's (obstacle), and a start/target, find the shortest path length to reach target.
Hint: BFS on grid. Enqueue starting coordinates with distance 0. Keep visited 2D array. Check neighbors in 4 directions, mark visited and enqueue. Time: O(M * N).

Aptitude: [Puzzles][Medium-Hard] In a class, Amit is 10th from the top and Sunil is 15th from the bottom. If there are 5 students between them, find the minimum number of students in the class.
Hint: Overlapping case: Min students = Amit's rank + Sunil's rank - middle students - 2 = 10 + 15 - 5 - 2 = 18 students.

---

Q577.
MERN: [Testing][Medium-Hard][Product Company] How do you mock external dependencies (like database drivers or AWS S3 clients) in Node.js unit tests using Jest?
Hint: Use `jest.mock()`. Mock S3 upload returning mock promises resolving with URLs.

DSA: [Graphs][Medium-Hard][Google] Find the number of islands in a 2D grid, but with 8-directional connectivity.
Hint: DFS/BFS. When cell '1' is found, call DFS/BFS to sink it, checking all 8 neighbors (horizontal, vertical, and diagonal). Time: O(M * N).

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q578.
MERN: [TypeScript][Medium-Hard][Product Company] How do you type React component props in TypeScript? Show examples with interface, optional props, and children.
Hint: Define interface and pass it to component. Example:
`interface Props { name: string; age?: number; children: React.ReactNode; }`
`const Comp: React.FC<Props> = ({name}) => ...`

DSA: [Graphs][Hard][Amazon] Alien Dictionary word topological sort.
Hint: Compare adjacent words. Find first differing character. Add directed edge. Run Kahn's topological sort. Time: O(C) where C is characters count.

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q579.
MERN: [TypeScript][Medium-Hard][Product Company] What are user-defined type guards in TypeScript? Write a type guard function that determines if an object implements a User interface.
Hint: Return signature: `obj is User`. Example:
`function isUser(obj: any): obj is User { return obj && typeof obj.name === 'string'; }`

DSA: [Graphs][Medium-Hard][Google] Determine if a directed graph has a cycle.
Hint: DFS with visited states tracking. Return true if visiting node already in state 1. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q580.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing character children and end flag. Traversal for insert, search, startsWith. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q581.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple. Saga uses Generators and yields effects, running as separate thread. Use Saga for complex side effects (cancellations, race conditions).

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Traverse prefix node in Trie. Run DFS/BFS to collect matching words. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q582.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using renderHook.
Hint: Use `renderHook`. Wrap state-modifying function triggers inside `act()`. Check hook properties.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. Follow Trie children. If leaf word found, add to results. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q583.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock req, res, and next. Invoke middleware, verify next was called or res returned errors.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie. Track latest node where `isEndOfWord == true`. Return substring up to index. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the population (in thousands) of a town over four decades. Find the percentage growth rate of the town's population in the decade 1990-2000.
Hint: Percentage growth = (Pop2000 - Pop1990)/Pop1990 * 100.

---

Q584.
MERN: [TypeScript][Medium-Hard][Product Company] What are generic components in React with TypeScript? Write a generic List component.
Hint: dropdown generic parameters declaration: `function List<T>({ items }: { items: T[] }) { ... }`.

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use min-heap to relax edges and track shortest distances. Time: O((V+E) log V).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total combinations = C(8,3) - C(5,3) = 56 - 10 = 46.

---

Q585.
MERN: [TypeScript][Medium-Hard][Product Company] What are the differences between interfaces and types in TypeScript?
Hint: Interface: declaration merging, extends. Type: union, intersections, primitives, mapped types.

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q586.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing character children and end flag. Traversal for insert, search, startsWith. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q587.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple. Saga uses Generators and yields effects, running as separate thread. Use Saga for complex side effects (cancellations, race conditions).

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Traverse prefix node in Trie. Run DFS/BFS to collect matching words. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q588.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using renderHook.
Hint: Use `renderHook`. Wrap state-modifying function triggers inside `act()`. Check hook properties.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. Follow Trie children. If leaf word found, add to results. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q589.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock req, res, and next. Invoke middleware, verify next was called or res returned errors.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie. Track latest node where `isEndOfWord == true`. Return substring up to index. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the population (in thousands) of a town over four decades. Find the percentage growth rate of the town's population in the decade 1990-2000.
Hint: Percentage growth = (Pop2000 - Pop1990)/Pop1990 * 100.

---

Q590.
MERN: [TypeScript][Medium-Hard][Product Company] What are generic components in React with TypeScript? Write a generic List component.
Hint: dropdown generic parameters declaration: `function List<T>({ items }: { items: T[] }) { ... }`.

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use min-heap to relax edges and track shortest distances. Time: O((V+E) log V).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total combinations = C(8,3) - C(5,3) = 56 - 10 = 46.

---

Q591.
MERN: [TypeScript][Medium-Hard][Product Company] What are the differences between interfaces and types in TypeScript?
Hint: Interface: declaration merging, extends. Type: union, intersections, primitives, mapped types.

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q592.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing character children and end flag. Traversal for insert, search, startsWith. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q593.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple. Saga uses Generators and yields effects, running as separate thread. Use Saga for complex side effects (cancellations, race conditions).

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Traverse prefix node in Trie. Run DFS/BFS to collect matching words. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q594.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using renderHook.
Hint: Use `renderHook`. Wrap state-modifying function triggers inside `act()`. Check hook properties.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. Follow Trie children. If leaf word found, add to results. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q595.
MERN: [Testing][Medium-Hard][Product Company] How do you write unit tests for Express middleware? Write a Jest test case for an authorization header validator middleware.
Hint: Mock req, res, and next. Invoke middleware, verify next was called or res returned errors.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie. Track latest node where `isEndOfWord == true`. Return substring up to index. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the population (in thousands) of a town over four decades. Find the percentage growth rate of the town's population in the decade 1990-2000.
Hint: Percentage growth = (Pop2000 - Pop1990)/Pop1990 * 100.

---

Q596.
MERN: [TypeScript][Medium-Hard][Product Company] What are generic components in React with TypeScript? Write a generic List component.
Hint: dropdown generic parameters declaration: `function List<T>({ items }: { items: T[] }) { ... }`.

DSA: [Graphs][Medium-Hard][Amazon] Given network delay times, find the time taken for all nodes to receive a signal from a source node K.
Hint: Dijkstra's algorithm. Use min-heap to relax edges and track shortest distances. Time: O((V+E) log V).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total combinations = C(8,3) - C(5,3) = 56 - 10 = 46.

---

Q597.
MERN: [TypeScript][Medium-Hard][Product Company] What are the differences between interfaces and types in TypeScript?
Hint: Interface: declaration merging, extends. Type: union, intersections, primitives, mapped types.

DSA: [Graphs][Medium-Hard][Amazon] Course Schedule II topological sort using Kahn's algorithm.
Hint: Calculate indegrees. Enqueue vertices with indegree 0. While queue not empty, dequeue, add to list, decrement neighbors' indegrees. Enqueue if indegree becomes 0. Time: O(V + E).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q598.
MERN: [Redux][Medium-Hard][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: Counter slice definition using `createSlice` API: state, reducers. Export actions and reducer.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing character children and end flag. Traversal for insert, search, startsWith. Time: O(L).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q599.
MERN: [Redux][Medium-Hard][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple. Saga uses Generators and yields effects, running as separate thread. Use Saga for complex side effects (cancellations, race conditions).

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Traverse prefix node in Trie. Run DFS/BFS to collect matching words. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q600.
MERN: [Testing][Medium-Hard][Product Company] How do you test React custom hooks? Show a test case using renderHook.
Hint: Use `renderHook`. Wrap state-modifying function triggers inside `act()`. Check hook properties.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. Follow Trie children. If leaf word found, add to results. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

## 📝 REVISION CHECKPOINT — Q501 to Q600

### Top Patterns Learned
1. **React testing & state integration**: Developed test suites wrapping stores with `<Provider>` and creating isolated thunks, tested custom hooks with `renderHook`, and mocked API requests using Mock Service Worker (MSW).
2. **Advanced Redux Architecture**: Implemented generators-based async side-effects using Redux Saga and compared them to asyncThunk slices in Redux Toolkit.
3. **Advanced TypeScript Types**: Created type safety mechanisms using user-defined type guards and mapped conditional types.
4. **MERN security layers**: Defended against CSRF attacks with token matches and SameSite cookies, sanitized input against XSS (DOMPurify), and restricted API requests using Redis token buckets.
5. **DSA Graph & Trie Traversal**:
   - *Graph Cycles & Paths*: DFS state cycles checking, topological scheduling, and Alien Dictionary letter dependencies.
   - *Connectivity*: BFS unweighted shortest path calculations, connected components count, and BFS multi-source rotting timings.
   - *Trie Prefix Trees*: Tries, prefix suggestions, and Word Search II grids.
6. **Aptitude Techniques**: Bayes probability trees, circular sitting puzzle constraints, train bridging speeds, and percentage calculations.

### Most Important Concepts
- 🔴 PKCE Flow to secure SPAs without client secrets (Q516, Q551)
- 🔴 MSW interceptors for component testing over Axios mocks (Q510, Q564)
- 🔴 Bipartite Graph check via color-alternating BFS (Q505, Q509, Q564)
- 🔴 Multisource BFS for Rottings Oranges (Q510, Q565)
- 🔴 Hierholzer's algorithm for reconstruction of itineraries (Q512)

### Revision Checklist
- [ ] Can you implement the PKCE auth code exchange flow?
- [ ] Can you check if a graph is bipartite?
- [ ] Can you write a Redux Saga handler using `takeLatest` and `call`?
- [ ] Can you write a TypeScript mapped type?
- [ ] Can you solve Kahn's algorithm for directed topological order?
- [ ] Can you configure a rate-limiting middleware using Redis?
- [ ] Can you solve a circular seating puzzle with alternating directions?

---

## 🎤 MOCK INTERVIEW ROUND #3 — After Q600

### Round 3: Technical Interview (45 minutes)

**MERN Questions (15 min):**
1. Explain the OAuth 2.0 PKCE flow. Why is it preferred for client-side Single Page Applications (like React SPAs) instead of the standard Authorization Code flow?
2. Why is Mock Service Worker (MSW) preferred over manual Axios/fetch mocking in Jest unit tests? What benefits does it provide?
3. How does Redis help implement a secure and scalable API rate-limiting middleware? Describe the token bucket logic.

**DSA Coding (20 min):**
1. Given a list of course prerequisites, determine if it is possible to finish all courses. If yes, return the order; if no, return an empty array. (Kahn's BFS / Topological Sort)
2. Implement a Trie (Prefix Tree) with `insert`, `search`, and `startsWith` methods from scratch. (Trie implementation)

**Aptitude & Critical Thinking (10 min):**
1. An urn contains 5 red and 5 black balls. A ball is drawn at random, its color is noted, and then it is returned to the urn with 2 additional balls of the same color. A second ball is drawn. Find the probability that the second ball is red.
   Hint: P = 1/2. (Using conditional probability sum)
2. **Argument**: "The government must subsidize electric vehicles (EVs). Subsidy implementation will increase EV ownership, reducing carbon emissions and immediately improving urban air quality."
   State the primary weakening counterargument.
   Hint: Urban power plants burning coal to supply EV charging. (EVs do not decrease carbon emission if source power relies on fossil fuels).

---
# ⭐⭐⭐ UPPER-INTERMEDIATE ROADMAP — Q601 to Q650

## GraphQL Resolvers, WebSockets, Caching, Redis | Topological Sort, Union-Find, Greedy Algorithms | Geometry, Mensuration, Logical Sequences

---

Q601.
MERN: [GraphQL][Medium-Hard][Product Company] What are nested/field-level resolvers in GraphQL? Show a schema and resolver example populating a user's posts array from a database.
Hint: In GraphQL, resolvers are executed field-by-field. If a field `posts` exists inside the `User` type, you can define a resolver specifically for `User.posts`. Example:
`const resolvers = { User: { posts: async (parent) => await Post.find({ authorId: parent.id }) } };`
Avoids over-fetching by only executing the query if the client requests the `posts` field in their query.

DSA: [Graphs][Medium][Google] 🔴 MUST DO — Find if there is a redundant connection in a graph (Redundant Connection I).
Hint: Union-Find (Disjoint Set Union). Initialize parent array where `parent[i] = i`. For each edge `(u, v)`, find the representatives of their sets. If `find(u) == find(v)`, adding this edge creates a cycle, making it redundant (return this edge). Else, perform `union(u, v)`. Time: O(E * α(V)), Space: O(V).

Aptitude: [Geometry][Easy-Medium] The coordinates of three vertices of a triangle are A(2, 3), B(-4, 7), and C(2, -5). Find the area of the triangle in square units.
Hint: Area = 0.5 * |x1(y2 - y3) + x2(y3 - y1) + x3(y1 - y2)|.
Area = 0.5 * |2(7 - (-5)) + (-4)(-5 - 3) + 2(3 - 7)|
= 0.5 * |2(12) + (-4)(-8) + 2(-4)| = 0.5 * |24 + 32 - 8| = 0.5 * |48| = 24 square units.

---

Q602.
MERN: [WebSockets][Medium-Hard][FAANG-Level] Explain how you scale WebSockets horizontally across multiple Express servers. What is the role of the Redis Adapter?
Hint: WebSockets maintain a persistent TCP connection to a single server. If client A is connected to server 1 and client B is connected to server 2, they cannot communicate directly. Use the Socket.io Redis Adapter (`@socket.io/redis-adapter`). When a message is broadcast, the adapter publishes it to Redis pub/sub. All other servers receive the event from Redis and broadcast it to their locally connected clients.

DSA: [Graphs][Medium-Hard][Amazon] 🔴 MUST DO — Solve the Accounts Merge problem: merge accounts sharing the same email address.
Hint: Union-Find. Map each email to a unique ID. Perform `union` on emails within the same account. Group emails by their set representative (find parent). Sort emails alphabetically, link to name, and output. Time: O(N log N) due to sorting, Space: O(N) where N is total emails.

Aptitude: [Mensuration][Easy-Medium] Find the ratio of the area of a square to that of the square drawn on its diagonal.
Hint: Let side of square be s. Area = s².
Diagonal of square = s√2.
Area of square drawn on diagonal = (s√2)² = 2s².
Ratio = s² : 2s² = 1 : 2.

---

Q603.
MERN: [Caching][Medium-Hard][Product Company] Compare Cache-Aside (Lazy Loading) vs Write-Through caching strategies. What are the trade-offs of each in a MERN stack?
Hint: Cache-Aside: App checks cache first; if miss, reads from DB and writes to cache (pros: write efficiency, only caches read data; cons: cache miss latency, risk of stale data). Write-Through: App writes data to cache and DB simultaneously (pros: data is never stale, fast reads; cons: high write latency, cache populated with rarely read data).

DSA: [Greedy][Medium][Amazon] 🔴 MUST DO — Given a collection of intervals, merge all overlapping intervals (Merge Intervals).
Hint: Sort intervals by start time. Initialize a list of merged intervals with the first interval. Iterate through remaining. If current start ≤ end of last merged, update last merged's end to `max(last.end, current.end)`; else append current interval. Time: O(n log n), Space: O(n) for sorting.

Aptitude: [Logical Sequences][Easy-Medium] Find the missing number in the series: 3, 12, 27, 48, 75, ?, 147.
Hint: Pattern is `3 × n²`:
n=1: 3 × 1 = 3
n=2: 3 × 4 = 12
n=3: 3 × 9 = 27
n=4: 3 × 16 = 48
n=5: 3 × 25 = 75
n=6: 3 × 36 = 108.
Missing number is 108.

---

Q604.
MERN: [WebSockets][Medium-Hard][Product Company] Show how to implement authorization for WebSockets inside a Socket.io server connection middleware.
Hint: Use Socket.io `use()` middleware to validate tokens before accepting connection. Example:
`io.use((socket, next) => { const token = socket.handshake.auth.token; try { const user = jwt.verify(token, secret); socket.user = user; next(); } catch(e) { next(new Error('Unauthorized')); } });`

DSA: [Greedy][Medium][Amazon] 🔴 MUST DO — Insert a new interval into a sorted list of non-overlapping intervals, merging if necessary.
Hint: Loop through intervals. Add all intervals that end before the new interval starts. Merge overlapping: update new interval start to `min(new.start, current.start)` and end to `max(new.end, current.end)`. Add the merged new interval. Add remaining intervals. Time: O(n), Space: O(n).

Aptitude: [Geometry][Easy-Medium] Find the coordinates of the centroid of a triangle whose vertices are (1, 4), (2, 7), and (3, -2).
Hint: Centroid coordinates G(x, y) = ((x1 + x2 + x3)/3, (y1 + y2 + y3)/3).
x = (1 + 2 + 3) / 3 = 2.
y = (4 + 7 - 2) / 3 = 3.
Centroid is (2, 3).

---

Q605.
MERN: [Caching][Medium-Hard][Product Company] What is Cache Stampede? How do you prevent cache stampede/dogpiling under high traffic?
Hint: Happens when a popular cache key expires and multiple concurrent requests detect the miss, all querying the database simultaneously, causing database collapse. Prevent by: 1) Using locking (mutex/semaphore) to let only one request query DB and update cache while others wait/retry 2) Probabilistic early expiration (recalculate cache before it expires based on access frequency).

DSA: [Greedy][Medium][Amazon] 🟡 HIGH FREQUENCY — Given non-overlapping intervals, find the minimum number of intervals you need to remove to make the rest non-overlapping.
Hint: Interval Scheduling Maximization. Sort intervals by end time. Keep track of the end time of the last added interval. If current start < last end, we must remove it (increment count); else update last end to current end. Time: O(n log n), Space: O(log n) for sorting.

Aptitude: [Mensuration][Easy-Medium] If the radius of a circle is decreased by 50%, find the percentage decrease in its area.
Hint: Let original radius be r, Area = πr².
New radius = 0.5r, New Area = π(0.5r)² = 0.25πr².
Decrease = 0.75πr² = 75% decrease.

---

Q606.
MERN: [GraphQL][Medium-Hard][Product Company] Explain the N+1 Query Problem in GraphQL fetching. How do you solve it using `DataLoader`?
Hint: N+1 occurs when a list of parent nodes resolves reference fields (e.g. fetching author for 10 posts runs 1 query for posts + 10 queries for each author). `DataLoader` batch-collects keys during a single tick of the event loop, executes exactly 1 batch query (`id: { $in: [...] }`), and returns memoized promises, reducing queries to 2.

DSA: [Greedy][Medium][Amazon] 🔴 MUST DO — Gas Station: given gas and cost arrays, find the starting station index to complete a circular tour.
Hint: If total gas < total cost, return -1. Otherwise, a solution is guaranteed. Traverse stations. Maintain `total` and `current` gas balances. If `current` falls below 0, reset start position to `i + 1` and reset `current` to 0. Time: O(n), Space: O(1).

Aptitude: [Logical Sequences][Easy-Medium] Find the next term in the series: 4, 6, 12, 30, 90, ?, 1035.
Hint: Pattern is multiplication by increasing factor of 1.5:
4 × 1.5 = 6
6 × 2.0 = 12
12 × 2.5 = 30
30 × 3.0 = 90
90 × 3.5 = 315.
Next term is 315.

---

Q607.
MERN: [WebSockets][Medium-Hard][Product Company] How do you implement rooms/channels in Socket.io? Show code for joining a room, leaving a room, and broadcasting to a specific room.
Hint: Rooms are server-side channels. Use `socket.join('roomName')` and `socket.leave('roomName')`. Broadcast:
`io.to('roomName').emit('event', message);`
To broadcast to all clients in a room except sender: `socket.to('roomName').emit('event', message);`.

DSA: [Greedy][Medium][Google] 🟡 HIGH FREQUENCY — Jump Game: check if you can reach the last index starting at index 0 (each element is max jump length).
Hint: Maintain the `maxReachable` index. Iterate through the array. If current index `i > maxReachable`, return false. Update `maxReachable = max(maxReachable, i + nums[i])`. If `maxReachable >= lastIndex`, return true. Time: O(n), Space: O(1).

Aptitude: [Geometry][Easy-Medium] Find the distance between the parallel lines `3x - 4y + 7 = 0` and `3x - 4y + 2 = 0`.
Hint: Distance d = |c1 - c2| / √(a² + b²).
d = |7 - 2| / √(3² + (-4)²) = 5 / √25 = 5 / 5 = 1 unit.

---

Q608.
MERN: [Caching][Medium-Hard][Product Company] How do you implement a distributed cache using Redis in a clustered MERN application?
Hint: Create a shared Redis deployment. Express instances connect via cluster client configurations (`ioredis` cluster mode). The client automatically hashes keys to route queries to correct shard masters. Keeps session/cache synchronized across all Express scaling targets.

DSA: [Greedy][Medium][Amazon] Partition Labels: partition string into as many parts as possible so each letter appears in at most one part.
Hint: Record the last occurrence index of each character. Traverse string. Maintain `start` and `end` of current partition. Update `end = max(end, last[char])`. When current index `i == end`, a partition boundary is found. Add length `end - start + 1` to results, and set `start = i + 1`. Time: O(n), Space: O(1) charset limit.

Aptitude: [Mensuration][Easy-Medium] A rectangular sheet of metal 44 cm by 20 cm is rolled along its length to form a cylinder. Find the volume of the cylinder in cubic centimeters.
Hint: Circumference of cylinder base = 2πr = 44 cm.
2 × (22/7) × r = 44 → r = 7 cm.
Height of cylinder = 20 cm.
Volume = πr²h = (22/7) × 7² × 20 = 22 × 7 × 20 = 3080 cm³.

---

Q609.
MERN: [GraphQL][Medium-Hard][Product Company] What are GraphQL Mutations? How do you implement a mutation resolver that creates a document and validates inputs?
Hint: Mutations write/modify data (like POST/PUT). Schema: `type Mutation { createUser(input: UserInput!): User! }`. Resolver:
`createUser: async (_, { input }) => { const { error } = validate(input); if (error) throw new UserInputError(error.message); return await User.create(input); }`

DSA: [Graphs][Hard][Google] Redundant Connection II: given a directed graph with one redundant edge that breaks tree properties, find the edge.
Hint: Cycle detection in directed graph using Union-Find. Identify nodes with two parents. Case 1: no node has two parents (simply return the edge causing cycle in Union-Find). Case 2: node has two parents (test deleting each edge; if graph becomes a valid tree, return that edge). Time: O(V), Space: O(V).

Aptitude: [Logical Sequences][Easy-Medium] Find the next term in the series: 2, 5, 9, 19, 37, ?.
Hint: Pattern is `2 × x + 1` and `2 × x - 1` alternating:
2 × 2 + 1 = 5
5 × 2 - 1 = 9
9 × 2 + 1 = 19
19 × 2 - 1 = 37
37 × 2 + 1 = 75.
Next term is 75.

---

Q610.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle client authentication disconnects, heartbeats, and reconnections in Socket.io?
Hint: Monitor connection/disconnect events. Use built-in ping/pong heartbeats to detect dead sockets (Socket.io does this automatically via `pingInterval` and `pingTimeout`). Implement offline buffers: on client disconnect, cache user messages in Redis temporarily and push on reconnect.

DSA: [Graphs][Hard][Google] Given a graph of words, find the shortest transformation path from begin to end word, returning ALL shortest paths (Word Ladder II).
Hint: BFS + DFS. Run BFS to find the shortest distance from begin to end word, recording parent-child links at each level to build a DAG (Directed Acyclic Graph) of shortest paths. Then, run DFS/Backtracking from end word back to begin word to collect all valid routes. Time: O(N * M² + PathCount), Space: O(N * M).

Aptitude: [Geometry][Easy-Medium] Find the angle between the hands of a clock at 8:20.
Hint: Angle formula = |30H - 5.5M|.
H = 8, M = 20.
Angle = |30(8) - 5.5(20)| = |240 - 110| = 130°.

---

Q611.
MERN: [Caching][Medium-Hard][Product Company] How do you configure Redis cache eviction policies? Explain the differences between volatile-lru, allkeys-lru, and volatile-ttl.
Hint: Eviction happens when memory limit is reached. Configure `maxmemory-policy` in `redis.conf`:
`allkeys-lru`: evicts Least Recently Used key among all keys (general cache). `volatile-lru`: evicts LRU keys with expiration (protects persistent keys). `volatile-ttl`: evicts keys nearest to expiring.

DSA: [Graphs][Hard][Amazon] Given a graph representing email connections, group matching accounts (using BFS/DFS instead of Union-Find).
Hint: Build an adjacency list where each email connects to all other emails in the same account. Iterate emails. If unvisited, run DFS/BFS to collect all connected emails (connected components). Sort and attach name. Time: O(N log N).

Aptitude: [Mensuration][Medium] The inner circumference of a circular track is 440m. The track is 14m wide. Find the radius of the outer circle.
Hint: Inner circle circumference = 2πr = 440m.
2 × (22/7) × r = 440 → r = 70m.
Outer radius R = inner radius + width = 70 + 14 = 84m.

---

Q612.
MERN: [GraphQL][Medium-Hard][Product Company] What are schema directives in GraphQL? Write a custom `@auth` schema directive that checks user roles.
Hint: Directives attach metadata/validation to schema fields. Example:
`type Query { secureData: String @auth(requires: ADMIN) }`.
Implementation wraps field resolver function, validating `context.user.role` before calling original resolver.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II: find the minimum number of jumps to reach the last index.
Hint: BFS/Greedy. Track `currEnd` (max index reachable with current jumps) and `currMax` (max index reachable overall). Traverse array (except last index). Update `currMax = max(currMax, i + nums[i])`. If `i == currEnd`, increment jumps and set `currEnd = currMax`. Time: O(n), Space: O(1).

Aptitude: [Logical Sequences][Easy-Medium] Complete: Z, S, W, O, T, K, Q, G, ?, ?.
Hint: Alternating sequences:
Sequence 1 (1st, 3rd, 5th, 7th): Z(-3)→W(-3)→T(-3)→Q(-3)→N.
Sequence 2 (2nd, 4th, 6th, 8th): S(-4)→O(-4)→K(-4)→G(-4)→C.
Next two letters are N and C.

---

Q613.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle error boundaries and crash recovery in a Node.js Socket.io server?
Hint: Handle errors inside event listeners using try/catch and emit error events to client. Monitor `uncaughtException` in Node process; if server crashes, PM2 restarts it. Clients reconnect automatically with exponential backoff.

DSA: [Greedy][Medium-Hard][Google] Given a list of jobs with deadlines and profits, find the maximum profit by scheduling jobs (each takes 1 unit of time).
Hint: Sort jobs by profit descending. Find max deadline to size scheduling slots. Initialize slots array to empty. For each job, search from its deadline backwards to find first empty slot. If found, assign job, increment profit. Time: O(n²), Space: O(max_deadline). Optimize with Union-Find to O(n log n).

Aptitude: [Geometry][Medium] In what ratio does the line `x - y - 2 = 0` divide the line segment joining the points A(3, -1) and B(8, 9)?
Hint: Division ratio k : 1. Coordinates of division point = ((8k + 3)/(k + 1), (9k - 1)/(k + 1)).
Substitute in line equation: (8k + 3)/(k + 1) - (9k - 1)/(k + 1) - 2 = 0.
8k + 3 - 9k + 1 - 2(k + 1) = 0 → -k + 4 - 2k - 2 = 0 → -3k + 2 = 0 → k = 2/3.
Ratio is 2 : 3.

---

Q614.
MERN: [Caching][Medium-Hard][Product Company] Explain how Redis hashes differ from simple keys. When should you use hashes to store user sessions in a MERN app?
Hint: Simple key stores a single string value. Redis hash stores field-value pairs (like an object): `HSET user:123 name "John" age "30"`. Use hashes for user sessions to read/modify specific fields (e.g. updating `lastActive` timestamp) without reading/writing the entire session JSON.

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using DFS/BFS.
Hint: Maintain visited set. Loop nodes. If unvisited, count++, run DFS/BFS to visit all reachable nodes. Time: O(V+E).

Aptitude: [Mensuration][Medium] The base of a right prism is a triangle with sides 9 cm, 12 cm, and 15 cm. If the height of the prism is 20 cm, find its volume.
Hint: Triangle is right-angled (9² + 12² = 15²).
Base Area = 0.5 × base × height = 0.5 × 9 × 12 = 54 cm².
Volume = Base Area × Prism Height = 54 × 20 = 1080 cm³.

---

Q615.
MERN: [GraphQL][Medium-Hard][Product Company] How do you handle file uploads in GraphQL using Apollo Server?
Hint: GraphQL doesn't handle multipart uploads by default. Use `graphql-upload` middleware. Define schema field taking `Upload!` scalar. Resolver receives a promise returning `createReadStream`, which can be piped to disk/cloud storage.

DSA: [Graphs][Medium-Hard][Google] Reconstruct Itinerary: given airport tickets, reconstruct the itinerary in order, starting at 'JFK' (Eulerian Path).
Hint: Hierholzer's algorithm. Sort flight destinations lexicographically. Run DFS from current. Recursively visit destination, removing ticket. Push node to path. Reverse path at the end. Time: O(E log E).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 1.5, 3, 7.5, 22.5, 78.75, ?.
Hint: Multiplication by increasing factors adding 0.5:
1.5 × 2 = 3
3 × 2.5 = 7.5
7.5 × 3 = 22.5
22.5 × 3.5 = 78.75
78.75 × 4.0 = 315.
Next term is 315.

---

Q616.
MERN: [WebSockets][Medium-Hard][Product Company] Show how to structure a large Socket.io project by separating event handlers into separate controller files.
Hint: Register handlers in separate modules. Example:
`// main.js: io.on('connection', socket => { registerUserHandlers(io, socket); });`
`// userHandler.js: module.exports = (io, socket) => { socket.on('user:update', () => { ... }) };`

DSA: [Greedy][Medium-Hard][Amazon] Given a list of intervals, merge all overlapping intervals.
Hint: Sort by start time. Initialize merged array with first. Iterate: if current start <= end of last, update last's end to max. Else append. Time: O(n log n).

Aptitude: [Geometry][Medium-Hard] Find the coordinates of the circumcenter of the triangle with vertices A(0,0), B(3,0), and C(0,4).
Hint: Triangle is right-angled at (0,0).
For a right-angled triangle, the circumcenter is the midpoint of the hypotenuse.
Hypotenuse joins (3,0) and (0,4).
Midpoint = ((3+0)/2, (0+4)/2) = (1.5, 2).
Circumcenter is (1.5, 2).

---

Q617.
MERN: [Caching][Medium-Hard][Product Company] What is cache eviction? Explain LRU, LFU, and FIFO eviction algorithms.
Hint: LRU (Least Recently Used) evicts keys unused for the longest time. LFU (Least Frequently Used) evicts keys with lowest access count. FIFO (First In First Out) evicts the oldest keys based on creation time.

DSA: [Greedy][Medium-Hard][Amazon] Given intervals, find minimum number of intervals to remove to make the rest non-overlapping.
Hint: Sort by end time. Iterate: if current start < last end, count++; else update last end. Time: O(n log n).

Aptitude: [Mensuration][Medium] A roller 1.5 m long has a diameter of 70 cm. It takes 100 complete revolutions to level a playground. Find the area of the playground.
Hint: Radius r = 35 cm = 0.35 m, Height h = 1.5 m.
Curved Surface Area (CSA) of cylinder = 2πrh = 2 × (22/7) × 0.35 × 1.5 = 3.3 m².
Area leveled in 100 revolutions = 100 × 3.3 = 330 m².

---

Q618.
MERN: [GraphQL][Medium-Hard][Product Company] Explain Apollo Client state management. How does Apollo Client cache work, and how do you update cache manually after mutation?
Hint: Apollo Client caches query results in an in-memory normalized cache. After mutation, update cache manually using `update(cache, { data })` option to modify specific cache queries, or run `refetchQueries`.

DSA: [Greedy][Medium-Hard][Amazon] Gas Station circular tour index search.
Hint: If total gas < total cost, return -1. Else iterate: balance += gas[i] - cost[i]. If balance < 0, reset start = i+1 and balance = 0. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete: 6, 11, 21, 36, 56, ?.
Hint: Difference increases by 5:
11 - 6 = 5
21 - 11 = 10
36 - 21 = 15
56 - 36 = 20
Next difference = 25. Next term = 56 + 25 = 81.

---

Q619.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle secure user authentication when establishing connection in Socket.io?
Hint: Validate auth tokens in connection middleware using JWT. Attach decrypted user details to `socket.user` object.

DSA: [Greedy][Medium-Hard][Google] Jump Game reach check.
Hint: Track `maxReachable`. Iterate: if `i > maxReachable`, return false. Update `maxReachable = max(maxReachable, i + nums[i])`. Time: O(n).

Aptitude: [Geometry][Medium-Hard] Find the equation of the line passing through (2, 3) and perpendicular to `3x - 4y + 5 = 0`.
Hint: Slope of given line m1 = 3/4.
Perpendicular slope m2 = -4/3.
Equation: y - y1 = m2(x - x1) → y - 3 = -4/3(x - 2) → 3y - 9 = -4x + 8 → 4x + 3y - 17 = 0.

---

Q620.
MERN: [Caching][Medium-Hard][Product Company] What are the benefits of caching APIs using Redis over in-memory node-cache in an Express app?
Hint: In-memory cache is tied to single process, consuming server memory and resetting on restart. Redis runs as a separate database, preserving cache data across restarts and sharing data across multiple scaled Express processes.

DSA: [Greedy][Medium-Hard][Amazon] Partition Labels string partition.
Hint: Record last occurrence of each character. Iterate: update partition end to max last occurrence. When `i == end`, record length and reset partition start. Time: O(n).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a sphere whose surface area is 616 square centimeters.
Hint: Surface Area = 4πr² = 616.
4 × (22/7) × r² = 616 → r² = 616 × 7 / 88 = 49 → r = 7 cm.
Volume = 4/3 πr³ = 4/3 × (22/7) × 7³ = 4312 / 3 ≈ 1437.33 cm³.

---

Q621.
MERN: [GraphQL][Medium-Hard][Product Company] What is schema stitching vs federation in GraphQL?
Hint: Schema stitching merges schemas imperatively. Federation compiles schemas declaratively into a gateway using subgraphs, allowing microservices to extend types.

DSA: [Graphs][Hard][Google] Redundant Connection II directed graph redundant edge.
Hint: Union-Find cycle check. Handle two-parent nodes by testing edge deletion. Time: O(V).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 10, 19, 40, 77, 158, ?.
Hint: Pattern is `2 × x - 1` and `2 × x + 2` alternating:
10 × 2 - 1 = 19
19 × 2 + 2 = 40
40 × 2 - 3 = 77? Wait, let's look at differences:
19 - 10 = 9
40 - 19 = 21
77 - 40 = 37
158 - 77 = 81.
Differences: 9, 21, 37, 81.
Let's check `2 × x` shifts:
10 × 2 - 1 = 19
19 × 2 + 2 = 40
40 × 2 - 3 = 77
77 × 2 + 4 = 158
158 × 2 - 5 = 311.
Next term is 311.

---

Q622.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle room join/leave logic inside a Socket.io controller?
Hint: Call `socket.join(room)` and `socket.leave(room)`. Emit notifications to other room members using `socket.to(room).emit()`.

DSA: [Graphs][Hard][Google] Word Ladder II shortest path collection.
Hint: BFS to construct DAG of shortest paths, DFS to collect path combinations. Time: O(N * M²).

Aptitude: [Geometry][Medium-Hard] Find the length of the tangent drawn from (5, 7) to the circle `x² + y² - 4x - 6y - 3 = 0`.
Hint: Length of tangent = √S1.
S1 = 5² + 7² - 4(5) - 6(7) - 3 = 25 + 49 - 20 - 42 - 3 = 9.
Length = √9 = 3 units.

---

Q623.
MERN: [Caching][Medium-Hard][Product Company] How do you invalidate cache keys in Redis when data updates in MongoDB?
Hint: In controllers, after a successful write (update/delete), delete the cached key using `redis.del(key)`. Alternatively, set TTL (Time-To-Live) on cache keys so they expire automatically.

DSA: [Graphs][Hard][Amazon] Group emails account merge.
Hint: Adjacency list connecting matching emails. Run DFS/BFS connected components. Time: O(N log N).

Aptitude: [Mensuration][Medium-Hard] The radius of a cylinder is doubled and height is halved. Find the ratio of its new volume to original volume.
Hint: Original Volume = πr²h.
New Volume = π(2r)²(h/2) = 2πr²h.
Ratio = 2 : 1.

---

Q624.
MERN: [GraphQL][Medium-Hard][Product Company] Explain how query pagination works in GraphQL.
Hint: Use offset/limit variables in resolvers, or connection-based cursor pagination (relay spec) taking `first`/`after` parameters for scroll feeds.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II minimum jumps search.
Hint: Greedy BFS. Keep track of current jump end and maximum reachable index. Increment jumps when reaching end. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 5, 6, 14, 45, ?, 925.
Hint: Pattern is `(x + 1) × 1`, `(x + 1) × 2`?
5 × 1 + 1 = 6
6 × 2 + 2 = 14
14 × 3 + 3 = 45
45 × 4 + 4 = 184.
Next term is 184.

---

Q625.
MERN: [WebSockets][Medium-Hard][Product Company] Show how to broadcast a message in Socket.io to all connected sockets except the sender.
Hint: Use `socket.broadcast.emit('event', message)` or `socket.to(room).emit('event', message)`.

DSA: [Greedy][Medium-Hard][Google] Job Scheduling maximum profit search.
Hint: Sort jobs by profit descending. Assign to latest free slot before deadline. Time: O(n²).

Aptitude: [Geometry][Medium-Hard] Find the center and radius of the circle `3x² + 3y² - 12x + 18y - 9 = 0`.
Hint: Divide by 3: `x² + y² - 4x + 6y - 3 = 0`.
Standard form center = (-g, -f) = (2, -3).
Radius = √(g² + f² - c) = √(4 + 9 - (-3)) = √16 = 4 units.

---

Q626.
MERN: [Caching][Medium-Hard][Product Company] What is Redis Pipeline? How does it optimize performance when running multiple commands?
Hint: Pipeline buffers multiple commands and sends them to Redis in a single network call, reducing network round-trip latency.

DSA: [Graphs][Medium-Hard][Google] Find connected components count in undirected graph.
Hint: Maintain visited set. Loop nodes, call DFS to visit all connected elements. Time: O(V+E).

Aptitude: [Mensuration][Medium-Hard] Find the surface area of a cone whose radius is 7 cm and volume is 1232 cubic centimeters.
Hint: Volume = 1/3 πr²h = 1232.
1/3 × (22/7) × 7² × h = 1232 → 154h/3 = 1232 → h = 1232 × 3 / 154 = 24 cm.
Slant height l = √(r² + h²) = √(49 + 576) = √625 = 25 cm.
Surface Area = πrl + πr² = (22/7) × 7 × 25 + (22/7) × 7² = 550 + 154 = 704 cm².

---

Q627.
MERN: [GraphQL][Medium-Hard][Product Company] What are fragment resolvers in GraphQL?
Hint: Fragments group reusable fields. Client requests them using `...fragmentName` syntax. Resolvers process query as usual.

DSA: [Graphs][Medium-Hard][Google] Reconstruct Itinerary: Eulerian Path flight route search.
Hint: Hierholzer's DFS sorting destinations. Time: O(E log E).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 8, 15, 28, 53, ?, 199.
Hint: Pattern is `2 × x - 1` and `2 × x - 2` alternating:
8 × 2 - 1 = 15
15 × 2 - 2 = 28
28 × 2 - 3 = 53
53 × 2 - 4 = 102.
Next term is 102.

---

Q628.
MERN: [WebSockets][Medium-Hard][Product Company] Explain Socket.io connection buffering and offline event queue.
Hint: Socket.io buffers events during disconnects and sends them on reconnection automatically.

DSA: [Greedy][Medium-Hard][Amazon] Merge overlapping intervals.
Hint: Sort by start time. Iterate: if start <= last end, update last end to max. Else append. Time: O(n log n).

Aptitude: [Geometry][Medium-Hard] Find the slope of the line passing through the points (3, -2) and (-1, 4).
Hint: Slope m = (y2 - y1) / (x2 - x1) = (4 - (-2)) / (-1 - 3) = 6 / -4 = -1.5.

---

Q629.
MERN: [Caching][Medium-Hard][Product Company] Explain volatile cache keys vs persistent keys in Redis.
Hint: Volatile keys have an associated TTL and expire. Persistent keys have no expiry and remain in database until deleted.

DSA: [Greedy][Medium-Hard][Amazon] Minimum intervals removal for non-overlapping.
Hint: Sort by end time. Iterate: if start < last end, count++; else update last end. Time: O(n log n).

Aptitude: [Mensuration][Medium-Hard] A sphere is melted and cast into a wire of radius 0.2 cm. If the radius of the sphere is 6 cm, find the length of the wire.
Hint: Volume of sphere = 4/3 πr³ = 4/3 × π × 6³ = 288π.
Volume of cylindrical wire = πR²L = π(0.2)²L = 0.04πL.
288π = 0.04πL → L = 288 / 0.04 = 7200 cm = 72 meters.

---

Q630.
MERN: [GraphQL][Medium-Hard][Product Company] How do you handle authentication headers in Apollo Client?
Hint: Pass headers in Apollo Client creation using `setContext` link, appending token to Authorization headers.

DSA: [Greedy][Medium-Hard][Amazon] Gas Station index calculation.
Hint: Compare total gas and cost. Run greedy iteration tracking gas balance. Reset if negative. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete: 2, 3, 10, 15, 26, ?.
Hint: Pattern is `n² + 1` and `n² - 1` alternating:
1² + 1 = 2
2² - 1 = 3
3² + 1 = 10
4² - 1 = 15
5² + 1 = 26
6² - 1 = 35.
Next term is 35.

---

Q631.
MERN: [WebSockets][Medium-Hard][Product Company] How do you secure WebSockets against Cross-Site WebSocket Hijacking (CSWSH)?
Hint: Validate Origin headers on connection handshake. Enforce token authentication (JWT) inside connection middleware.

DSA: [Greedy][Medium-Hard][Google] Jump Game reach check.
Hint: Track max index reachable. If index exceeds max, return false. Time: O(n).

Aptitude: [Geometry][Medium-Hard] Find the equation of the circle passing through the origin and making intercepts 4 and 6 on the positive coordinate axes.
Hint: Intercepts are (4,0) and (0,6). Circle passes through (0,0).
The triangle formed by (0,0), (4,0), and (0,6) is right-angled at origin.
Midpoint of hypotenuse is center = (2, 3).
Radius = distance from center to origin = √(2² + 3²) = √13.
Equation: (x - 2)² + (y - 3)² = 13 → x² + y² - 4x - 6y = 0.

---

Q632.
MERN: [Caching][Medium-Hard][Product Company] How do you cache REST API responses using Redis middleware?
Hint: Check cache by request URL. If hits, return data. If miss, override `res.json` to store response in Redis before sending.

DSA: [Greedy][Medium-Hard][Amazon] Partition Labels string division.
Hint: Map last occurrences. Iterate, update partition end, record size on bounds match. Time: O(n).

Aptitude: [Mensuration][Medium-Hard] The diagonal of a cube is 6√3 cm. Find its total surface area.
Hint: Diagonal of cube = s√3 = 6√3 → s = 6 cm.
Total Surface Area = 6s² = 6 × 6² = 216 cm².

---

Q633.
MERN: [GraphQL][Medium-Hard][Product Company] Explain how to validate GraphQL input queries using third-party packages.
Hint: Use validation schemas (like Joi or Zod) inside resolver functions or schema validators.

DSA: [Graphs][Hard][Google] Redundant Connection II directed graph redundant edge check.
Hint: Handle two-parent vertices and cycle checks using Union-Find. Time: O(V).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 0.5, 2, 4.5, 8, 12.5, ?.
Hint: Pattern is `0.5 × n²`:
n=1: 0.5
n=2: 2.0
n=3: 4.5
n=4: 8.0
n=5: 12.5
n=6: 18.0.
Next term is 18.

---

Q634.
MERN: [WebSockets][Medium-Hard][Product Company] How do you scale Socket.io with sticky sessions?
Hint: Configure load balancer to route requests from a client to the same server process, enabling handshake.

DSA: [Graphs][Hard][Google] Word Ladder II shortest paths DFS search.
Hint: BFS to calculate shortest DAG steps, DFS for path collections. Time: O(N * M²).

Aptitude: [Geometry][Medium-Hard] Find the distance of the point (3, 4) from the line `2x - 3y + 4 = 0`.
Hint: Distance d = |ax1 + by1 + c| / √(a² + b²) = |2(3) - 3(4) + 4| / √(2² + (-3)²) = |6 - 12 + 4| / √13 = 2 / √13 units.

---

Q635.
MERN: [Caching][Medium-Hard][Product Company] Explain Redis cluster sharding.
Hint: Redis clusters split key spaces into 16,384 hash slots distributed across master nodes.

DSA: [Graphs][Hard][Amazon] Group emails account merge search.
Hint: DFS/BFS connectivity component sorting. Time: O(N log N).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a cylinder whose radius is 14 cm and curved surface area is 1760 square centimeters.
Hint: Curved Surface Area (CSA) = 2πrh = 1760.
2 × (22/7) × 14 × h = 1760 → 88h = 1760 → h = 20 cm.
Volume = πr²h = (22/7) × 14² × 20 = 22 × 28 × 20 = 12,320 cm³.

---

Q636.
MERN: [GraphQL][Medium-Hard][Product Company] How do you handle schema versioning in GraphQL?
Hint: GraphQL doesn't version. Deprecate fields with `@deprecated` directive, and add new fields incrementally.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II minimum jumps logic.
Hint: Track current jump end index and maximum reachable bounds. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 4, 9, 20, 43, ?, 185.
Hint: Pattern is `2 × x + 1`, `2 × x + 2`, `2 × x + 3` increasing:
4 × 2 + 1 = 9
9 × 2 + 2 = 20
20 × 2 + 3 = 43
43 × 2 + 4 = 90.
Next term is 90.

---

Q637.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle Socket.io client disconnects gracefully?
Hint: Register 'disconnect' event. Clean up user state and notify other room users.

DSA: [Greedy][Medium-Hard][Google] Job Scheduling max profit allocation.
Hint: Sort by profit, schedule in latest slot before deadline. Time: O(n²).

Aptitude: [Geometry][Medium-Hard] Find the equation of the normal to the circle `x² + y² = 25` at the point (3, 4).
Hint: Normal to circle at (x1, y1) passes through center (0,0) and (x1, y1).
Equation of line joining (0,0) and (3,4): y = (4/3)x → 4x - 3y = 0.

---

Q638.
MERN: [Caching][Medium-Hard][Product Company] Explain cache-aside design pattern in detail.
Hint: Application queries cache. On miss, queries DB, updates cache, and returns.

DSA: [Graphs][Medium-Hard][Google] Find connected components count in undirected graph.
Hint: Visited set tracking with DFS component scans. Time: O(V+E).

Aptitude: [Mensuration][Medium-Hard] If the volume of a sphere is 38808 cubic centimeters, find its radius.
Hint: Volume = 4/3 πr³ = 38808.
4/3 × (22/7) × r³ = 38808 → 88/21 r³ = 38808 → r³ = 38808 × 21 / 88 = 9261.
Since 21³ = 9261, r = 21 cm.

---

Q639.
MERN: [GraphQL][Medium-Hard][Product Company] Explain Apollo Client local state variables.
Hint: Use reactive variables (`makeVar`) to manage local client state inside Apollo Client cache.

DSA: [Graphs][Medium-Hard][Google] Reconstruct Flight Itinerary search.
Hint: Eulerian Path Hierholzer's DFS destination sorting. Time: O(E log E).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 10, 15, 30, 75, 225, ?.
Hint: Multipliers increase by 0.5:
10 × 1.5 = 15
15 × 2 = 30
30 × 2.5 = 75
75 × 3 = 225
225 × 3.5 = 787.5.
Next term is 787.5.

---

Q640.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle Socket.io reconnecting attempts on React client?
Hint: Listen to 'reconnect_attempt' and 'reconnect' events to update connection status UI.

DSA: [Greedy][Medium-Hard][Amazon] Merge overlapping intervals.
Hint: Sort by start. Merge overlapping bounds sequentially. Time: O(n log n).

Aptitude: [Geometry][Medium-Hard] Find the angle between the lines `y - √3x - 5 = 0` and `√3y - x - 6 = 0`.
Hint: Slopes: m1 = √3 (angle1 = 60°).
m2 = 1/√3 (angle2 = 30°).
Angle between lines = |60° - 30°| = 30°.

---

Q641.
MERN: [Caching][Medium-Hard][Product Company] What are the benefits of caching session store in Redis?
Hint: Shares session across servers, persisting data on restarts.

DSA: [Greedy][Medium-Hard][Amazon] Minimum intervals removal.
Hint: Sort by end. Count overlaps. Time: O(n log n).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a cone whose radius is 6 cm and height is 7 cm.
Hint: Volume = 1/3 πr²h = 1/3 × (22/7) × 6² × 7 = 1/3 × 22 × 36 = 264 cm³.

---

Q642.
MERN: [GraphQL][Medium-Hard][Product Company] How do you query list arrays with schema types?
Hint: Specify array brackets in type: `[User!]!`.

DSA: [Greedy][Medium-Hard][Amazon] Gas Station tour.
Hint: Greedy tracking of gas balances. If total gas < total cost, return -1. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 3, 4, 12, 45, ?, 1005.
Hint: Pattern is `(x + 1) × 1`, `(x + 2) × 2`?
3 × 1 + 1 = 4
4 × 2 + 4 = 12?
Let's check `x × n + n²`?
3 × 1 + 1 = 4
4 × 2 + 4 = 12
12 × 3 + 9 = 45
45 × 4 + 16 = 196.
Next term is 196.

---

Q643.
MERN: [WebSockets][Medium-Hard][Product Company] How do you broadcast in rooms in Socket.io?
Hint: Use `io.to(room).emit('event', message)`.

DSA: [Greedy][Medium-Hard][Google] Jump Game reach validation.
Hint: Track max reach index. Return false if index exceeds bounds. Time: O(n).

Aptitude: [Geometry][Medium-Hard] Find the equation of the line passing through (1, 2) and parallel to `2x - 3y + 6 = 0`.
Hint: Parallel line slope m = 2/3.
Equation: y - 2 = 2/3(x - 1) → 3y - 6 = 2x - 2 → 2x - 3y + 4 = 0.

---

Q644.
MERN: [Caching][Medium-Hard][Product Company] Explain volatile-lru eviction.
Hint: Evicts least recently used keys among those that have an expiration set.

DSA: [Greedy][Medium-Hard][Amazon] Partition Labels string partition.
Hint: Track last indices. Update partition bounds. Time: O(n).

Aptitude: [Mensuration][Medium-Hard] Find the total surface area of a cylinder whose radius is 7 cm and height is 10 cm.
Hint: TSA = 2πr(h + r) = 2 × (22/7) × 7 × (10 + 7) = 44 × 17 = 748 cm².

---

Q645.
MERN: [GraphQL][Medium-Hard][Product Company] What are custom scalars in GraphQL?
Hint: Define custom data formats (like Date, Email) by writing parse and serialize functions.

DSA: [Graphs][Hard][Google] Redundant Connection II.
Hint: DSU cycle detection handles directed double parents. Time: O(V).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 2, 7, 24, 77, ?.
Hint: Pattern is `3 × x + 1` and `3 × x + 3`?
2 × 3 + 1 = 7
7 × 3 + 3 = 24
24 × 3 + 5 = 77
77 × 3 + 7 = 238.
Next term is 238.

---

Q646.
MERN: [WebSockets][Medium-Hard][Product Company] Explain sticky session routing.
Hint: Directs requests from a client browser to the same server process.

DSA: [Graphs][Hard][Google] Word Ladder II shortest paths search.
Hint: BFS steps DAG construction with DFS paths collection. Time: O(N * M²).

Aptitude: [Geometry][Medium-Hard] Find the distance between the points (1, -2) and (-3, 1).
Hint: d = √((x2 - x1)² + (y2 - y1)²) = √((-3 - 1)² + (1 - (-2))²) = √((-4)² + 3²) = √(16 + 9) = √25 = 5 units.

---

Q647.
MERN: [Caching][Medium-Hard][Product Company] What is Redis memory eviction?
Hint: Action taken by Redis to free up memory when limit is hit by removing keys according to policy.

DSA: [Graphs][Hard][Amazon] Group emails account merge.
Hint: DFS/BFS component list sorting. Time: O(N log N).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a cube whose total surface area is 150 square centimeters.
Hint: TSA = 6s² = 150 → s² = 25 → s = 5 cm.
Volume = s³ = 5³ = 125 cm³.

---

Q648.
MERN: [GraphQL][Medium-Hard][Product Company] What are Apollo Client query variables?
Hint: Pass dynamic parameters to queries using `variables: { id: 123 }`.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II jumps count.
Hint: Greedy BFS jump bounds updates. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete: 1, 8, 27, 64, ?.
Hint: Perfect cubes: 1³, 2³, 3³, 4³.
Next term = 5³ = 125.

---

Q649.
MERN: [WebSockets][Medium-Hard][Product Company] Explain heartbeats in WebSockets.
Hint: Ping/pong messages to detect client connection state.

DSA: [Greedy][Medium-Hard][Google] Job Scheduling deadline allocation.
Hint: Sort by profit. Schedule in latest free slot. Time: O(n²).

Aptitude: [Geometry][Medium-Hard] Find the area of the circle `x² + y² - 4x - 6y - 12 = 0`.
Hint: Center = (2,3). Radius = √(4 + 9 - (-12)) = √25 = 5.
Area = πr² = 25π ≈ 78.54 square units.

---

Q650.
MERN: [Caching][Medium-Hard][Product Company] How do you clear Redis cache keys?
Hint: Delete key: `DEL key`. Clear all keys: `FLUSHALL`.

DSA: [Graphs][Medium-Hard][Google] Find connected components count.
Hint: DFS node scans tracking visited set. Time: O(V+E).

Aptitude: [Mensuration][Medium-Hard] Find the curved surface area of a cylinder whose radius is 7 cm and height is 15 cm.
Hint: CSA = 2πrh = 2 × (22/7) × 7 × 15 = 44 × 15 = 660 cm².
# ⭐⭐⭐ UPPER-INTERMEDIATE ROADMAP — Q651 to Q700

## GraphQL Resolvers, WebSockets, Caching, Redis | Topological Sort, Union-Find, Greedy Algorithms | Geometry, Mensuration, Logical Sequences

---

Q651.
MERN: [GraphQL][Medium-Hard][Product Company] What are nested/field-level resolvers in GraphQL? Show a schema and resolver example populating a user's posts array from a database.
Hint: In GraphQL, resolvers are executed field-by-field. If a field `posts` exists inside the `User` type, you can define a resolver specifically for `User.posts`. Example:
`const resolvers = { User: { posts: async (parent) => await Post.find({ authorId: parent.id }) } };`
Avoids over-fetching by only executing the query if the client requests the `posts` field in their query.

DSA: [Graphs][Medium][Google] 🔴 MUST DO — Find if there is a redundant connection in a graph (Redundant Connection I).
Hint: Union-Find (Disjoint Set Union). Initialize parent array where `parent[i] = i`. For each edge `(u, v)`, find the representatives of their sets. If `find(u) == find(v)`, adding this edge creates a cycle, making it redundant (return this edge). Else, perform `union(u, v)`. Time: O(E * α(V)), Space: O(V).

Aptitude: [Geometry][Easy-Medium] The coordinates of three vertices of a triangle are A(2, 3), B(-4, 7), and C(2, -5). Find the area of the triangle in square units.
Hint: Area = 0.5 * |x1(y2 - y3) + x2(y3 - y1) + x3(y1 - y2)|. Area = 24 square units.

---

Q652.
MERN: [WebSockets][Medium-Hard][FAANG-Level] Explain how you scale WebSockets horizontally across multiple Express servers. What is the role of the Redis Adapter?
Hint: WebSockets maintain a persistent TCP connection to a single server. If client A is connected to server 1 and client B is connected to server 2, they cannot communicate directly. Use the Socket.io Redis Adapter (`@socket.io/redis-adapter`). When a message is broadcast, the adapter publishes it to Redis pub/sub. All other servers receive the event from Redis and broadcast it to their locally connected clients.

DSA: [Graphs][Medium-Hard][Amazon] 🔴 MUST DO — Solve the Accounts Merge problem: merge accounts sharing the same email address.
Hint: Union-Find. Map each email to a unique ID. Perform `union` on emails within the same account. Group emails by their set representative (find parent). Sort emails alphabetically, link to name, and output. Time: O(N log N) due to sorting, Space: O(N).

Aptitude: [Mensuration][Easy-Medium] Find the ratio of the area of a square to that of the square drawn on its diagonal.
Hint: Let side of square be s. Area = s². Diagonal of square = s√2. Area of square drawn on diagonal = (s√2)² = 2s². Ratio = s² : 2s² = 1 : 2.

---

Q653.
MERN: [Caching][Medium-Hard][Product Company] Compare Cache-Aside (Lazy Loading) vs Write-Through caching strategies. What are the trade-offs of each in a MERN stack?
Hint: Cache-Aside: App checks cache first; if miss, reads from DB and writes to cache (pros: write efficiency, only caches read data; cons: cache miss latency, risk of stale data). Write-Through: App writes data to cache and DB simultaneously (pros: data is never stale, fast reads; cons: high write latency, cache populated with rarely read data).

DSA: [Greedy][Medium][Amazon] 🔴 MUST DO — Given a collection of intervals, merge all overlapping intervals (Merge Intervals).
Hint: Sort intervals by start time. Initialize a list of merged intervals with the first interval. Iterate through remaining. If current start ≤ end of last merged, update last merged's end to `max(last.end, current.end)`; else append current interval. Time: O(n log n), Space: O(n) for sorting.

Aptitude: [Logical Sequences][Easy-Medium] Find the missing number in the series: 3, 12, 27, 48, 75, ?, 147.
Hint: Pattern is `3 × n²`: n=6: 3 × 36 = 108.

---

Q654.
MERN: [WebSockets][Medium-Hard][Product Company] Show how to implement authorization for WebSockets inside a Socket.io server connection middleware.
Hint: Use Socket.io `use()` middleware to validate tokens before accepting connection. Example:
`io.use((socket, next) => { const token = socket.handshake.auth.token; try { const user = jwt.verify(token, secret); socket.user = user; next(); } catch(e) { next(new Error('Unauthorized')); } });`

DSA: [Greedy][Medium][Amazon] 🔴 MUST DO — Insert a new interval into a sorted list of non-overlapping intervals, merging if necessary.
Hint: Loop through intervals. Add all intervals that end before the new interval starts. Merge overlapping: update new interval start to `min(new.start, current.start)` and end to `max(new.end, current.end)`. Add the merged new interval. Add remaining intervals. Time: O(n), Space: O(n).

Aptitude: [Geometry][Easy-Medium] Find the coordinates of the centroid of a triangle whose vertices are (1, 4), (2, 7), and (3, -2).
Hint: Centroid coordinates G(x, y) = ((x1 + x2 + x3)/3, (y1 + y2 + y3)/3) = (2, 3).

---

Q655.
MERN: [Caching][Medium-Hard][Product Company] What is Cache Stampede? How do you prevent cache stampede/dogpiling under high traffic?
Hint: Happens when a popular cache key expires and multiple concurrent requests detect the miss, all querying the database simultaneously, causing database collapse. Prevent by: 1) Using locking (mutex/semaphore) to let only one request query DB and update cache while others wait/retry 2) Probabilistic early expiration (recalculate cache before it expires based on access frequency).

DSA: [Greedy][Medium][Amazon] 🟡 HIGH FREQUENCY — Given non-overlapping intervals, find the minimum number of intervals you need to remove to make the rest non-overlapping.
Hint: Interval Scheduling Maximization. Sort intervals by end time. Keep track of the end time of the last added interval. If current start < last end, we must remove it (increment count); else update last end to current end. Time: O(n log n), Space: O(log n) for sorting.

Aptitude: [Mensuration][Easy-Medium] If the radius of a circle is decreased by 50%, find the percentage decrease in its area.
Hint: Let original radius be r, Area = πr². New radius = 0.5r, New Area = π(0.5r)² = 0.25πr². Decrease = 0.75πr² = 75% decrease.

---

Q656.
MERN: [GraphQL][Medium-Hard][Product Company] Explain the N+1 Query Problem in GraphQL fetching. How do you solve it using `DataLoader`?
Hint: N+1 occurs when a list of parent nodes resolves reference fields (e.g. fetching author for 10 posts runs 1 query for posts + 10 queries for each author). `DataLoader` batch-collects keys during a single tick of the event loop, executes exactly 1 batch query (`id: { $in: [...] }`), and returns memoized promises, reducing queries to 2.

DSA: [Greedy][Medium][Amazon] 🔴 MUST DO — Gas Station: given gas and cost arrays, find the starting station index to complete a circular tour.
Hint: If total gas < total cost, return -1. Otherwise, a solution is guaranteed. Traverse stations. Maintain `total` and `current` gas balances. If `current` falls below 0, reset start position to `i + 1` and reset `current` to 0. Time: O(n), Space: O(1).

Aptitude: [Logical Sequences][Easy-Medium] Find the next term in the series: 4, 6, 12, 30, 90, ?, 1035.
Hint: Pattern is multiplication by increasing factor of 1.5: 90 × 3.5 = 315.

---

Q657.
MERN: [WebSockets][Medium-Hard][Product Company] How do you implement rooms/channels in Socket.io? Show code for joining a room, leaving a room, and broadcasting to a specific room.
Hint: Rooms are server-side channels. Use `socket.join('roomName')` and `socket.leave('roomName')`. Broadcast: `io.to('roomName').emit('event', message);`

DSA: [Greedy][Medium][Google] 🟡 HIGH FREQUENCY — Jump Game: check if you can reach the last index starting at index 0 (each element is max jump length).
Hint: Maintain the `maxReachable` index. Iterate through the array. If current index `i > maxReachable`, return false. Update `maxReachable = max(maxReachable, i + nums[i])`. If `maxReachable >= lastIndex`, return true. Time: O(n), Space: O(1).

Aptitude: [Geometry][Easy-Medium] Find the distance between the parallel lines `3x - 4y + 7 = 0` and `3x - 4y + 2 = 0`.
Hint: Distance d = |c1 - c2| / √(a² + b²) = 5 / √25 = 1 unit.

---

Q658.
MERN: [Caching][Medium-Hard][Product Company] How do you implement a distributed cache using Redis in a clustered MERN application?
Hint: Create a shared Redis deployment. Express instances connect via cluster client configurations (`ioredis` cluster mode). The client automatically hashes keys to route queries to correct shard masters. Keeps session/cache synchronized across all Express scaling targets.

DSA: [Greedy][Medium][Amazon] Partition Labels: partition string into as many parts as possible so each letter appears in at most one part.
Hint: Record the last occurrence index of each character. Traverse string. Maintain `start` and `end` of current partition. Update `end = max(end, last[char])`. When current index `i == end`, a partition boundary is found. Add length `end - start + 1` to results, and set `start = i + 1`. Time: O(n), Space: O(1).

Aptitude: [Mensuration][Easy-Medium] A rectangular sheet of metal 44 cm by 20 cm is rolled along its length to form a cylinder. Find the volume of the cylinder in cubic centimeters.
Hint: Circumference of cylinder base = 2πr = 44 cm. 2 × (22/7) × r = 44 → r = 7 cm. Height of cylinder = 20 cm. Volume = πr²h = (22/7) × 7² × 20 = 3080 cm³.

---

Q659.
MERN: [GraphQL][Medium-Hard][Product Company] What are GraphQL Mutations? How do you implement a mutation resolver that creates a document and validates inputs?
Hint: Mutations write/modify data (like POST/PUT). Schema: `type Mutation { createUser(input: UserInput!): User! }`. Resolver:
`createUser: async (_, { input }) => { const { error } = validate(input); if (error) throw new UserInputError(error.message); return await User.create(input); }`

DSA: [Graphs][Hard][Google] Redundant Connection II: given a directed graph with one redundant edge that breaks tree properties, find the edge.
Hint: Cycle detection in directed graph using Union-Find. Identify nodes with two parents. Case 1: no node has two parents (simply return the edge causing cycle in Union-Find). Case 2: node has two parents (test deleting each edge; if graph becomes a valid tree, return that edge). Time: O(V), Space: O(V).

Aptitude: [Logical Sequences][Easy-Medium] Find the next term in the series: 2, 5, 9, 19, 37, ?.
Hint: Pattern is `2 × x + 1` and `2 × x - 1` alternating: 37 × 2 + 1 = 75.

---

Q660.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle client authentication disconnects, heartbeats, and reconnections in Socket.io?
Hint: Monitor connection/disconnect events. Use built-in ping/pong heartbeats to detect dead sockets (Socket.io does this automatically via `pingInterval` and `pingTimeout`). Implement offline buffers: on client disconnect, cache user messages in Redis temporarily and push on reconnect.

DSA: [Graphs][Hard][Google] Given a graph of words, find the shortest transformation path from begin to end word, returning ALL shortest paths (Word Ladder II).
Hint: BFS + DFS. Run BFS to find the shortest distance from begin to end word, recording parent-child links at each level to build a DAG (Directed Acyclic Graph) of shortest paths. Then, run DFS/Backtracking from end word back to begin word to collect all valid routes. Time: O(N * M² + PathCount), Space: O(N * M).

Aptitude: [Geometry][Easy-Medium] Find the angle between the hands of a clock at 8:20.
Hint: Angle formula = |30H - 5.5M| = |30(8) - 5.5(20)| = 130°.

---

Q661.
MERN: [Caching][Medium-Hard][Product Company] How do you configure Redis cache eviction policies? Explain the differences between volatile-lru, allkeys-lru, and volatile-ttl.
Hint: Eviction happens when memory limit is reached. Configure `maxmemory-policy` in `redis.conf`: `allkeys-lru`: evicts Least Recently Used key among all keys (general cache). `volatile-lru`: evicts LRU keys with expiration (protects persistent keys). `volatile-ttl`: evicts keys nearest to expiring.

DSA: [Graphs][Hard][Amazon] Given a graph representing email connections, group matching accounts (using BFS/DFS instead of Union-Find).
Hint: Build an adjacency list where each email connects to all other emails in the same account. Iterate emails. If unvisited, run DFS/BFS to collect all connected emails (connected components). Sort and attach name. Time: O(N log N).

Aptitude: [Mensuration][Medium] The inner circumference of a circular track is 440m. The track is 14m wide. Find the radius of the outer circle.
Hint: Inner circle circumference = 2πr = 440m. 2 × (22/7) × r = 440 → r = 70m. Outer radius R = inner radius + width = 70 + 14 = 84m.

---

Q662.
MERN: [GraphQL][Medium-Hard][Product Company] What are schema directives in GraphQL? Write a custom `@auth` schema directive that checks user roles.
Hint: Directives attach metadata/validation to schema fields. Example: `type Query { secureData: String @auth(requires: ADMIN) }`. Implementation wraps field resolver function, validating `context.user.role` before calling original resolver.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II: find the minimum number of jumps to reach the last index.
Hint: BFS/Greedy. Track `currEnd` (max index reachable with current jumps) and `currMax` (max index reachable overall). Traverse array (except last index). Update `currMax = max(currMax, i + nums[i])`. If `i == currEnd`, increment jumps and set `currEnd = currMax`. Time: O(n), Space: O(1).

Aptitude: [Logical Sequences][Easy-Medium] Complete: Z, S, W, O, T, K, Q, G, ?, ?.
Hint: Alternating sequences: Seq 1: Z(-3)→W(-3)→T(-3)→Q(-3)→N. Seq 2: S(-4)→O(-4)→K(-4)→G(-4)→C. Next two letters are N and C.

---

Q663.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle error boundaries and crash recovery in a Node.js Socket.io server?
Hint: Handle errors inside event listeners using try/catch and emit error events to client. Monitor `uncaughtException` in Node process; if server crashes, PM2 restarts it. Clients reconnect automatically with exponential backoff.

DSA: [Greedy][Medium-Hard][Google] Given a list of jobs with deadlines and profits, find the maximum profit by scheduling jobs (each takes 1 unit of time).
Hint: Sort jobs by profit descending. Find max deadline to size scheduling slots. Initialize slots array to empty. For each job, search from its deadline backwards to find first empty slot. If found, assign job, increment profit. Time: O(n²), Space: O(max_deadline).

Aptitude: [Geometry][Medium] In what ratio does the line `x - y - 2 = 0` divide the line segment joining the points A(3, -1) and B(8, 9)?
Hint: Division ratio k : 1. Coordinates of division point = ((8k + 3)/(k + 1), (9k - 1)/(k + 1)). Substitute in line equation: (8k + 3)/(k + 1) - (9k - 1)/(k + 1) - 2 = 0. Ratio is 2 : 3.

---

Q664.
MERN: [Caching][Medium-Hard][Product Company] Explain how Redis hashes differ from simple keys. When should you use hashes to store user sessions in a MERN app?
Hint: Simple key stores a single string value. Redis hash stores field-value pairs (like an object): `HSET user:123 name "John" age "30"`. Use hashes for user sessions to read/modify specific fields (e.g. updating `lastActive` timestamp) without reading/writing the entire session JSON.

DSA: [Graphs][Medium-Hard][Google] Find the number of connected components in an undirected graph using DFS/BFS.
Hint: Maintain visited set. Loop nodes. If unvisited, count++, run DFS/BFS to visit all reachable nodes. Time: O(V+E).

Aptitude: [Mensuration][Medium] The base of a right prism is a triangle with sides 9 cm, 12 cm, and 15 cm. If the height of the prism is 20 cm, find its volume.
Hint: Triangle is right-angled (9² + 12² = 15²). Base Area = 0.5 × base × height = 0.5 × 9 × 12 = 54 cm². Volume = Base Area × Prism Height = 54 × 20 = 1080 cm³.

---

Q665.
MERN: [GraphQL][Medium-Hard][Product Company] How do you handle file uploads in GraphQL using Apollo Server?
Hint: GraphQL doesn't handle multipart uploads by default. Use `graphql-upload` middleware. Define schema field taking `Upload!` scalar. Resolver receives a promise returning `createReadStream`, which can be piped to disk/cloud storage.

DSA: [Graphs][Medium-Hard][Google] Reconstruct Itinerary: given airport tickets, reconstruct the itinerary in order, starting at 'JFK' (Eulerian Path).
Hint: Hierholzer's algorithm. Sort flight destinations lexicographically. Run DFS from current. Recursively visit destination, removing ticket. Push node to path. Reverse path at the end. Time: O(E log E).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 1.5, 3, 7.5, 22.5, 78.75, ?.
Hint: Multiplication by increasing factors adding 0.5: 78.75 × 4.0 = 315.

---

Q666.
MERN: [WebSockets][Medium-Hard][Product Company] Show how to broadcast a message in Socket.io to all connected sockets except the sender.
Hint: Use `socket.broadcast.emit('event', message)` or `socket.to(room).emit('event', message)`.

DSA: [Greedy][Medium-Hard][Amazon] Given a list of intervals, merge all overlapping intervals.
Hint: Sort by start time. Initialize merged array with first. Iterate: if current start <= end of last, update last's end to max. Else append. Time: O(n log n).

Aptitude: [Geometry][Medium-Hard] Find the coordinates of the circumcenter of the triangle with vertices A(0,0), B(3,0), and C(0,4).
Hint: Triangle is right-angled at (0,0). Midpoint of hypotenuse joins (3,0) and (0,4) = (1.5, 2).

---

Q667.
MERN: [Caching][Medium-Hard][Product Company] What is cache eviction? Explain LRU, LFU, and FIFO eviction algorithms.
Hint: LRU (Least Recently Used) evicts keys unused for the longest time. LFU (Least Frequently Used) evicts keys with lowest access count. FIFO (First In First Out) evicts the oldest keys based on creation time.

DSA: [Greedy][Medium-Hard][Amazon] Given intervals, find minimum number of intervals to remove to make the rest non-overlapping.
Hint: Sort by end time. Iterate: if current start < last end, count++; else update last end. Time: O(n log n).

Aptitude: [Mensuration][Medium] A roller 1.5 m long has a diameter of 70 cm. It takes 100 complete revolutions to level a playground. Find the area of the playground.
Hint: Radius r = 35 cm = 0.35 m, Height h = 1.5 m. CSA of cylinder = 2πrh = 2 × (22/7) × 0.35 × 1.5 = 3.3 m². Area leveled in 100 revolutions = 100 × 3.3 = 330 m².

---

Q668.
MERN: [GraphQL][Medium-Hard][Product Company] Explain Apollo Client state management. How does Apollo Client cache work, and how do you update cache manually after mutation?
Hint: Apollo Client caches query results in an in-memory normalized cache. After mutation, update cache manually using `update(cache, { data })` option to modify specific cache queries, or run `refetchQueries`.

DSA: [Greedy][Medium-Hard][Amazon] Gas Station circular tour index search.
Hint: If total gas < total cost, return -1. Else iterate: balance += gas[i] - cost[i]. If balance < 0, reset start = i+1 and balance = 0. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete: 6, 11, 21, 36, 56, ?.
Hint: Difference increases by 5: 56 + 25 = 81.

---

Q669.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle secure user authentication when establishing connection in Socket.io?
Hint: Validate auth tokens in connection middleware using JWT. Attach decrypted user details to `socket.user` object.

DSA: [Greedy][Medium-Hard][Google] Jump Game reach check.
Hint: Track `maxReachable`. Iterate: if `i > maxReachable`, return false. Update `maxReachable = max(maxReachable, i + nums[i])`. Time: O(n).

Aptitude: [Geometry][Medium-Hard] Find the equation of the line passing through (2, 3) and perpendicular to `3x - 4y + 5 = 0`.
Hint: Slope m1 = 3/4. Perpendicular slope m2 = -4/3. Equation: y - 3 = -4/3(x - 2) → 4x + 3y - 17 = 0.

---

Q670.
MERN: [Caching][Medium-Hard][Product Company] What are the benefits of caching APIs using Redis over in-memory node-cache in an Express app?
Hint: In-memory cache is tied to single process, consuming server memory and resetting on restart. Redis runs as a separate database, preserving cache data across restarts and sharing data across multiple scaled Express processes.

DSA: [Greedy][Medium-Hard][Amazon] Partition Labels string partition.
Hint: Record last occurrence of each character. Iterate: update partition end to max last occurrence. When `i == end`, record length and reset partition start. Time: O(n).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a sphere whose surface area is 616 square centimeters.
Hint: Surface Area = 4πr² = 616 → r = 7 cm. Volume = 4/3 πr³ = 4/3 × (22/7) × 7³ = 1437.33 cm³.

---

Q671.
MERN: [GraphQL][Medium-Hard][Product Company] What is schema stitching vs federation in GraphQL?
Hint: Schema stitching merges schemas imperatively. Federation compiles schemas declaratively into a gateway using subgraphs, allowing microservices to extend types.

DSA: [Graphs][Hard][Google] Redundant Connection II directed graph redundant edge.
Hint: Union-Find cycle check. Handle two-parent nodes by testing edge deletion. Time: O(V).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 10, 19, 40, 77, 158, ?.
Hint: Pattern is `2 × x - 1` and `2 × x + 2` alternating: 158 × 2 - 5 = 311.

---

Q672.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle room join/leave logic inside a Socket.io controller?
Hint: Call `socket.join(room)` and `socket.leave(room)`. Emit notifications to other room members using `socket.to(room).emit()`.

DSA: [Graphs][Hard][Google] Word Ladder II shortest paths collection.
Hint: BFS to construct DAG of shortest paths, DFS to collect path combinations. Time: O(N * M²).

Aptitude: [Geometry][Medium-Hard] Find the length of the tangent drawn from (5, 7) to the circle `x² + y² - 4x - 6y - 3 = 0`.
Hint: Length of tangent = √S1 = √(5² + 7² - 4(5) - 6(7) - 3) = √9 = 3 units.

---

Q673.
MERN: [Caching][Medium-Hard][Product Company] How do you invalidate cache keys in Redis when data updates in MongoDB?
Hint: In controllers, after a successful write (update/delete), delete the cached key using `redis.del(key)`. Alternatively, set TTL (Time-To-Live) on cache keys so they expire automatically.

DSA: [Graphs][Hard][Amazon] Group emails account merge.
Hint: Adjacency list connecting matching emails. Run DFS/BFS connected components. Time: O(N log N).

Aptitude: [Mensuration][Medium-Hard] The radius of a cylinder is doubled and height is halved. Find the ratio of its new volume to original volume.
Hint: Original Volume = πr²h. New Volume = π(2r)²(h/2) = 2πr²h. Ratio = 2 : 1.

---

Q674.
MERN: [GraphQL][Medium-Hard][Product Company] Explain how query pagination works in GraphQL.
Hint: Use offset/limit variables in resolvers, or connection-based cursor pagination (relay spec) taking `first`/`after` parameters for scroll feeds.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II minimum jumps search.
Hint: Greedy BFS. Keep track of current jump end and maximum reachable index. Increment jumps when reaching end. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 5, 6, 14, 45, ?, 925.
Hint: Pattern is `(x + 1) × 1`, `(x + 1) × 2`... 45 × 4 + 4 = 184.

---

Q675.
MERN: [WebSockets][Medium-Hard][Product Company] Show how to structure a large Socket.io project by separating event handlers into separate controller files.
Hint: Register handlers in separate modules. Example:
`// main.js: io.on('connection', socket => { registerUserHandlers(io, socket); });`
`// userHandler.js: module.exports = (io, socket) => { socket.on('user:update', () => { ... }) };`

DSA: [Greedy][Medium-Hard][Google] Job Scheduling maximum profit search.
Hint: Sort jobs by profit descending. Assign to latest free slot before deadline. Time: O(n²).

Aptitude: [Geometry][Medium-Hard] Find the center and radius of the circle `3x² + 3y² - 12x + 18y - 9 = 0`.
Hint: Divide by 3: `x² + y² - 4x + 6y - 3 = 0`. Center = (-g, -f) = (2, -3). Radius = √(4 + 9 - (-3)) = 4 units.

---

Q676.
MERN: [Caching][Medium-Hard][Product Company] What is Redis Pipeline? How does it optimize performance when running multiple commands?
Hint: Pipeline buffers multiple commands and sends them to Redis in a single network call, reducing network round-trip latency.

DSA: [Graphs][Medium-Hard][Google] Find connected components count in undirected graph.
Hint: Maintain visited set. Loop nodes, call DFS to visit all connected elements. Time: O(V+E).

Aptitude: [Mensuration][Medium-Hard] Find the surface area of a cone whose radius is 7 cm and volume is 1232 cubic centimeters.
Hint: Volume = 1/3 πr²h = 1232 → h = 24 cm. Slant height l = √(r² + h²) = 25 cm. Surface Area = πrl + πr² = (22/7) × 7 × 25 + (22/7) × 7² = 704 cm².

---

Q677.
MERN: [GraphQL][Medium-Hard][Product Company] What are fragment resolvers in GraphQL?
Hint: Fragments group reusable fields. Client requests them using `...fragmentName` syntax. Resolvers process query as usual.

DSA: [Graphs][Medium-Hard][Google] Reconstruct Itinerary: Eulerian Path flight route search.
Hint: Hierholzer's DFS sorting destinations. Time: O(E log E).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 8, 15, 28, 53, ?, 199.
Hint: Pattern is `2 × x - 1` and `2 × x - 2` alternating: 53 × 2 - 4 = 102.

---

Q678.
MERN: [WebSockets][Medium-Hard][Product Company] Explain Socket.io connection buffering and offline event queue.
Hint: Socket.io buffers events during disconnects and sends them on reconnection automatically.

DSA: [Greedy][Medium-Hard][Amazon] Merge overlapping intervals.
Hint: Sort by start. Merge overlapping bounds sequentially. Time: O(n log n).

Aptitude: [Geometry][Medium-Hard] Find the slope of the line passing through the points (3, -2) and (-1, 4).
Hint: Slope m = (y2 - y1) / (x2 - x1) = (4 - (-2)) / (-1 - 3) = -1.5.

---

Q679.
MERN: [Caching][Medium-Hard][Product Company] Explain volatile cache keys vs persistent keys in Redis.
Hint: Volatile keys have an associated TTL and expire. Persistent keys have no expiry and remain in database until deleted.

DSA: [Greedy][Medium-Hard][Amazon] Minimum intervals removal for non-overlapping.
Hint: Sort by end time. Iterate: if start < last end, count++; else update last end. Time: O(n log n).

Aptitude: [Mensuration][Medium-Hard] A sphere is melted and cast into a wire of radius 0.2 cm. If the radius of the sphere is 6 cm, find the length of the wire.
Hint: Volume of sphere = 4/3 πr³ = 288π. Volume of cylindrical wire = πR²L = 0.04πL. 288π = 0.04πL → L = 7200 cm = 72 meters.

---

Q680.
MERN: [GraphQL][Medium-Hard][Product Company] How do you handle authentication headers in Apollo Client?
Hint: Pass headers in Apollo Client creation using `setContext` link, appending token to Authorization headers.

DSA: [Greedy][Medium-Hard][Amazon] Gas Station index calculation.
Hint: Compare total gas and cost. Run greedy iteration tracking gas balance. Reset if negative. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete: 2, 3, 10, 15, 26, ?.
Hint: Pattern is `n² + 1` and `n² - 1` alternating: 6² - 1 = 35.

---

Q681.
MERN: [WebSockets][Medium-Hard][Product Company] How do you secure WebSockets against Cross-Site WebSocket Hijacking (CSWSH)?
Hint: Validate Origin headers on connection handshake. Enforce token authentication (JWT) inside connection middleware.

DSA: [Greedy][Medium-Hard][Google] Jump Game reach check.
Hint: Track max index reachable. Return false if index exceeds bounds. Time: O(n).

Aptitude: [Geometry][Medium-Hard] Find the equation of the circle passing through the origin and making intercepts 4 and 6 on the positive coordinate axes.
Hint: Midpoint of hypotenuse of right triangle is center = (2, 3). Radius = distance to origin = √13. Equation: (x - 2)² + (y - 3)² = 13 → x² + y² - 4x - 6y = 0.

---

Q682.
MERN: [Caching][Medium-Hard][Product Company] How do you cache REST API responses using Redis middleware?
Hint: Check cache by request URL. If hits, return data. If miss, override `res.json` to store response in Redis before sending.

DSA: [Greedy][Medium-Hard][Amazon] Partition Labels string division.
Hint: Map last occurrences. Iterate, update partition end, record size on bounds match. Time: O(n).

Aptitude: [Mensuration][Medium-Hard] The diagonal of a cube is 6√3 cm. Find its total surface area.
Hint: Diagonal = s√3 = 6√3 → s = 6 cm. TSA = 6s² = 216 cm².

---

Q683.
MERN: [GraphQL][Medium-Hard][Product Company] Explain how to validate GraphQL input queries using third-party packages.
Hint: Use validation schemas (like Joi or Zod) inside resolver functions or schema validators.

DSA: [Graphs][Hard][Google] Redundant Connection II.
Hint: DSU cycle detection handles directed double parents. Time: O(V).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 0.5, 2, 4.5, 8, 12.5, ?.
Hint: Pattern is `0.5 × n²`: n=6: 18.0.

---

Q684.
MERN: [WebSockets][Medium-Hard][Product Company] How do you scale Socket.io with sticky sessions?
Hint: Configure load balancer to route requests from a client to the same server process, enabling handshake.

DSA: [Graphs][Hard][Google] Word Ladder II shortest paths search.
Hint: BFS steps DAG construction with DFS paths collection. Time: O(N * M²).

Aptitude: [Geometry][Medium-Hard] Find the distance of the point (3, 4) from the line `2x - 3y + 4 = 0`.
Hint: Distance d = |ax1 + by1 + c| / √(a² + b²) = |2(3) - 3(4) + 4| / √(2² + (-3)²) = 2 / √13 units.

---

Q685.
MERN: [Caching][Medium-Hard][Product Company] Explain Redis cluster sharding.
Hint: Redis clusters split key spaces into 16,384 hash slots distributed across master nodes.

DSA: [Graphs][Hard][Amazon] Group emails account merge search.
Hint: DFS/BFS connectivity component sorting. Time: O(N log N).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a cylinder whose radius is 14 cm and curved surface area is 1760 square centimeters.
Hint: Curved Surface Area (CSA) = 2πrh = 1760 → h = 20 cm. Volume = πr²h = (22/7) × 14² × 20 = 12,320 cm³.

---

Q686.
MERN: [GraphQL][Medium-Hard][Product Company] How do you handle schema versioning in GraphQL?
Hint: GraphQL doesn't version. Deprecate fields with `@deprecated` directive, and add new fields incrementally.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II minimum jumps logic.
Hint: Track current jump end index and maximum reachable bounds. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 4, 9, 20, 43, ?, 185.
Hint: Pattern is `2 × x + 1`, `2 × x + 2`... 43 × 2 + 4 = 90.

---

Q687.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle Socket.io client disconnects gracefully?
Hint: Register 'disconnect' event. Clean up user state and notify other room users.

DSA: [Greedy][Medium-Hard][Google] Job Scheduling max profit allocation.
Hint: Sort by profit, schedule in latest slot before deadline. Time: O(n²).

Aptitude: [Geometry][Medium-Hard] Find the equation of the normal to the circle `x² + y² = 25` at the point (3, 4).
Hint: Normal passes through center (0,0) and (3,4). Slope = 4/3. Equation: 4x - 3y = 0.

---

Q688.
MERN: [Caching][Medium-Hard][Product Company] Explain cache-aside design pattern in detail.
Hint: Application queries cache. On miss, queries DB, updates cache, and returns.

DSA: [Graphs][Medium-Hard][Google] Find connected components count in undirected graph.
Hint: Visited set tracking with DFS component scans. Time: O(V+E).

Aptitude: [Mensuration][Medium-Hard] If the volume of a sphere is 38808 cubic centimeters, find its radius.
Hint: Volume = 4/3 πr³ = 38808 → r = 21 cm.

---

Q689.
MERN: [GraphQL][Medium-Hard][Product Company] Explain Apollo Client local state variables.
Hint: Use reactive variables (`makeVar`) to manage local client state inside Apollo Client cache.

DSA: [Graphs][Medium-Hard][Google] Reconstruct Flight Itinerary search.
Hint: Eulerian Path Hierholzer's DFS destination sorting. Time: O(E log E).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 10, 15, 30, 75, 225, ?.
Hint: Multipliers increase by 0.5: 225 × 3.5 = 787.5.

---

Q690.
MERN: [WebSockets][Medium-Hard][Product Company] How do you handle Socket.io reconnecting attempts on React client?
Hint: Listen to 'reconnect_attempt' and 'reconnect' events to update connection status UI.

DSA: [Greedy][Medium-Hard][Amazon] Merge overlapping intervals.
Hint: Sort by start. Merge overlapping bounds sequentially. Time: O(n log n).

Aptitude: [Geometry][Medium-Hard] Find the angle between the lines `y - √3x - 5 = 0` and `√3y - x - 6 = 0`.
Hint: Slopes: m1 = √3 (60°), m2 = 1/√3 (30°). Angle = 30°.

---

Q691.
MERN: [Caching][Medium-Hard][Product Company] What are the benefits of caching session store in Redis?
Hint: Shares session across servers, persisting data on restarts.

DSA: [Greedy][Medium-Hard][Amazon] Minimum intervals removal.
Hint: Sort by end. Count overlaps. Time: O(n log n).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a cone whose radius is 6 cm and height is 7 cm.
Hint: Volume = 1/3 πr²h = 1/3 × (22/7) × 6² × 7 = 264 cm³.

---

Q692.
MERN: [GraphQL][Medium-Hard][Product Company] How do you query list arrays with schema types?
Hint: Specify array brackets in type: `[User!]!`.

DSA: [Greedy][Medium-Hard][Amazon] Gas Station tour.
Hint: Greedy tracking of gas balances. If total gas < total cost, return -1. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 3, 4, 12, 45, ?, 1005.
Hint: Pattern is `x × n + n²`: 45 × 4 + 16 = 196.

---

Q693.
MERN: [WebSockets][Medium-Hard][Product Company] How do you broadcast in rooms in Socket.io?
Hint: Use `io.to(room).emit('event', message)`.

DSA: [Greedy][Medium-Hard][Google] Jump Game reach validation.
Hint: Track max reach index. Return false if index exceeds bounds. Time: O(n).

Aptitude: [Geometry][Medium-Hard] Find the equation of the line passing through (1, 2) and parallel to `2x - 3y + 6 = 0`.
Hint: Parallel line slope m = 2/3. Equation: 2x - 3y + 4 = 0.

---

Q694.
MERN: [Caching][Medium-Hard][Product Company] Explain volatile-lru eviction.
Hint: Evicts least recently used keys among those that have an expiration set.

DSA: [Greedy][Medium-Hard][Amazon] Partition Labels string partition.
Hint: Track last indices. Update partition bounds. Time: O(n).

Aptitude: [Mensuration][Medium-Hard] Find the total surface area of a cylinder whose radius is 7 cm and height is 10 cm.
Hint: TSA = 2πr(h + r) = 2 × (22/7) × 7 × (10 + 7) = 748 cm².

---

Q695.
MERN: [GraphQL][Medium-Hard][Product Company] What are custom scalars in GraphQL?
Hint: Define custom data formats (like Date, Email) by writing parse and serialize functions.

DSA: [Graphs][Hard][Google] Redundant Connection II.
Hint: DSU cycle detection handles directed double parents. Time: O(V).

Aptitude: [Logical Sequences][Medium] Complete the sequence: 2, 7, 24, 77, ?.
Hint: Pattern is `3 × x + 1`, `3 × x + 3`... 77 × 3 + 7 = 238.

---

Q696.
MERN: [WebSockets][Medium-Hard][Product Company] Explain sticky session routing.
Hint: Directs requests from a client browser to the same server process.

DSA: [Graphs][Hard][Google] Word Ladder II shortest paths search.
Hint: BFS steps DAG construction with DFS paths collection. Time: O(N * M²).

Aptitude: [Geometry][Medium-Hard] Find the distance between the points (1, -2) and (-3, 1).
Hint: d = √((-3 - 1)² + (1 - (-2))²) = 5 units.

---

Q697.
MERN: [Caching][Medium-Hard][Product Company] What is Redis memory eviction?
Hint: Action taken by Redis to free up memory when limit is hit by removing keys according to policy.

DSA: [Graphs][Hard][Amazon] Group emails account merge.
Hint: DFS/BFS component list sorting. Time: O(N log N).

Aptitude: [Mensuration][Medium-Hard] Find the volume of a cube whose total surface area is 150 square centimeters.
Hint: TSA = 6s² = 150 → s = 5 cm. Volume = s³ = 125 cm³.

---

Q698.
MERN: [GraphQL][Medium-Hard][Product Company] What are Apollo Client query variables?
Hint: Pass dynamic parameters to queries using `variables: { id: 123 }`.

DSA: [Greedy][Medium-Hard][Amazon] Jump Game II jumps count.
Hint: Greedy BFS jump bounds updates. Time: O(n).

Aptitude: [Logical Sequences][Medium] Complete: 1, 8, 27, 64, ?.
Hint: Perfect cubes: 5³ = 125.

---

Q699.
MERN: [WebSockets][Medium-Hard][Product Company] Explain heartbeats in WebSockets.
Hint: Ping/pong messages to detect client connection state.

DSA: [Greedy][Medium-Hard][Google] Job Scheduling deadline allocation.
Hint: Sort by profit. Schedule in latest free slot. Time: O(n²).

Aptitude: [Geometry][Medium-Hard] Find the area of the circle `x² + y² - 4x - 6y - 12 = 0`.
Hint: Center = (2,3). Radius = √(4 + 9 - (-12)) = 5. Area = 25π ≈ 78.54 square units.

---

Q700.
MERN: [Caching][Medium-Hard][Product Company] How do you clear Redis cache keys?
Hint: Delete key: `DEL key`. Clear all keys: `FLUSHALL`.

DSA: [Graphs][Medium-Hard][Google] Find connected components count.
Hint: DFS node scans tracking visited set. Time: O(V+E).

Aptitude: [Mensuration][Medium-Hard] Find the curved surface area of a cylinder whose radius is 7 cm and height is 15 cm.
Hint: CSA = 2πrh = 2 × (22/7) × 7 × 15 = 660 cm².

---

## 📝 REVISION CHECKPOINT — Q601 to Q700

### Top Patterns Learned
1. **GraphQL Services**: Nested field resolvers, N+1 query batching (DataLoader), mutations, custom schema directives (`@auth`), schema federation, and client caching.
2. **WebSocket Integrations**: Horizontal scaling with Redis Adapters, connection middleware token checks, channels/rooms, heartbeat monitoring, and sticky sessions.
3. **Advanced Caching Layouts**: Cache-Aside vs Write-Through strategies, Redis hashes vs string keys, cluster hashing slots, and eviction policies (`allkeys-lru`).
4. **DSA Graph & Greedy Logic**:
   - *Greedy Intervals*: Interval merging, insertions, scheduling maximization, and jump boundaries.
   - *Connectivity & Paths*: Redundant directed connections cycle checks, accounts merging connected elements, and Word Ladder DAG routes.
5. **Aptitude & Geometry Formulas**: Perpendicular/parallel slopes, centroid positions, circular track radii, and cylinder volume calculations.

### Most Important Concepts
- 🔴 Horizontal scaling of WebSockets via Redis Pub/Sub (Q602, Q652)
- 🔴 DataLoader batching to solve N+1 in GraphQL queries (Q606, Q656)
- 🔴 Disjoint Set Union cycle identification (Q601, Q651)
- 🔴 Interval Scheduling end-time sorting strategy (Q605, Q655)
- 🔴 Nominal vs Effective rate transformations (Q359, Q359)

### Revision Checklist
- [ ] Can you implement a field-level nested resolver in GraphQL?
- [ ] Can you set up sticky session load balancer rules for WebSockets?
- [ ] Can you configure a Redis cluster client?
- [ ] Can you solve the "Merge Intervals" problem in O(n log n)?
- [ ] Can you write a Union-Find class?
- [ ] Can you find the circumcenter of a right triangle?
- [ ] Can you calculate the volume of a rolled metal sheet cylinder?

---
# ⭐⭐⭐⭐ ADVANCED ROADMAP — Q701 to Q750

## Microservices, Docker, Kubernetes, System Design | Dynamic Programming (1D, 2D, Knapsack, LCS, MCM) | Advanced Data Interpretation, Decision Making

---

Q701.
MERN: [Microservices][Hard][FAANG-Level] When decomposing a monolithic MERN application, what are the architectural trade-offs between a Shared Database vs Database-per-Service? How do you maintain transactional boundaries?
Hint: Shared Database: simpler, allows JOINs across tables, but causes tight coupling and single points of failure. Database-per-Service: complete decoupling, independent scaling, but requires API gateways and event-driven updates. To maintain transactions, use the Saga Pattern (orchestration/choreography) or Outbox Pattern rather than distributed 2PC (Two-Phase Commit) which blocks resources and degrades latency.

DSA: [DP][Medium][Google] 🔴 MUST DO — Climbing Stairs: count the number of distinct ways to reach the top of a staircase with N steps, taking either 1 or 2 steps at a time.
Hint: 1D DP. Let `dp[i]` be the number of ways to reach step `i`. The recurrence relation is `dp[i] = dp[i-1] + dp[i-2]` (equivalent to Fibonacci numbers). Base cases: `dp[1] = 1`, `dp[2] = 2`. Optimize space by tracking only the last two steps using variables. Time: O(N), Space: O(1).

Aptitude: [Data Interpretation][Hard] A company's sales (in millions) for four quarters are: Q1: Table=12, Chair=8, Bed=15; Q2: Table=14, Chair=11, Bed=13; Q3: Table=10, Chair=12, Bed=18; Q4: Table=16, Chair=9, Bed=20. If profit margins are Table=10%, Chair=15%, Bed=8%, find the quarter with the highest total profit.
Hint: Q1: 12(0.1) + 8(0.15) + 15(0.08) = 1.2 + 1.2 + 1.2 = 3.6m. Q2: 1.4 + 1.65 + 1.04 = 4.09m. Q3: 1.0 + 1.8 + 1.44 = 4.24m. Q4: 1.6 + 1.35 + 1.6 = 4.55m. Quarter 4 has the highest total profit.

---

Q702.
MERN: [Microservices][Hard][Product Company] Compare REST, gRPC, and Message Queues for inter-service communication in a Node.js microservices backend. When would you use each?
Hint: REST: HTTP/1.1, text-based JSON, synchronous, simple, ideal for client-facing edge APIs. gRPC: HTTP/2, binary Protobuf payloads, low latency, bidirectional streaming, synchronous/asynchronous, ideal for high-performance internal microservice calls. Message Queues (RabbitMQ/Kafka): asynchronous, event-driven, decoupled, ideal for non-blocking long-running background tasks (e.g., email notification, processing orders).

DSA: [DP][Medium][Amazon] 🔴 MUST DO — Min Cost Climbing Stairs: given an integer array cost where cost[i] is the cost of ith step, find the minimum cost to reach the top of the floor.
Hint: 1D DP. Let `dp[i]` represent the min cost to reach step `i`. Recurrence: `dp[i] = cost[i] + min(dp[i-1], dp[i-2])`. Base cases: `dp[0] = cost[0]`, `dp[1] = cost[1]`. The top of the stairs can be reached from `N-1` or `N-2`, so output is `min(dp[N-1], dp[N-2])`. Space can be optimized to O(1). Time: O(N), Space: O(1).

Aptitude: [Decision Making][Hard] An airline must choose between route expansion (potential $15M profit, 40% probability of a $5M loss) or partner alignment ($6M guaranteed profit). Use expected monetary value (EMV) to choose the best option.
Hint: EMV of Route Expansion = (0.6 * $15M) + (0.4 * -$5M) = $9M - $2M = $7M. EMV of Partner Alignment = $6M. Since $7M > $6M, the airline should choose route expansion.

---

Q703.
MERN: [Microservices][Hard][Product Company] How do you design and implement an API Gateway in a MERN stack (e.g., using Express Gateway or custom Node-HTTP-Proxy)?
Hint: An API Gateway acts as the single entry point for clients. It handles reverse proxy routing to downstream microservices, centralized JWT verification, SSL termination, and rate limiting. Use `http-proxy-middleware` in Express:
`app.use('/users', createProxyMiddleware({ target: 'http://user-service:3001', changeOrigin: true }));`
Centralized auth middleware on the gateway attaches decrypted headers (e.g., `X-User-ID`) to the forwarded request.

DSA: [DP][Medium][Amazon] 🔴 MUST DO — Coin Change: given coins of different denominations and a total amount, find the fewest number of coins needed to make up that amount (return -1 if impossible).
Hint: 1D DP (unbounded knapsack variant). Define `dp[i]` as the min coins for amount `i`. Initialize `dp` array of size `amount + 1` with `infinity`, and `dp[0] = 0`. For each coin and for each `i` from `coin` to `amount`, update `dp[i] = min(dp[i], dp[i - coin] + 1)`. Time: O(N * amount), Space: O(amount).

Aptitude: [Data Interpretation][Hard] In a survey of 500 consumers, 250 use Product A, 200 use Product B, and 180 use Product C. 100 use both A and B, 80 use B and C, and 70 use A and C. 40 use all three products. Find the number of consumers who do not use any of the three products.
Hint: Use 3-set Venn formula: N(A∪B∪C) = N(A) + N(B) + N(C) - N(A∩B) - N(B∩C) - N(A∩C) + N(A∩B∩C) = 250 + 200 + 180 - 100 - 80 - 70 + 40 = 420. Consumers using none = 500 - 420 = 80.

---

Q704.
MERN: [Message Queues][Hard][FAANG-Level] Explain how RabbitMQ handles message durability, publisher confirms, and consumer acknowledgments to ensure zero message loss.
Hint: To guarantee delivery: 1) Declare queues and messages as `durable` and `persistent` (writes messages to disk). 2) Enable `Publisher Confirms` on the channel; the broker responds with an ACK once the message is written to disk. 3) Disable `noAck` on the consumer; the consumer must send an explicit `channel.ack(message)` only after successfully processing the task. If a consumer dies before ACKing, RabbitMQ requeues the message.

DSA: [DP][Medium-Hard][Google] 🔴 MUST DO — Longest Increasing Subsequence (LIS): find the length of the longest strictly increasing subsequence in an unsorted array of integers.
Hint: DP or Binary Search. DP method: `dp[i]` is LIS ending at index `i`. For each `i`, loop `j` from 0 to `i-1`, if `nums[i] > nums[j]`, update `dp[i] = max(dp[i], dp[j] + 1)`. Time: O(N²). Binary Search method (Patience Sorting): maintain an active list of min tails. For each num, binary search its insertion point. If it replaces an element, overwrite it; if it's larger than all, append. Time: O(N log N), Space: O(N).

Aptitude: [Decision Making][Hard] A software company has three bugs: Bug A (affects 80% of users, minor UI issue), Bug B (affects 5% of users, causes data loss), Bug C (affects 25% of users, slows page load by 3s). Rank them for immediate fix.
Hint: Order priority based on severity of business impact first, then user volume: Bug B (critical data loss, security/legal risk), Bug C (performance degradation impacting SEO and retention), Bug A (minor UI inconsistency, cosmetic).

---

Q705.
MERN: [Message Queues][Hard][Product Company] Explain the architecture of Apache Kafka. How does it achieve horizontal scale, and how does Node.js connect to it (using kafkajs)?
Hint: Kafka is a distributed event log. Topics are divided into partitions, which are ordered, immutable logs of events distributed across broker nodes. Scaling is achieved by consumer groups; partitions are assigned to active consumers in the group (1 partition to max 1 consumer). Setup in Node:
`const kafka = new Kafka({ brokers: ['localhost:9092'] }); const producer = kafka.producer(); await producer.connect(); await producer.send({ topic: 'orders', messages: [{ value: JSON.stringify(order) }] });`

DSA: [DP][Medium-Hard][Google] 🔴 MUST DO — Word Break: given a string and a dictionary of words, determine if the string can be segmented into a space-separated sequence of dictionary words.
Hint: 1D DP. Let `dp[i]` be a boolean indicating if substring `s[0...i]` can be segmented. Initialize `dp[0] = true`. For each `i` from 1 to `N`, and each `j` from 0 to `i-1`, if `dp[j]` is true and substring `s[j...i]` is in dictionary, set `dp[i] = true` and break. Time: O(N³) due to string slicing, Space: O(N).

Aptitude: [Data Interpretation][Hard] The following double line graph shows import and export values (in $B) of a nation: Year 1: Imp=40, Exp=35; Year 2: Imp=45, Exp=42; Year 3: Imp=50, Exp=55; Year 4: Imp=52, Exp=60. Find the percentage increase in trade balance (Export - Import) between Year 3 and Year 4.
Hint: Year 3 Trade Balance = 55 - 50 = $5B surplus. Year 4 Trade Balance = 60 - 52 = $8B surplus. Percentage increase = ((8 - 5) / 5) * 100 = 60%.

---

Q706.
MERN: [Microservices][Hard][FAANG-Level] Explain the Saga Pattern. What is the difference between Orchestration-based and Choreography-based Sagas in distributed Node.js transactions?
Hint: Sagas manage eventual consistency across microservices via a sequence of local transactions. Choreography: decentralized; services listen to events and trigger their own local transaction and publish new events (pros: no single point of failure; cons: hard to track). Orchestration: centralized; a dedicated Orchestrator service calls endpoints sequentially and handles compensating actions if any service fails (pros: easier monitoring; cons: single controller bottleneck).

DSA: [DP][Medium][Amazon] 🟡 HIGH FREQUENCY — House Robber: find the maximum amount of money you can rob from houses along a street tonight without alerting the police (cannot rob adjacent houses).
Hint: 1D DP. Let `dp[i]` be max profit up to house `i`. Recurrence: `dp[i] = max(dp[i-1], dp[i-2] + nums[i])`. Base cases: `dp[0] = nums[0]`, `dp[1] = max(nums[0], nums[1])`. Can optimize space to O(1) by tracking only `prev1` and `prev2`. Time: O(N), Space: O(1).

Aptitude: [Decision Making][Hard] A product manager needs to roll out a feature. Option A: Release immediately (potential bug rate 15%, gets to market 2 months early). Option B: Conduct beta testing (bug rate 2%, delays release by 2 months, costs $20k). The target market value is $100k. Choose the optimal path.
Hint: Option A Expected Value = $100k - (15% risk × $30k bug cost) = $95.5k. Option B Expected Value = $100k - $20k cost - (2% risk × $30k bug cost) = $79.4k. Immediate release (Option A) has a higher net financial outcome, assuming market entry speed outweighs risk.

---

Q707.
MERN: [Microservices][Hard][Product Company] How do you handle compensating transactions in Orchestration Sagas in Node.js when an order payment fails but inventory was already reserved?
Hint: If payment fails, the Orchestrator dispatches a compensating rollback request to the Inventory Service (e.g., `POST /inventory/release`) to release the reserved items. Compensating transactions must be idempotent because network retries can trigger them multiple times. Maintain saga state (e.g., `PENDING`, `COMPENSATING`, `FAILED`) in a database like Redis to track the transaction lifecycle.

DSA: [DP][Medium][Amazon] 🟡 HIGH FREQUENCY — House Robber II: same as House Robber, but houses are arranged in a circle (first house is adjacent to the last house).
Hint: Since house[0] and house[N-1] are adjacent, you cannot rob both. Split the problem into two subproblems: 1) Rob houses from 0 to N-2. 2) Rob houses from 1 to N-1. The result is the maximum of these two standard House Robber solutions. Return `max(robHelper(nums[0...N-2]), robHelper(nums[1...N-1]))`. Time: O(N), Space: O(1).

Aptitude: [Data Interpretation][Hard] Study the table of percentage marks of four students in four subjects (max marks of each subject is 100): Stud 1: M=80, S=75, E=90, H=85; Stud 2: M=70, S=80, E=85, H=90; Stud 3: M=90, S=85, E=80, H=75; Stud 4: M=85, S=90, E=75, H=80. What is the average marks in Science across all four students?
Hint: Science marks: Stud 1=75, Stud 2=80, Stud 3=85, Stud 4=90. Average Science marks = (75 + 80 + 85 + 90) / 4 = 330 / 4 = 82.5.

---

Q708.
MERN: [Event Sourcing][Hard][Product Company] What is Event Sourcing? How does it differ from CQRS, and how do you implement CQRS in a MERN stack?
Hint: Event Sourcing stores the state of an application as a sequence of immutable events (rather than storing only the current state). CQRS splits write models (Commands) from read models (Queries). In MERN, write commands are handled by Node/MongoDB (or PostgreSQL) storing append-only logs, which trigger events that sync a read-optimized MongoDB collection used for fast client queries.

DSA: [DP][Medium-Hard][Google] 🔴 MUST DO — Decode Ways: given a string containing only digits, return the number of ways to decode it into letters (A=1, B=2, ..., Z=26).
Hint: 1D DP. Let `dp[i]` be the number of ways to decode prefix `s[0...i-1]`. Initialize `dp[0] = 1`. If `s[i-1] != '0'`, `dp[i] += dp[i-1]`. If the double digit `s[i-2...i-1]` is between "10" and "26", `dp[i] += dp[i-2]`. If a zero is encountered and cannot form a valid double-digit with previous, return 0. Time: O(N), Space: O(1) if optimized.

Aptitude: [Decision Making][Hard] You have a budget of $50,000 for server upgrades. Server A: costs $30,000, handles 5,000 req/sec. Server B: costs $20,000, handles 3,000 req/sec. Server C: costs $15,000, handles 2,500 req/sec. Maximize the total capacity (req/sec) within budget.
Hint: Combinations within $50k: 1) A + B = $50,000, handles 8,000 req/sec. 2) B + 2C = $50,000, handles 3,000 + 5,000 = 8,000 req/sec. 3) A + C = $45,000, handles 7,500 req/sec. Maximum capacity is 8,000 req/sec (A+B or B+2C).

---

Q709.
MERN: [Docker][Hard][Product Company] Write a secure, optimized, multi-stage Dockerfile for a production Node.js Express server.
Hint: Multi-stage Dockerfiles reduce final image sizes and hide secrets.
```dockerfile
# Stage 1: Build dependencies
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
# Stage 2: Runtime image
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/src ./src
USER node
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "src/index.js"]
```

DSA: [DP][Medium][Google] 🔴 MUST DO — Unique Paths: find the number of possible unique paths from the top-left corner to the bottom-right corner of an M x N grid (can only move down or right).
Hint: 2D DP. Let `dp[i][j]` be the number of paths to cell `(i, j)`. Since you can only arrive from top or left, `dp[i][j] = dp[i-1][j] + dp[i][j-1]`. Fill first row and first column with 1. Optimize space to a 1D array of size N (representing the previous row). Time: O(M * N), Space: O(N).

Aptitude: [Data Interpretation][Hard] The following spider chart represents customer satisfaction scores (1-10) for 4 departments: Billing: Support=7, Sales=6, Tech=8, Admin=5; Support: Support=9, Sales=5, Tech=7, Admin=6; Quality: Support=8, Sales=8, Tech=9, Admin=7. Which department has the highest average score?
Hint: Average scores: Billing = (7+6+8+5)/4 = 6.5. Support = (9+5+7+6)/4 = 6.75. Quality = (8+8+9+7)/4 = 8.0. Quality department has the highest average.

---

Q710.
MERN: [Docker][Hard][Product Company] Write a `docker-compose.yml` file configuring React, Express, MongoDB, and Redis containers with persistent volumes, custom networks, and environment variables.
Hint:
```yaml
version: '3.8'
services:
  web:
    build: ./client
    ports: ["3000:3000"]
    networks: ["mern-net"]
  api:
    build: ./server
    ports: ["5000:5000"]
    environment:
      - MONGO_URI=mongodb://db:27107/app
      - REDIS_URL=redis://cache:6379
    networks: ["mern-net"]
    depends_on: ["db", "cache"]
  db:
    image: mongo:latest
    volumes: ["mongo-data:/data/db"]
    networks: ["mern-net"]
  cache:
    image: redis:alpine
    networks: ["mern-net"]
volumes:
  mongo-data:
networks:
  mern-net:
    driver: bridge
```

DSA: [DP][Medium][Google] 🔴 MUST DO — Unique Paths II: same as Unique Paths, but the grid contains obstacles (represented by '1'). You cannot walk on obstacles.
Hint: 2D DP. If `grid[i][j] == 1`, set `dp[i][j] = 0`. Else `dp[i][j] = dp[i-1][j] + dp[i][j-1]`. Handle base cases carefully: `dp[0][0] = 1` if `grid[0][0] == 0`, else 0. First row/col cells remain 0 if blocked, else inherit values from preceding cell. Time: O(M * N), Space: O(N).

Aptitude: [Decision Making][Hard] An company must choose a database backup strategy: Option 1: Hourly backups (high cost of $5k/mo, data loss limit 1hr). Option 2: Daily backups ($1k/mo, data loss limit 24hrs). A database failure occurs once a year on average, costing the company $10k per hour of lost data. Find the most economical option.
Hint: Annual cost Option 1 = $5k * 12 + ($10k * 0.5hr avg loss) = $60k + $5k = $65k. Annual cost Option 2 = $1k * 12 + ($10k * 12hr avg loss) = $12k + $120k = $132k. Hourly backups (Option 1) are more cost-effective.

---

Q711.
MERN: [Docker][Hard][Product Company] What are the differences between Docker named volumes, bind mounts, and anonymous volumes? When do you use each in a MERN project?
Hint: Named Volumes: managed by Docker, stored on host filesystem (best for database data persistence like MongoDB `/data/db`). Bind Mounts: maps arbitrary directory on host to container (best for local development, mounting server files to allow hot-reloading with Nodemon). Anonymous Volumes: automatically removed when container is deleted, useful for temporary cache files or preventing local `node_modules` from being overridden by bind mounts.

DSA: [DP][Medium][Amazon] 🔴 MUST DO — Minimum Path Sum: given a grid filled with non-negative numbers, find a path from top-left to bottom-right which minimizes the sum of all numbers along its path.
Hint: 2D DP. Let `dp[i][j]` represent the min path sum to cell `(i, j)`. Recurrence relation: `dp[i][j] = grid[i][j] + min(dp[i-1][j], dp[i][j-1])`. Base cases: fill first row and first column cumulatively. Space can be optimized to a 1D array of size N. Time: O(M * N), Space: O(N).

Aptitude: [Data Interpretation][Hard] Sales data of three laptops: Laptop X (Year 1: 50k, Y2: 60k), Laptop Y (Y1: 40k, Y2: 55k), Laptop Z (Y1: 30k, Y2: 45k). If profit per sale is X=$100, Y=$120, Z=$150, find the laptop that recorded the highest total profit growth between Year 1 and Year 2.
Hint: Profit growth: X = (60k - 50k) * 100 = $1.0M. Y = (55k - 40k) * 120 = $1.8M. Z = (45k - 30k) * 150 = $2.25M. Laptop Z has the highest profit growth.

---

Q712.
MERN: [Kubernetes][Hard][Product Company] Explain Kubernetes Pods, Deployments, Services, and Ingress. How do they work together to run a Node.js API?
Hint: Pod: basic execution unit hosting the Node.js container. Deployment: manages replicas of Pods, handling self-healing, rolling updates, and rollbacks. Service: acts as a load balancer providing a stable IP/DNS name to access Pod replicas internally. Ingress: configures routing rules (hostnames/paths) to direct external HTTP/HTTPS traffic to the internal Service.

DSA: [DP][Medium][Amazon] 🔴 MUST DO — Longest Common Subsequence (LCS): find the length of the longest common subsequence between two strings text1 and text2.
Hint: 2D DP on strings. Let `dp[i][j]` be LCS of `text1[0...i-1]` and `text2[0...j-1]`. If `text1[i-1] == text2[j-1]`, match found: `dp[i][j] = dp[i-1][j-1] + 1`. Else, take max of skipping a char: `dp[i][j] = max(dp[i-1][j], dp[i][j-1])`. Time: O(M * N), Space: O(M * N) which can be optimized to O(N).

Aptitude: [Decision Making][Hard] A company needs to hire: Option A (Hire 1 senior engineer at $120k/yr, productivity score 10). Option B (Hire 2 junior engineers at $60k/yr each, combined productivity score 8, requires 20% of current manager's time costing $15k/yr). Choose the optimal financial path.
Hint: Cost Option A = $120k. Cost Option B = 2 * $60k + $15k = $135k. Option A yields higher productivity (10 vs 8) at a lower total cost ($120k vs $132k). Choose Option A.

---

Q713.
MERN: [Kubernetes][Hard][Product Company] How do you handle database credentials and API secrets in a Kubernetes-deployed Express service?
Hint: Never hardcode secrets in source code or docker images. Save them as Kubernetes Secrets:
`kubectl create secret generic api-secrets --from-literal=MONGO_URI="mongodb://..."`
In the deployment YAML file, inject the secret into container environment variables using the `valueFrom.secretKeyRef` reference, allowing the Node.js application to access it via `process.env.MONGO_URI`.

DSA: [DP][Hard][Google] 🔴 MUST DO — Edit Distance (Levenshtein Distance): find the minimum number of operations (insert, delete, replace) required to convert string1 to string2.
Hint: 2D DP. Let `dp[i][j]` be the edit distance of `s1[0...i-1]` and `s2[0...j-1]`. If `s1[i-1] == s2[j-1]`, no operation: `dp[i][j] = dp[i-1][j-1]`. Else, take min of three operations + 1: `dp[i][j] = 1 + min(dp[i-1][j] (delete), dp[i][j-1] (insert), dp[i-1][j-1] (replace))`. Time: O(M * N), Space: O(M * N).

Aptitude: [Data Interpretation][Hard] Look at a table of production cost and selling price of 3 products: Prod A: Cost=50, Price=75; Prod B: Cost=80, Price=110; Prod C: Cost=120, Price=150. If Sales volume is A=1000, B=800, C=600, find the product with the highest total profit.
Hint: Profit per unit: A = 75 - 50 = 25; B = 110 - 80 = 30; C = 150 - 120 = 30. Total profit: A = 1000 * 25 = $25,000. B = 800 * 30 = $24,000. C = 600 * 30 = $18,000. Product A has the highest total profit.

---

Q714.
MERN: [Kubernetes][Hard][Product Company] Explain Kubernetes Liveness and Readiness Probes. How do you implement endpoint controllers in Express for these probes?
Hint: Liveness Probe: checks if the container is healthy; if it fails, K8s restarts it. Readiness Probe: checks if the container is ready to accept client traffic; if it fails, K8s removes it from the service load balancer. Express implementation:
`app.get('/healthz', (req, res) => res.sendStatus(200));` // Liveness
`app.get('/ready', async (req, res) => { const dbConnected = mongoose.connection.readyState === 1; dbConnected ? res.sendStatus(200) : res.sendStatus(500); });` // Readiness

DSA: [DP][Medium-Hard][Amazon] 🔴 MUST DO — 0/1 Knapsack Problem: given weights and values of N items, put these items in a knapsack of capacity W to get the maximum total value.
Hint: 2D DP. Let `dp[i][w]` be the max value with first `i` items and capacity `w`. If `weight[i-1] <= w`, we can either choose or skip: `dp[i][w] = max(value[i-1] + dp[i-1][w - weight[i-1]], dp[i-1][w])`. Else, skip: `dp[i][w] = dp[i-1][w]`. Optimize space to 1D array of size W by traversing backwards. Time: O(N * W), Space: O(W).

Aptitude: [Decision Making][Hard] A firm needs to choose a logistics provider. Provider A: base rate $200/shipment, delivery speed 3 days, reliability 99%. Provider B: base rate $150/shipment, delivery speed 5 days, reliability 90%. If late deliveries cost the firm $500 each, choose the provider for 100 shipments.
Hint: Expected Cost Provider A = 100 * $200 + (100 * 1% delay * $500) = $20,000 + $500 = $20,500. Expected Cost Provider B = 100 * $150 + (100 * 10% delay * $500) = $15,000 + $5,000 = $20,000. Provider B is still cheaper overall.

---

Q715.
MERN: [Kubernetes][Hard][Product Company] How do you configure Horizontal Pod Autoscaling (HPA) for an Express application running in a Kubernetes cluster?
Hint: HPA automatically scales replica counts based on target metrics (e.g., CPU/Memory utilization). First, ensure the Kubernetes Metrics Server is running. In your deployment spec, define resource requests and limits. Then create the HPA resource:
`kubectl autoscale deployment mern-api --cpu-percent=80 --min=2 --max=10`
K8s will scale the deployment between 2 and 10 pods to keep average CPU utilization at 80%.

DSA: [DP][Medium-Hard][Amazon] 🟡 HIGH FREQUENCY — Partition Equal Subset Sum: determine if a given non-empty array containing positive integers can be partitioned into two subsets such that the sum of elements in both subsets is equal.
Hint: Knapsack variant. Calculate total array sum. If odd, return false. Target sum is `totalSum / 2`. Let `dp[i]` be a boolean indicating if a subset sum of `i` is possible. Initialize `dp` of size `target + 1` to `false`, with `dp[0] = true`. For each number in the array, loop backwards from `target` to `number`, updating `dp[i] = dp[i] || dp[i - number]`. Time: O(N * target), Space: O(target).

Aptitude: [Data Interpretation][Hard] The line graph shows the percentage growth of three cities over 3 years. Y1: City A=10%, B=12%, C=8%; Y2: A=8%, B=10%, C=12%; Y3: A=12%, B=8%, C=10%. If all had a population of 100,000 at start, which city had the highest population at the end of Year 3?
Hint: Multiplicative factors: City A: 1.1 * 1.08 * 1.12 = 1.33056. City B: 1.12 * 1.1 * 1.08 = 1.33056. City C: 1.08 * 1.12 * 1.1 = 1.33056. All three cities have the exact same population at the end of Year 3.

---

Q716.
MERN: [CI/CD][Medium-Hard][Product Company] Create a complete GitHub Actions CI/CD workflow that runs tests, builds a Docker image, and pushes it to Docker Hub upon merges to main.
Hint:
```yaml
name: CI/CD Pipeline
on:
  push:
    branches: [main]
jobs:
  build-and-test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Install & Test
        run: |
          npm ci
          npm test
      - name: Login to Docker Hub
        uses: docker/login-action@v2
        with:
          username: ${{ secrets.DOCKER_USER }}
          password: ${{ secrets.DOCKER_PASS }}
      - name: Build & Push
        uses: docker/build-push-action@v4
        with:
          context: .
          push: true
          tags: user/mern-api:latest
```

DSA: [DP][Medium-Hard][Amazon] 🟡 HIGH FREQUENCY — Target Sum: find the number of ways to assign symbols '+' and '-' to array integers to make the sum of integers equal to target.
Hint: DP / subset sum. Let the sum of positive symbols be P and negative symbols be N. We know `P - N = target` and `P + N = totalSum`. Adding both gives `2P = target + totalSum` → `P = (target + totalSum) / 2`. If `target + totalSum` is odd or negative, return 0. The problem reduces to finding the number of subsets with sum `P` (standard 0/1 knapsack count). Time: O(N * P), Space: O(P).

Aptitude: [Decision Making][Hard] A critical security patch must be applied to database servers. Option A: Apply immediately during peak hours (potential downtime 30 mins, risk of transaction loss 5%). Option B: Wait 6 hours for off-peak maintenance window (risk of breach during wait estimated at 1%). Choose the optimal action.
Hint: Cost of 30 mins peak downtime + 5% transaction loss is extremely high compared to a 1% probability of breach in a 6-hour window. Wait for the maintenance window (Option B), while setting up temporary firewalls/waf blocks.

---

Q717.
MERN: [Serverless][Hard][Product Company] What are Serverless cold starts? How do you optimize a Node.js Express serverless API (e.g. on AWS Lambda) to minimize cold start latency?
Hint: Cold starts happen when a serverless platform initializes a new container instance to handle a request. To optimize: 1) Keep package bundle sizes minimal by tree-shaking and minifying dependencies. 2) Move database connections outside the handler function so they are reused across warm invocations. 3) Avoid large monolithic framework wrappers; write small, single-purpose functions instead.

DSA: [DP][Hard][Google] 🔴 MUST DO — Matrix Chain Multiplication (MCM): find the most efficient way to multiply a chain of matrices (minimize scalar multiplications).
Hint: Partition DP. Let `dp[i][j]` be the min operations to multiply matrices from `i` to `j`. Recurrence: `dp[i][j] = min(dp[i][k] + dp[k+1][j] + p[i-1]*p[k]*p[j])` for all `k` from `i` to `j-1`. Base case: `dp[i][i] = 0`. Compute values bottom-up by increasing length of chains. Time: O(N³), Space: O(N²).

Aptitude: [Data Interpretation][Hard] The following multi-axis bar chart details revenue and overheads ($k) of 4 branches: Branch A: Rev=120, Over=80; Branch B: Rev=150, Over=110; Branch C: Rev=90, Over=50; Branch D: Rev=200, Over=160. Which branch has the highest profit margin percentage?
Hint: Profit = Rev - Over. Margin % = (Profit / Rev) * 100. A: 40/120 = 33.3%. B: 40/150 = 26.7%. C: 40/90 = 44.4%. D: 40/200 = 20%. Branch C has the highest profit margin percentage.

---

Q718.
MERN: [Database][Hard][Product Company] Explain Database Sharding vs Replication in MongoDB. When should a scaling MERN application transition from replica sets to sharded clusters?
Hint: Replication copies data across multiple servers (Replica Sets) to provide high availability and load-balance read operations. Sharding partitions data subsets across multiple servers (Sharded Clusters) to distribute write operations and storage capacity. Transition to sharding when write traffic saturates the primary database node, or the dataset size exceeds the memory limit of a single server.

DSA: [DP][Hard][Google] 🔴 MUST DO — Burst Balloons: given an array representing numbers on balloons, find the maximum coins you can collect by bursting them wisely (bursting i gives `nums[i-1] * nums[i] * nums[i+1]` coins).
Hint: Interval DP. Let `dp[i][j]` be the max coins collected by bursting all balloons between indices `i` and `j` (exclusive of `i` and `j`). Assume we burst balloon `k` (where `i < k < j`) last in this range. Recurrence: `dp[i][j] = max(dp[i][j], dp[i][k] + dp[k][j] + nums[i]*nums[k]*nums[j])`. Run DP for increasing interval lengths. Time: O(N³), Space: O(N²).

Aptitude: [Decision Making][Hard] A startup needs to choose an email API provider: Provider X: free tier up to 10k emails/mo, then $0.001/email. Provider Y: flat $20/mo for up to 50k emails, then $0.0005/email. If the startup projects sending 25k emails next month, choose the provider.
Hint: Cost X = (25,000 - 10,000) * 0.001 = $15. Cost Y = $20 flat. Choose Provider X.

---

Q719.
MERN: [Database][Hard][FAANG-Level] How do you handle eventual consistency in a distributed MERN microservices architecture when inventory updates lag behind purchase requests?
Hint: Distributed systems choose availability over consistency (CAP theorem). Use asynchronous events via a broker (Kafka/RabbitMQ) to update inventory. To handle lagging reads, implement optimistic UI state updates on the client, or write to a distributed cache (Redis) immediately upon purchase, forcing clients to check Redis cache before verifying against backend services.

DSA: [DP][Medium-Hard][Google] 🟡 HIGH FREQUENCY — Longest Palindromic Subsequence: find the length of the longest palindromic subsequence in a given string.
Hint: LCS variant. Reverse the string `s` to get `r`. The longest palindromic subsequence of `s` is simply the Longest Common Subsequence (LCS) between `s` and `r`. Alternatively, use 2D DP directly: `dp[i][j]` is LPS length of `s[i...j]`. If `s[i] == s[j]`, `dp[i][j] = dp[i+1][j-1] + 2`, else `max(dp[i+1][j], dp[i][j-1])`. Time: O(N²), Space: O(N²).

Aptitude: [Data Interpretation][Hard] Below is a table displaying passenger counts of three train routes over two years: Route A: Year 1 = 120k, Y2 = 138k; Route B: Y1 = 150k, Y2 = 165k; Route C: Y1 = 90k, Y2 = 108k. Find the route with the highest rate of passenger growth.
Hint: Growth rates: Route A = (18k / 120k) * 100 = 15%. Route B = (15k / 150k) * 100 = 10%. Route C = (18k / 90k) * 100 = 20%. Route C has the highest growth rate.

---

Q720.
MERN: [Caching][Hard][Product Company] What is the Redlock algorithm? How do you implement a distributed lock in Node.js using Redis to prevent race conditions on inventory checks?
Hint: Redlock is a distributed lock algorithm proposed by Redis's author. The client acquires the lock by setting a key with a unique random value and TTL across N independent Redis master nodes. If it acquires the lock on the majority of nodes within the lock timeout, the lock is held. In Node.js, use `redlock` package:
`const lock = await redlock.acquire(['locks:item:123'], 5000); try { /* process order */ } finally { await lock.release(); }`

DSA: [DP][Hard][Google] Interleaving String: determine if string3 can be formed by interleaving string1 and string2, preserving relative order of characters of each.
Hint: 2D DP. Let `dp[i][j]` be a boolean indicating if `s3[0...i+j-1]` can be formed by interleaving `s1[0...i-1]` and `s2[0...j-1]`. If `s1[i-1] == s3[i+j-1]`, `dp[i][j] = dp[i][j] || dp[i-1][j]`. If `s2[j-1] == s3[i+j-1]`, `dp[i][j] = dp[i][j] || dp[i][j-1]`. Base cases: `dp[0][0] = true`. Time: O(M * N), Space: O(N) if space-optimized.

Aptitude: [Decision Making][Hard] Product launch delay: Delaying launch costs $10,000/week in office overheads. Launching with known bugs causes an estimated customer churn cost of $30,000. If fixing the bugs takes 2 weeks, which option is most economical?
Hint: Cost to delay launch 2 weeks = 2 * $10,000 = $20,000. Cost of churning customer = $30,000. Delaying the launch to fix bugs is more economical (saves $10,000).

---

Q721.
MERN: [Logging][Hard][Product Company] How do you design a centralized logging architecture for MERN stack microservices? Compare local logs vs ELK Stack vs Sentry.
Hint: Local console logs (Winston/Pino) are lost on server restarts and impossible to search across replicas. ELK (Elasticsearch, Logstash, Kibana) collects log streams from files or standard outputs, indexing them for querying and centralized dashboard analysis. Sentry focuses on application exceptions and stack traces (crash reporting), alerting developers automatically. Best practice: pipe Winston JSON logs to stdout, which is collected by Logstash/Fluentd, while sending uncaught errors to Sentry.

DSA: [DP][Hard][Google] Distinct Subsequences: given two strings S and T, return the number of distinct subsequences of S which equal T.
Hint: 2D DP. Let `dp[i][j]` be the number of distinct subsequences of `S[0...i-1]` that match `T[0...j-1]`. If `S[i-1] == T[j-1]`, we can either match or skip `S[i-1]`: `dp[i][j] = dp[i-1][j-1] + dp[i-1][j]`. Else, we must skip `S[i-1]`: `dp[i][j] = dp[i-1][j]`. Base case: `dp[i][0] = 1`. Time: O(M * N), Space: O(N).

Aptitude: [Data Interpretation][Hard] Production output (units) of 3 factories over 3 years: Fact A: Y1=10k, Y2=12k, Y3=15k; Fact B: Y1=8k, Y2=11k, Y3=13k; Fact C: Y1=12k, Y2=14k, Y3=16k. Which factory has the highest average annual growth volume?
Hint: Growth volumes: Fact A: Y1→Y2=2k, Y2→Y3=3k, Avg = 2.5k. Fact B: Y1→Y2=3k, Y2→Y3=2k, Avg = 2.5k. Fact C: Y1→Y2=2k, Y2→Y3=2k, Avg = 2.0k. Factory A and B are tied with the highest average annual growth volume.

---

Q722.
MERN: [Monitoring][Hard][Product Company] How do you instrument a Node.js Express server to expose system metrics for Prometheus? How do you visualize them in Grafana?
Hint: Use the `prom-client` package. Define a `/metrics` route in Express exposing default and custom metrics (e.g. HTTP request durations, active DB connection count). Prometheus pulls from this endpoint at regular intervals. In Grafana, configure Prometheus as a data source and import standard Node.js dashboard layouts to visualize request rate, error rate, memory usage, and CPU load.

DSA: [DP][Medium-Hard][Amazon] 🟡 HIGH FREQUENCY — Best Time to Buy and Sell Stock with Cooldown: find the maximum profit you can achieve with transactions, but you cannot buy on the day after you sell (1-day cooldown).
Hint: State Machine DP. We have 3 states: `buy` (can buy), `sell` (can sell), `cooldown` (rest). Let `buy[i]` be max profit ending at day `i` with a stock held, `sell[i]` with no stock held (having sold today), and `cooldown[i]` with no stock held (in cooldown/rest). Recurrence:
`buy[i] = max(buy[i-1], cooldown[i-1] - prices[i])`
`sell[i] = buy[i-1] + prices[i]`
`cooldown[i] = max(cooldown[i-1], sell[i-1])`
Time: O(N), Space: O(1) by using variables.

Aptitude: [Decision Making][Hard] Project selection: Project Alpha: Net Present Value (NPV) $50k, payback period 2 years. Project Beta: NPV $70k, payback period 4 years. If the company requires projects to have a payback period of under 3 years, choose the project.
Hint: Alpha fits the payback criterion of < 3 years (2 years), while Beta does not (4 years). Therefore, even though Beta has a higher NPV, the company must select Project Alpha.

---

Q723.
MERN: [Error Tracking][Medium-Hard][Product Company] Show how to integrate Sentry exception handling in both a React client application and an Express backend.
Hint: React: wrap the root component with `Sentry.ErrorBoundary` and initialize Sentry with DSN configuration in entry point (`index.js`). Node/Express: initialize Sentry at the very top of your application file, add `Sentry.Handlers.requestHandler()` as the first middleware, and `Sentry.Handlers.errorHandler()` as the last middleware (after all route handlers but before custom error routers).

DSA: [DP][Hard][Google] Best Time to Buy and Sell Stock III: find the maximum profit you can achieve with at most two transactions.
Hint: State DP or constant state tracking. Track 4 variables: `buy1` (min price of first stock), `profit1` (max profit from first transaction), `buy2` (min price of second stock after subtracting profit1), `profit2` (max profit overall). For each price:
`buy1 = min(buy1, price)`
`profit1 = max(profit1, price - buy1)`
`buy2 = min(buy2, price - profit1)`
`profit2 = max(profit2, price - buy2)`
Time: O(N), Space: O(1).

Aptitude: [Data Interpretation][Hard] Quarterly energy consumption (kWh) of 3 branches: Br A: Q1=5000, Q2=5500, Q3=6000, Q4=5200; Br B: Q1=4000, Q2=4200, Q3=4500, Q4=4800; Br C: Q1=6000, Q2=6100, Q3=6200, Q4=6300. Which branch shows the most consistent consumption pattern (lowest range)?
Hint: Ranges (Max - Min): Br A: 6000 - 5000 = 1000. Br B: 4800 - 4000 = 800. Br C: 6300 - 6000 = 300. Branch C is the most consistent.

---

Q724.
MERN: [Performance][Medium-Hard][Product Company] What are the differences between Code Splitting and Element Virtualization in optimizing React bundle sizes and rendering speeds?
Hint: Code Splitting: splits the JS bundle into smaller files using dynamic imports (`React.lazy`, `Suspense`), deferring loading of non-critical routes until they are accessed, reducing initial page load time. Element Virtualization: renders only the small subset of rows visible inside the window container, swapping DOM nodes dynamically as the user scrolls, reducing browser memory usage on extremely large tables/lists.

DSA: [DP][Hard][Google] Best Time to Buy and Sell Stock IV: find the maximum profit you can achieve with at most K transactions.
Hint: Let `dp[i][j]` be the max profit up to day `j` with at most `i` transactions. Recurrence: `dp[i][j] = max(dp[i][j-1], prices[j] + maxDiff)` where `maxDiff = max(maxDiff, dp[i-1][j] - prices[j])` (representing buying stock on some day `j` after previous profits). Time: O(K * N), Space: O(K * N) or O(N).

Aptitude: [Decision Making][Hard] Choosing cloud infrastructure: Provider A: $100/mo base + $0.05/GB database transfer. Provider B: $150/mo base (includes 2TB transfer), then $0.01/GB. If your application database handles 1.5TB (1500GB) transfer a month, choose the cheaper provider.
Hint: Cost Provider A = $100 + (1500 * $0.05) = $100 + $75 = $175. Cost Provider B = $150 base. Provider B is cheaper.

---

Q725.
MERN: [SSR/Next.js][Medium-Hard][Product Company] Explain the hydration process in Server-Side Rendered (SSR) React/Next.js applications. What causes "Hydration Mismatch" errors?
Hint: Hydration is the process where the browser takes the server-rendered HTML markup and attaches event listeners, binding the interactive JavaScript application state to the static elements. Hydration Mismatch happens when the rendered HTML from the client React application differs from the static HTML sent by the server (e.g. rendering dynamic dates, `window` checks, or using invalid nesting elements like `<p><div>...</div></p>`).

DSA: [DP][Medium-Hard][Google] Maximal Square: given a 2D binary matrix filled with '0's and '1's, find the largest square containing only '1's and return its area.
Hint: 2D DP. Let `dp[i][j]` be the side length of the largest square ending at cell `(i, j)`. If `matrix[i][j] == '1'`, `dp[i][j] = 1 + min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1])`. Keep track of the max side length found. Return `maxSide * maxSide`. Time: O(M * N), Space: O(M * N) which can be optimized to O(N).

Aptitude: [Data Interpretation][Hard] In a company of 600 employees, 320 are in tech, 150 are in sales, and 130 are in admin. The percentage of females in these departments is: Tech: 25%, Sales: 40%, Admin: 60%. Find the total number of female employees in the company.
Hint: Tech females: 320 * 0.25 = 80. Sales females: 150 * 0.40 = 60. Admin females: 130 * 0.60 = 78. Total females = 80 + 60 + 78 = 218.

---

Q726.
MERN: [SSR/Next.js][Medium-Hard][Product Company] What is Next.js Incremental Static Regeneration (ISR)? How does it combine the benefits of static sites (SSG) with dynamic database rendering?
Hint: ISR allows developers to regenerate static pages in the background without rebuilds. Define a `revalidate` interval (in seconds) in `getStaticProps`. When a request arrives after the interval, Next.js serves the cached static page but triggers a background rebuild. Once built, the cache updates to serve the new page. Enables millisecond response times while keeping pages updated.

DSA: [DP][Medium][Google] Perfect Squares: find the least number of perfect square numbers (e.g., 1, 4, 9, 16, ...) that sum to N.
Hint: 1D DP. Let `dp[i]` be the min number of perfect squares that sum to `i`. Initialize `dp` of size `N+1` to `infinity`, with `dp[0] = 0`. For each `i` from 1 to `N`, and each `j` such that `j*j <= i`, update `dp[i] = min(dp[i], dp[i - j*j] + 1)`. Time: O(N * √N), Space: O(N).

Aptitude: [Decision Making][Hard] Team scheduling: Tech project takes 100 hours. Engineer A costs $50/hr, works 20 hrs/week. Engineer B costs $30/hr, works 40 hrs/week. If you must complete the project in 2 weeks, find the cheapest staffing allocation.
Hint: In 2 weeks: A can work max 40 hrs; B can work max 80 hrs. We need 100 hours total. Staffing choices: 1) B works 80 hrs ($2400) + A works 20 hrs ($1000) = $3400. 2) A works 40 hrs ($2000) + B works 60 hrs ($1800) = $3800. Option 1 is the cheapest allocation.

---

Q727.
MERN: [Security][Medium-Hard][Product Company] How do you implement a Sliding Window Counter rate limiter in Node.js using Redis sorted sets (ZSET)?
Hint: Identify users by IP or API Key. When a request arrives: 1) Remove elements in Redis ZSET older than current time - window limit using `ZREMRANGEBYSCORE`. 2) Count total members in ZSET using `ZCARD`. 3) If count < limit, add current timestamp using `ZADD` and allow request. Else, reject. Keeps rate limits highly accurate even on boundary edges.

DSA: [DP][Medium] Integer Break: given an integer N, break it into the sum of K positive integers (K >= 2) that maximize their product, returning the product.
Hint: 1D DP. Let `dp[i]` be the max product for number `i`. For each `i` from 2 to `N`, and each `j` from 1 to `i-1`, update `dp[i] = max(dp[i], j * (i - j), j * dp[i - j])`. Alternatively, math observation: divide the number into as many 3s as possible, and the rest into 2s. Time: O(N²), Space: O(N).

Aptitude: [Data Interpretation][Hard] The radar chart shows efficiency ratings of 4 employees across 3 skills (Coding, Design, Communication - scaled 1-5): Emp A: Cod=5, Des=3, Com=4; Emp B: Cod=4, Des=4, Com=3; Emp C: Cod=3, Des=5, Com=4; Emp D: Cod=4, Des=3, Com=5. Which employee has the highest aggregate rating?
Hint: Sum ratings: Emp A = 12. Emp B = 11. Emp C = 12. Emp D = 12. A, C, and D are tied with the highest aggregate rating of 12.

---

Q728.
MERN: [Security][Medium-Hard][Product Company] What is Content Security Policy (CSP)? How do you configure Helmet.js in Express to prevent XSS and clickjacking?
Hint: CSP restricts resource locations (scripts, images, stylesheets) browsers are allowed to load. Set CSP headers in Express using Helmet middleware:
`app.use(helmet.contentSecurityPolicy({ directives: { defaultSrc: ["'self'"], scriptSrc: ["'self'", "trusted-cdn.com"] } }));`
Prevents execution of inline scripts (combating XSS) and sets `X-Frame-Options` to `DENY` or `SAMEORIGIN` (combating clickjacking).

DSA: [DP][Medium][Google] Combination Sum IV: given an array of distinct integers, find the number of possible combinations (permutations) that add up to a target integer.
Hint: 1D DP. Let `dp[i]` be the number of combinations that sum to `i`. Initialize `dp` of size `target+1` with 0, and `dp[0] = 1`. For each `i` from 1 to `target`, and each `num` in the array, if `i >= num`, update `dp[i] += dp[i - num]`. Time: O(N * target), Space: O(target).

Aptitude: [Decision Making][Hard] Server consolidation decision: If you migrate 10 small databases (costing $200/mo each) to 2 large databases (costing $800/mo each), but need a migration specialist for a one-time fee of $1,000, find the break-even point in months.
Hint: Original monthly cost = 10 * $200 = $2,000. New monthly cost = 2 * $800 = $1,600. Monthly savings = $2,000 - $1,600 = $400. One-time migration cost = $1,000. Break-even point = $1,000 / $400 = 2.5 months.

---

Q729.
MERN: [Security][Medium-Hard][Product Company] How do you secure data-at-rest in a MongoDB database? Explain how to implement Field-Level Encryption in Node.js.
Hint: Data-at-rest encryption can be enabled on the storage engine level (MongoDB Enterprise WiredTiger encryption). For sensitive fields (e.g. passwords, SSN), implement field-level client-side encryption. Use the `crypto` library in Node to encrypt fields with AES-256-CBC before saving:
`const cipher = crypto.createCipheriv('aes-256-cbc', key, iv); let encrypted = cipher.update(ssn, 'utf8', 'hex') + cipher.final('hex');`

DSA: [DP][Medium-Hard][Google] Ones and Zeroes: given a list of binary strings, find the maximum number of strings you can form with at most m 0s and n 1s.
Hint: 2D Knapsack DP. Let `dp[i][j]` be the max strings formed with `i` zeros and `j` ones. Initialize 2D array of size `(m+1)*(n+1)` with 0. For each binary string, count its zeros and ones. Loop backwards from `m` down to `zeros` and `n` down to `ones`, updating `dp[i][j] = max(dp[i][j], dp[i - zeros][j - ones] + 1)`. Time: O(Strings * m * n), Space: O(m * n).

Aptitude: [Data Interpretation][Hard] Average ticket response times (mins) of 3 agents: Agent A (Q1: 15, Q2: 12), Agent B (Q1: 10, Q2: 14), Agent C (Q1: 18, Q2: 11). If total tickets processed are Agent A=200, B=300, C=150 in Q1 and Agent A=250, B=200, C=300 in Q2, find the weighted average response time of all agents combined in Q2.
Hint: In Q2, total response times weight = (250*12) + (200*14) + (300*11) = 3000 + 2800 + 3300 = 9100 mins. Total tickets in Q2 = 250 + 200 + 300 = 750. Weighted average = 9100 / 750 = 12.13 mins.

---

Q730.
MERN: [Security][Medium-Hard][Product Company] Explain how Session Hijacking occurs. How do you implement stateless token protection using Double-Submit Cookie pattern?
Hint: Session hijacking happens when attackers steal session identifiers (via XSS or network sniffing). Double-Submit Cookie: client generates a random CSRF token value, stores it in a cookie (non-HTTPOnly, SameSite=Lax), and sends it inside a custom request header (e.g. `X-CSRF-Token`) on modifying queries. The server validates that the value in the cookie matches the value in the request header.

DSA: [DP][Medium][Google] Coin Change II: given coins of different denominations and a total amount, return the number of combinations that make up that amount.
Hint: Unbounded Knapsack DP (combinations count). Let `dp[i]` be the number of ways to make amount `i`. Initialize `dp` of size `amount + 1` with 0, and `dp[0] = 1`. For each coin, and for each `i` from `coin` to `amount`, update `dp[i] += dp[i - coin]`. Time: O(N * amount), Space: O(amount).

Aptitude: [Decision Making][Hard] An application is bottlenecked by database writes. Solution X: implement write-behind caching with Redis (risk of 2% data loss on crash, performance increases 5x). Solution Y: scale MongoDB cluster via sharding (no data loss risk, cost $1,500/mo, performance increases 3x). If data integrity is critical, choose the option.
Hint: Since data integrity is stated as critical, any option with a risk of data loss (Solution X) is unacceptable. Select Solution Y (MongoDB sharding) despite the cost.

---

Q731.
MERN: [OAuth2][Hard][Product Company] Explain the OAuth 2.0 Client Credentials Grant and Authorization Code Grant with PKCE. When is each flow utilized in MERN?
Hint: Client Credentials Flow: machine-to-machine; a microservice authenticates directly with an identity server using its client ID and secret (no user involvement). Auth Code Flow with PKCE: frontend SPAs authenticate users; the SPA requests an auth code using a dynamic challenge, and exchanges it on the backend for tokens, securing communication without client secrets in the browser.

DSA: [DP][Medium][Google] Triangle: given a triangle array, return the minimum path sum from top to bottom (can only move to adjacent numbers on the row below).
Hint: 2D DP. Start from the second-to-last row of the triangle and move upwards. For each cell `(i, j)`, update its value to `triangle[i][j] = triangle[i][j] + min(triangle[i+1][j], triangle[i+1][j+1])`. The result will end up at the root element `triangle[0][0]`. Time: O(N²), Space: O(1) if modifying input.

Aptitude: [Data Interpretation][Hard] The table below shows the distribution of visitors to an online forum: Age 18-25: 40% (60% active), Age 26-35: 35% (50% active), Age 36+: 25% (40% active). If the total number of forum visitors is 10,000, find the total number of active users.
Hint: Active users by age group: 18-25: 4,000 * 0.60 = 2,400. 26-35: 3,500 * 0.50 = 1,750. 36+: 2,500 * 0.40 = 1,000. Total active = 2,400 + 1,750 + 1,000 = 5,150.

---

Q732.
MERN: [OAuth2][Hard][Product Company] What are the differences between SAML and OIDC (OpenID Connect)? How do you integrate OIDC inside a MERN project for Enterprise SSO?
Hint: SAML: XML-based, heavy, standard for legacy enterprise systems. OIDC: JSON/REST-based profile built on top of OAuth 2.0, lightweight, uses JWT ID tokens. To integrate OIDC in MERN, configure an identity provider (e.g. Okta, Auth0). Use `openid-client` in Node.js to handle authorization code flow redirect handshakes, validate ID tokens, and establish user sessions.

DSA: [DP][Medium] Minimum Falling Path Sum: given an n x n grid of integers, return the minimum sum of any falling path (can fall to bottom-left, directly below, or bottom-right).
Hint: 2D DP. For each row from 1 to `N-1`, and each column `j` from 0 to `N-1`, update `grid[i][j] += min(grid[i-1][j-1], grid[i-1][j], grid[i-1][j+1])` (handling boundaries). Return the minimum value in the last row. Time: O(N²), Space: O(1) if modifying input.

Aptitude: [Decision Making][Hard] Office rental choice: Space A: $3,000/mo, covers utilities, holds 30 employees. Space B: $2,500/mo, utilities cost $400/mo, holds 25 employees. If the firm has 28 employees, choose the best space.
Hint: Space B cannot accommodate 28 employees (limit 25). Thus, the firm must select Space A, regardless of cost.

---

Q733.
MERN: [Performance][Medium-Hard][Product Company] How do CDN Cache-Control headers (e.g. `s-maxage`, `stale-while-revalidate`) optimize static resource loading for React applications?
Hint: `s-maxage`: tells shared CDN caches how long to store assets (ignores browser caches). `stale-while-revalidate`: instructs CDNs to serve a stale cached asset immediately while asynchronously fetching the updated version from origin in the background. Drastically reduces network latency and initial paint times.

DSA: [DP][Hard][Google] Dungeon Game: given a grid of health modifiers (positive/negative), find the knight's minimum initial health required to reach the bottom-right corner (must keep health > 0).
Hint: 2D Grid DP (bottom-up). Start from the destination cell `(M-1, N-1)`. Let `dp[i][j]` be the min health needed when entering cell `(i, j)`. Recurrence: `dp[i][j] = max(1, min(dp[i+1][j], dp[i][j+1]) - grid[i][j])`. Solve backwards to `dp[0][0]`. Time: O(M * N), Space: O(M * N) or O(N).

Aptitude: [Data Interpretation][Hard] The following bar chart shows monthly customer signups of two plans: Premium (Jan: 500, Feb: 600, Mar: 700), Basic (Jan: 1500, Feb: 1400, Mar: 1200). If Premium costs $50/mo and Basic costs $10/mo, calculate the revenue change between January and March.
Hint: Jan revenue = (500 * 50) + (1500 * 10) = 25,000 + 15,000 = $40,000. Mar revenue = (700 * 50) + (1200 * 10) = 35,000 + 12,000 = $47,000. Revenue increase = $47,000 - $40,000 = $7,000.

---

Q734.
MERN: [Database][Hard][Product Company] How does MongoDB connection pooling work? How do you configure mongoose connection limits for scale?
Hint: Mongoose reuses database connections using pools. Set `maxPoolSize` inside your connection parameters (default is 100):
`mongoose.connect(uri, { maxPoolSize: 50 });`
Avoid configuring excessively high pool limits in serverless functions (like AWS Lambda) because concurrent invocations can quickly saturate MongoDB's overall connection limits.

DSA: [DP][Hard][Google] Cherry Pickup: given an N x N grid of cells (0=empty, 1=cherry, -1=obstacle), find the max cherries you can collect by going from (0,0) to (N-1,N-1) and returning to (0,0).
Hint: DP on 3D/4D state. Going forward and backward is equivalent to two paths going from (0,0) to (N-1,N-1) simultaneously. Let `dp[r1][c1][r2]` represent the max cherries collected by path 1 at `(r1, c1)` and path 2 at `(r2, c2)` where `c2 = r1 + c1 - r2`. Transition from 4 possible previous step combinations. Time: O(N³), Space: O(N³).

Aptitude: [Decision Making][Hard] Remote work transition: Transitioning to remote work saves $5,000/mo in utilities. However, you must pay a home-office stipend of $100/mo to all 40 employees. Determine if remote work transition is financially viable.
Hint: Stipend cost = 40 * $100 = $4,000/mo. Utility savings = $5,000/mo. Net monthly savings = $5,000 - $4,000 = $1,000/mo. The transition is financially viable.

---

Q735.
MERN: [Performance][Hard][Product Company] How do you identify memory leaks in Node.js applications? Explain how to capture heap dumps and analyze them using Chrome DevTools.
Hint: Run Node with inspection flags: `node --inspect index.js`. Open Chrome DevTools and connect to the Node process. Capture a heap snapshot. Run load tests to trigger memory growth. Capture a second heap snapshot. Compare the snapshots using the "Comparison" view to locate objects that were allocated but not garbage-collected (commonly closures, event listeners, or global cache objects).

DSA: [DP][Medium-Hard][Amazon] 🟡 HIGH FREQUENCY — Paint House: given cost matrix to paint N houses in 3 colors (Red, Blue, Green) where adjacent houses cannot be the same color, find the min cost.
Hint: 2D DP. Let `dp[i][j]` be the min cost to paint house `i` with color `j` (0, 1, or 2). Recurrence: `dp[i][0] = cost[i][0] + min(dp[i-1][1], dp[i-1][2])`. Similarly for colors 1 and 2. Time: O(N), Space: O(1) if optimized.

Aptitude: [Data Interpretation][Hard] The table displays quarterly product sales units: Item A: Q1=1000, Q2=1200; Item B: Q1=800, Q2=1000; Item C: Q1=1500, Q2=1400. If Q1 unit price was $10 for all, and in Q2 price of Item C decreased to $8 while others remained $10, find the quarterly revenue change.
Hint: Q1 Revenue = (1000 + 800 + 1500) * 10 = $33,000. Q2 Revenue = (1200 * 10) + (1000 * 10) + (1400 * 8) = 12,000 + 10,000 + 11,200 = $33,200. Revenue increase = $33,200 - $33,000 = $200.

---

Q736.
MERN: [Performance][Hard][Product Company] Explain how the V8 engine manages memory (Young Generation vs Old Generation heap space). How does GC impact API endpoint response times?
Hint: Young Generation (Scavenge GC): stores short-lived allocations, fast, frequent. Old Generation (Mark-Sweep-Compact GC): stores long-lived data, slower, runs less frequently. If heap sizes grow too large, garbage collection blocks the single thread (Stop-The-World phase), introducing latency spikes and causing timeouts on Express server endpoints.

DSA: [DP][Hard][Google] Paint House II: same as Paint House, but you have K colors instead of 3.
Hint: Let `dp[i][j]` be min cost to paint house `i` with color `j`. Recurrence: `dp[i][j] = cost[i][j] + min(dp[i-1][c])` for all `c != j`. To optimize to O(N * K) time, maintain the minimum and second minimum cost values from the previous house, avoiding the nested scan. Time: O(N * K), Space: O(K).

Aptitude: [Decision Making][Hard] You must choose a software framework: Option A: Custom build (takes 12 weeks, costs $60k, zero annual license). Option B: Ready-made SaaS (implementation 2 weeks costing $10k, annual fee of $12k). Find the time period (years) after which Option A becomes cheaper.
Hint: Initial savings Option B = $60k - $10k = $50k. Ongoing cost Option B = $12k/yr. Time to break even = $50k / $12k = 4.17 years. Option A becomes cheaper after 4.17 years.

---

Q737.
MERN: [GraphQL][Hard][Product Company] What is Apollo Federation? How does it differ from Schema Stitching, and how does a Gateway compile subgraphs?
Hint: Federation is a declarative, microservices-oriented GraphQL architecture. Subgraphs declare their own types and extend federated entities (using `@key` directives). The Gateway (Apollo Router) fetches subgraphs, compiles them into a unified supergraph schema, and queries downstream services in parallel, resolving entity associations automatically.

DSA: [DP][Hard][Google] Decode Ways II: given a string containing digits and '*' characters (where '*' can represent any digit 1-9), find the number of ways to decode it.
Hint: Decode Ways variant. Need to handle multiplier factors: if `s[i-1] == '*'`, it has 9 single-character decode choices. For double-character decoding, handle combinations of `*` (e.g. `**` can represent 11-19 and 21-26, which is 15 possibilities). Modulo 10^9 + 7 at each step. Time: O(N), Space: O(1).

Aptitude: [Data Interpretation][Hard] Below is a table representing monthly data usage (GB) per user of three networks over two years: Net X: Year 1 = 10, Y2 = 14; Net Y: Y1 = 12, Y2 = 15; Net Z: Y1 = 8, Y2 = 12. Find the network that recorded the highest absolute data growth.
Hint: Absolute growth: Net X = 14 - 10 = 4 GB. Net Y = 15 - 12 = 3 GB. Net Z = 12 - 8 = 4 GB. Net X and Net Z are tied with the highest absolute data growth (4 GB).

---

Q738.
MERN: [WebSockets][Hard][Product Company] How do you handle Socket.io horizontal scaling and connection events over multiple Node.js server nodes?
Hint: Persistent TCP connections are host-bound. Connect Express servers to a Redis Adapter. When a socket emits an event to a room, the Redis adapter publishes the event to Redis, which propagates it to all nodes in the cluster, prompting them to emit the event to their local subscribers.

DSA: [DP][Medium-Hard][Google] Longest String Chain: given a list of words, find the longest word chain where `word_A` is a predecessor of `word_B` (inserting exactly 1 letter).
Hint: Sort words by length. Let `dp[word]` represent the max chain length ending at `word`. For each word, generate all possible predecessor strings by deleting one character at a time. If the predecessor is in our map, update `dp[word] = max(dp[word], dp[predecessor] + 1)`. Time: O(N * L²), Space: O(N) where L is word length.

Aptitude: [Decision Making][Hard] Server response optimization: Option 1: database indexing (improves speed by 30%, cost $2,000). Option 2: Memcached implementation (improves speed by 70%, cost $8,000). If you require at least 50% response speed improvement, choose the option.
Hint: Option 1 does not meet the performance threshold of 50% improvement. Thus, you must select Option 2, despite its higher cost.

---

Q739.
MERN: [WebSockets][Medium-Hard][Product Company] Compare WebSockets vs Server-Sent Events (SSE) for MERN stack telemetry. When is SSE the better choice?
Hint: WebSockets: bidirectional, low-latency TCP connections, best for real-time collaborative editors, chat apps, and multiplayer games. SSE: unidirectional (server-to-client) HTTP streaming, simpler, native auto-reconnection, bypasses firewall blocks easily. Choose SSE for read-only real-time feeds like notification hubs, stock tickers, and log stream dashboards.

DSA: [DP][Medium][Amazon] 🟡 HIGH FREQUENCY — Maximum Subarray (Kadane's Algorithm): find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
Hint: 1D DP. Let `maxEndingHere` be the max subarray sum ending at the current index. Recurrence: `maxEndingHere = max(nums[i], maxEndingHere + nums[i])`. Track the global maximum. Time: O(N), Space: O(1).

Aptitude: [Data Interpretation][Hard] Distribution of monthly expenses for a family (Total = $5,000): Rent = 40%, Food = 20%, Utilities = 10%, Insurance = 15%, Savings = 15%. If Rent expenses increase by 10% next month while total income remains same, calculate the new savings amount.
Hint: Original Rent = 40% of 5,000 = $2,000. New Rent = 2,000 * 1.1 = $2,200 ($200 increase). This $200 increase directly reduces Savings. Original Savings = 15% of 5,000 = $750. New Savings = 750 - 200 = $550.

---

Q740.
MERN: [Database][Hard][Product Company] How do TTL Indexes, Geospatial Indexes, and Text Indexes operate in MongoDB? Show how to create a TTL Index on a session collection.
Hint: Text Indexes: support string searches with weighting. Geospatial (2dsphere): support proximity queries on coordinates. TTL Indexes: delete documents automatically after a specified time. Create TTL Index on Mongoose Schema:
`sessionSchema.index({ createdAt: 1 }, { expireAfterSeconds: 3600 });` // Deletes session 1 hour after creation.

DSA: [DP][Medium][Amazon] 🟡 HIGH FREQUENCY — Maximum Product Subarray: find a contiguous non-empty subarray within an integer array that has the largest product.
Hint: 1D DP. Maintain both `maxProduct` and `minProduct` ending at the current index (since a negative number multiplied by a negative can become a large positive). For each number:
`temp = maxProduct`
`maxProduct = max(num, maxProduct * num, minProduct * num)`
`minProduct = min(num, temp * num, minProduct * num)`
Update global max at each step. Time: O(N), Space: O(1).

Aptitude: [Decision Making][Hard] Choose between two coding bootcamps: Bootcamp A: costs $10k upfront, guarantees job placement within 6 months. Bootcamp B: costs $0 upfront, but requires an Income Share Agreement (ISA) of 15% of your salary for 2 years. If your starting salary is projected at $60,000, find the cheaper option.
Hint: Cost Bootcamp A = $10,000. Cost Bootcamp B (ISA) = 15% of $60,000 * 2 = $9,000 * 2 = $18,000. Bootcamp A is cheaper.

---

Q741.
MERN: [Database][Hard][Product Company] How do you optimize aggregation pipelines in MongoDB? Explain memory limits and how to utilize indexes.
Hint: 1) Place `$match` and `$sort` stages at the very beginning of the pipeline to leverage indexes. 2) Project only required fields using `$project` to reduce memory payload. 3) MongoDB pipelines have a 100MB RAM limit per stage; if sorting large datasets, enable disk usage by passing `{ allowDiskUse: true }` in options.

DSA: [DP][Medium-Hard][Google] Palindromic Substrings: given a string, return the number of palindromic substrings in it.
Hint: 2D DP or Center Expansion. DP method: let `dp[i][j]` be boolean indicating if substring `s[i...j]` is a palindrome. `dp[i][j] = true` if `s[i] == s[j]` and `(j - i <= 2 || dp[i+1][j-1])`. Count true entries. Center expansion method: expand around all `2N-1` centers. Time: O(N²), Space: O(1) if center expansion is used.

Aptitude: [Data Interpretation][Hard] Customer retention rates of 3 companies over 2 quarters: Co A: Q1=80%, Q2=85%; Co B: Q1=75%, Q2=82%; Co C: Q1=90%, Q2=88%. If active users in Q1 are A=10k, B=20k, C=5k, find the total number of retained users in Q2 across all companies (assuming no new signups).
Hint: Retained users in Q2: Co A = 10k * 0.85 = 8.5k. Co B = 20k * 0.82 = 16.4k. Co C = 5k * 0.88 = 4.4k. Total retained = 8.5k + 16.4k + 4.4k = 29,300 users.

---

Q742.
MERN: [Monorepo][Medium-Hard][Product Company] What are the benefits of using a Monorepo for a MERN stack project? Explain the role of Turborepo or Lerna.
Hint: Monorepos hold client, backend, and shared packages in a single repository. Benefits: shared TS interfaces, unified dependency management, and atomic commits. Turborepo speeds up builds by caching build outputs (dry runs), building only packages that changed, and running scripts in parallel.

DSA: [DP][Medium-Hard][Google] Longest Palindromic Substring: find the longest palindromic substring in a given string.
Hint: DP or Center Expansion. Let `dp[i][j]` be boolean indicating if `s[i...j]` is a palindrome. If `s[i] == s[j]` and `dp[i+1][j-1] == true`, set `dp[i][j] = true` and update max length and start index. Space can be optimized, or expand around centers. Time: O(N²), Space: O(N²) or O(1).

Aptitude: [Decision Making][Hard] An application backend has high read traffic. Option A: upgrade Express app hosting (costs $300/mo, read speed increases 1.5x). Option B: add Redis caching (setup costs $500 one-time + $100/mo host, read speed increases 4x). Find the time period (months) after which Option B is cheaper.
Hint: Monthly cost difference (A - B) = $300 - $100 = $200 savings for Option B. One-time setup fee for B = $500. Break-even time = $500 / $200 = 2.5 months. Option B is also much faster.

---

Q743.
MERN: [CI/CD][Hard][Product Company] Compare Blue-Green deployments vs Canary deployments. How do you implement them in Kubernetes for a MERN API?
Hint: Blue-Green: maintains two identical environments (Blue=Active, Green=Staging); deployment routes client router target traffic from Blue to Green. Canary: rolls out changes to a tiny percentage of pods (e.g. 10%), monitoring errors before updating remaining instances. K8s canary implementation uses two deployments with matching labels, and a single Service load-balancing across them based on replica weights.

DSA: [DP + Bitmask][Hard][Google] Partition to K Equal Sum Subsets: determine if an array of integers can be partitioned into K subsets whose sums are all equal.
Hint: DP + Bitmask. Let `dp[state]` represent the sum of the current subset modulo target sum, where `state` is a bitmask of visited elements. If `state` reaches `(1 << N) - 1`, return true. Loop elements, if bit is not set and `dp[state] + nums[i] <= target`, transition to new state. Time: O(N * 2^N), Space: O(2^N).

Aptitude: [Data Interpretation][Hard] The following double line chart shows monthly website pageviews (in millions) and bounce rates (%): Month 1: PV=2.5, Bounce=40%; Month 2: PV=3.0, Bounce=35%; Month 3: PV=3.5, Bounce=30%. Find the total number of non-bounced pageviews in Month 3.
Hint: Bounce rate in Month 3 = 30%. Non-bounce rate = 70%. Non-bounced pageviews = 3.5M * 0.70 = 2.45 million pageviews.

---

Q744.
MERN: [System Design][Hard][FAANG-Level] Explain the Transactional Outbox Pattern. How does it guarantee reliable event publishing in event-driven Node.js microservices?
Hint: Standard writes to DB followed by publishing events to Kafka are prone to failure (DB write succeeds, event publish fails). Outbox Pattern: write event payloads to an `outbox` collection inside the database as part of the same database transaction. A separate message relay service (CDC engine like Debezium or custom Node script polling DB) reads from `outbox` and publishes events to Kafka, guaranteeing at-least-once delivery.

DSA: [DP + Bitmask][Hard][Google] Matchsticks to Square: determine if you can form a square using all matchsticks in an array without breaking them.
Hint: Variation of partition to K=4 equal sum subsets. Sum matchsticks; if not divisible by 4, return false. Use backtracking/DFS with memoization or Bitmask DP where state tracks subset sums. Time: O(N * 2^N), Space: O(2^N).

Aptitude: [Decision Making][Hard] You need to reduce operational costs: Plan X: automate customer service with AI chatbot (costs $5,000 setup, saves $1,000/mo). Plan Y: renegotiate office rent (saves $800/mo, zero setup fee). Find the savings at 6 months for each plan.
Hint: Savings Plan X at 6 months = (6 * $1000) - $5000 = $1,000. Savings Plan Y at 6 months = 6 * $800 = $4,800. Plan Y is more beneficial at 6 months.

---

Q745.
MERN: [System Design][Hard][Product Company] What is the Circuit Breaker Pattern? Show how to wrap microservice HTTP requests in Node.js using the `opossum` library.
Hint: Prevents cascading failures when a downstream microservice is down. Circuit states: CLOSED (normal), OPEN (blocks requests, returns error immediately), HALF-OPEN (allows trial requests to check recovery). Express controller:
`const breaker = new CircuitBreaker(asyncFetchFunction, options);`
`app.get('/data', async (req, res) => { breaker.fire().then(result => res.json(result)).catch(err => res.status(503).send('Service Unavailable')); });`

DSA: [DP + Game Theory][Hard][Google] Can I Win: in a game where players take turns picking integers, determine if the first player can force a win to reach a desired total.
Hint: DP + Bitmask + Minimax. Let state be represented by a bitmask of chosen numbers. A state returns true if the current player can make a move that wins directly or leaves the opponent in a losing state (returns false). Memoize results using a map or array. Time: O(2^N), Space: O(2^N).

Aptitude: [Data Interpretation][Hard] The table lists the number of active users of a mobile app by region: North=50k, South=40k, East=30k, West=20k. If the monthly growth rates are North=2%, South=3%, East=4%, West=5%, find the region that will record the highest absolute active user growth next month.
Hint: Absolute growths: North = 50k * 0.02 = 1,000. South = 40k * 0.03 = 1,200. East = 30k * 0.04 = 1,200. West = 20k * 0.05 = 1,000. South and East are tied with the highest growth.

---

Q746.
MERN: [Security][Hard][Product Company] How do you handle distributed rate limiting in Express under DDoS attacks? Compare Cloudflare rate limiting vs Express middleware.
Hint: Express rate limiters run in Node memory (resets on restart, consumes server resources). Cloudflare rate limiting operates at the DNS Edge, blocking traffic before it hits the application server network, saving server CPU, RAM, and bandwidth. Always use Cloudflare edge firewalls for volumetric DDoS mitigation, and Node/Redis limiters for granular business logic rates.

DSA: [DP + Game Theory][Medium-Hard][Google] Predict the Winner: given an array of scores, two players take turns picking numbers from either end. Determine if player 1 can win.
Hint: Minimax with DP. Let `dp[i][j]` be the max score difference player 1 can achieve from subarray `nums[i...j]`. Recurrence: `dp[i][j] = max(nums[i] - dp[i+1][j], nums[j] - dp[i][j-1])`. Base case: `dp[i][i] = nums[i]`. Player 1 wins if `dp[0][N-1] >= 0`. Time: O(N²), Space: O(N²).

Aptitude: [Decision Making][Hard] Expanding data storage: Option 1: cloud storage ($0.02/GB/mo, zero maintenance). Option 2: local NAS setup ($600 upfront, drives cost $200/yr, zero monthly fees). Find the cost comparison at 2 years for 10TB (10,000 GB) storage.
Hint: Cost Option 1 (Cloud) at 24 months = 10,000 * 0.02 * 24 = $4,800. Cost Option 2 (NAS) at 2 years = $600 + 2 * $200 = $1,000. Local NAS is cheaper at 2 years.

---

Q747.
MERN: [Database][Hard][Product Company] How do you design an ETL (Extract, Transform, Load) pipeline to move transactional MERN MongoDB data to analytical warehouses (like Snowflake or BigQuery)?
Hint: Avoid running heavy analytical queries directly on production MongoDB (impacts write performance). Use Change Data Capture (CDC) (like Debezium) or poll MongoDB `changeStreams` in a Node worker. Write JSON data to storage buckets (AWS S3) in batches. Run loader tasks to copy data from S3 to BigQuery, transforming nested JSON documents into structured tables.

DSA: [DP][Hard][Google] Scramble String: determine if string1 and string2 are scramble strings of each other using recursion and memoization.
Hint: 3D DP or Memoized Recursion. Two strings `s1` and `s2` are scrambled if we can split them and check: Case 1: left matches left, right matches right. Case 2: left matches right (swapped), right matches left. Memoize function calls with key `s1 + "_" + s2`. Time: O(N^4), Space: O(N³).

Aptitude: [Data Interpretation][Hard] Below is a table representing quarterly customer acquisition costs (CAC) ($) and customer lifetime values (LTV) ($): Q1: CAC=50, LTV=150; Q2: CAC=60, LTV=200; Q3: CAC=70, LTV=210. Which quarter recorded the highest LTV to CAC ratio?
Hint: LTV : CAC ratios: Q1 = 150 / 50 = 3.0. Q2 = 200 / 60 = 3.33. Q3 = 210 / 70 = 3.0. Q2 has the highest LTV to CAC ratio.

---

Q748.
MERN: [System Design][Hard][Product Company] Explain the Backend-For-Frontend (BFF) Pattern. How does it optimize performance in mobile vs desktop React clients?
Hint: A BFF is a middle-tier service tailored to a specific client interface. Instead of the mobile client calling multiple microservices and downloading bloated JSON payloads, the mobile BFF calls the microservices, aggregates the data, removes unused fields, and returns a single, optimized, lightweight payload, minimizing mobile network data usage.

DSA: [DP][Hard][Google] Super Egg Drop: find the minimum number of drops you need to find the critical floor from which eggs break, given K eggs and N floors.
Hint: DP with Binary Search. Let `dp[k][n]` be the min moves for `k` eggs and `n` floors. Recurrence: `dp[k][n] = 1 + min(max(dp[k-1][x-1], dp[k][n-x]))` for all `x` from 1 to `n`. Optimize search for `x` using binary search since one function increases and the other decreases. Time: O(K * N log N), Space: O(K * N).

Aptitude: [Decision Making][Hard] You must scale server capacity for a flash sale: Option 1: pre-scale servers (costs $500/day, ensures 0% drop rate). Option 2: auto-scale (costs $100/day, but slow spin-up causes a 5% customer drop rate during peak load). Expected peak sales revenue is $10,000. Choose the option.
Hint: Option 1 Net Revenue = $10,000 - $500 = $9,500. Option 2 Net Revenue = $10,000 - 5% drop ($500) - $100 = $9,400. Pre-scaling servers (Option 1) is more profitable.

---

Q749.
MERN: [Network][Hard][Product Company] What are HTTP/3 and QUIC protocol? How do they improve performance and connection stability for React client applications?
Hint: HTTP/3 replaces TCP with QUIC (built on UDP). It solves head-of-line blocking (packet loss in one stream does not block others), supports zero round-trip handshake times (0-RTT), and offers connection migration (switching from Wi-Fi to cellular data does not drop connection sessions).

DSA: [DP][Hard][Google] Optimal Binary Search Tree: find the minimum cost to search elements in a binary search tree, given keys and search frequency probabilities.
Hint: Partition DP. Let `dp[i][j]` be the min search cost for keys from `i` to `j`. Recurrence: `dp[i][j] = min(dp[i][k-1] + dp[k+1][j] + sumOfFreq(i, j))` for all `k` from `i` to `j` (representing key `k` as root). Time: O(N³), Space: O(N²).

Aptitude: [Data Interpretation][Hard] The line graph shows the percentage of transactions failed on an e-commerce platform: Mon=1.5%, Tue=1.2%, Wed=2.5%, Thu=1.0%. If total daily transaction volumes are Mon=10k, Tue=12k, Wed=8k, Thu=15k, find the day with the highest number of failed transactions.
Hint: Failed counts: Mon = 150. Tue = 144. Wed = 200. Thu = 150. Wednesday had the highest absolute number of failed transactions.

---

Q750.
MERN: [Performance][Hard][Product Company] How do you measure and optimize Core Web Vitals (LCP, FID, CLS, INP) in a React/Next.js single page application?
Hint: LCP (Largest Contentful Paint): optimize images, use preloading, defer non-critical JS. FID (First Input Delay)/INP (Interaction to Next Paint): split long-running JS tasks, use `requestIdleCallback`, remove unused CSS. CLS (Cumulative Layout Shift): set explicit width/height dimensions on media, reserve layout spaces for dynamic ads or skeletons.

DSA: [DP][Hard][Google] Palindrome Partitioning II: find the minimum cuts needed to partition a string such that every substring is a palindrome.
Hint: DP. Let `cuts[i]` be the min cuts for prefix `s[0...i]`. Also maintain a 2D boolean array `isPal[i][j]`. If `s[i...j]` is a palindrome, then `cuts[j] = min(cuts[j], cuts[i-1] + 1)`. If `s[0...j]` is a palindrome, `cuts[j] = 0`. Time: O(N²), Space: O(N²).

Aptitude: [Decision Making][Hard] You must evaluate two API Gateway software options: Option A: Open-source (zero cost, requires 10 hours of engineer time/mo for updates). Option B: Enterprise SaaS ($500/mo, zero engineer time needed). If engineer cost is $60/hr, choose the more economical option.
Hint: Cost Option A = 10 * $60 = $600/mo in engineering overhead. Cost Option B = $500/mo. Enterprise SaaS (Option B) is more economical.

---

## 📝 REVISION CHECKPOINT — Q701 to Q750

### Top Patterns Learned
1. **Dockerized & Scaled MERN**: Creating multi-stage Dockerfiles, managing multi-container docker-compose environments, deploying to Kubernetes (HPA, Services, Liveness/Readiness probes), and secret mapping.
2. **Serverless & Distributed Locks**: Serverless execution boundaries, cold starts, and distributed locks using Redis (Redlock).
3. **Microservices Integration**: Saga Pattern transactions (Orchestration/Choreography), CQRS, Event Sourcing, and Transactional Outbox pattern.
4. **Dynamic Programming Algorithms**:
   - *1D & 2D Grid DP*: Climbing stairs, coin change, unique paths, and minimum falling path sum.
   - *String & Interval DP*: Longest common subsequence (LCS), edit distance, matrix chain multiplication (MCM), and word break.
   - *State Machine & Game Theory DP*: Stock buying/selling with cooldown/multiple limits, ones and zeroes knapsack, and Minimax games.
5. **Advanced Data Interpretation & Decisions**: Venn diagrams, weighted averages, expected monetary value (EMV) decision analysis, and break-even intervals.

### Most Important Concepts
- 🔴 Designing microservice transaction rollbacks with compensating endpoints (Q706, Q707)
- 🔴 Outbox pattern to solve dual-write distributed storage problems (Q744)
- 🔴 Patience sorting / Binary search implementation for LIS in O(N log N) (Q704)
- 🔴 Edit Distance recurrence relations (Q713)
- 🔴 Multi-variable stock transaction DP optimization (Q722, Q723, Q724)

### Revision Checklist
- [ ] Can you write a production multi-stage Dockerfile for a React/Node app?
- [ ] Can you define readiness vs liveness endpoints inside an Express router?
- [ ] Can you write a sliding window counter rate limiter in Redis?
- [ ] Can you explain the difference between CQRS and Event Sourcing?
- [ ] Can you implement the LCS DP solution in O(N) space?
- [ ] Can you solve the Dungeon Game DP problem?
- [ ] Can you calculate Expected Monetary Value (EMV) to choose business options?
