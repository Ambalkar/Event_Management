# 🚀 ELITE INTERVIEW ROADMAP — Part 2: Q251–Q500

## ⭐⭐ Intermediate
## Core Interview Preparation

> **Progressive Difficulty**: Intermediate-level core questions for mid-level roles
> **Tags**: `[Topic]` `[Difficulty]` `[Company-Level]` `[Pattern]`
> **Priority**: 🔴 MUST DO | 🟡 HIGH FREQUENCY | 🔵 REVISION CRITICAL

---

# ⭐⭐ INTERMEDIATE — Q251 to Q300

## React State Management, Redux, Zustand | Linked Lists, Stacks, Queues, Binary Search | Time-Speed-Distance, Probability, Blood Relations, Time & Work

---

Q251.
MERN: [React][Medium][Product Company] What is prop drilling? How does the React Context API solve it, and what are the architectural limitations of using Context for frequent state updates?
Hint: Prop drilling is passing props through multiple nested components that don't need them. Context provides a way to share values between components without explicitly passing props. Limitation: Whenever the Context provider value changes, all consumers re-render, which can cause performance issues for high-frequency or complex state changes. Use specialized stores (Zustand/Redux) or split context for performance.

DSA: [Linked List][Easy][Amazon] 🔴 MUST DO — Find the middle node of a singly linked list. If there are two middle nodes, return the second middle node.
Hint: Use slow and fast pointers. Move slow pointer by 1 node and fast pointer by 2 nodes. When fast reaches the end, slow will be at the middle. Time: O(n), Space: O(1).

Aptitude: [Time-Speed-Distance][Easy-Medium] A car travels at a speed of 60 km/h for 2 hours and then at 80 km/h for 3 hours. Find the average speed of the car for the entire journey.
Hint: Average Speed = Total Distance / Total Time. Total Distance = (60 × 2) + (80 × 3) = 120 + 240 = 360 km. Total Time = 2 + 3 = 5 hours. Average Speed = 360 / 5 = 72 km/h.

---

Q252.
MERN: [React][Medium][FAANG-Level] Compare Zustand and Redux Toolkit. What are the core differences in terms of boilerplate, state mutation, and performance?
Hint: Redux Toolkit: Single store, actions, reducers, uses Immer for mutation, structured but requires boilerplate (slices, dispatch, selector hooks). Zustand: Minimal boilerplate, direct hook-based state access, multiple small stores if needed, uses transient updates (no re-renders unless subscribed). Zustand is simpler and faster for small-to-medium apps; Redux is highly structured and better for massive enterprise teams.

DSA: [Linked List][Medium][Microsoft] 🔴 MUST DO — Remove the N-th node from the end of a singly linked list. Return the head of the modified list.
Hint: Use two pointers. Move the first pointer N steps ahead. Then move both pointers together until the first pointer reaches the end. The second pointer will point to the node before the N-th node. Remove it. Handle edge case when head itself is removed. Time: O(n), Space: O(1).

Aptitude: [Time-Speed-Distance][Easy-Medium] A train running at 54 km/h crosses a standing pole in 20 seconds. Find the length of the train in meters.
Hint: Speed in m/s = 54 × (5/18) = 15 m/s. Length of train = Distance = Speed × Time = 15 m/s × 20 s = 300 meters.

---

Q253.
MERN: [React][Medium][Product Company] Explain Redux architecture: what are actions, reducers, store, dispatch, and selectors? Draw or describe the unidirectional data flow.
Hint: Unidirectional Flow: View triggers dispatch(action) → Store passes action and current state to Reducers → Reducer returns new state → Store updates and notifies View (via Selectors). Actions are plain objects describing what happened. Reducers are pure functions calculating the next state. Store is the single source of truth. Selectors extract specific parts of state.

DSA: [Linked List][Easy-Medium][Amazon] 🟡 HIGH FREQUENCY — Given the heads of two singly linked lists, return the node at which the two lists intersect. If they do not intersect, return null.
Hint: Use two pointers starting at heads A and B. When a pointer reaches the end, redirect it to the head of the other list. They will meet at the intersection point or null after at most len(A) + len(B) steps because they cover the same total distance. Time: O(n + m), Space: O(1).

Aptitude: [Time-Speed-Distance][Medium] A boat can travel with a speed of 10 km/h in still water. If the speed of the stream is 2 km/h, find the time taken by the boat to travel 24 km upstream and 24 km downstream.
Hint: Downstream Speed = 10 + 2 = 12 km/h. Upstream Speed = 10 - 2 = 8 km/h. Downstream time = 24 / 12 = 2 hours. Upstream time = 24 / 8 = 3 hours. Total time = 2 + 3 = 5 hours.

---

Q254.
MERN: [React][Medium][Product Company] What is Redux Thunk? How does it enable asynchronous actions in Redux? Show a basic code example.
Hint: Redux Thunk is middleware that allows action creators to return a function instead of an action object. The returned function receives dispatch and getState. Example:
`const fetchUser = (id) => async (dispatch) => { dispatch({type: 'FETCH_START'}); try { const res = await api.get(`/user/${id}`); dispatch({type: 'FETCH_SUCCESS', payload: res.data}); } catch(e) { dispatch({type: 'FETCH_FAIL', error: e.message}); } }`

DSA: [Linked List][Easy-Medium][Google] 🔴 MUST DO — Given a singly linked list, determine if it is a palindrome.
Hint: Find the middle node (slow/fast pointers). Reverse the second half of the linked list. Compare the first half and reversed second half element by element. (Optional: restore list). Time: O(n), Space: O(1).

Aptitude: [Probability][Easy-Medium] A card is drawn from a well-shuffled pack of 52 cards. What is the probability that it is a king or a red card?
Hint: Total Kings = 4. Total Red cards = 26. Red Kings = 2 (counted in both). Total favorable cards = 4 + 26 - 2 = 28. Probability = 28/52 = 7/13.

---

Q255.
MERN: [React][Medium][Product Company] What is the difference between Redux Thunk and Redux Saga? When would you prefer Saga over Thunk?
Hint: Thunk uses callbacks/promises and is simple to write. Saga uses Generator functions and yields effects (call, put, takeEvery, etc.), running as a separate background thread. Use Saga for complex side effects: concurrent requests, cancellation, race conditions, debouncing/throttling actions, or complex workflows that pollute component code with Thunk.

DSA: [Linked List][Medium][Amazon] 🟡 HIGH FREQUENCY — Reverse a singly linked list from position left to right (Reverse Linked List II).
Hint: Traverse to (left-1)-th node. Keep track of 'con' (connection) and 'tail'. Reverse nodes between left and right using standard 3-pointer approach. Connect 'con' to new sublist head, and 'tail' to the node after 'right'. Time: O(n), Space: O(1).

Aptitude: [Probability][Easy-Medium] Two dice are thrown simultaneously. What is the probability that the sum of the numbers on the faces is a prime number?
Hint: Total outcomes = 36. Prime sums possible: 2, 3, 5, 7, 11.
Favorable outcomes: Sum 2: (1,1) [1]; Sum 3: (1,2),(2,1) [2]; Sum 5: (1,4),(2,3),(3,2),(4,1) [4]; Sum 7: (1,6),(2,5),(3,4),(4,3),(5,2),(6,1) [6]; Sum 11: (5,6),(6,5) [2]. Total favorable = 1+2+4+6+2 = 15. Probability = 15/36 = 5/12.

---

Q256.
MERN: [React][Medium][Product Company] Explain the concept of slice in Redux Toolkit. Write a basic slice for a counter feature.
Hint: A Slice is a collection of Redux reducer logic and actions for a single feature. `createSlice` automatically generates action creators and action types based on the reducers. Example:
`const counterSlice = createSlice({ name: 'counter', initialState: { value: 0 }, reducers: { increment: (state) => { state.value += 1; } } }); export const { increment } = counterSlice.actions; export default counterSlice.reducer;`

DSA: [Linked List][Medium][Google] Given a linked list, return the node where the cycle begins. If there is no cycle, return null. (Floyd's Cycle Detection II)
Hint: Detect cycle using slow and fast pointers. If they meet, reset slow to head. Move both slow and fast pointer one step at a time. The node where they meet is the start of the cycle. Time: O(n), Space: O(1).

Aptitude: [Probability][Easy-Medium] A bag contains 4 white, 5 red, and 6 blue balls. Three balls are drawn at random. What is the probability that they are of different colors?
Hint: Total balls = 15. Ways to draw 3 balls = C(15,3) = (15×14×13)/(3×2×1) = 455. Ways to draw 1 white, 1 red, 1 blue = 4 × 5 × 6 = 120. Probability = 120 / 455 = 24 / 91.

---

Q257.
MERN: [React][Medium][Product Company] What are React Portals? Why and when would you use them? Give a code example.
Hint: Portals let you render children into a DOM node outside the parent component's DOM hierarchy. Use for: modals, tooltips, dialogs, dropdowns to avoid CSS inheritance issues (like z-index, overflow:hidden). Example:
`ReactDOM.createPortal(<Modal />, document.getElementById('modal-root'))`

DSA: [Linked List][Hard][Microsoft] 🔴 MUST DO — Merge k sorted linked lists and return it as one sorted list. Analyze the time and space complexity.
Hint: Use a Min-Heap (Priority Queue) to store the head nodes of all lists. Extract the minimum element, add to the result list, and push the next node of that list to the heap. Time: O(N log k) where N is total nodes, Space: O(k) for heap.

Aptitude: [Probability][Medium] An urn contains 6 red and 4 black balls. Two balls are drawn one after another without replacement. What is the probability that the second ball is red given that the first is black?
Hint: First drawn is black: remaining balls = 9 (6 red, 3 black). Probability that second is red = 6 / 9 = 2/3.

---

Q258.
MERN: [React][Medium][FAANG-Level] Explain React Error Boundaries. How do they work, what lifecycle methods must they implement, and what can they NOT catch?
Hint: Error boundaries are class components that catch JS errors anywhere in their child component tree, log those errors, and display a fallback UI. Must implement `getDerivedStateFromError` (to update state and render fallback) and `componentDidCatch` (to log info). CANNOT catch: event handlers, async code (setTimeout, fetch), SSR, or errors thrown in the boundary itself.

DSA: [Linked List][Hard][Google] Given a linked list, reverse the nodes of a linked list k at a time and return its modified list.
Hint: Count list length. For every block of k nodes, reverse them. Use recursion or iterative tracking (keep pointers to group prev, group head, group tail). If remaining nodes < k, leave them as-is. Time: O(n), Space: O(1) iterative.

Aptitude: [Probability][Medium] A box contains 10 light bulbs, of which 3 are defective. If a sample of 3 bulbs is selected at random, what is the probability that at least one is defective?
Hint: P(at least one defective) = 1 - P(no defective bulbs). Non-defective bulbs = 7. Ways to select 3 non-defective = C(7,3) = 35. Total ways to select 3 = C(10,3) = 120. P(no defective) = 35/120 = 7/24. P(at least one defective) = 1 - 7/24 = 17/24.

---

Q259.
MERN: [React][Medium][Product Company] What is React Testing Library (RTL)? How does its philosophy differ from Enzyme?
Hint: RTL philosophy: "The more your tests resemble the way your software is used, the more confidence they can give you." RTL encourages testing user behavior and accessibility tags (getByRole, getByText) rather than component internals (state, props, lifecycle). Enzyme tested implementation details (shallow rendering, checking state variables directly), which broke upon refactoring.

DSA: [Stack][Easy][Amazon] 🔴 MUST DO — Implement a Stack with standard push, pop, top operations, and a getMin operation that retrieves the minimum element in O(1) time.
Hint: Use a main stack for values and an auxiliary stack to keep track of the minimums. Or store pairs (value, min_so_far) in a single stack. Time: O(1) all operations, Space: O(n).

Aptitude: [Blood Relations][Easy] Pointing to a photograph of a boy, Suresh said, "He is the son of the only son of my mother." How is Suresh related to that boy?
Hint: "The only son of Suresh's mother" = Suresh himself. Suresh says "He is the son of (Suresh)". So Suresh is the father of the boy.

---

Q260.
MERN: [React][Medium][Product Company] Explain snapshot testing in Jest. When is it useful, and what are its potential pitfalls in large-scale applications?
Hint: Snapshot testing takes a serialized description of a component (e.g., HTML structure) and compares it to a reference snapshot saved alongside tests. Useful for checking that UI markup doesn't change unexpectedly. Pitfalls: Snapshots can easily become bloated, developers often auto-update them without checking actual differences (causing tests to lose meaning), and they don't test functionality.

DSA: [Stack][Medium][Microsoft] 🔴 MUST DO — Evaluate the value of an arithmetic expression in Reverse Polish Notation (Postfix Expression). Valid operators are +, -, *, and /.
Hint: Use a stack. Traverse the expression. If operand, push to stack. If operator, pop two elements from stack, apply operator (order: second popped [op] first popped), and push result back. Time: O(n), Space: O(n).

Aptitude: [Blood Relations][Easy-Medium] Pointing to a gentleman, Deepak said, "His only brother is the father of my daughter's father." How is the gentleman related to Deepak?
Hint: "My daughter's father" = Deepak himself (or his wife, but Deepak is speaking, so it's Deepak). "The father of Deepak" = Deepak's father. "His only brother is Deepak's father" = The gentleman is the brother of Deepak's father. So the gentleman is Deepak's uncle.

---

Q261.
MERN: [TypeScript][Medium][FAANG-Level] Explain how to type React Event Handlers in TypeScript. Show examples of `onClick` and `onChange` for inputs.
Hint: Use React-supplied event types. Example:
`const handleClick = (e: React.MouseEvent<HTMLButtonElement>) => { ... }`
`const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => { ... }`
Enables autocompletion and safety when accessing properties like `e.target.value` or `e.clientX`.

DSA: [Stack][Medium][Amazon] 🟡 HIGH FREQUENCY — Given an absolute path for a Unix-style file system, simplify it to the canonical path (e.g., "/a/./b/../../c/" -> "/c").
Hint: Split path by "/". Iterate through components. If component is "" or ".", do nothing. If "..", pop from stack (if not empty). Else, push component to stack. Join stack elements with "/". Time: O(n), Space: O(n).

Aptitude: [Blood Relations][Medium] If A + B means A is the brother of B; A - B means A is the sister of B; and A * B means A is the father of B. Which of the following means C is the son of M?
(a) M * N - C + F (b) M * C - N + F (c) N - C + F * M (d) M * C + N - F
Hint: Let's test (d): M * C means M is the father of C. C + N means C is the brother of N (so C is male). N - F means N is the sister of F. Since M is father of C and C is male, C is the son of M. Correct option is (d).

---

Q262.
MERN: [TypeScript][Medium][Product Company] What are generic components in React with TypeScript? Write a generic `<List>` component that takes an array of items of type T and renders them.
Hint: Use a generic parameter in the functional component definition. Example:
`interface ListProps<T> { items: T[]; renderItem: (item: T) => React.ReactNode; }`
`function List<T>({ items, renderItem }: ListProps<T>) { return <div>{items.map(renderItem)}</div>; }`

DSA: [Stack][Medium][Product Company] Given a string s containing only digits, restore it by returning all possible valid IP address combinations.
Hint: Backtracking. A valid IP address has exactly 4 octets, each between 0 and 255, and no leading zeros. Split string recursively into 4 segments and validate each. Time: O(1) because size is fixed, Space: O(1).

Aptitude: [Blood Relations][Medium] A family consists of six members P, Q, R, S, T, and U. There are two married couples. Q is a doctor and the father of T. U is grandfather of R and is a contractor. S is grandmother of T and is a housewife. There is one doctor, one contractor, one housewife, one student, and two managers in the family. How is P related to Q?
Hint: U (grandfather) married to S (grandmother). S is grandmother of T, U is grandfather of R. So R and T are siblings (students/managers). Q is father of T, meaning Q is son of U and S. Q is married to P (the other managers/doctor). So P is Q's wife.

---

Q263.
MERN: [TypeScript][Medium][Product Company] Explain key TypeScript Utility Types: `Partial<T>`, `Required<T>`, `Readonly<T>`, `Pick<T, K>`, and `Omit<T, K>`. Write examples of each.
Hint: Partial: makes all props optional. Required: makes all props required. Readonly: makes all props read-only. Pick: selects a subset of keys. Omit: removes a subset of keys. Example:
`type UserSummary = Pick<User, 'id' | 'name'>; type CreateUserDto = Omit<User, 'id'>;`

DSA: [Stack][Medium][Amazon] 🔴 MUST DO — Design a stack that supports push, pop, peek, and retrieving the minimum element in constant time, but using only ONE stack (without extra space).
Hint: Keep a variable `min`. When pushing x < min, push `2*x - min` to stack and set `min = x`. When popping, if popped value y < min, the old min was `2*min - y`. Update `min` and return the current `min`. Time: O(1), Space: O(1) auxiliary.

Aptitude: [Blood Relations][Medium] A, B, C, D, E, and F are six members of a family. No. of males equals females. Under-18s are students. Others are professionals. A is a doctor. D is the grandmother of F, who is a student. B is the father of E. C is a housewife and has one son and one daughter. There are two students in the family. How is E related to A?
Hint: Grandmother D is female. Housewife C is female. A is doctor. Students: F and another. Since males = females (3 of each), and we have D (F), C (F), F (gender unknown), B (M), E (gender unknown), A (M/F). C has a son and daughter, married to B. E and F are children of B and C. E is student, F is student. B (M), C (F), D (F - father's mother), E (M), F (F), A (M - doctor/son of D). E is grandson of D, nephew of A. E is related to A as nephew/niece.

---

Q264.
MERN: [TypeScript][Medium][Product Company] How do you type asynchronous API calls in a MERN app using TypeScript? Show an example with Axios and custom interfaces.
Hint: Define the shape of the expected response. Pass the type parameter to axios.get. Example:
`interface User { id: string; email: string; }`
`const fetchUser = async (id: string): Promise<User> => { const res = await axios.get<User>(`/api/users/${id}`); return res.data; };`

DSA: [Queue][Easy-Medium][Product Company] Design a Circular Queue using a fixed-size array. What are the benefits of a circular queue over a normal array-based queue?
Hint: Circular queue uses two pointers (front and rear) and modulo arithmetic: `rear = (rear + 1) % size`. Benefits: avoids "memory wastage" in normal array queues where spaces before front are lost; constant O(1) time enqueue and dequeue without shifting elements.

Aptitude: [Time & Work][Easy] A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is:
Hint: A's 1 day work = 1/15. B's 1 day work = 1/20. Together 1 day work = 1/15 + 1/20 = 7/60. 4 days work = 4 × 7/60 = 7/15. Remaining work = 1 - 7/15 = 8/15.

---

Q265.
MERN: [Node.js][Medium][FAANG-Level] Explain how Node.js handles asynchronous operations. What is the role of the V8 engine, Libuv, the Thread Pool, and the Event Loop?
Hint: V8 compiles and runs JS. Libuv handles asynchronous I/O (file, network, DNS). Libuv uses a pool of worker threads (default 4) for blocking OS operations (file, crypto). Non-blocking operations (network) use native OS event mechanisms (epoll/kqueue). The Event Loop acts as a dispatcher coordinating execution of callbacks from completed async tasks.

DSA: [Queue][Medium][Amazon] 🔴 MUST DO — Design a hit counter which counts the number of hits received in the past 300 seconds (5 minutes).
Hint: Use a queue containing timestamps. For every `hit(timestamp)`, enqueue the timestamp. For `getHits(timestamp)`, dequeue all timestamps from the front of the queue that are less than or equal to `timestamp - 300`. Return the queue size. Time: O(1) amortized, Space: O(300) max.

Aptitude: [Time & Work][Easy-Medium] A and B can do a work in 12 days, B and C in 15 days, C and A in 20 days. If A, B, and C work together, in how many days will they complete the work?
Hint: 2(A + B + C)'s 1 day work = 1/12 + 1/15 + 1/20 = (5+4+3)/60 = 12/60 = 1/5. (A + B + C)'s 1 day work = 1/10. So they will finish in 10 days.

---

Q266.
MERN: [Node.js][Medium][Product Company] What are the different phases of the Node.js Event Loop? In what order are they executed?
Hint: Phases: 1) Timers (setTimeout/setInterval) 2) Pending Callbacks (deferred system errors) 3) Idle, Prepare (internal) 4) Poll (incoming connections/I/O) 5) Check (setImmediate) 6) Close Callbacks (socket.on('close')).
Microtasks (process.nextTick, Promise resolve) run immediately after the current operation finishes, between phases.

DSA: [Queue][Medium][Amazon] 🟡 HIGH FREQUENCY — Implement a double-ended queue (Deque) using a doubly linked list. Explain the advantages of Deque in real-world scenarios.
Hint: Deque supports insert/delete from both front and rear in O(1) time. Use a Doubly Linked List with `head` and `tail` pointers. Real-world uses: Undo-redo stacks, job-stealing algorithms in thread pools, sliding window maximums.

Aptitude: [Time & Work][Medium] A is twice as good a workman as B and together they finish a piece of work in 18 days. In how many days will A alone finish the work?
Hint: Ratio of work of A and B = 2:1. Together rate = 3 units/day. In 18 days they do 18 × 3 = 54 units. A alone finishes in 54 / 2 = 27 days.

---

Q267.
MERN: [Node.js][Medium][Product Company] What is the difference between `process.nextTick()`, `setImmediate()`, and `setTimeout(fn, 0)` in Node.js?
Hint: `process.nextTick()` fires immediately after the current operation completes, before the event loop continues (drains microtask queue). `Promise.resolve()` is also a microtask but runs right after nextTick. `setImmediate()` runs in the "Check" phase of the loop. `setTimeout(fn, 0)` runs in the "Timers" phase. `process.nextTick()` executes fastest.

DSA: [Queue][Medium][Google] 🔴 MUST DO — Design a queue that supports push, pop, peek, and retrieving the maximum element in constant time O(1).
Hint: Similar to Min Stack. Use two queues or a main queue and a monotonic decreasing deque. When pushing x, remove all elements from the back of deque that are smaller than x, then push x. Dequeue from main queue: if popped element is equal to front of deque, pop from deque. Time: O(1) amortized, Space: O(n).

Aptitude: [Time & Work][Medium] 12 men can complete a work in 8 days. 16 women can complete the same work in 12 days. 8 men and 8 women started working together and worked for 6 days. How many more women should be added to complete the remaining work in 1 day?
Hint: Total work = 12 × 8 = 96 man-days = 16 × 12 = 192 woman-days. 1 man = 2 women. 8 men + 8 women = 16 + 8 = 24 women. In 6 days, work done = 24 × 6 = 144 woman-days. Remaining work = 192 - 144 = 48 woman-days. To finish in 1 day, we need 48 women. We have 24 women, so we need to add 24 more women.

---

Q268.
MERN: [Node.js][Medium][Product Company] Explain Node.js Streams. What are the four types of streams, and why are they crucial for handling large files or payloads?
Hint: Types: Readable, Writable, Duplex (read & write), Transform (modify data). Streams process data in chunks (default 16KB) instead of loading the entire file into memory. Crucial for scaling: prevents Node.js process from running out of memory (OOM) when serving or uploading large files.

DSA: [Binary Search][Easy][Product Company] Given a sorted array of integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order. (Search Insert Position)
Hint: Standard binary search. If target is found, return `mid`. If search terminates and target not found, `left` pointer will be pointing to the index where the target should be inserted. Time: O(log n), Space: O(1).

Aptitude: [Time & Work][Medium-Hard] A, B, and C can do a work in 24, 30, and 40 days respectively. They began the work together but C left 4 days before the completion of the work. In how many days was the work completed?
Hint: Total work = 120 units (LCM of 24, 30, 40). Efficiencies: A = 5, B = 4, C = 3. Let work finish in x days. A worked x days, B worked x days, C worked (x-4) days. 5x + 4x + 3(x-4) = 120. 12x - 12 = 120. 12x = 132. x = 11 days.

---

Q269.
MERN: [Node.js][Medium][Product Company] What is backpressure in Node.js streams? How does the pipeline API handle it automatically?
Hint: Backpressure occurs when a readable stream reads data faster than a writable stream can write it, leading to memory buildup in the buffer. The pipeline API: `stream.pipeline(readStream, transformStream, writeStream, callback)` automatically pauses reading when the write buffer is full and resumes when writable is ready, managing memory safely.

DSA: [Binary Search][Medium][Amazon] 🔴 MUST DO — Find the first and last position of a target element in a sorted array. If target is not found, return [-1, -1].
Hint: Run two binary searches. One search finds the leftmost (first) occurrence of the target by narrowing the search to the left side when target is found. The second search finds the rightmost (last) occurrence by narrowing to the right side. Time: O(log n), Space: O(1).

Aptitude: [Time & Work][Medium-Hard] A can do a piece of work in 80 days. He works at it for 10 days and then B alone finishes the remaining work in 42 days. In how much time will A and B working together finish the work?
Hint: A's 10 days work = 10/80 = 1/8. Remaining work = 7/8. B completes 7/8 in 42 days. Total days for B alone = 42 × 8/7 = 48 days. Together rate = 1/80 + 1/48 = (3 + 5)/240 = 8/240 = 1/30. They will finish in 30 days.

---

Q270.
MERN: [Node.js][Medium][Product Company] What is the difference between CommonJS and ES Modules in Node.js? How do you enable ESM in a Node.js project?
Hint: CommonJS: `require()`/`module.exports`, synchronous loading, dynamic imports allowed, default in Node.js. ESM: `import`/`export`, asynchronous, static analysis, enables tree-shaking. To enable ESM: add `"type": "module"` in package.json, or use `.mjs` extension.

DSA: [Binary Search][Medium][Google] 🟡 HIGH FREQUENCY — Search in a Rotated Sorted Array. Given an array sorted in ascending order rotated at some pivot unknown to you, find target.
Hint: Find which half of the array is sorted. If left half is sorted (`arr[left] <= arr[mid]`), check if target lies in this range. If yes, search left half; otherwise search right. Do the inverse if the right half is sorted. Time: O(log n), Space: O(1).

Aptitude: [P&C][Easy] In how many ways can a committee of 3 members be formed from a group of 8 people?
Hint: C(8,3) = (8 × 7 × 6) / (3 × 2 × 1) = 56 ways.

---

Q271.
MERN: [Express][Medium][Product Company] Draw/Describe the middleware execution order in Express. What happens if a middleware does not call `next()` or send a response?
Hint: Middleware runs in the order it is mounted via `app.use()`. Order: Request → Middleware 1 → Middleware 2 → Route Handler → Response. If a middleware does not call `next()` and does not send a response (via `res.send/json`), the request will hang indefinitely until client timeout.

DSA: [Binary Search][Medium][Amazon] Search a 2D Matrix of size m x n where each row is sorted and the first integer of each row is greater than the last integer of the previous row.
Hint: Treat the 2D matrix as a virtual 1D array of size m*n. Binary search on index range [0, m*n - 1]. Map the virtual index `mid` to 2D coordinates: `row = mid / n` and `col = mid % n`. Time: O(log(m*n)), Space: O(1).

Aptitude: [P&C][Easy-Medium] Out of 7 consonants and 4 vowels, how many words of 3 consonants and 2 vowels can be formed?
Hint: Choose consonants: C(7,3) = 35. Choose vowels: C(4,2) = 6. Total groups of 5 letters = 35 × 6 = 210. Each group of 5 letters can be arranged in 5! = 120 ways. Total words = 210 × 120 = 25,200.

---

Q272.
MERN: [Express][Medium][Product Company] What is error-handling middleware in Express? How does its signature differ from standard middleware?
Hint: Error-handling middleware has four arguments instead of three: `(err, req, res, next)`. Place it at the very bottom of the middleware stack (after all routes). Signature:
`app.use((err, req, res, next) => { console.error(err.stack); res.status(500).json({ error: err.message }); });`

DSA: [Binary Search][Medium][Amazon] 🔴 MUST DO — Find the peak element in an array (an element that is strictly greater than its neighbors). Return its index.
Hint: Binary search. If `arr[mid] < arr[mid+1]`, there must be a peak on the right half. Move `left = mid + 1`. Otherwise, there is a peak on the left half (or mid itself). Move `right = mid`. Time: O(log n), Space: O(1).

Aptitude: [P&C][Easy-Medium] In how many different ways can the letters of the word 'DETAIL' be arranged such that the vowels must always occupy the odd positions?
Hint: 'DETAIL' has 6 letters. Vowels = E, A, I (3). Consonants = D, T, L (3). Odd positions: 1, 3, 5. Vowels can occupy odd positions in P(3,3) = 6 ways. Consonants can occupy remaining positions (2, 4, 6) in P(3,3) = 6 ways. Total arrangements = 6 × 6 = 36.

---

Q273.
MERN: [Express][Medium][Product Company] Explain the CORS mechanism. Why is it needed, and how do you configure it in an Express app to allow only a specific origin?
Hint: Cross-Origin Resource Sharing (CORS) is a browser security feature that restricts cross-origin HTTP requests. An Express server must include `Access-Control-Allow-Origin` headers. Setup with `cors` package:
`app.use(cors({ origin: 'https://mytrustedfrontend.com', credentials: true }));`

DSA: [Binary Search][Medium][Google] Given a sorted array of integers, search for a target value. If target exists, return its index. If target is rotated (possibly containing duplicates), search becomes O(n). How do you handle it?
Hint: Rotated sorted array with duplicates: if `arr[left] == arr[mid] == arr[right]`, we cannot tell which side is sorted. In this edge case, increment `left` and decrement `right` to reduce search space. Otherwise proceed as normal. Time: O(log n) average, O(n) worst case.

Aptitude: [P&C][Medium] A box contains 2 white balls, 3 black balls, and 4 red balls. In how many ways can 3 balls be drawn from the box, if at least one black ball is to be included in the draw?
Hint: Total balls = 9. Total ways to draw 3 balls = C(9,3) = 84. Ways to draw 3 balls with no black balls (selecting only from white + red = 6 balls) = C(6,3) = 20. Ways with at least one black ball = 84 - 20 = 64.

---

Q274.
MERN: [Express][Medium][Product Company] What is `helmet` middleware? Explain at least three HTTP security headers it sets for an Express application.
Hint: `helmet` secures Express apps by setting various HTTP headers. Headers: 1) `Content-Security-Policy` (prevents XSS by limiting script sources) 2) `Strict-Transport-Security` (enforces HTTPS) 3) `X-Frame-Options` (prevents clickjacking) 4) `X-Content-Type-Options` (prevents MIME sniffing).

DSA: [Binary Search][Medium][Google] Given an integer array nums sorted in ascending order, find the element that appears only once. All other elements appear exactly twice.
Hint: Use binary search. Mid index must be compared to its neighbor. If mid is even, search right if `nums[mid] == nums[mid+1]`; otherwise search left. If mid is odd, search right if `nums[mid] == nums[mid-1]`. Time: O(log n), Space: O(1). Or XOR in O(n).

Aptitude: [P&C][Medium] In how many ways can 6 boys and 5 girls be arranged in a straight line so that no two girls are together?
Hint: Arrange boys first in 6! = 720 ways. This creates 7 gaps. Girls must choose 5 gaps out of these 7. Number of ways for girls = P(7,5) = (7×6×5×4×3) = 2520 ways. Total arrangements = 720 × 2520 = 1,814,400.

---

Q275.
MERN: [Express][Medium][Product Company] How do you handle input validation in Express? Show an example validating a registration body (email, password) using `express-validator` or `Joi`.
Hint: Prevent SQL/NoSQL injection and bad data. Using Joi:
`const schema = Joi.object({ email: Joi.string().email().required(), password: Joi.string().min(6).required() });`
`app.post('/register', (req, res, next) => { const {error} = schema.validate(req.body); if (error) return res.status(400).json({error: error.details[0].message}); next(); });`

DSA: [Binary Search][Hard][Google] 🔴 MUST DO — Given an array of integers representing the pages in n different books, and m students, find the minimum maximum pages allocated to a student.
Hint: Binary search on answer space. Minimum possible answer = `max(books)`, Maximum possible = `sum(books)`. Test mid by greedily allocating books to students. If count > m, search right (need more pages); else search left. Time: O(n log(sum-max)), Space: O(1).

Aptitude: [Probability][Easy] A card is drawn from a pack of 52 cards. What is the probability of getting a queen of club or a king of heart?
Hint: Number of queen of clubs = 1. Number of king of hearts = 1. Total favorable outcomes = 2. Probability = 2/52 = 1/26.

---

Q276.
MERN: [MongoDB][Medium][Product Company] What are the differences between referencing (normalization) and embedding (denormalization) in MongoDB schema design?
Hint: Embedding: nested documents. Good for one-to-few relationships, data that is read together, and atomic updates. Referencing: storing document IDs. Good for one-to-many, many-to-many, data that changes frequently, or when embedded arrays grow too large (16MB BSON limit).

DSA: [Two Pointers][Medium][Amazon] Given an integer array nums, return all the triplets `[nums[i], nums[j], nums[k]]` such that `i != j`, `i != k`, and `j != k`, and `nums[i] + nums[j] + nums[k] == 0`. (3Sum)
Hint: Sort the array. Iterate through the array. For each element `nums[i]`, use two pointers (left at `i+1`, right at `n-1`) to find pairs that sum to `-nums[i]`. Skip duplicates to ensure unique triplets. Time: O(n²), Space: O(log n) or O(n) for sorting.

Aptitude: [Probability][Easy-Medium] In a lottery, there are 10 prizes and 25 blanks. A lottery is drawn at random. What is the probability of getting a prize?
Hint: Total tickets = 10 + 25 = 35. Favorable tickets = 10. Probability = 10 / 35 = 2 / 7.

---

Q277.
MERN: [MongoDB][Medium][Product Company] What is the purpose of Mongoose Virtuals? Give a code example showing how to create a `fullName` virtual.
Hint: Virtuals are document properties that can be set and get, but are NOT persisted to the database. Useful for combining fields. Example:
`userSchema.virtual('fullName').get(function() { return `${this.firstName} ${this.lastName}`; });`
Enable virtuals in JSON: `userSchema.set('toJSON', { virtuals: true });`

DSA: [Sliding Window][Medium][Amazon] 🔴 MUST DO — Given an array of integers, find the maximum sum of a contiguous subarray of size K.
Hint: Compute the sum of the first K elements. Slide the window of size K by adding the next element and subtracting the leftmost element of the previous window. Track the maximum sum. Time: O(n), Space: O(1).

Aptitude: [Probability][Easy-Medium] A bag contains 6 black and 8 white balls. One ball is drawn at random. What is the probability that the drawn ball is white?
Hint: Total balls = 6 + 8 = 14. White balls = 8. Probability = 8/14 = 4/7.

---

Q278.
MERN: [MongoDB][Medium][Product Company] What is the `lean()` option in Mongoose? When should you use it, and what do you lose by using it?
Hint: `lean()` returns plain JS objects instead of Mongoose Documents, skipping change tracking, validators, virtuals, getters/setters, and helper methods. Use for read-only queries (GET requests) to save CPU and memory. Lose: the ability to call `.save()`, `.populate()`, virtuals, or pre/post save hooks.

DSA: [Sliding Window][Medium][Google] 🔴 MUST DO — Find the length of the longest substring without repeating characters.
Hint: Use a sliding window with a hash map/set to track characters. Maintain `left` and `right` pointers. If character at `right` is already in window, shrink window by moving `left` to index after the duplicate's last position. Time: O(n), Space: O(min(m, n)) where m is charset size.

Aptitude: [Probability][Medium] One card is drawn at random from a pack of 52 cards. What is the probability that the card drawn is a face card (Jack, Queen, King)?
Hint: Face cards in each suit = 3 (J, Q, K). Total face cards = 3 × 4 = 12. Probability = 12/52 = 3/13.

---

Q279.
MERN: [MongoDB][Medium][Product Company] Explain the N+1 query problem in database fetching. How does Mongoose `populate()` solve it under the hood?
Hint: N+1 occurs when you fetch 1 list of parent documents and then make N queries to fetch a related child document for each parent. Mongoose `populate()` solves it by collecting all child ObjectIds from the parent documents and executing exactly 1 query with `$in` (e.g., `db.children.find({_id: {$in: [...]}})`). Total queries = 2.

DSA: [Sliding Window][Medium][Amazon] 🟡 HIGH FREQUENCY — Given a string s and a string t, find the minimum window in s which will contain all the characters in t.
Hint: Monotonic sliding window. Use two hash maps to track character frequencies. Expand `right` until the window contains all target characters. Then shrink from `left` while the window remains valid. Track the minimum window length. Time: O(s + t), Space: O(s + t).

Aptitude: [Probability][Medium] In a class, there are 15 boys and 10 girls. Three students are selected at random. What is the probability that 1 girl and 2 boys are selected?
Hint: Total students = 25. Ways to select 3 = C(25,3) = (25×24×23)/(3×2×1) = 2300. Ways to select 1 girl = C(10,1) = 10. Ways to select 2 boys = C(15,2) = 105. Favorable ways = 10 × 105 = 1050. Probability = 1050 / 2300 = 21 / 46.

---

Q280.
MERN: [MongoDB][Medium][Product Company] How do you enable automatic creation of timestamps (`createdAt`, `updatedAt`) in Mongoose? Show the schema configuration.
Hint: Pass `{ timestamps: true }` as the second argument in the Schema constructor. Mongoose will automatically inject `createdAt` and `updatedAt` fields of type Date, and update `updatedAt` whenever you save the document. Example:
`const schema = new Schema({ name: String }, { timestamps: true });`

DSA: [Prefix Sum][Easy][Amazon] Design a data structure that supports range sum queries of an immutable array (find sum of elements between indices left and right).
Hint: Compute a prefix sum array where `prefix[i]` stores the sum of elements from index 0 to `i-1`. The range sum query for [L, R] can be computed in O(1) time as `prefix[R + 1] - prefix[L]`. Space: O(n) for prefix array.

Aptitude: [Probability][Medium] If three coins are tossed, what is the probability of getting at most one head?
Hint: Total outcomes = 2³ = 8. Outcomes with at most one head (0 or 1 head): TTT (0 heads), HTT, THT, TTH (1 head). Favorable outcomes = 4. Probability = 4/8 = 1/2.

---

Q281.
MERN: [React][Medium][Product Company] What is the difference between controlled and uncontrolled components in React? Provide code snippets for both.
Hint: Controlled: State is managed by React. Input value is linked to a React state variable, updated via `onChange`.
`const [val, setVal] = useState(''); <input value={val} onChange={e => setVal(e.target.value)}/>`
Uncontrolled: State is managed by the DOM. Access input values using a ref.
`const ref = useRef(); <input ref={ref}/>; console.log(ref.current.value);`
Use controlled for instant validation; uncontrolled for simple forms to avoid re-renders.

DSA: [Prefix Sum][Medium][Google] 🔴 MUST DO — Given an array of integers, find the total number of continuous subarrays whose sum equals K.
Hint: Use a prefix sum map. Store the frequency of prefix sums encountered. For each element, compute `curr_sum`. If `curr_sum - K` exists in the map, add its frequency to the result. Add `curr_sum` to the map. Time: O(n), Space: O(n).

Aptitude: [Probability][Medium-Hard] A problem in mathematics is given to three students whose chances of solving it are 1/2, 1/3, and 1/4 respectively. What is the probability that the problem is solved?
Hint: P(solved) = 1 - P(none of them solves it). P(A fails) = 1/2. P(B fails) = 2/3. P(C fails) = 3/4. P(none solves) = 1/2 × 2/3 × 3/4 = 1/4. P(solved) = 1 - 1/4 = 3/4.

---

Q282.
MERN: [React][Medium][Product Company] What is the difference between `useLayoutEffect` and `useEffect`? Draw a timeline showing when each runs relative to browser painting.
Hint: `useEffect` runs asynchronously AFTER the render is painted to the screen. Timeline: Render → Paint → useEffect.
`useLayoutEffect` runs synchronously AFTER DOM mutations but BEFORE the browser paints. Timeline: Render → useLayoutEffect → Paint. Use `useLayoutEffect` to measure DOM layout or prevent visual flickering.

DSA: [Prefix Sum][Medium][Amazon] 🟡 HIGH FREQUENCY — Given an array nums of n integers, return an array answer such that `answer[i]` is equal to the product of all the elements of nums except `nums[i]` in O(n) and without division.
Hint: Use prefix and suffix product concepts. Compute `left_products` where `left[i]` is product of elements to left of `i`. Then traverse backwards to compute right products on the fly, multiplying them into `left[i]`. Time: O(n), Space: O(1) auxiliary (excluding output array).

Aptitude: [Profit & Loss][Easy] A shopkeeper sells an article for ₹180 at a loss of 10%. At what price should he sell it to gain 10%?
Hint: Selling Price (SP) = ₹180, Loss = 10%. Cost Price (CP) = 180 / 0.9 = ₹200. To gain 10%, new SP = 200 × 1.1 = ₹220.

---

Q283.
MERN: [React][Medium][Product Company] How does the React Context + useReducer pattern work? How can it serve as a lightweight alternative to Redux?
Hint: You create a Context for the state and another Context for the dispatch function. Provide them at the root. Custom components consume them via `useContext`. useReducer defines state and dispatch. It offers structured actions and centralized state similar to Redux but lacks devtools, middleware (like thunk/saga), and optimization (entire tree consuming context re-renders on change).

DSA: [Recursion][Easy-Medium][Amazon] Write a recursive function to find the power of a number (calculate x^n) in O(log n) time.
Hint: Binary exponentiation (Divide & Conquer). If n is even, `power(x, n) = power(x, n/2) * power(x, n/2)`. If n is odd, `x * power(x, n-1)`. Handle negative values of n. Time: O(log n), Space: O(log n) stack space.

Aptitude: [Profit & Loss][Easy-Medium] A man bought apples at 3 for ₹10 and sold them at 2 for ₹10. What is his gain percent?
Hint: Cost Price (CP) of 1 apple = 10/3 = ₹3.33. Selling Price (SP) of 1 apple = 10/2 = ₹5. Gain = 5 - 3.33 = ₹1.67. Gain % = (1.67 / 3.33) × 100 = 50%.

---

Q284.
MERN: [React][Medium][Product Company] What are the differences between HOCs (Higher-Order Components) and Render Props? Show refactored examples of both sharing mouse position state.
Hint: HOC: function that takes a component and returns a new component: `const Enhanced = withMouse(Component)`. Render Prop: component that accepts a function returning JSX: `<Mouse render={pos => <Component pos={pos} />}/>`. HOCs can have name collisions and obscure prop sources; Render Props are more explicit but can cause "callback hell" in JSX nesting. Both are largely superseded by custom hooks.

DSA: [Recursion][Medium][Google] 🔴 MUST DO — Generate all subsets of a set of distinct integers (Power Set problem).
Hint: Backtracking / Recursion. For each element, we have two choices: include it in the current subset, or exclude it. Recurse for the next index. Base case: when index equals array length, add current subset clone to result. Time: O(n * 2^n), Space: O(n) stack.

Aptitude: [Profit & Loss][Easy-Medium] An article is sold at a gain of 15%. Had it been sold for ₹120 more, the gain would have been 20%. Find the cost price of the article.
Hint: Let Cost Price be CP. Difference in profit = 20% - 15% = 5%. 5% of CP = 120. CP = 120 / 0.05 = ₹2,400.

---

Q285.
MERN: [React][Medium][Product Company] What is `useSyncExternalStore`? Why was it introduced in React 18, and when should a library creator use it?
Hint: It is a hook that allows subscribing to external data stores (e.g., Redux, Zustand, window sizing APIs) in a way that is compatible with React 18's Concurrent rendering. It prevents "tearing" (inconsistent UI where different parts of screen show different data during the same render).

DSA: [Recursion][Medium][Amazon] 🟡 HIGH FREQUENCY — Write a recursive function to find all unique permutations of an array that may contain duplicates.
Hint: Sort the array first. Use a backtracking function with a visited array to track chosen indices. Skip duplicates by checking: `if (i > 0 && nums[i] == nums[i-1] && !visited[i-1]) continue`. Time: O(n! * n), Space: O(n) recursion stack.

Aptitude: [Profit & Loss][Medium] A shopkeeper marks his goods 20% above the cost price and allows a discount of 10%. Find his gain percent.
Hint: Let CP = 100. Marked Price (MP) = 100 × 1.2 = 120. Discount = 10% of 120 = 12. Selling Price (SP) = 120 - 12 = 108. Gain = 8%. Gain % = 8%.

---

Q286.
MERN: [TypeScript][Medium][Product Company] What is the difference between `type` and `interface` in TypeScript? Provide examples where one is preferred over the other.
Hint: Interface: supports declaration merging (same name interfaces merge), only describes objects/functions, uses `extends`. Type: supports unions, intersections, primitives, tuples, and mapped types. Use interface for public APIs or React component props (extensibility). Use type for unions: `type Status = 'loading' | 'success'`.

DSA: [Backtracking][Medium][Google] 🔴 MUST DO — Solve the N-Queens problem: place N queens on an NxN chessboard such that no two queens attack each other.
Hint: Backtracking. Place queens row by row. For each column, check if it's safe (no queen in same column, same left diagonal `row - col`, or same right diagonal `row + col`). Use sets to check safety in O(1). If safe, place queen and recurse. Time: O(N!), Space: O(N).

Aptitude: [Profit & Loss][Medium] A dishonest dealer professes to sell his goods at cost price but uses a weight of 900 grams for a kilogram. Find his gain percent.
Hint: Gain in weight = 1000g - 900g = 100g. Profit % = (Error / True value - Error) × 100 = (100 / 900) × 100 = 11.11%.

---

Q287.
MERN: [TypeScript][Medium][Product Company] Explain the `never` and `unknown` types in TypeScript. How do they improve type safety compared to `any`?
Hint: `unknown` is the type-safe counterpart of `any`. Any value is assignable to `unknown`, but you cannot perform operations on it without narrowing the type (using `typeof`, `instanceof`). `never` represents values that will never occur (e.g., a function that always throws or has an infinite loop). Prevents invalid operations at compile time.

DSA: [Backtracking][Medium][Amazon] Given a string of digits, return all possible letter combinations that the number could represent based on phone keypad mappings. (Letter Combinations of a Phone Number)
Hint: Use backtracking. Map digits to letters. Recurse through the input digits. For each digit, iterate through its corresponding letters, append to current combination string, and recurse for next digit. Base case: combination length equals digits length. Time: O(4^N), Space: O(N) recursion stack.

Aptitude: [Profit & Loss][Medium-Hard] A man buys 2 articles for ₹600. He sells one at 20% loss and the other at 30% gain. If the selling price of both articles is the same, find the cost price of both.
Hint: Let CP of first article be x, second be 600 - x. SP1 = 0.8x. SP2 = 1.3(600 - x) = 780 - 1.3x. Since SP1 = SP2: 0.8x = 780 - 1.3x → 2.1x = 780 → x = ₹371.42. Second article CP = 600 - 371.42 = ₹228.58.

---

Q288.
MERN: [TypeScript][Medium][Product Company] What are TypeScript Generics? Write a generic function `firstElement<T>` that returns the first element of an array, and a generic class `Box<T>`.
Hint: Generics create reusable, type-safe components that work with a variety of types. Example:
`function firstElement<T>(arr: T[]): T { return arr[0]; }`
`class Box<T> { contents: T; constructor(value: T) { this.contents = value; } }`

DSA: [Backtracking][Medium][Amazon] 🔴 MUST DO — Solve the Word Search problem: given a 2D board of characters and a word, find if the word exists in the grid. (Word can be constructed from sequentially adjacent cells).
Hint: DFS + Backtracking. For each cell, if it matches the first char, call recursive helper. Mark cell as visited (e.g., replace char with '#'), check adjacent 4 neighbors for next char, then backtrack by restoring the original char. Time: O(M * N * 4^L) where L is word length, Space: O(L) stack.

Aptitude: [Profit & Loss][Medium-Hard] A merchant bought two radios for ₹3200. He sold one at a loss of 25% and the other at a gain of 25%. If he did not gain or lose anything in the entire transaction, find the cost price of each radio.
Hint: Overall gain/loss = 0. So Loss on Radio 1 = Gain on Radio 2. 0.25 × CP1 = 0.25 × CP2 → CP1 = CP2. Since total is 3200, each radio CP = ₹1600.

---

Q289.
MERN: [REST API][Medium][Product Company] What are the differences between GET, POST, PUT, PATCH, and DELETE HTTP methods? Which are idempotent and why?
Hint: GET: read data. POST: create. PUT: replace resource. PATCH: partial update. DELETE: remove. Idempotent (calling multiple times has same state result): GET, PUT, DELETE, HEAD, OPTIONS. POST is NOT idempotent (creates duplicate records). PATCH is not guaranteed idempotent (e.g., adding to array).

DSA: [Backtracking][Medium][Google] Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target. Each number in candidates may only be used once in the combination. (Combination Sum II)
Hint: Sort candidates. Use backtracking. To avoid duplicate combinations, skip identical numbers at the same recursion depth: `if (i > start && candidates[i] == candidates[i-1]) continue`. Recurse with `i + 1`. Time: O(2^N), Space: O(N).

Aptitude: [Profit & Loss][Medium-Hard] By selling an article for ₹240, a man loses 10%. What should be the selling price of the article if he wishes to gain 20% on it?
Hint: SP = 240, Loss = 10%. CP = 240 / 0.9 = ₹266.67. Target gain = 20%. New SP = 266.67 × 1.2 = ₹320. Alternatively: 240 / 90 × 120 = ₹320.

---

Q290.
MERN: [REST API][Medium][Product Company] How do you design proper RESTful APIs for nested resources? (e.g. posts and comments). Show endpoint examples.
Hint: Use URL paths that mirror relationship hierarchy. Endpoints:
List comments for post 123: `GET /api/posts/123/comments`
Create comment for post 123: `POST /api/posts/123/comments`
Get specific comment: `GET /api/comments/456` (prefer flatter structure for individual resource actions)
Delete comment: `DELETE /api/comments/456`

DSA: [Backtracking][Hard][Microsoft] 🔴 MUST DO — Solve the Sudoku Solver problem. Fill empty cells of a 9x9 grid with digits 1-9 such that each row, column, and 3x3 subgrid contains each digit exactly once.
Hint: Backtracking. Traverse the grid. When an empty cell '.' is found, try placing digits '1' to '9'. For each digit, check if placing it is valid. If valid, recurse. If recursion returns true, puzzle is solved. If not, backtrack (set cell back to '.') and try next digit. Time: O(9^(N²)), Space: O(N²).

Aptitude: [Profit & Loss][Medium-Hard] A man sells a TV set at a profit of 20%. If he had bought it at 20% less and sold it for ₹100 less, he would have gained 25%. Find the cost price of the TV set.
Hint: Let CP = x. SP1 = 1.2x. New CP = 0.8x. New SP = 1.2x - 100. Profit % = 25%. So 1.2x - 100 = 1.25(0.8x) = x → 0.2x = 100 → x = ₹500.

---

Q291.
MERN: [Authentication][Medium][FAANG-Level] Describe the secure flow of JWT (JSON Web Tokens) Authentication in a MERN application. Where should the token be stored on the client side and why?
Hint: User registers/logs in → Server validates credentials and returns a short-lived access token and a long-lived refresh token. Store access token in-memory (React state/variable) for safety against XSS. Store refresh token in a secure, HTTP-only, SameSite Cookie for safety against CSRF and persistence across page refreshes.

DSA: [Linked List][Easy-Medium][Product Company] Remove all elements from a linked list of integers that have value equal to val.
Hint: Use a dummy head node pointing to the head of the list. Maintain a `curr` pointer starting at the dummy node. If `curr.next.val == val`, remove it by setting `curr.next = curr.next.next`. Otherwise, advance `curr`. Time: O(n), Space: O(1).

Aptitude: [Profit & Loss][Medium-Hard] A merchant buys 20 kg of wheat at ₹15 per kg and 30 kg of wheat at ₹13 per kg. He mixes them and sells the mixture at ₹16 per kg. Find his profit percentage.
Hint: Total cost = (20 × 15) + (30 × 13) = 300 + 390 = ₹690. Total weight = 50 kg. Total selling price = 50 × 16 = ₹800. Profit = 800 - 690 = ₹110. Profit % = (110 / 690) × 100 ≈ 15.94%.

---

Q292.
MERN: [Authentication][Medium][Product Company] What is the difference between Access Tokens and Refresh Tokens? Why do we use both instead of just one long-lived access token?
Hint: Access Token: short-lived (e.g. 15 min), used to authorize API requests. If compromised, attacker has limited window. Refresh Token: long-lived (e.g. 7 days), used only to request new access tokens. If access token expires, client fetches new one in background without asking user to re-login. Reduces breach impact.

DSA: [Linked List][Easy-Medium][Amazon] Given a linked list, determine if it has a cycle in it (Floyd's Cycle Detection I).
Hint: Two pointers: `slow` and `fast`. Move `slow` one step, `fast` two steps. If there is a cycle, the `fast` pointer will eventually meet the `slow` pointer. If `fast` or `fast.next` reaches null, there is no cycle. Time: O(n), Space: O(1).

Aptitude: [Blood Relations][Medium] A's mother is sister of B and daughter of C. D is the daughter of B and sister of E. How is C related to E?
Hint: A's mother is sister of B, so B is sibling of A's mother. C is mother/father of B and A's mother (parent of B). D is daughter of B and sister of E (so E is child of B). Since C is parent of B, C is grandparent (grandmother/grandfather) of E.

---

Q293.
MERN: [Authentication][Medium][Product Company] What are the security risks associated with storing JWTs in `localStorage`? How does storing them in cookies mitigate these risks?
Hint: `localStorage` is accessible by any JS script running on the same domain. If your site has an XSS (Cross-Site Scripting) vulnerability, an attacker can steal the JWT. HTTP-only cookies cannot be accessed by client-side JS (`document.cookie` returns empty), preventing token theft via XSS.

DSA: [Linked List][Easy-Medium][Product Company] Remove duplicate nodes from a sorted singly linked list such that each element appears only once.
Hint: Maintain a pointer `curr`. While `curr` and `curr.next` are not null: if `curr.val == curr.next.val`, bypass the duplicate by setting `curr.next = curr.next.next`. Otherwise, move `curr = curr.next`. Time: O(n), Space: O(1).

Aptitude: [Probability][Easy-Medium] In a class, 30% of the students study Hindi, 45% study English and 15% study both. If a student is selected at random, what is the probability that he studies Hindi or English?
Hint: P(H) = 0.30. P(E) = 0.45. P(H ∩ E) = 0.15. P(H ∪ E) = P(H) + P(E) - P(H ∩ E) = 0.30 + 0.45 - 0.15 = 0.60. Probability = 3/5.

---

Q294.
MERN: [Authentication][Medium][Product Company] Explain the concept of Refresh Token Rotation. How does it protect against token theft?
Hint: Every time the client uses a refresh token to get a new access token, the server also issues a NEW refresh token and invalidates the old one. If an attacker steals a refresh token, they will try to use it. If the user also uses it (or vice-versa), the server detects reuse of an old token, assumes a breach, and invalidates the entire family of refresh tokens, forcing re-login.

DSA: [Linked List][Medium][Amazon] Given a singly linked list, swap every two adjacent nodes and return its head (e.g. 1->2->3->4 -> 2->1->4->3). (Pairwise Swap)
Hint: Use a dummy node pointing to head. Maintain `prev` pointing to dummy. Swap the next two nodes: `first = prev.next`, `second = first.next`. Update pointers: `first.next = second.next`, `second.next = first`, `prev.next = second`. Move `prev = first`. Time: O(n), Space: O(1).

Aptitude: [Probability][Medium] Two cards are drawn from a pack of 52 cards. What is the probability that one is a spade and the other is a heart?
Hint: Favorable cards: 1 Spade (from 13) and 1 Heart (from 13). Favorable ways = 13 × 13 = 169. Total ways to draw 2 cards = C(52,2) = (52 × 51) / 2 = 1326. Probability = 169 / 1326 = 13 / 102.

---

Q295.
MERN: [Authentication][Medium][Product Company] How do you handle password hashing in a MERN stack? Why is hashing with a salt (e.g., using `bcrypt`) superior to plain hashing (e.g., SHA-256)?
Hint: Plain hashing is vulnerable to rainbow table attacks (precomputed hashes) and dictionary attacks. Salting adds random data to the password before hashing, producing different hashes even for identical passwords. `bcrypt` also uses a key-derivation function that is intentionally slow (computationally heavy), making brute-force attacks impractical.

DSA: [Linked List][Medium][Microsoft] Given a linked list, rotate the list to the right by k places, where k is non-negative.
Hint: Find length of list `L` and make list circular by connecting tail to head. Compute actual shifts: `k = k % L`. Find new tail at position `L - k` from the head. Break the circle at this tail, set its next to null, and return the new head. Time: O(n), Space: O(1).

Aptitude: [Time-Speed-Distance][Easy-Medium] A man covers a distance in 40 minutes by running at a speed of 12 km/h. At what speed should he run to cover the same distance in 30 minutes?
Hint: Distance = Speed × Time = 12 km/h × (40/60) h = 8 km. Target speed to cover 8 km in 30 mins (0.5 h) = 8 / 0.5 = 16 km/h.

---

Q296.
MERN: [Authentication][Medium][Product Company] What is OAuth 2.0? How does it differ from JWT authentication, and what are the main roles in the OAuth spec?
Hint: JWT is a token format used for authentication. OAuth 2.0 is an authorization framework that allows third-party apps to access user data without password sharing (e.g. Google Login). Roles: Resource Owner (user), Client (React App), Authorization Server (Google Auth), Resource Server (Google API).

DSA: [Linked List][Medium][Google] Given a linked list where each node has a next pointer and a child pointer pointing to a separate list, flatten the list into a single level.
Hint: Use a DFS approach or queue. Traverse list. When a node with a child is found, save its next node. Append child list after current node. Traverse child list to its tail, then connect the tail to the saved next node. Repeat. Time: O(n), Space: O(1) in-place.

Aptitude: [SI/CI][Medium] A sum of money double itself in 10 years at simple interest. What is the rate of interest per annum?
Hint: Let Principal = P. Amount = 2P, so Simple Interest (SI) = P. SI = P × R × T / 100 → P = P × R × 10 / 100 → R = 10%.

---

Q297.
MERN: [MERN Integration][Medium][Product Company] Explain the request-response lifecycle of a login request in a MERN stack.
Hint: 1) Client: React form gathers input, validates, sends `POST /api/auth/login` with JSON payload. 2) Network: DNS resolution, HTTP request sent over TCP. 3) Server: Express parses JSON (body parser), routes to login controller. 4) Controller: Validates input, queries MongoDB for user. 5) DB: Performs lookup, returns user doc. 6) Server: Compares password via `bcrypt`, generates JWT, returns 200 OK with cookies. 7) Client: Receives response, stores access token in state, navigates to dashboard.

DSA: [Stack][Medium][Product Company] Implement a Stack using Queues. What are the trade-offs of the push-heavy vs pop-heavy approaches?
Hint: Use two queues `q1` and `q2`. Push-heavy: enqueue to `q1` (O(1)). Pop: shift all elements except last from `q1` to `q2`, return last element, swap names. (Pop is O(n)). Pop-heavy: enqueue to `q2`, transfer all from `q1` to `q2`, swap names (Push is O(n), Pop is O(1)). Choose based on read/write frequency.

Aptitude: [Probability][Easy-Medium] In a simultaneous throw of two coins, what is the probability of getting at least one head?
Hint: Sample space = {HH, HT, TH, TT} = 4. Favorable outcomes = {HH, HT, TH} = 3. Probability = 3/4.

---

Q298.
MERN: [MERN Integration][Medium][Product Company] How do you handle file uploads in a MERN application? Explain the role of `multer` on the backend.
Hint: Frontend: Use `<input type="file">`, wrap file in a `FormData` object, send via Axios with `headers: { 'Content-Type': 'multipart/form-data' }`. Backend: Express doesn't parse multipart natively. Use `multer` middleware to intercept request, parse file buffer, store it locally (or in memory) and populate `req.file` (or `req.files`) for controller.

DSA: [Stack][Medium][Google] 🔴 MUST DO — Implement the "Daily Temperatures" problem: given an array of temperatures, return an array such that `result[i]` is the number of days you have to wait until a warmer temperature.
Hint: Monotonic decreasing stack. Traverse the array. For each temperature, while the stack is not empty and the current temperature is greater than the temperature at the index stored at the top of the stack, pop from stack and calculate diff: `res[popped_index] = curr_index - popped_index`. Push `curr_index` to stack. Time: O(n), Space: O(n).

Aptitude: [Coding-Decoding][Easy-Medium] If in a certain language, "COVET" is written as "FRYHW", how is "SHINE" written?
Hint: C (+3) = F, O (+3) = R, V (+3) = Y, E (+3) = H, T (+3) = W. Shift is +3. "SHINE" shifted: S+3=V, H+3=K, I+3=L, N+3=Q, E+3=H. So "SHINE" is written as "VKLQH".

---

Q299.
MERN: [MERN Integration][Medium][Product Company] Show how to structure an Express API using controllers, routes, models, and middlewares. Why is this separation of concerns essential?
Hint: Folder structure: `src/` containing `routes/` (defines endpoints), `controllers/` (handles request logic), `models/` (defines DB schema), `middlewares/` (auth, validation, errors), `config/` (DB connections). Separation makes the codebase modular, testable, maintainable, and allows developers to work on features concurrently without git conflicts.

DSA: [Stack][Medium][Product Company] Implement a Queue using Stacks. What are the trade-offs of the enqueue-heavy vs dequeue-heavy approaches?
Hint: Use two stacks `s1` and `s2`. Enqueue-heavy: push to `s1` (O(1)). Dequeue: if `s2` is empty, pop all from `s1` and push to `s2`. Pop from `s2` (Amortized O(1) dequeue). Dequeue-heavy: push to `s2`, pop all from `s1` to `s2`, push new element to `s1`, pop all from `s2` to `s1` (Enqueue is O(n), Dequeue is O(1)).

Aptitude: [Time & Work][Easy-Medium] If 15 men can build a wall 100m long in 6 days, how many men are required to build a similar wall 50m long in 3 days?
Hint: MDH/W = constant. (M1 × D1) / W1 = (M2 × D2) / W2 → (15 × 6) / 100 = (M2 × 3) / 50. 90 / 100 = 3M2 / 50 → 0.9 = 3M2 / 50 → 45 = 3M2 → M2 = 15 men.

---

Q300.
MERN: [MERN Integration][Medium][Product Company] How do you handle centralized error handling in an Express app? Show a complete example containing a custom Error class and middleware.
Hint: Create `CustomError` extending `Error` adding `statusCode`. Catch errors in controllers and pass to `next(err)`. Express error middleware at bottom intercepts it.
`class AppError extends Error { constructor(message, statusCode) { super(message); this.statusCode = statusCode; } }`
`app.use((err, req, res, next) => { res.status(err.statusCode || 500).json({ error: err.message || 'Internal Server Error' }); });`

DSA: [Stack][Medium][Amazon] 🔴 MUST DO — Given an array of integers, find the next greater element for each element. The next greater element of an element x is the first greater element to its right. If it does not exist, return -1.
Hint: Monotonic decreasing stack. Traverse array from right to left. While stack is not empty and `stack.top <= arr[i]`, pop. If stack is empty, next greater is -1; else next greater is `stack.top`. Push `arr[i]` to stack. Time: O(n), Space: O(n).

Aptitude: [SI/CI][Medium] The compound interest on a sum for 2 years at 10% per annum is ₹420. Find the simple interest on the same sum at the same rate and for the same time.
Hint: CI = P × [(1 + R/100)² - 1] → 420 = P × [(1.1)² - 1] → 420 = P × 0.21 → P = ₹2000. Simple Interest (SI) = P × R × T / 100 = 2000 × 10 × 2 / 100 = ₹400.

---

## 📝 REVISION CHECKPOINT — Q201 to Q300

### Top Patterns Learned
1. **React State & Context**: Solved prop drilling with Context API, understood re-rendering limitations, and explored alternative global state managers like Zustand and Redux Toolkit.
2. **Intermediate TypeScript**: Mastered generic components in React, TypeScript utility types (`Partial`, `Omit`, `Pick`, `Readonly`), and typing event handlers/asynchronous API requests.
3. **Advanced Backend & Auth**: Implemented secure JWT auth flows with access/refresh token rotation and secure HTTP-only cookies. Explored Express MVC folder architectures and centralized custom error hierarchies.
4. **DSA Concepts**:
   - *Linked Lists*: Floyd's cycle detection, list reversal, middle discovery, and list rotations.
   - *Stacks & Queues*: Monotonic stacks (Next Greater Element, Daily Temperatures), evaluating postfix expressions, circular queues, and Hit Counters.
   - *Binary Search*: Search in rotated sorted arrays, search in 2D matrices, peak elements, and allocation bounds (Book Allocation / Student distribution).
   - *Recursion & Backtracking*: Subset generation, unique permutations, phone letter combinations, N-Queens, Word Search, and Sudoku.
5. **Aptitude Formulas**: Relative speed, boat upstream/downstream times, probability of combined card/dice selections, conditional probability, permutation formulas for line seating, and successive marked price gain/loss calculations.

### Most Important Concepts
- 🔴 JWT Token Rotation to prevent token replay attacks (Q294)
- 🔴 Monotonic Stack pattern for Daily Temperatures and Next Greater Element (Q298, Q300)
- 🔴 Binary Search on answer space for Book Allocation (Q275)
- 🔴 Backtracking pruning techniques for Sudoku and N-Queens (Q286, Q290)
- 🔴 Floyd's slow-fast pointer meeting points for cycles and palindrome checks (Q254, Q256, Q292)

### Revision Checklist
- [ ] Can you set up a slice using Redux Toolkit from scratch?
- [ ] Do you know when to use `useLayoutEffect` over `useEffect`?
- [ ] Can you implement Floyd's cycle detection and locate the cycle's starting node?
- [ ] Can you solve the "Next Greater Element" problem using a Monotonic Stack in O(n)?
- [ ] Can you find a target in a Rotated Sorted Array in O(log n) time?
- [ ] Can you write a recursive backtracking function to solve the N-Queens problem?
- [ ] Can you write a custom express error handler class and middleware?

---
# ⭐⭐ INTERMEDIATE ROADMAP — Q301 to Q350

## React Hooks, Optimization | Stacks & Queues, Binary Search | SI/CI, Mixtures, Syllogisms, Reading Comprehension

---

Q301.
MERN: [React][Medium][Product Company] What is the difference between `React.memo` and `useMemo`? When should you use each, and when does memoization actually hurt performance?
Hint: `React.memo` is a Higher-Order Component that memoizes the entire component to prevent re-renders if props don't change. `useMemo` is a hook that memoizes a calculated value within a component. Memoization hurts performance when: 1) props/values change on every render (overhead of comparison without savings) 2) for simple calculations (adds more memory/CPU overhead than recalculation).

DSA: [Stack][Medium][Amazon] 🔴 MUST DO — Implement a Stack that supports push, pop, top, and retrieving the minimum element in O(1) time (Min Stack problem).
Hint: Keep a main stack for values and an auxiliary stack to keep track of the minimums. Or store pairs (value, min_so_far) in a single stack. Time: O(1) all operations, Space: O(n).

Aptitude: [SI/CI][Easy-Medium] Find the difference between the compound interest and simple interest on ₹8,000 at 5% per annum for 2 years.
Hint: SI = P × R × T / 100 = 8000 × 5 × 2 / 100 = ₹800. CI = 8000(1 + 0.05)² - 8000 = 8000(1.1025) - 8000 = 8820 - 8000 = ₹820. Difference = CI - SI = 820 - 800 = ₹20. Alternatively: Diff for 2 years = P(R/100)² = 8000 × (5/100)² = 8000 × 0.0025 = ₹20.

---

Q302.
MERN: [React][Medium][Product Company] Compare `useReducer` and `useState`. When is `useReducer` preferred over `useState`? Show a simple reducer state transition.
Hint: `useState` is ideal for simple, independent state variables. `useReducer` is preferred when: 1) state logic is complex, containing multiple sub-values 2) the next state depends on the previous state 3) you need to update state across deeply nested components (by passing dispatch down via Context). Reducer transition:
`const reducer = (state, action) => { switch (action.type) { case 'inc': return { count: state.count + 1 }; default: return state; } }`

DSA: [Stack][Medium][Microsoft] 🔴 MUST DO — Given a string containing brackets `()[]{}`, determine if the input string is valid (Valid Parentheses).
Hint: Use a stack. Traverse the string character by character. If opening bracket, push to stack. If closing bracket, check if stack is empty or if the top of stack doesn't match the closing bracket; if so, return false. Otherwise pop the top. At the end, return true if stack is empty. Time: O(n), Space: O(n).

Aptitude: [Mixtures][Easy-Medium] In what ratio must a grocer mix tea costing ₹60/kg and ₹65/kg so that the mixture is worth ₹62/kg?
Hint: Use the rule of alligation. (Cheaper Tea CP) = 60, (Dearer Tea CP) = 65, (Mean Price) = 62.
Ratio = (Dearer Price - Mean Price) : (Mean Price - Cheaper Price) = (65 - 62) : (62 - 60) = 3 : 2.

---

Q303.
MERN: [React][Medium][Product Company] Write a custom React hook `useFetch` that takes a URL and returns `{ data, loading, error }`. Address cleanup/cancellation to prevent memory leaks on unmount.
Hint: Use `AbortController` to cancel fetch requests on cleanup. Example:
`useEffect(() => { const abortController = new AbortController(); fetch(url, { signal: abortController.signal }).then(r => r.json()).then(setData).catch(setError).finally(() => setLoading(false)); return () => abortController.abort(); }, [url]);`

DSA: [Stack][Medium][Amazon] 🟡 HIGH FREQUENCY — Simplify a Unix-style absolute path (e.g., "/a/./b/../../c/" -> "/c").
Hint: Split path by "/". Iterate through components. If component is "" or ".", do nothing. If "..", pop from stack (if not empty). Else, push component to stack. Join stack elements with "/". Time: O(n), Space: O(n).

Aptitude: [Syllogisms][Easy] **Statements**: All books are pens. All pens are pencils.
**Conclusions**:
1. All books are pencils.
2. All pencils are books.
Which conclusion(s) logically follow?
Hint: 1 follows, 2 does not. Visualizing with Venn diagrams: the circle representing "books" is inside the circle of "pens", which is inside the circle of "pencils". Thus, all books are inside the pencil circle. However, there can be pencils outside the book circle.

---

Q304.
MERN: [React][Medium][Product Company] What are the limitations of React Context API? Why is it NOT considered a complete state management library like Redux or Zustand?
Hint: Context is a dependency injection tool, not a state manager. Limitations: 1) No built-in way to handle side effects (async logic) 2) Any state change in context triggers re-render of ALL consuming components, regardless of whether they use the specific changed slice (causing performance issues) 3) Lacks middleware, devtools, and state selectors.

DSA: [Stack][Medium][Google] 🔴 MUST DO — Generate all valid combinations of n pairs of parentheses.
Hint: Backtracking / Recursion. Keep track of count of open and close brackets used. If open < n, we can add '('. If close < open, we can add ')'. If length of string equals 2n, add to results. Time: O(4^n / √n) Catalan number, Space: O(n) stack.

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "The internet has transformed global communication, making it near-instantaneous. However, this convenience has come at the cost of deep reading habits, as readers consume fragmented snippets of information rather than lengthy texts."
**Question**: What is the main drawback of internet communication mentioned in the passage?
Hint: The drawback is the decline of deep reading habits, as readers consume fragmented snippets of information instead of reading lengthy texts.

---

Q305.
MERN: [Node.js][Medium][Product Company] Explain the Node.js `cluster` module. How does it help scale Node.js applications horizontally across multiple CPU cores?
Hint: Node.js runs on a single thread. The `cluster` module allows you to spawn multiple worker processes (forks of the master process) that share the same server port. Master process acts as load balancer using round-robin scheduling. Workers run in separate V8 instances on different CPU cores, improving concurrency.

DSA: [Queue][Medium][Amazon] 🔴 MUST DO — Design a hit counter which counts the number of hits received in the past 300 seconds (5 minutes).
Hint: Use a queue containing timestamps. For every `hit(timestamp)`, enqueue the timestamp. For `getHits(timestamp)`, dequeue all timestamps from the front of the queue that are less than or equal to `timestamp - 300`. Return the queue size. Time: O(1) amortized, Space: O(300) max.

Aptitude: [SI/CI][Medium] A sum of money at compound interest doubles itself in 15 years. It will become eight times of itself in how many years?
Hint: Let Principal be P. A = 2P in 15 years. (1 + R/100)^15 = 2.
We want Amount = 8P. 8P = P × (2)³ = P × [(1 + R/100)^15]³ = P × (1 + R/100)^45. So it will take 45 years.

---

Q306.
MERN: [Node.js][Medium][Product Company] What are Worker Threads in Node.js? How do they differ from the `cluster` module, and when should you use them?
Hint: `cluster` spawns entirely separate OS processes with isolated memory (great for scaling HTTP servers). `worker_threads` spawns threads inside the SAME process, sharing memory via `SharedArrayBuffer` (great for CPU-intensive tasks like image processing, cryptography, or sorting massive datasets without process overhead).

DSA: [Queue][Medium][Amazon] 🟡 HIGH FREQUENCY — Implement a queue using two stacks. Analyze the amortized time complexity of enqueue and dequeue operations.
Hint: Push to stack1. Pop: if stack2 is empty, pop all from stack1 and push to stack2, then pop from stack2. Enqueue: O(1). Dequeue: Amortized O(1) because each element is pushed twice and popped twice across stacks.

Aptitude: [Mixtures][Medium] A vessel contains 40 liters of milk. From this container, 4 liters of milk were taken out and replaced by water. This process was repeated two more times. How much milk is now contained by the container?
Hint: Formula for remaining liquid: `Final = Initial × (1 - x/V)^n`.
Initial milk = 40, x = 4, V = 40, n = 3.
Final Milk = 40 × (1 - 4/40)³ = 40 × (0.9)³ = 40 × 0.729 = 29.16 liters.

---

Q307.
MERN: [Node.js][Medium][Product Company] What is the difference between CommonJS and ES Modules (ESM) in Node.js? How do you enable ESM in a Node.js project?
Hint: CommonJS uses `require()` and `module.exports` (synchronous, parsed at runtime). ESM uses `import` and `export` (asynchronous, parsed at compile time, enables tree-shaking). Enable ESM by adding `"type": "module"` in `package.json` or by using the `.mjs` file extension.

DSA: [Queue][Easy-Medium][Product Company] Implement a Circular Queue with fixed capacity using an array.
Hint: Use front and rear pointers and modulo arithmetic: `rear = (rear + 1) % capacity`. Check full: `(rear + 1) % capacity == front`. Check empty: `front == -1`. Ensures O(1) all operations without shifting elements.

Aptitude: [Syllogisms][Easy-Medium] **Statements**: Some actors are singers. All singers are dancers.
**Conclusions**:
1. Some actors are dancers.
2. No singer is an actor.
Which conclusion(s) logically follow?
Hint: Only 1 follows. Some actors are singers (intersection). Since all singers are dancers, the intersection of actors and singers is also inside the dancers set. Thus, some actors are dancers. Conclusion 2 contradicts the statement "Some actors are singers".

---

Q308.
MERN: [Node.js][Medium][Product Company] Explain Node.js Streams. What are the four types of streams, and why are they crucial for handling large files or payloads?
Hint: Readable (read data), Writable (write data), Duplex (both), Transform (modify data). Streams process data in chunks (default 16KB) instead of loading the entire file into memory at once, preventing Out-Of-Memory (OOM) crashes in Node.js.

DSA: [Queue][Medium][Amazon] Design a double-ended queue (Deque) using a doubly linked list.
Hint: Deque supports insert/delete from both front and rear in O(1). Maintain `head` and `tail` pointers. Every node has `val`, `prev`, and `next` pointers. Update pointers carefully during insertion and deletion.

Aptitude: [Grammar][Easy-Medium] Correct the sentence: "Each of the employees were given a bonus." Explain the subject-verb agreement rule.
Hint: "Each of the employees **was** given a bonus." Rule: "Each" is a singular pronoun and requires a singular verb ("was"), even when followed by a plural prepositional phrase ("of the employees").

---

Q309.
MERN: [Node.js][Medium][Product Company] What is backpressure in Node.js streams? How does the pipeline API handle it automatically?
Hint: Backpressure happens when a readable stream reads data faster than the writable stream can write it, leading to memory build-up. The pipeline API `stream.pipeline(read, transform, write, callback)` manages backpressure automatically by pausing the readable stream when the writable stream's buffer is full.

DSA: [Queue][Medium][Google] 🔴 MUST DO — Design a queue that supports push, pop, peek, and retrieving the maximum element in constant time O(1).
Hint: Monotonic Deque approach. Use a main queue for elements and a double-ended queue (deque) to store candidates for maximums. When pushing x, pop from back of deque all elements smaller than x. When popping from main, if popped element equals front of deque, pop from front of deque. Time: O(1) amortized, Space: O(n).

Aptitude: [SI/CI][Medium] A sum of ₹12,000 deposited at CI becomes double after 5 years. After 20 years, it will become:
Hint: Amount doubles in 5 years. 20 years = 4 cycles of 5 years.
A = Principal × 2^n where n = 4. Amount = 12000 × 2⁴ = 12000 × 16 = ₹1,92,000.

---

Q310.
MERN: [Node.js][Medium][Product Company] What is the `EventEmitter` class in Node.js? How do you inherit from it to create a custom event emitter class?
Hint: `EventEmitter` is a class in the `events` module that handles event listeners and emission. Inherit via ES6 `extends`:
`const EventEmitter = require('events'); class Logger extends EventEmitter { log(msg) { console.log(msg); this.emit('logged', msg); } }`
Client consumes via `logger.on('logged', handler)`.

DSA: [Queue][Medium-Hard][Google] 🟡 HIGH FREQUENCY — Find the maximum element in each sliding window of size k (Sliding Window Maximum).
Hint: Monotonic Deque. Store indices of array elements in the deque. Remove indices that are out of the current window (`index <= i - k`). Remove indices of elements smaller than the current element from the back. Front of deque is the max element index. Time: O(n), Space: O(k).

Aptitude: [Mixtures][Medium] How many kilograms of sugar costing ₹9/kg must be mixed with 27 kg of sugar costing ₹7/kg so that there may be a gain of 10% by selling the mixture at ₹9.24/kg?
Hint: Gain = 10%, SP = 9.24. Mean CP = 9.24 / 1.1 = ₹8.40/kg.
Alligation: Cheaper (7), Dearer (9), Mean (8.4).
Ratio = (9 - 8.4) : (8.4 - 7) = 0.6 : 1.4 = 3 : 7.
Let sugar costing ₹9/kg be x. x / 27 = 3 / 7 → x = 81 / 7 ≈ 11.57 kg.

---

Q311.
MERN: [Node.js][Medium][Product Company] What is the `child_process` module? Compare `exec`, `spawn`, and `fork` in terms of memory and performance.
Hint: `exec`: runs command in a shell, buffers entire output in memory (good for quick commands). `spawn`: runs command in a new process, streams output via stdout/stderr (good for long-running processes/large data). `fork`: specialized version of spawn to run Node modules with an IPC channel for message passing (ideal for background CPU tasks).

DSA: [Binary Search][Easy][Product Company] 🔴 MUST DO — Given a sorted array and a target, return index if found; else return the index where it would be inserted (Search Insert Position).
Hint: Standard binary search. If target not found, the left pointer terminates at the insertion index. Time: O(log n), Space: O(1).

Aptitude: [Syllogisms][Easy-Medium] **Statements**: All cats are dogs. No dog is a cow.
**Conclusions**:
1. No cow is a cat.
2. Some dogs are cats.
Which conclusion(s) logically follow?
Hint: Both 1 and 2 follow. Since all cats are dogs, and no dog is a cow, cats are completely separated from cows (1 is true). All cats are dogs, so there must be some dogs that are cats (2 is true).

---

Q312.
MERN: [Node.js][Medium][Product Company] How do you handle uncaught exceptions and unhandled promise rejections in Node.js to prevent abrupt server crashes?
Hint: Listen to process events:
`process.on('uncaughtException', (err) => { console.error(err); process.exit(1); })` (always exit after uncaught exceptions as state is compromised).
`process.on('unhandledRejection', (reason, promise) => { console.error(reason); })` (safe to log without exiting).

DSA: [Binary Search][Medium][Amazon] 🔴 MUST DO — Find the peak element in an array (strictly greater than its neighbors).
Hint: Binary search. If `arr[mid] < arr[mid+1]`, there is a peak on the right half (`left = mid + 1`). Else, the peak is on the left half (`right = mid`). Time: O(log n), Space: O(1).

Aptitude: [Vocabulary][Easy] Choose the correct synonym of 'OBDURATE': (a) Flexible (b) Stubborn (c) Fragile (d) Generous.
Hint: (b) Stubborn. Obdurate means stubbornly refusing to change one's opinion or course of action.

---

Q313.
MERN: [Node.js][Medium][Product Company] What is a Buffer in Node.js? Why is it needed, and how do you convert a Buffer to a string and vice-versa?
Hint: JavaScript originally had no mechanism for reading or manipulating streams of binary data. Buffer class represents a raw allocation of memory outside the V8 heap. Convert:
`const buf = Buffer.from('hello', 'utf-8');`
`const str = buf.toString('utf-8');`

DSA: [Binary Search][Medium][Google] 🟡 HIGH FREQUENCY — Search for a target in a rotated sorted array.
Hint: Mid point splits array into one sorted half and one unsorted. Check which half is sorted: `arr[left] <= arr[mid]`. Check if target lies within that sorted half range. If so, search there; else search the other half. Time: O(log n), Space: O(1).

Aptitude: [SI/CI][Medium] A sum of money invested at compound interest amounts to ₹4,624 in 2 years and ₹4,913 in 3 years. Find the rate of interest per annum.
Hint: Amount after 3 years / Amount after 2 years = 1 + R/100.
4913 / 4624 = 1 + R/100 → 1.0625 = 1 + R/100 → R/100 = 0.0625 → R = 6.25%.

---

Q314.
MERN: [Express][Medium][Product Company] What is the request-response lifecycle of an Express API? Explain how middleware chains work.
Hint: Client Request → Router → Middleware 1 → Middleware 2 → Controller Router → Response. Middlewares are functions that have access to req, res, and next. They execute sequentially. If a middleware doesn't call `next()` or send a response, the request hangs.

DSA: [Binary Search][Medium][Amazon] 🔴 MUST DO — Find the first and last position of a target element in a sorted array (return [-1, -1] if not found).
Hint: Run two separate binary searches. To find the first position, narrow search to the left when target is found: `right = mid - 1`. To find the last position, narrow search to the right: `left = mid + 1`. Time: O(log n), Space: O(1).

Aptitude: [Mixtures][Medium] A mixture contains milk and water in the ratio 5:1. On adding 5 liters of water, the ratio of milk to water becomes 5:2. Find the quantity of milk in the mixture.
Hint: Let milk be 5x, water be x. (5x) / (x + 5) = 5/2 → 10x = 5x + 25 → 5x = 25 → x = 5. Milk quantity = 5x = 25 liters.

---

Q315.
MERN: [Express][Medium][Product Company] How do you handle centralized error handling in Express? Show the code for custom error class and error handler middleware.
Hint: Create CustomError: `class AppError extends Error { constructor(msg, status) { super(msg); this.statusCode = status; } }`. Error middleware: `app.use((err, req, res, next) => { res.status(err.statusCode || 500).json({ error: err.message }); })`. Controllers call `next(new AppError('Forbidden', 403))`.

DSA: [Binary Search][Medium][Amazon] Search a 2D Matrix of size m x n where each row and column is sorted in ascending order.
Hint: Start search from top-right corner `(0, n-1)`. If target is smaller than current, move left (`col--`). If target is larger, move down (`row++`). Time: O(m + n), Space: O(1).

Aptitude: [Syllogisms][Easy-Medium] **Statements**: Some pens are books. Some books are pencils.
**Conclusions**:
1. Some pens are pencils.
2. No pen is a pencil.
Which conclusion(s) logically follow?
Hint: Either 1 or 2 follows (complementary pair). A pen can either be a pencil or not be a pencil. Since there is no direct link between pens and pencils in the statements, both are individual possibilities, forming an "either-or" scenario.

---

Q316.
MERN: [Express][Medium][Product Company] What is CORS (Cross-Origin Resource Sharing) middleware in Express? How does the browser preflight OPTIONS request relate to CORS?
Hint: CORS is a browser safety feature. Cross-origin request triggers a preflight `OPTIONS` request. Browser asks server if origin is allowed. Server must respond with `Access-Control-Allow-Origin` and allowed methods. express `cors` handles this: `app.use(cors({ origin: 'https://frontend.com' }))`.

DSA: [Binary Search][Medium][Google] Search in a Rotated Sorted Array containing duplicate elements.
Hint: If `arr[left] == arr[mid] == arr[right]`, we cannot determine which half is sorted. Decrement right and increment left to reduce search space. Otherwise, follow standard rotated search logic. Time: O(log n) average, O(n) worst case.

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "Technological automation is shifting employment demands. Routine cognitive and manual tasks are increasingly automated, making creative and interpersonal skills the new focal point of professional value."
**Question**: According to the passage, what skills are gaining value in the automated job market?
Hint: Creative and interpersonal skills are gaining value as routine tasks become automated.

---

Q317.
MERN: [Express][Medium][Product Company] How do you log HTTP requests in an Express API? Show how to configure `morgan` and write a custom logger middleware.
Hint: Use `morgan('dev')` or `morgan('combined')` for standard logs. Custom logger:
`app.use((req, res, next) => { console.log(`${req.method} ${req.url} - ${new Date().toISOString()}`); next(); });`
For production, use robust libraries like `winston` or `pino` for JSON-formatted logs.

DSA: [Binary Search][Medium][Product Company] Find the minimum element in a rotated sorted array.
Hint: Binary search. Compare `arr[mid]` with `arr[right]`. If `arr[mid] > arr[right]`, the minimum lies on the right half (`left = mid + 1`). Else, the minimum is on the left half or is mid itself (`right = mid`). Time: O(log n), Space: O(1).

Aptitude: [SI/CI][Medium-Hard] A person borrowed ₹20,000 at 10% per annum compound interest, interest being compounded semi-annually. What is the compound interest for 1 year?
Hint: Semiannual rate = R/2 = 5%. Time cycles = 2.
Amount = 20000(1 + 0.05)² = 20000 × 1.1025 = ₹22,050. CI = 22050 - 20000 = ₹2,050.

---

Q318.
MERN: [Express][Medium][Product Company] How do you handle file uploads in Express? Show how to configure `multer` to accept single files and save them to a `uploads/` directory.
Hint: Multer parses `multipart/form-data`. Setup:
`const upload = multer({ dest: 'uploads/' }); app.post('/upload', upload.single('avatar'), (req, res) => { console.log(req.file); res.send('Uploaded'); });`
Generates file object in `req.file` with path, filename, size, etc.

DSA: [Binary Search][Medium-Hard][Google] Find a peak element in a 2D matrix (an element that is larger than all its 4 neighbors).
Hint: Binary search on columns. Find the maximum element in the middle column `mid`. Compare it to its left and right neighbors in the same row. If left is greater, search left half; if right is greater, search right half; else, it is a 2D peak. Time: O(rows * log(cols)), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] A milkman buys milk at ₹24 per liter and mixes 1/5th water into it. If he sells the mixture at ₹26 per liter, find his gain percentage.
Hint: Let him buy 5 liters of milk. Cost price = 5 × 24 = ₹120. Water added = 1 liter (free). Total mixture = 6 liters. Selling price = 6 × 26 = ₹156. Gain = 156 - 120 = ₹36. Gain % = (36 / 120) × 100 = 30%.

---

Q319.
MERN: [Express][Medium][Product Company] Explain how request validation works in Express. Show a schema validation setup using `Joi` or `express-validator`.
Hint: Joi validates object schemas. Example:
`const registerSchema = Joi.object({ email: Joi.string().email().required(), password: Joi.string().min(8).required() });`
`app.post('/register', (req, res, next) => { const { error } = registerSchema.validate(req.body); if (error) return res.status(400).json({ error: error.details[0].message }); next(); });`

DSA: [Binary Search][Medium-Hard][Google] Given an array of integers representing the weights of packages and a limit of D days, find the minimum cargo capacity of the ship to transport all packages within D days.
Hint: Binary search on cargo capacity. Bounds: `left = max(weights)`, `right = sum(weights)`. Test `mid` capacity: count days required to ship packages sequentially. If days > D, capacity is too small (`left = mid + 1`); else search left (`right = mid`). Time: O(n log(sum-max)), Space: O(1).

Aptitude: [Syllogisms][Medium] **Statements**: All mangoes are golden. Some golden things are apples.
**Conclusions**:
1. Some mangoes are apples.
2. Some golden things are mangoes.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Since all mangoes are golden, the set of mangoes is inside the golden set. Thus, some golden things are mangoes (2 is true). However, the apples intersection with golden things might not overlap with the mangoes subset inside the golden set (1 does not follow).

---

Q320.
MERN: [Express][Medium][Product Company] What is the difference between session-based authentication and token-based (JWT) authentication? What are the pros and cons of each?
Hint: Session-based: Stateful, session ID stored in cookie, session data stored in server memory/database (Redis). Pros: easy revocation. Cons: scaling is hard, server memory cost. Token-based: Stateless, JWT stored in client, verified cryptographically by server. Pros: highly scalable, no DB queries needed. Cons: revocation is difficult before token expires.

DSA: [Binary Search][Hard][Google] Given an array of integers, split the array into k non-empty contiguous subarrays such that the largest sum among these subarrays is minimized.
Hint: Binary search on the answer space. Bounds: `left = max(array)`, `right = sum(array)`. Test if a `mid` limit is possible: split array greedily so no subarray sum exceeds `mid`. If splits > k, `left = mid + 1`; else `right = mid`. Time: O(n log(sum-max)), Space: O(1).

Aptitude: [Grammar][Easy-Medium] Correct: "Between you and I, this project is doomed." Explain the pronoun case rule.
Hint: "Between you and **me**, this project is doomed." Rule: Prepositions ("between") must be followed by object pronouns ("me", "him", "her", "us", "them") instead of subject pronouns ("I", "he", "she", "we", "they").

---

Q321.
MERN: [MongoDB][Medium][Product Company] What is MongoDB? How does it differ from SQL databases in terms of scalability, transaction support, and data model?
Hint: MongoDB is a NoSQL document database. Data model: JSON-like documents (BSON) allowing nested structures, dynamic schema. Scalability: horizontally scalable via sharding (SQL relies primarily on vertical). Transactions: supports ACID multi-document transactions since 4.0, but denormalization reduces transaction needs.

DSA: [Linked List][Easy][Amazon] 🔴 MUST DO — Reverse a singly linked list.
Hint: Maintain three pointers: `prev` (null), `curr` (head), and `next` (null). Iterate through the list. Save next node (`next = curr.next`), point `curr.next` to `prev`, move `prev = curr`, move `curr = next`. Time: O(n), Space: O(1).

Aptitude: [SI/CI][Medium] The compound interest on ₹30,000 at 7% per annum is ₹4,347. Find the time period in years.
Hint: Amount = 30000 + 4347 = ₹34,347.
34347 = 30000(1 + 0.07)^t → 34347/30000 = (1.07)^t → 1.1449 = (1.07)^t.
Since 1.07 × 1.07 = 1.1449, t = 2 years.

---

Q322.
MERN: [MongoDB][Medium][Product Company] What are query operators and update operators in MongoDB? Compare `$set`, `$unset`, `$push`, `$pull`, and `$inc` with examples.
Hint: Query operators filter: `$gt`, `$eq`. Update operators modify values: `$set` updates field, `$unset` removes field, `$inc` increments number, `$push` appends element to array, `$pull` removes element from array. E.g., `db.users.updateOne({_id:1}, {$inc: {age: 1}, $push: {hobbies: 'reading'}})`

DSA: [Linked List][Easy-Medium][Amazon] 🔴 MUST DO — Given a linked list, check if a cycle exists (Floyd's Cycle Finding Algorithm).
Hint: Fast and slow pointers. Move slow by 1 step, fast by 2. If they meet, a cycle exists. If fast or fast.next reaches null, no cycle. Time: O(n), Space: O(1).

Aptitude: [Mixtures][Medium] A jar contains two liquids A and B in the ratio 4:1. When 10 liters of the mixture are drawn off and 10 liters of liquid B are poured in, the ratio becomes 2:3. Find the initial quantity of liquid A.
Hint: Total mixture volume = V. A = 4V/5, B = V/5.
When 10L is removed, we lose 8L of A and 2L of B.
We add 10L of B. New A = 4V/5 - 8. New B = V/5 - 2 + 10 = V/5 + 8.
(4V/5 - 8) / (V/5 + 8) = 2/3 → 12V/5 - 24 = 2V/5 + 16 → 2V = 40 → V = 20 liters.
Initial quantity of A = 4V/5 = 16 liters.

---

Q323.
MERN: [MongoDB][Medium][Product Company] What are indexes in MongoDB? Explain single field, compound, and text indexes. What is the impact of indexes on write performance?
Hint: Indexes are B-tree structures containing a sorted list of field values to speed up search (avoids full collection scan O(n)). Compound index: index on multiple fields (order matters). Text index: enables search within text fields. Write impact: indexes slow down writes (inserts, updates, deletes) because index B-trees must be updated.

DSA: [Linked List][Easy-Medium][Amazon] 🔴 MUST DO — Merge two sorted linked lists into a single sorted linked list.
Hint: Use a dummy head node. Compare heads of both lists. Attach the smaller node to `curr.next` and advance that list's pointer. Repeat until one list is exhausted. Attach remaining elements of the other list. Time: O(n + m), Space: O(1).

Aptitude: [Syllogisms][Medium] **Statements**: Some shirts are pants. No pant is a tie.
**Conclusions**:
1. No shirt is a tie.
2. Some shirts are not ties.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Shirt set intersects with pants. Since pants and ties are disjoint, the part of the shirt set that overlaps with pants cannot be ties. Therefore, "Some shirts are not ties" is definitely true. However, the other part of the shirt set could potentially be ties, so "No shirt is a tie" does not follow.

---

Q324.
MERN: [MongoDB][Medium][Product Company] What is the WiredTiger storage engine in MongoDB? Explain document-level concurrency and compression benefits.
Hint: WiredTiger is MongoDB's default storage engine. Features: 1) Document-level concurrency control: allows multiple write operations on different documents in the same collection simultaneously (older engine MMAP used collection-level locks) 2) Block/Prefix Compression: reduces storage footprint on disk by up to 50-70%.

DSA: [Linked List][Medium][Amazon] 🔴 MUST DO — Remove the Nth node from the end of a linked list.
Hint: Two pointers `first` and `second`. Advance `first` by N nodes. Then move both pointers together. When `first` reaches the end, `second` will point to the node preceding the target. Bypass the target node. Time: O(n), Space: O(1).

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "Eco-tourism strives to minimize human impact on pristine natural environments. While it funds conservation, excessive tourist volume often degrades the very habitats it aims to protect, exposing a paradox in sustainable travel."
**Question**: What is the paradox of eco-tourism described in the passage?
Hint: The paradox is that while eco-tourism aims to protect natural environments and fund conservation, the high volume of tourists it attracts often leads to the degradation of those very habitats.

---

Q325.
MERN: [MongoDB][Medium][Product Company] What is the BSON size limit for a single MongoDB document? How do you store files that exceed this limit?
Hint: BSON limit is 16MB. To store files exceeding 16MB, use GridFS. GridFS splits files into chunks of 255KB and stores them across two collections: `fs.files` (metadata) and `fs.chunks` (binary chunks). Alternatively, upload files to AWS S3 and store the URL string in MongoDB.

DSA: [Linked List][Medium][Amazon] 🟡 HIGH FREQUENCY — Find the intersection node of two linked lists (return null if they don't intersect).
Hint: Two pointers starting at heads A and B. When a pointer reaches the end, redirect it to the other list's head. They will meet at the intersection point or null because they cover the same total distance. Time: O(n + m), Space: O(1).

Aptitude: [SI/CI][Medium-Hard] A sum of money amounts to ₹6,690 after 3 years and to ₹10,035 after 6 years on compound interest. Find the sum.
Hint: A3 = P(1 + R/100)³ = 6690. A6 = P(1 + R/100)⁶ = 10035.
Divide A6 by A3: (1 + R/100)³ = 10035 / 6690 = 1.5.
Substitute in A3: P × 1.5 = 6690 → P = 6690 / 1.5 = ₹4,460.

---

Q326.
MERN: [MongoDB][Medium][Product Company] What is Connection Pooling in MongoDB drivers? How does it improve performance, and how do you configure it in Mongoose?
Hint: Connection pooling maintains a cache of active database connections. Reusing connections avoids the high CPU/network cost of establishing a new TCP connection and handshake for every database request. Configure via options: `mongoose.connect(uri, { maxPoolSize: 50, minPoolSize: 10 })`.

DSA: [Linked List][Medium][Google] 🟡 HIGH FREQUENCY — Determine if a singly linked list is a palindrome.
Hint: Find the middle node (slow/fast pointers). Reverse the second half of the linked list. Compare the first half and reversed second half element by element. Time: O(n), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] 8 liters are drawn from a cask full of wine and is then filled with water. This operation is performed three more times. The ratio of the quantity of wine now left in cask to that of water is 16 : 65. How much wine did the cask hold originally?
Hint: Let original volume be V. Remaining Wine / Total Volume = 16 / (16 + 65) = 16 / 81.
Using formula: `Final / Initial = (1 - x/V)^n` where n = 4, x = 8.
16 / 81 = (1 - 8/V)⁴ → (2/3)⁴ = (1 - 8/V)⁴ → 2/3 = 1 - 8/V → 8/V = 1/3 → V = 24 liters.

---

Q327.
MERN: [Mongoose][Medium][Product Company] What is a Mongoose Schema? Explain how schema types, default values, required flags, and select flags are defined.
Hint: Schema is a configuration object defining document structure. Example:
`const userSchema = new Schema({ email: { type: String, required: true, unique: true }, role: { type: String, default: 'user' }, password: { type: String, select: false } });`
`select: false` excludes the password field from queries by default for security.

DSA: [Linked List][Hard][Google] 🔴 MUST DO — Reverse nodes of a linked list k at a time.
Hint: Count list length. For every block of k nodes, reverse them. Use recursion or iterative tracking (keep pointers to group prev, group head, group tail). If remaining nodes < k, leave them as-is. Time: O(n), Space: O(1) iterative.

Aptitude: [Syllogisms][Medium] **Statements**: Some green things are trees. No tree is a flower. All flowers are red.
**Conclusions**:
1. Some green things are not flowers.
2. Some red things are flowers.
Which conclusion(s) logically follow?
Hint: Both 1 and 2 follow. Green things intersect with trees. Since trees cannot be flowers, the green things that are trees cannot be flowers, meaning 1 is true. All flowers are red, which implies there must be some red things that are flowers, so 2 is true.

---

Q328.
MERN: [Mongoose][Medium][Product Company] How do you implement custom validation in Mongoose schemas? Write a schema with email regex validator and a custom validation function.
Hint: Use validation objects:
`email: { type: String, validate: { validator: (v) => /^\S+@\S+\.\S+$/.test(v), message: 'Invalid email' } }`
`age: { type: Number, validate: { validator: (v) => Number.isInteger(v) && v >= 18, message: 'Must be 18+' } }`

DSA: [Linked List][Hard][Microsoft] 🔴 MUST DO — Merge k sorted linked lists and return it as one sorted list. Analyze the time and space complexity.
Hint: Use a Min-Heap (Priority Queue) to store the head nodes of all lists. Extract the minimum element, add to the result list, and push the next node of that list to the heap. Time: O(N log k) where N is total nodes, Space: O(k) for heap.

Aptitude: [Grammar][Easy-Medium] Correct: "He was so tired that he could not barely keep his eyes open." Explain the double negative rule.
Hint: "He was so tired that he could **barely** keep his eyes open." Rule: "Barely" has a negative connotation. Combining "could not" with "barely" creates a double negative, which is grammatically incorrect. Remove "not".

---

Q329.
MERN: [Mongoose][Medium][Product Company] What are Mongoose pre/post middleware hooks? Write a pre-save hook that hashes a user's password before persisting it.
Hint: Pre/post hooks execute logic before or after database actions. Pre-save hook:
`userSchema.pre('save', async function (next) { if (!this.isModified('password')) return next(); this.password = await bcrypt.hash(this.password, 12); next(); });`
Must use regular function (not arrow) to preserve `this` context representing the document.

DSA: [Linked List][Medium][Product Company] Given a linked list, partition it such that all nodes less than x come before nodes greater than or equal to x.
Hint: Maintain two separate chains using dummy nodes: `lessHead` and `greaterHead`. Traverse the list. If node value < x, append to `less` chain; else append to `greater` chain. Merge by connecting `lessTail.next = greaterHead.next`. Set `greaterTail.next = null`. Time: O(n), Space: O(1).

Aptitude: [SI/CI][Medium-Hard] What will be the compound interest on a sum of ₹25,000 after 3 years at the rate of 12% per annum?
Hint: Amount = 25000(1 + 0.12)³ = 25000 × (1.12)³ = 25000 × 1.404928 = ₹35,123.20. CI = 35123.20 - 25000 = ₹10,123.20.

---

Q330.
MERN: [Mongoose][Medium][Product Company] Explain Mongoose `lean()` query optimization. When should you use it, and what do you lose by using it?
Hint: `lean()` returns plain JavaScript objects instead of Mongoose Documents. This speeds up queries by skipping: casting, validation, change tracking, virtuals, and instance methods. Use it for read-only queries (GET requests). You lose: `.save()`, `.populate()`, virtuals, and custom middleware triggers.

DSA: [Linked List][Easy-Medium][Amazon] Delete a node in a singly linked list given access only to that node (not head).
Hint: Copy the data from the next node into the current node, then delete the next node: `node.val = node.next.val; node.next = node.next.next;`. Time: O(1), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] A merchant has 1000 kg of sugar, part of which he sells at 8% profit and the rest at 18% profit. He gains 14% on the whole. Find the quantity sold at 18% profit.
Hint: Alligation: Cheaper (8%), Dearer (18%), Mean (14%).
Ratio = (18 - 14) : (14 - 8) = 4 : 6 = 2 : 3.
Quantity sold at 18% profit = (3/5) × 1000 = 600 kg.

---

Q331.
MERN: [Mongoose][Medium][Product Company] Explain the N+1 query problem. How does Mongoose `populate()` solve it under the hood?
Hint: N+1 happens when you fetch 1 list of parent documents and then make N separate queries to fetch reference fields for each parent. `populate()` solves this by collecting all ObjectIds and executing exactly 1 query using `$in`: `db.children.find({ _id: { $in: [...] } })`, resulting in only 2 total queries regardless of scale.

DSA: [Stack][Easy-Medium][Amazon] 🔴 MUST DO — Given an array of integers, find the next greater element for each element to its right (return -1 if none exists).
Hint: Monotonic decreasing stack. Traverse array from right to left. While stack is not empty and `stack.top <= arr[i]`, pop. If stack is empty, next greater is -1; else it is `stack.top`. Push `arr[i]` to stack. Time: O(n), Space: O(n).

Aptitude: [Syllogisms][Medium] **Statements**: All keys are locks. Some locks are doors. No door is a window.
**Conclusions**:
1. Some keys are doors.
2. No lock is a window.
Which conclusion(s) logically follow?
Hint: Neither follows. Keys are inside the lock set. The doors set intersects with locks but doesn't necessarily reach the keys subset, so 1 is not guaranteed. Doors and windows are disjoint, but windows can still overlap with locks outside the doors area, so 2 is not guaranteed.

---

Q332.
MERN: [Mongoose][Medium][Product Company] What are Mongoose Virtual properties? Write a schema example that creates a virtual property `fullName` from `firstName` and `lastName`.
Hint: Virtuals are document attributes that can be read/written but are NOT stored in MongoDB. Example:
`userSchema.virtual('fullName').get(function() { return `${this.firstName} ${this.lastName}`; });`
To output virtuals in API response, configure: `userSchema.set('toJSON', { virtuals: true });`.

DSA: [Stack][Medium][Amazon] 🟡 HIGH FREQUENCY — Given a circular integer array, find the next greater element for each element (Next Greater Element II).
Hint: Monotonic decreasing stack. Treat array as concatenated with itself (loop twice up to `2n-1`). Use modulo index `i % n` for values. Pop elements from stack that are smaller than or equal to current. Only populate results array during the first pass. Time: O(n), Space: O(n).

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "A standard currency represents trust. If citizens lose faith in the economic policies of their government, hyperinflation occurs, turning fiat currency into worthless paper."
**Question**: What constitutes the value of a standard currency according to the passage?
Hint: The trust/faith that citizens have in the economic policies of their government constitutes the value of standard currency.

---

Q333.
MERN: [Mongoose][Medium][Product Company] How do you enable automatic creation of `createdAt` and `updatedAt` timestamps in Mongoose? Show the schema configuration.
Hint: Pass `{ timestamps: true }` as the second argument to the Schema constructor. Mongoose automatically handles updating the fields. Example:
`const postSchema = new Schema({ title: String }, { timestamps: true });`

DSA: [Stack][Medium-Hard][Google] Given a positive integer num represented as a string, find the smallest possible integer after removing k digits.
Hint: Monotonic increasing stack. Traverse digits. While stack is not empty, `k > 0`, and the top of stack is greater than the current digit, pop from stack and decrement k. After loop, pop remaining k. Build string, remove leading zeros. Time: O(n), Space: O(n).

Aptitude: [SI/CI][Medium-Hard] The simple interest on a certain sum of money for 2.5 years at 12% per annum is ₹40 less than the simple interest on the same sum for 3.5 years at 10% per annum. Find the sum.
Hint: Let sum be P.
SI1 = P × 12 × 2.5 / 100 = 0.3P.
SI2 = P × 10 × 3.5 / 100 = 0.35P.
SI2 - SI1 = 40 → 0.05P = 40 → P = ₹800.

---

Q334.
MERN: [Authentication][Medium][FAANG-Level] Describe the complete JWT-based Authentication flow in a MERN application. Where should the access token and refresh token be stored?
Hint: User logs in → Server generates access token (short-lived, e.g. 15m) and refresh token (long-lived, e.g. 7 days). Store access token in memory (JS state) to prevent XSS. Store refresh token in a secure, HTTP-only, SameSite Cookie to protect against CSRF and maintain persistence.

DSA: [Stack][Hard][Google] 🔴 MUST DO — Given an array of integers representing heights of a histogram, find the area of the largest rectangle in the histogram.
Hint: Monotonic increasing stack. Store indices. When current height is smaller than stack top, pop and calculate area with popped index as the height. Width is `i - stack.peek() - 1` (or `i` if stack empty). Repeat. Time: O(n), Space: O(n).

Aptitude: [Mixtures][Medium-Hard] A milkman mixes 20 liters of water with 80 liters of milk. He sells 1/4th of this mixture and adds water to make up the original quantity. Find the ratio of milk to water in the new mixture.
Hint: Total = 100L. Milk:Water = 80:20 (4:1).
1/4th removed (25L): removes 20L milk and 5L water. Remaining: 60L milk, 15L water.
Water added = 25L. New volumes: milk = 60L, water = 15 + 25 = 40L.
New Ratio = 60 : 40 = 3 : 2.

---

Q335.
MERN: [Authentication][Medium][Product Company] What are the security vulnerabilities of storing JWT access tokens in browser `localStorage`? How do HTTP-only cookies mitigate these?
Hint: `localStorage` is accessible by any script running on the page, leaving it vulnerable to theft via Cross-Site Scripting (XSS). HTTP-only cookies cannot be accessed via `document.cookie` in JavaScript, preventing automated script theft.

DSA: [Stack][Hard][Amazon] Given a 2D binary matrix filled with 0's and 1's, find the largest rectangle containing only 1's and return its area (Maximal Rectangle).
Hint: Reduce to "Largest Rectangle in Histogram" problem. Maintain a 1D height array representing histogram height for each row. If matrix[i][j] is '1', `height[j]++`; else `height[j] = 0`. Run the histogram algorithm for each row. Time: O(rows * cols), Space: O(cols).

Aptitude: [Syllogisms][Medium] **Statements**: All laptops are devices. Some devices are tablets. All tablets are smart.
**Conclusions**:
1. Some laptops are smart.
2. Some smart things are devices.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Laptops are within the devices set. Tablets intersect with devices. Smart set contains all tablets, which means smart intersects with tablets, and thereby with devices. Hence, some smart things are devices (2 follows). Laptops and smart sets might not overlap, so 1 does not follow.

---

Q336.
MERN: [Authentication][Medium][Product Company] Explain Refresh Token Rotation. How does it detect and prevent token reuse attacks?
Hint: Every time the client requests a new access token using a refresh token, the server generates a new refresh token, invalidates the old one, and sends both back. If an attacker steals a refresh token and uses it, the server detects that the token was already used (reuse detection), invalidates the entire token family, and forces all sessions to re-authenticate.

DSA: [Stack][Medium-Hard][Amazon] Design a stock span algorithm that calculates the span of stock's price for the current day (consecutive days price was less than or equal to current price).
Hint: Monotonic decreasing stack of pairs: `(price, span)`. When price `p` arrives, while stack is not empty and `stack.top.price <= p`, pop and add its span to current span. Push `(p, current_span)` to stack. Time: O(1) amortized, Space: O(n).

Aptitude: [Grammar][Easy-Medium] Correct: "Whom do you think will win the championship?" Explain who vs whom.
Hint: "**Who** do you think will win the championship?" Rule: "Who" is a subject pronoun (performing the action of winning), whereas "whom" is an object pronoun. Since the pronoun is the subject of "will win", use "who".

---

Q337.
MERN: [MERN Integration][Medium][Product Company] What is the difference between PUT and PATCH endpoints in API design? Show Express controller routes for both.
Hint: PUT replaces the entire resource; PATCH updates specified fields.
PUT controller: `const updated = await User.findByIdAndUpdate(id, req.body, { overwrite: true, new: true })`.
PATCH controller: `const updated = await User.findByIdAndUpdate(id, { $set: req.body }, { new: true })`.

DSA: [Stack][Medium][Product Company] Evaluate postfix expression (Reverse Polish Notation) using a stack.
Hint: Use a stack. Traverse expression. If number, push. If operator (+, -, *, /), pop two operands, apply operator, push result back. (Note: first popped is the second operand). Time: O(n), Space: O(n).

Aptitude: [SI/CI][Medium-Hard] A sum of money amounts to ₹1,331 in 3 years at 10% per annum compound interest. Find the principal.
Hint: Amount = Principal × (1 + R/100)³.
1331 = P × (1.1)³ → 1331 = P × 1.331 → P = ₹1,000.

---

Q338.
MERN: [MERN Integration][Medium][Product Company] How do you handle error propagation in the MERN stack? Show how an error moves from MongoDB to Express and finally displays in React.
Hint: 1) MongoDB validation fails → throws error to mongoose 2) Express controller catches in try/catch, calls `next(err)` 3) Express centralized error middleware formats error: `res.status(400).json({ error: err.message })` 4) React frontend Axios call catches the error, stores message in state: `setError(err.response.data.error)` 5) React UI renders error alert block.

DSA: [Stack][Medium-Hard][Google] 🔴 MUST DO — Decode string: `3[a]2[bc]` -> `aaabcbc`, `3[a2[c]]` -> `accaccacc`.
Hint: Two stacks: `countStack` and `stringStack`. Traverse string. If digit, build number. If '[', push current number and current string to stacks, reset them. If ']', pop count and previous string, repeat current string `count` times and append to popped string. If character, append to current string. Time: O(n), Space: O(n).

Aptitude: [Mixtures][Medium-Hard] Two vessels A and B contain milk and water mixed in the ratio 5:2 and 7:6 respectively. Find the ratio in which these mixtures must be mixed to get a new mixture containing milk and water in the ratio 8:5.
Hint: Milk fraction in A = 5/7, in B = 7/13. Target fraction = 8/13.
Alligation: Cheaper (7/13), Dearer (5/7), Mean (8/13).
Difference 1 = (5/7 - 8/13) = (65 - 56)/91 = 9/91.
Difference 2 = (8/13 - 7/13) = 1/13.
Ratio = (1/13) : (9/91) = 7/91 : 9/91 = 7 : 9.

---

Q339.
MERN: [MERN Integration][Medium][Product Company] How do you implement pagination in a MERN stack? Show the Mongoose query and React API request.
Hint: Express: `const { page = 1, limit = 10 } = req.query; const data = await Model.find().skip((page - 1) * limit).limit(Number(limit));`.
React: `axios.get(`/api/items?page=${page}&limit=${limit}`)` and maintain `page` state.

DSA: [Stack][Hard][Google] Implement a Basic Calculator that supports '+', '-', '(', and ')' parentheses.
Hint: Stack-based evaluation. Traverse string. Maintain `result` and `sign` (+1 or -1). If digit, parse full number and add `sign * num` to result. If '+', set sign = 1. If '-', set sign = -1. If '(', push current `result` and `sign` to stack, reset them. If ')', pop sign and result from stack, calculate: `result = popped_result + popped_sign * current_result`. Time: O(n), Space: O(n).

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All books are novels. No novel is a comic. Some comics are newspapers.
**Conclusions**:
1. Some newspapers are novels.
2. No book is a comic.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Books are inside novels. Novels and comics are disjoint. Therefore, books and comics must also be disjoint, so "No book is a comic" is true (2 follows). Comics intersect with newspapers, but newspapers don't necessarily cross into the novels set, so 1 is not guaranteed.

---

Q340.
MERN: [MERN Integration][Medium][Product Company] How do you upload multiple files in a MERN application? Show Multer configuration and React FormData append loop.
Hint: React:
`const formData = new FormData(); files.forEach(file => formData.append('images', file));`
`axios.post('/upload', formData, { headers: { 'Content-Type': 'multipart/form-data' } });`
Express: `app.post('/upload', upload.array('images', 5), (req, res) => { console.log(req.files); });`.

DSA: [Stack][Medium-Hard][Amazon] Given a string containing brackets and asterisks, where '*' can be '(', ')', or empty, check if valid (Valid Parenthesis String).
Hint: Two stacks: `leftStack` for '(' indices and `starStack` for '*' indices. If '(', push index to `left`. If '*', push index to `star`. If ')', pop from `left` if not empty; else pop from `star`; else return false. After loop, match remaining '(' with '*' that appear after the '(' index. Time: O(n), Space: O(n).

Aptitude: [Vocabulary][Easy-Medium] Choose the antonym of 'EPHEMERAL': (a) Transitory (b) Transient (c) Permanent (d) Fleeting.
Hint: (c) Permanent. Ephemeral means lasting a very short time; its antonym is permanent.

---

Q341.
MERN: [React][Medium][Product Company] What is React profiling? How do you use the React DevTools Profiler to identify component rendering bottlenecks?
Hint: Profiler records component renders. It shows: 1) Flame chart (render time of components in a tree) 2) Ranked chart (components sorted by render time) 3) "Why did this render" indicators (shows which props or state changed). Focus on optimization if components render frequently without changes.

DSA: [Queue][Easy-Medium][Product Company] Implement a Stack using two queues. Compare the push-heavy vs pop-heavy trade-offs.
Hint: Push-heavy: enqueue to q1. Pop: dequeue all except last from q1 to q2, return last, swap queues. (Push O(1), Pop O(n)). Pop-heavy: enqueue to q2, dequeue all from q1 to q2, swap queues. (Push O(n), Pop O(1)).

Aptitude: [SI/CI][Medium-Hard] If the compound interest on a certain sum for 2 years at 4% per annum is ₹102, find the simple interest on the same sum at the same rate and for the same time.
Hint: CI = P[(1.04)² - 1] = P[0.0816] = 102 → P = 102 / 0.0816 = ₹1,250.
SI = 1250 × 4 × 2 / 100 = ₹100.

---

Q342.
MERN: [React][Medium][Product Company] Explain React code splitting using `React.lazy` and `Suspense`. Write a routing code snippet showing lazy-loaded pages.
Hint: Code splitting reduces bundle size by loading components on-demand. Example:
`const Dashboard = React.lazy(() => import('./pages/Dashboard'));`
`<Suspense fallback={<div>Loading...</div>}><Routes><Route path="/" element={<Dashboard/>}/></Routes></Suspense>`

DSA: [Queue][Easy-Medium][Product Company] Implement a Queue using two stacks. Compare the enqueue-heavy vs dequeue-heavy trade-offs.
Hint: Enqueue-heavy: push to s1 (O(1)). Dequeue: if s2 is empty, pop all from s1 to s2, then pop from s2 (Amortized O(1)). Dequeue-heavy: push to s2, pop all from s1 to s2, push new to s1, pop all back to s1 (Enqueue O(n), Dequeue O(1)).

Aptitude: [Mixtures][Medium-Hard] A merchant has 120 kg of rice, part of which he sells at 10% profit and the rest at 25% profit. He gains 15% overall. Find the quantity sold at 10% profit.
Hint: Alligation: Cheaper (10%), Dearer (25%), Mean (15%).
Ratio = (25 - 15) : (15 - 10) = 10 : 5 = 2 : 1.
Quantity sold at 10% profit = (2/3) × 120 = 80 kg.

---

Q343.
MERN: [React][Medium][Product Company] Why does putting a large state object in React Context cause performance problems? How do you prevent unnecessary re-renders of consumer components?
Hint: Any consumer component of a Context re-renders when the context value changes. If Context holds a large object, components re-render even if they only depend on an unchanged property. Solutions: 1) Split context into multiple smaller contexts 2) Use Zustand/Redux 3) Memoize children or use `useMemo` inside consumer.

DSA: [Queue][Easy-Medium][Product Company] Design a Circular Deque (Double-Ended Queue) with fixed capacity using an array.
Hint: Deque supports insert/delete from both front and rear. Maintain `front` and `rear` pointers. Use modulo arithmetic: `front = (front - 1 + capacity) % capacity` for inserting at front. Track size to check full/empty. Time: O(1).

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All apples are fruits. Some fruits are sweet. All sweet things are healthy.
**Conclusions**:
1. Some apples are healthy.
2. Some healthy things are fruits.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Apples are inside the fruits set. Sweet set intersects with fruits. Healthy set contains all sweet things, which means healthy intersects with sweet, and thereby with fruits. So some healthy things are fruits (2 follows). Apples and healthy might not overlap (1 is not guaranteed).

---

Q344.
MERN: [React][Medium][Product Company] Create a reusable Error Boundary class component in React that logs errors to an external service and displays a custom fallback UI.
Hint:
`class ErrorBoundary extends React.Component { state = { hasError: false }; static getDerivedStateFromError() { return { hasError: true }; } componentDidCatch(error, info) { logToService(error, info); } render() { return this.state.hasError ? <Fallback/> : this.props.children; } }`

DSA: [Queue][Medium][Amazon] Implement a Circular Deque using a doubly linked list.
Hint: Double-ended queue supports push/pop at both front and back in O(1) time. Doubly linked list has `prev` and `next` pointers for each node, and `head` and `tail` pointers. Update pointers during enqueue and dequeue at both ends.

Aptitude: [Grammar][Easy-Medium] Correct: "The client was unhappy with the layout, so they asked him to redo it." Explain the ambiguous pronoun reference error.
Hint: "The client was unhappy with the layout, so they asked **the designer** to redo it." (Or similar noun). Rule: The pronoun "him" is ambiguous because it has no clear antecedent (it could refer to someone else not mentioned or the client). Replacing it with a specific noun resolves the ambiguity.

---

Q345.
MERN: [React][Medium][Product Company] What are React Server Components (RSC)? How do they differ from Client Components, and how do they improve initial page load performance?
Hint: RSCs render exclusively on the server. They send lightweight serialized JSON to the client instead of HTML or bulky JS bundles, decreasing bundle size. Client Components (`'use client'`) add interactivity and run on the browser. RSCs run on server, enabling direct database/API access.

DSA: [Queue][Medium][Amazon] 🔴 MUST DO — Design a hit counter that counts the number of hits received in the past 300 seconds (5 minutes).
Hint: Use a queue containing timestamps. For every `hit(timestamp)`, enqueue the timestamp. For `getHits(timestamp)`, dequeue all timestamps from the front of the queue that are less than or equal to `timestamp - 300`. Return the queue size. Time: O(1) amortized, Space: O(300) max.

Aptitude: [SI/CI][Medium-Hard] Find the compound interest on ₹16,000 for 9 months at 20% per annum, compounded quarterly.
Hint: Rate per quarter = 20/4 = 5%. Time cycles (9 months) = 3.
Amount = 16000(1.05)³ = 16000 × 1.157625 = ₹18,522. CI = 18522 - 16000 = ₹2,522.

---

Q346.
MERN: [Node.js][Medium][Product Company] What is the difference between `setImmediate()` and `process.nextTick()`? Show code that demonstrates their execution order.
Hint: `process.nextTick()` executes immediately after the current operation finishes (microtask queue). `setImmediate()` executes in the "Check" phase of the event loop. Order:
`process.nextTick(() => console.log('nextTick')); setImmediate(() => console.log('setImmediate'));`
Output: `nextTick` will print first, then `setImmediate`.

DSA: [Queue][Medium][Product Company] Given a stream of integers, calculate the moving average of all integers in a sliding window of size k.
Hint: Use a queue of size k. Maintain a running sum of elements. When a new value arrives, if the queue size exceeds k, dequeue the oldest element and subtract it from the running sum. Enqueue the new value, add it to the sum, and return `sum / queue.size`. Time: O(1).

Aptitude: [Mixtures][Medium-Hard] A milkman mixes milk and water in the ratio 3:2. He sells 20 liters of the mixture and adds 20 liters of water. The ratio of milk to water becomes 9:16. Find the initial quantity of the mixture.
Hint: Let initial milk = 3x, water = 2x. Total = 5x.
20L removed: contains 12L milk, 8L water.
Remaining: milk = 3x - 12, water = 2x - 8.
Water added = 20L. New water = 2x - 8 + 20 = 2x + 12.
(3x - 12) / (2x + 12) = 9/16 → 48x - 192 = 18x + 108 → 30x = 300 → x = 10.
Initial quantity = 5x = 50 liters.

---

Q347.
MERN: [Node.js][Medium][Product Company] Explain the phases of the Node.js event loop: timers, pending callbacks, poll, check, close.
Hint: 1) Timers: runs setTimeout/setInterval 2) Pending Callbacks: system I/O errors 3) Poll: retrieves new I/O events, executes connection callbacks 4) Check: runs setImmediate 5) Close Callbacks: runs close handlers (e.g., socket.destroy()). Microtask queue drains between phases.

DSA: [Queue][Medium][Product Company] Design a data structure for a recent calls counter that counts the number of calls in the last 3000 milliseconds.
Hint: Queue of timestamps. On ping(t): add t. Remove all < t-3000 from front. Return queue size. O(1) amortized.

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All tables are chairs. No chair is a bench. Some benches are desks.
**Conclusions**:
1. Some desks are not chairs.
2. No table is a bench.
Which conclusion(s) logically follow?
Hint: Both 1 and 2 follow. Benches and chairs are disjoint. Since desks intersect with benches, the desks that are benches cannot be chairs (1 is true). Tables are inside chairs, and chairs are disjoint from benches, so tables must be disjoint from benches (2 is true).

---

Q348.
MERN: [Node.js][Medium][Product Company] What are readable and writable streams in Node.js? Write code that pipes a readable file stream into a gzip transform stream and writes to disk.
Hint: Readable produces data; writable consumes it. Example:
`const fs = require('fs'); const zlib = require('zlib');`
`fs.createReadStream('file.txt').pipe(zlib.createGzip()).pipe(fs.createWriteStream('file.txt.gz'));`

DSA: [Queue][Hard][Amazon] 🔴 MUST DO — Find the maximum element in each sliding window of size k using a monotonic deque.
Hint: Deque stores indices. Remove from front if outside window. Remove from back if smaller than current. Front = max. O(n) time.

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "A growth mindset assumes that talent is developed through hard work and persistence. A fixed mindset believes ability is innate. Research shows that individuals with a growth mindset embrace setbacks as learning opportunities, enhancing long-term success."
**Question**: What is the difference in how individuals with a growth mindset view setbacks compared to those with a fixed mindset?
Hint: Individuals with a growth mindset view setbacks as learning opportunities, whereas those with a fixed mindset see them as indicators of innate ability limits.

---

Q349.
MERN: [Node.js][Medium][Product Company] What is the Node.js `stream.pipeline` API? Why is it preferred over raw `.pipe()`?
Hint: Raw `.pipe()` does not forward errors automatically, which can leave streams open and cause memory leaks. `stream.pipeline()` automatically destroys all streams in the pipeline if one throws an error, and supports a completion callback, making error handling reliable.

DSA: [Queue][Hard][Google] Design a front-middle-back queue that supports pushFront, pushMiddle, pushBack, popFront, popMiddle, and popBack in O(1) time.
Hint: Use two double-ended queues (deques): `left` and `right`. Maintain balance so `left.size == right.size` or `left.size == right.size - 1`. Insert/pop from middle by balancing at the boundary. Time: O(1).

Aptitude: [SI/CI][Medium-Hard] A sum of ₹10,000 is lent in two parts, one at 8% per annum SI and the other at 10% per annum SI. If the average annual interest is 9.2%, find the two parts.
Hint: Alligation: Cheaper (8), Dearer (10), Mean (9.2).
Ratio = (10 - 9.2) : (9.2 - 8) = 0.8 : 1.2 = 2 : 3.
Part 1 (8%) = (2/5) × 10000 = ₹4,000.
Part 2 (10%) = (3/5) × 10000 = ₹6,000.

---

Q350.
MERN: [Express][Medium][Product Company] How does middleware execution order work in Express? Show how to create a logger middleware and a custom body-parser middleware.
Hint: Mount order determines execution. Logger: `app.use((req, res, next) => { console.log(req.url); next(); })`.
Body-parser parses raw buffers: `app.use((req, res, next) => { let data = ''; req.on('data', chunk => data += chunk); req.on('end', () => { req.body = JSON.parse(data); next(); }); })`.

DSA: [Queue][Medium][Amazon] 🟡 HIGH FREQUENCY — Implement a Task Scheduler: given character array representing tasks, and cooling time n, find the minimum cycles to complete all tasks.
Hint: Max frequency greedy strategy. Use a Max-Heap / Priority Queue. Keep track of tasks with their frequencies and cooling down periods. Time: O(N), Space: O(1) since uppercase letters are limited.

Aptitude: [Mixtures][Medium-Hard] A merchant has 100 kg of sugar, part of which he sells at 7% profit and the rest at 17% profit. He gains 10% on the whole. Find the quantity sold at 7% profit.
Hint: Alligation: Cheaper (7%), Dearer (17%), Mean (10%).
Ratio = (17 - 10) : (10 - 7) = 7 : 3.
Quantity sold at 7% profit = (7/10) × 100 = 70 kg.
# ⭐⭐ INTERMEDIATE ROADMAP — Q351 to Q400

## Advanced Express, MongoDB Aggregations, Performance | Binary Search, Linked Lists, Stacks & Queues | SI/CI, Mixtures, Syllogisms, Verbal Ability

---

Q351.
MERN: [Express][Medium][Product Company] How do you configure CORS to support multiple dynamic origins and credentials in an Express application?
Hint: Pass a function as the `origin` parameter in the `cors` middleware options. Check if the incoming request origin is in an allowed list, and callback with `callback(null, true)`. Example:
`app.use(cors({ origin: (origin, cb) => { if (allowedOrigins.indexOf(origin) !== -1 || !origin) cb(null, true); else cb(new Error('CORS blocked')); }, credentials: true }));`

DSA: [Binary Search][Easy-Medium][Amazon] 🔴 MUST DO — Find the peak index in a mountain array: an array that increases to a peak element and then decreases.
Hint: Binary search. If `arr[mid] < arr[mid+1]`, we are on the rising slope, so the peak lies to the right (`left = mid + 1`). Else, we are on the falling slope, so the peak lies to the left or is mid itself (`right = mid`). Time: O(log n), Space: O(1).

Aptitude: [SI/CI][Medium-Hard] A sum of money amounts to ₹5,200 after 2 years and to ₹5,680 after 3 years at simple interest. Find the principal sum.
Hint: Interest for 1 year = A3 - A2 = 5680 - 5200 = ₹480.
Interest for 2 years = 480 × 2 = ₹960.
Principal = A2 - Interest for 2 years = 5200 - 960 = ₹4,240.

---

Q352.
MERN: [Express][Medium][Product Company] What is `helmet` middleware? Explain at least three HTTP security headers it sets and how they prevent attacks.
Hint: 1) `Content-Security-Policy` (CSP): restricts resource sources (prevents XSS) 2) `X-Frame-Options`: blocks iframe nesting (prevents clickjacking) 3) `Strict-Transport-Security` (HSTS): enforces secure HTTPS connections. Mount via `app.use(helmet())`.

DSA: [Binary Search][Medium][Amazon] 🟡 HIGH FREQUENCY — Find the minimum element in a rotated sorted array.
Hint: Binary search. Compare `arr[mid]` with `arr[right]`. If `arr[mid] > arr[right]`, the minimum lies on the right half (`left = mid + 1`). Else, the minimum is on the left half or is mid itself (`right = mid`). Time: O(log n), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] A milkman mixes milk and water in the ratio 4:1. He sells 10 liters of the mixture and adds 10 liters of water. The ratio of milk to water becomes 2:3. Find the initial quantity of the mixture.
Hint: Let initial milk = 4x, water = x. Total = 5x.
10L removed: contains 8L milk, 2L water.
Remaining: milk = 4x - 8, water = x - 2.
Water added = 10L. New water = x - 2 + 10 = x + 8.
New Ratio = (4x - 8) / (x + 8) = 2/3 → 12x - 24 = 2x + 16 → 10x = 40 → x = 4.
Initial quantity = 5x = 20 liters.

---

Q353.
MERN: [Express][Medium][Product Company] How do you implement structured logging in a production Express API using `winston` and `morgan`?
Hint: Configure `winston` to output JSON format logs to console and files. Integrate with `morgan` by passing winston's stream handler to morgan. E.g.,
`app.use(morgan('combined', { stream: { write: msg => logger.info(msg.trim()) } }))`. This ensures HTTP logs and app logs are centralized in JSON format.

DSA: [Binary Search][Medium][Google] Find the minimum element in a rotated sorted array containing duplicates.
Hint: If `arr[left] == arr[mid] == arr[right]`, we cannot tell which side has the minimum. Increment `left` and decrement `right` to reduce search space. Otherwise, compare `arr[mid]` and `arr[right]` as usual. Time: O(log n) average, O(n) worst case.

Aptitude: [Syllogisms][Medium] **Statements**: All plates are bowls. Some bowls are spoons. No spoon is a fork.
**Conclusions**:
1. Some bowls are not forks.
2. Some plates are spoons.
Which conclusion(s) logically follow?
Hint: Only 1 follows. Bowls intersect with spoons. Since spoons and forks are disjoint, the bowls that are spoons cannot be forks. Therefore, "Some bowls are not forks" is definitely true. Plates and spoons might not intersect, so 2 does not follow.

---

Q354.
MERN: [Express][Medium][Product Company] How do you validate file types and sizes when handling multi-file uploads with `multer`? Show the config.
Hint: Pass limits and a fileFilter function. Example:
`const upload = multer({ dest: 'uploads/', limits: { fileSize: 5 * 1024 * 1024 }, fileFilter: (req, file, cb) => { if (file.mimetype === 'image/jpeg' || file.mimetype === 'image/png') cb(null, true); else cb(new Error('Invalid file type'), false); } });`

DSA: [Linked List][Easy-Medium][Amazon] Remove all occurrences of a specific integer value from a linked list.
Hint: Use a dummy head node pointing to the head of the list. Maintain a `curr` pointer starting at the dummy node. If `curr.next.val == val`, remove it by setting `curr.next = curr.next.next`. Otherwise, advance `curr`. Time: O(n), Space: O(1).

Aptitude: [Grammar][Easy-Medium] Correct: "The committee has submitted their report." Explain collective noun agreement.
Hint: "The committee has submitted **its** report." Rule: A collective noun ("committee") takes a singular pronoun ("its") when the group acts as a single cohesive unit, and a singular verb ("has").

---

Q355.
MERN: [Express][Medium][Product Company] How do you handle input validation for request params and body simultaneously using `express-validator`?
Hint: Chain validators and run validationResult in a middleware. Example:
`const validateUser = [ body('email').isEmail(), param('id').isMongoId(), (req, res, next) => { const errors = validationResult(req); if (!errors.isEmpty()) return res.status(400).json({ errors: errors.array() }); next(); } ];`

DSA: [Linked List][Easy-Medium][Amazon] Remove duplicate elements from a sorted singly linked list.
Hint: Maintain a pointer `curr`. While `curr` and `curr.next` are not null: if `curr.val == curr.next.val`, bypass the duplicate by setting `curr.next = curr.next.next`. Otherwise, move `curr = curr.next`. Time: O(n), Space: O(1).

Aptitude: [SI/CI][Medium-Hard] A sum of ₹20,000 is invested in compound interest at 10% per annum. What is the compound interest for 2 years, if the compounding is done semi-annually?
Hint: Semiannual rate = R/2 = 5%. Time cycles = 4.
Amount = 20000(1.05)⁴ = 20000 × 1.21550625 = ₹24,310.13. CI = 24310.13 - 20000 = ₹4,310.13.

---

Q356.
MERN: [MongoDB][Medium][FAANG-Level] Explain the difference between `$match` and `$group` stages in a MongoDB aggregation pipeline. How do they affect indexing?
Hint: `$match` filters documents (like query block), while `$group` groups documents by a key and calculates accumulators. `$match` should always be placed at the very start of the pipeline because it can utilize database indexes to filter documents; once a `$group` stage runs, indexes cannot be used for subsequent stages.

DSA: [Linked List][Medium][Amazon] Remove all duplicate nodes from a sorted linked list so that only unique elements remain (e.g. 1->1->2 -> 2).
Hint: Use a dummy node pointing to head. Maintain `prev` pointing to dummy, and `curr` pointing to head. While `curr` has duplicates, advance `curr`. If duplicates were found, connect `prev.next = curr.next`; else advance `prev`. Move `curr = curr.next`. Time: O(n), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] A jar contains liquid A and B mixed in the ratio 5:3. When 16 liters of mixture are drawn off and replaced by liquid B, the ratio becomes 3:5. Find the initial volume of the jar.
Hint: Let volume be V. A = 5V/8, B = 3V/8.
16L removed: A lost = 10L, B lost = 6L.
Liquid B added = 16L. New A = 5V/8 - 10. New B = 3V/8 - 6 + 16 = 3V/8 + 10.
(5V/8 - 10) / (3V/8 + 10) = 3/5 → 25V/8 - 50 = 9V/8 + 30 → 16V/8 = 80 → 2V = 80 → V = 40 liters.

---

Q357.
MERN: [MongoDB][Medium][FAANG-Level] Explain the `$lookup` stage in a MongoDB aggregation pipeline. What are the performance implications of using it extensively?
Hint: `$lookup` performs a left outer join to a collection. It takes: `from`, `localField`, `foreignField`, and `as`. Performance implication: it executes a search query for each input document, which can degrade performance. Ensure the `foreignField` on the joined collection has an index to speed up lookup scans.

DSA: [Linked List][Medium][Google] 🟡 HIGH FREQUENCY — Partition a linked list around a value x, such that all nodes less than x come before nodes greater than or equal to x.
Hint: Use two dummy nodes: `lessHead` and `greaterHead`. Traverse list. If node value < x, append to `less` chain; else append to `greater` chain. Merge them: `lessTail.next = greaterHead.next; greaterTail.next = null`. Time: O(n), Space: O(1).

Aptitude: [Syllogisms][Medium] **Statements**: All tables are wooden. Some wooden things are brown. All brown things are heavy.
**Conclusions**:
1. Some tables are heavy.
2. Some wooden things are heavy.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Wooden things intersect with brown. Heavy set contains all brown things, meaning heavy intersects with brown, and thereby with wooden. So some wooden things are heavy (2 follows). Tables and heavy might not overlap, so 1 does not follow.

---

Q358.
MERN: [MongoDB][Medium][Product Company] What are compound indexes in MongoDB? How does the order of fields in a compound index affect query execution?
Hint: Compound index is an index on multiple fields. Order of fields is critical. Follow the ESR rule: 1) Equality fields first 2) Sort fields second 3) Range fields last. An index on `{a: 1, b: 1}` can optimize queries filtering on `{a}` or `{a, b}`, but NOT on `{b}` alone.

DSA: [Linked List][Medium][Amazon] 🔴 MUST DO — Reverse a singly linked list from position left to right (Reverse Linked List II).
Hint: Traverse to (left-1)-th node. Save link as `con`. Keep `tail` as `left` node. Reverse nodes between left and right using standard 3-pointer swaps. Connect `con.next = prev` and `tail.next = curr`. Time: O(n), Space: O(1).

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "Scientific discoveries are rarely singular events. They are usually built upon minor contributions from various researchers over decades, culminating in a final breakthrough that receives all the public credit."
**Question**: What is the author's view on who receives credit for scientific discoveries?
Hint: The author believes that public credit is usually given entirely to the final breakthrough, ignoring decades of minor contributions from other researchers.

---

Q359.
MERN: [MongoDB][Medium][Product Company] What are text indexes in MongoDB? How do you perform full-text search queries, and what are their limitations?
Hint: Create a text index on string fields: `db.posts.createIndex({ title: "text", body: "text" })`. Query with `$text` and `$search`: `db.posts.find({ $text: { $search: "node express" } })`. Limitations: A collection can have at most one text index, it is slow to write, and lacks advanced search features like fuzzy matching or synonyms.

DSA: [Linked List][Medium][Google] Reorder a linked list so that `L0 -> L1 -> ... -> Ln` becomes `L0 -> Ln -> L1 -> Ln-1 -> ...`.
Hint: 1) Find middle node using slow/fast pointers. 2) Split list and reverse the second half. 3) Merge the two halves by alternating nodes from each list. Time: O(n), Space: O(1).

Aptitude: [SI/CI][Medium-Hard] Find the effective rate of interest corresponding to a nominal rate of 10% per annum compounded half-yearly.
Hint: Nominal rate = 10%. Semiannual rate = 5%.
Effective Rate = (1 + 0.05)² - 1 = 1.1025 - 1 = 0.1025 = 10.25% per annum.

---

Q360.
MERN: [MongoDB][Medium][Product Company] Explain how Replica Sets provide high availability in MongoDB. What happens during a primary node failure?
Hint: A replica set consists of a Primary node (handles all write operations) and multiple Secondary nodes (replicate primary's oplog). If the Primary fails, secondaries hold an election to choose a new Primary based on consensus. Read queries can be offloaded to secondaries using `readPreference: 'secondary'`.

DSA: [Linked List][Medium-Hard][Google] Given a linked list where each node has a next pointer and a random pointer, clone the list.
Hint: 1) Create copy nodes and insert them immediately after original nodes: `A -> A' -> B -> B'`. 2) Copy random pointers: `curr.next.random = curr.random.next`. 3) Separate the lists: `curr.next = curr.next.next`. Time: O(n), Space: O(1) auxiliary.

Aptitude: [Mixtures][Medium-Hard] A milkman mixes water with milk costing ₹32 per liter. If he sells the mixture at ₹30 per liter and makes a profit of 25%, find the ratio of water to milk in the mixture.
Hint: Profit = 25%, SP = 30. CP of mixture = 30 / 1.25 = ₹24 per liter.
Alligation: Water CP (0), Milk CP (32), Mean CP (24).
Ratio = (32 - 24) : (24 - 0) = 8 : 24 = 1 : 3.
Ratio of water to milk = 1:3.

---

Q361.
MERN: [Mongoose][Medium][Product Company] How do you define custom validators in Mongoose schema paths? Show examples for both synchronous and asynchronous validators.
Hint: Synchronous validator:
`validate: { validator: (v) => v.length >= 5, message: 'Too short' }`.
Asynchronous validator (e.g. checking uniqueness in database):
`validate: { validator: async (v) => { const count = await User.countDocuments({ username: v }); return count === 0; }, message: 'Username exists' }`.

DSA: [Linked List][Medium-Hard][Google] Sort a linked list in O(n log n) time and O(1) auxiliary space.
Hint: Use Merge Sort. Find middle, split list. Recursively sort both halves. Merge the sorted halves using a dummy node. (Avoid recursive stack space to achieve true O(1) space by using iterative bottom-up merge sort). Time: O(n log n), Space: O(log n) stack or O(1) iterative.

Aptitude: [Syllogisms][Medium] **Statements**: All cats are pets. All pets are animals. Some animals are wild.
**Conclusions**:
1. Some pets are wild.
2. All cats are animals.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Cats are inside the pets set, which is inside animals. So all cats are animals (2 is true). Animals intersect with wild, but wild might not reach the pets subset, so 1 does not follow.

---

Q362.
MERN: [Mongoose][Medium][Product Company] What are the differences between Mongoose schema pre-hooks and post-hooks? What happens if you call `next()` with an error in a pre-hook?
Hint: Pre-hooks run before database operations (e.g., hash passwords before `save`). Post-hooks run after operations (e.g., send welcome email after `save`). If you pass an error to `next(err)` in a pre-hook, Mongoose halts execution, cancels the database write, and forwards the error to the controller.

DSA: [Linked List][Hard][Google] 🔴 MUST DO — Given k sorted linked lists, merge them into one sorted linked list.
Hint: Use a Min-Heap (Priority Queue). Push the head nodes of all lists. While heap is not empty, extract min node, attach to result list, and push the next node of that extracted node into the heap. Time: O(N log k), Space: O(k).

Aptitude: [Grammar][Easy-Medium] Correct: "I look forward to meet you at the conference." Explain the gerund rule.
Hint: "I look forward to **meeting** you at the conference." Rule: In the phrasal verb "look forward to", "to" is a preposition, not part of an infinitive. Prepositions must be followed by nouns or gerunds (verb+ing), so "meeting" is required.

---

Q363.
MERN: [Mongoose][Medium][Product Company] How do you query and populate nested relations in Mongoose? Show an example populating `author` and then the author's `profile`.
Hint: Pass an object structure to `populate()`. Example:
`Post.find().populate({ path: 'author', populate: { path: 'profile' } })`. This executes nested lookup queries sequentially in the background.

DSA: [Stack][Easy][Amazon] 🔴 MUST DO — Design a stack that supports push, pop, top, and retrieving the minimum element in constant time O(1).
Hint: Keep a main stack for values and an auxiliary stack to keep track of the minimums. Or store pairs (value, min_so_far) in a single stack. Time: O(1) all operations, Space: O(n).

Aptitude: [SI/CI][Medium-Hard] The simple interest on a certain sum of money for 3 years at 8% per annum is ₹240. Find the compound interest on the same sum for 2 years at 10% per annum.
Hint: SI = P × R × T / 100 → 240 = P × 8 × 3 / 100 → P = ₹1,000.
CI on ₹1,000 at 10% for 2 years: Amount = 1000(1.1)² = ₹1,210. CI = 1210 - 1000 = ₹210.

---

Q364.
MERN: [Mongoose][Medium][Product Company] What are virtual getters and setters in Mongoose? Show a schema code example setting coordinates array from a string.
Hint: Getters format output; setters parse input. Example:
`schema.virtual('locationStr').get(function() { return `${this.lat},${this.lng}`; }).set(function(v) { const [lat, lng] = v.split(','); this.lat = parseFloat(lat); this.lng = parseFloat(lng); });`

DSA: [Stack][Medium][Microsoft] 🔴 MUST DO — Evaluate the value of an arithmetic expression in Reverse Polish Notation (Postfix Expression).
Hint: Use a stack. Traverse the expression. If operand, push to stack. If operator (+, -, *, /), pop two elements from stack, apply operator (order: second popped [op] first popped), and push result back. Time: O(n), Space: O(n).

Aptitude: [Mixtures][Medium-Hard] A merchant has 200 kg of wheat, part of which he sells at 9% profit and the rest at 19% profit. He gains 12% overall. Find the quantity sold at 9% profit.
Hint: Alligation: Cheaper (9%), Dearer (19%), Mean (12%).
Ratio = (19 - 12) : (12 - 9) = 7 : 3.
Quantity sold at 9% profit = (7/10) × 200 = 140 kg.

---

Q365.
MERN: [Mongoose][Medium][Product Company] How do you handle database migrations in a production Node/Express MERN application using MongoDB?
Hint: Since MongoDB is schemaless, migrations can be: 1) Lazy/On-the-fly: handle missing fields in schema defaults or controllers 2) Script-based: write migration scripts using tools like `migrate-mongo` to execute bulk updates (`updateMany`) on deploy.

DSA: [Stack][Medium][Amazon] 🟡 HIGH FREQUENCY — Simplify a Unix-style absolute path (e.g., "/a/./b/../../c/" -> "/c").
Hint: Split path by "/". Iterate through components. If component is "" or ".", do nothing. If "..", pop from stack (if not empty). Else, push component to stack. Join stack elements with "/". Time: O(n), Space: O(n).

Aptitude: [Syllogisms][Medium] **Statements**: All apples are red. No red thing is bitter. All bitter things are green.
**Conclusions**:
1. No apple is bitter.
2. Some green things are not red.
Which conclusion(s) logically follow?
Hint: Both 1 and 2 follow. Apples are inside the red set, which is disjoint from bitter. Therefore, no apple is bitter (1 is true). Green set contains all bitter things, which are disjoint from red, so green things that are bitter cannot be red, meaning 2 is true.

---

Q366.
MERN: [React][Medium][Product Company] What are React DevTools Profiler stats: commit phase duration, render phase duration? How do you read them?
Hint: Render phase: React calls components to calculate Virtual DOM diff (pure CPU work). Commit phase: React applies changes to the browser DOM. A long render phase suggests heavy calculations in components (use `useMemo`). A long commit phase suggests heavy browser DOM updates or styling calculations.

DSA: [Stack][Medium][Google] 🔴 MUST DO — Generate all valid combinations of n pairs of parentheses.
Hint: Backtracking. Track open and close bracket counts. If open < n, append '(' and recurse. If close < open, append ')' and recurse. Base case: string length is 2n, add to output list. Time: O(4^n / √n) Catalan number, Space: O(n) stack.

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "Consumer preferences are pivoting towards eco-conscious brands. While this drives companies to adopt green packaging, it also opens the door to 'greenwashing' — marketing products as sustainable without implementing true eco-friendly business practices."
**Question**: What warning does the author issue regarding green consumerism?
Hint: The author warns that consumer demand for eco-conscious brands can lead to "greenwashing," where companies market products as sustainable without actually adopting eco-friendly practices.

---

Q367.
MERN: [React][Medium][Product Company] What is React Virtualization? How does it optimize performance when rendering lists of 10,000+ items?
Hint: Virtualization (e.g., using `react-window` or `react-virtualized`) renders only the visible list items inside the viewport plus a small buffer. As the user scrolls, it updates the DOM nodes dynamically, keeping the DOM node count constant and avoiding browser memory lag.

DSA: [Stack][Medium-Hard][Google] 🔴 MUST DO — Decode string: `3[a]2[bc]` -> `aaabcbc`, `3[a2[c]]` -> `accaccacc`.
Hint: Use two stacks: `countStack` and `stringStack`. When digit, build number. When '[', push count and current string, reset them. When ']', pop count and previous string, repeat current string `count` times and append to popped string. Time: O(n), Space: O(n).

Aptitude: [SI/CI][Medium-Hard] Find the difference between the compound interest and simple interest on ₹15,000 at 8% per annum for 2 years.
Hint: Diff for 2 years = P(R/100)² = 15000 × (8/100)² = 15000 × 0.0064 = ₹96.

---

Q368.
MERN: [React][Medium][Product Company] Explain Concurrent Mode in React 18. How does it change the synchronous rendering process?
Hint: In legacy React, rendering was blocking: once started, it could not be interrupted. Concurrent Mode introduces interruptible rendering: React can pause, resume, or discard a render tree calculation to respond to urgent user input (like typing) immediately, making the app feel more responsive.

DSA: [Stack][Medium-Hard][Amazon] Design a stock span algorithm that calculates the span of stock's price for the current day.
Hint: Monotonic decreasing stack of pairs: `(price, span)`. When price `p` arrives, while stack is not empty and `stack.top.price <= p`, pop and add its span to current span. Push `(p, current_span)` to stack. Time: O(1) amortized.

Aptitude: [Mixtures][Medium-Hard] In what ratio must water be mixed with milk costing ₹40 per liter to obtain a mixture worth ₹30 per liter?
Hint: Alligation: Water CP (0), Milk CP (40), Mean CP (30).
Ratio = (40 - 30) : (30 - 0) = 10 : 30 = 1 : 3.
The ratio of water to milk is 1:3.

---

Q369.
MERN: [React][Medium][Product Company] What is the `useTransition` hook in React 18? How does it help manage urgent vs non-urgent state updates?
Hint: `useTransition` yields `[isPending, startTransition]`. Wrap non-urgent updates (like filtering a large list) inside `startTransition(() => { setFilter(val); })`. Urgent updates (like input typing) execute immediately. If a new input arrives, React interrupts the non-urgent rendering.

DSA: [Stack][Hard][Google] 🔴 MUST DO — Given an array of integers representing heights of a histogram, find the area of the largest rectangle in the histogram.
Hint: Monotonic increasing stack storing indices. When current height is smaller than stack top, pop and calculate area with popped index as the height. Width is `i - stack.peek() - 1` (or `i` if stack empty). Repeat. Time: O(n), Space: O(n).

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All keys are metal. Some metal things are heavy. No heavy thing is plastic.
**Conclusions**:
1. Some keys are plastic.
2. Some metal things are not plastic.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Metal things intersect with heavy. Since heavy and plastic are disjoint, the metal things that are heavy cannot be plastic. Thus, "Some metal things are not plastic" is true (2 follows). Keys and plastic might not intersect, so 1 does not follow.

---

Q370.
MERN: [React][Medium][Product Company] What is `useDeferredValue`? How does it differ from debouncing and throttling?
Hint: `useDeferredValue` defers updating a value (like search results list) until main-thread work finishes. Unlike debouncing (which introduces a fixed delay like 300ms), `useDeferredValue` updates immediately when the browser is idle, avoiding arbitrary waiting.

DSA: [Stack][Hard][Amazon] Given a 2D binary matrix filled with 0's and 1's, find the largest rectangle containing only 1's.
Hint: Convert to "Largest Rectangle in Histogram". Maintain a 1D height array representing histogram height for each row. If matrix[i][j] is '1', `height[j]++`; else `height[j] = 0`. Run the histogram algorithm for each row. Time: O(rows * cols), Space: O(cols).

Aptitude: [Grammar][Easy-Medium] Correct: "Neither the manager nor the employees was happy with the decision." Explain the rule of proximity.
Hint: "Neither the manager nor the employees **were** happy with the decision." Rule: When subjects are joined by "neither...nor" or "either...or", the verb must agree in number with the closer subject ("employees" is plural, so "were").

---

Q371.
MERN: [Node.js][Medium][Product Company] How do Worker Threads communicate in Node.js? Show a code snippet using `parentPort.postMessage` and `worker.on('message')`.
Hint: Worker threads communicate via MessagePort channels. Example:
`// Main thread: const worker = new Worker('./worker.js'); worker.postMessage({ val: 10 }); worker.on('message', res => console.log(res));`
`// Worker thread: parentPort.on('message', data => parentPort.postMessage(data.val * 2));`

DSA: [Queue][Easy-Medium][Product Company] Design a Circular Queue using a fixed-size array.
Hint: Circular queue uses front and rear pointers and modulo arithmetic: `rear = (rear + 1) % size`. Benefits: avoids memory fragmentation in normal array queues. Front = -1 initially. Time: O(1).

Aptitude: [SI/CI][Medium-Hard] What will be the simple interest on a sum of ₹18,000 at 10% per annum for 3.5 years?
Hint: SI = P × R × T / 100 = 18000 × 10 × 3.5 / 100 = 18000 × 0.35 = ₹6,300.

---

Q372.
MERN: [Node.js][Medium][Product Company] Compare the Node.js `cluster` module with PM2 process manager. Why is PM2 preferred in production?
Hint: `cluster` requires manual process code boilerplate, handles routing internally. PM2 is an external CLI process manager that handles clustering automatically (`pm2 start app.js -i max`), provides zero-downtime reloads, automatic crash restarts, logs management, and system monitoring.

DSA: [Queue][Medium][Amazon] 🔴 MUST DO — Design a hit counter that counts the number of hits received in the past 300 seconds (5 minutes).
Hint: Use a queue containing timestamps. For every `hit(timestamp)`, enqueue the timestamp. For `getHits(timestamp)`, dequeue all timestamps from the front of the queue that are less than or equal to `timestamp - 300`. Return the queue size. Time: O(1) amortized, Space: O(300) max.

Aptitude: [Mixtures][Medium-Hard] A container contains 50 liters of milk. From this container, 5 liters of milk are taken out and replaced by water. This process is repeated one more time. How much milk is left in the container now?
Hint: Final Milk = Initial × (1 - x/V)^n = 50 × (1 - 5/50)² = 50 × (0.9)² = 50 × 0.81 = 40.5 liters.

---

Q373.
MERN: [Node.js][Medium][Product Company] What are memory leaks in Node.js? How do you use heap dumps (`v8.writeHeapSnapshot()`) and Chrome DevTools to inspect leaks?
Hint: Leaks happen when unused memory objects are not swept by GC due to active references (e.g. global arrays). Capture heap snapshot: `v8.writeHeapSnapshot()`. Open Chrome, navigate to `chrome://inspect`, upload snapshots, and compare object count increases to identify leaking classes.

DSA: [Queue][Medium][Amazon] 🟡 HIGH FREQUENCY — Implement a double-ended queue (Deque) using a doubly linked list.
Hint: Deque supports insert/delete from both front and rear in O(1). Maintain `head` and `tail` pointers. Every node has `val`, `prev`, and `next` pointers. Update pointers carefully during insertion and deletion. Time: O(1).

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All cars are vehicles. All vehicles are machines. Some machines are smart.
**Conclusions**:
1. Some cars are smart.
2. Some machines are vehicles.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Cars are inside vehicles, which are inside machines. So some machines are vehicles (2 is true). Machines intersect with smart, but smart might not reach the cars subset inside machines, so 1 does not follow.

---

Q374.
MERN: [Node.js][Medium][Product Company] How do you profile Node.js application CPU bottlenecks in production? Explain profiling via the `--prof` V8 flag.
Hint: Run app: `node --prof app.js`. Execute load tests. Stop server. V8 generates a log file `isolate-xxx.log`. Process log using Node's tick processor: `node --prof-process isolate-xxx.log > profile.txt`. Analyze `profile.txt` to find slow C++ or JS execution functions.

DSA: [Queue][Medium][Google] 🔴 MUST DO — Design a queue that supports push, pop, peek, and retrieving the maximum element in constant time O(1).
Hint: Monotonic Deque approach. Use a main queue for elements and a double-ended queue (deque) to store candidates for maximums. When pushing x, pop from back of deque all elements smaller than x. When popping from main, if popped element equals front of deque, pop from front of deque. Time: O(1) amortized, Space: O(n).

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "A company's organizational culture is defined not by its stated core values, but by the behaviors it rewards and penalizes. If performance metrics reward toxic competition, high-sounding corporate values cannot prevent ethical lapses."
**Question**: According to the passage, what defines a company's organizational culture?
Hint: A company's organizational culture is defined by the behaviors it rewards and penalizes, rather than its stated core values.

---

Q375.
MERN: [Node.js][Medium][Product Company] What are Node.js Native Addons? When and why would you write C++ code for a Node.js backend?
Hint: Native Addons are dynamic-linked C++ libraries that can be loaded in Node.js via `require()`. Write C++ addons when JS performance is insufficient: CPU-intensive operations, direct hardware access, or integrating legacy C/C++ libraries. Use `N-API` for ABI compatibility across Node versions.

DSA: [Queue][Hard][Amazon] 🔴 MUST DO — Find the maximum element in each sliding window of size k using a monotonic deque.
Hint: Deque stores indices. Remove from front if outside window. Remove from back if smaller than current. Front = max. O(n) time.

Aptitude: [SI/CI][Medium-Hard] If a sum of money doubles itself in 8 years at simple interest, in how many years will it triple itself?
Hint: SI = Principal in 8 years. R = 100/8 = 12.5%.
To triple itself, we need SI = 2 × Principal.
Time = (2P × 100) / (P × 12.5) = 200 / 12.5 = 16 years.

---

Q376.
MERN: [Express][Medium][Product Company] How do you modularize routes in a large Express application? Draw or describe a typical router folder structure.
Hint: Create a router index: `const router = express.Router(); router.use('/users', userRouter); router.use('/posts', postRouter); app.use('/api', router);`. Place routers in `src/routes/` and link controllers containing business logic from `src/controllers/` to keep routes clean.

DSA: [Queue][Hard][Amazon] 🟡 HIGH FREQUENCY — Implement a Task Scheduler: given character array representing tasks, and cooling time n, find the minimum cycles to complete all tasks.
Hint: Max frequency greedy strategy. Use a Max-Heap / Priority Queue. Keep track of tasks with their frequencies and cooling down periods. Time: O(N), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] How many liters of pure water must be added to 30 liters of a 20% acid solution to make it a 15% acid solution?
Hint: Acid volume = 20% of 30 = 6 liters.
Let added water be w. Total volume = 30 + w.
6 / (30 + w) = 15/100 → 600 = 450 + 15w → 15w = 150 → w = 10 liters.

---

Q377.
MERN: [Express][Medium][Product Company] What are the three common strategies for API Versioning? Compare URI, Custom Headers, and Accept Headers.
Hint: 1) URI: `GET /api/v1/users` (visible, easy to cache, breaks REST principles) 2) Headers: `GET /users` with `X-API-Version: 1` (clean URL, harder to test in browsers) 3) Accept Header (Content Negotiation): `Accept: application/vnd.company.v1+json` (REST-compliant, complex server routing).

DSA: [Linked List][Medium][Google] Find the start node of a cycle in a linked list. If no cycle, return null.
Hint: Detect cycle using slow and fast pointers. If they meet, reset slow to head. Move both slow and fast pointer one step at a time. The node where they meet is the start of the cycle. Time: O(n), Space: O(1).

Aptitude: [Syllogisms][Medium] **Statements**: Some students are programmers. No programmer is a slacker. All slackers are musicians.
**Conclusions**:
1. Some students are not slackers.
2. Some musicians are not programmers.
Which conclusion(s) logically follow?
Hint: Both 1 and 2 follow. Students intersect with programmers. Since programmers cannot be slackers, the students that are programmers cannot be slackers, so 1 is true. Musicians contain all slackers. Since slackers are disjoint from programmers, the musicians that are slackers cannot be programmers, so 2 is true.

---

Q378.
MERN: [Express][Medium][Product Company] What is the BFF (Backend for Frontend) pattern? Why would you use it in a MERN stack mobile/web deployment?
Hint: BFF creates separate backend services optimized for specific client frontends (e.g. mobile vs web). Mobile app needs small lightweight JSON payloads (due to bandwidth limits); desktop web can load rich data. BFF acts as gateway adapting downstream data for each device.

DSA: [Linked List][Medium][Product Company] Given a linked list, check if it is a palindrome.
Hint: Find the middle node (slow/fast pointers). Reverse the second half of the linked list. Compare the first half and reversed second half element by element. Time: O(n), Space: O(1).

Aptitude: [Grammar][Easy-Medium] Correct: "I could of finished the assignment on time if I had started earlier." Explain the modal verb error.
Hint: "I **could have** finished the assignment on time if I had started earlier." Rule: The phrase "could of" is a common phonetic mistake. The correct construction uses the modal verb "could" followed by the auxiliary verb "have".

---

Q379.
MERN: [Express][Medium][Product Company] Explain the concept of Idempotency Keys in POST requests. How do you implement it using Express and Redis?
Hint: User clicks payment button twice → duplicate POST request. Client sends unique UUID header `Idempotency-Key`. Express checks Redis: if key exists, return buffered response without executing. If not, lock key, execute transaction, save response in Redis (e.g. TTL 24h), and return response.

DSA: [Linked List][Hard][Google] 🔴 MUST DO — Reverse nodes of a linked list k at a time.
Hint: Count list length. For every block of k nodes, reverse them. Use recursion or iterative tracking (keep pointers to group prev, group head, group tail). If remaining nodes < k, leave them as-is. Time: O(n), Space: O(1) iterative.

Aptitude: [SI/CI][Medium-Hard] A sum of money at compound interest doubles itself in 4 years. In how many years will it become eight times itself?
Hint: A = 2P in 4 years. (1 + R/100)⁴ = 2.
We want Amount = 8P. 8P = P × (2)³ = P × [(1 + R/100)⁴]³ = P × (1 + R/100)¹². So it will take 12 years.

---

Q380.
MERN: [Express][Medium][Product Company] What is the Circuit Breaker pattern in API communication? How does it protect down-stream services?
Hint: If a downstream service (e.g. payment gateway) starts failing, circuit breaker trips to "Open" state, immediately returning errors without making network calls. Periodically goes "Half-Open" to test service health. Prevents server resource exhaustion (thread pools/sockets blocked waiting on timeout).

DSA: [Linked List][Hard][Microsoft] 🔴 MUST DO — Merge k sorted linked lists and return it as one sorted list.
Hint: Use a Min-Heap (Priority Queue) to store the head nodes of all lists. Extract the minimum element, add to the result list, and push the next node of that list to the heap. Time: O(N log k) where N is total nodes, Space: O(k) for heap.

Aptitude: [Mixtures][Medium-Hard] A merchant has 100 liters of alcohol. He replaces 10 liters with water. He repeats this process two more times. Find the percentage of pure alcohol left in the mixture.
Hint: Final Alcohol = Initial × (1 - x/V)^n = 100 × (1 - 10/100)³ = 100 × (0.9)³ = 100 × 0.729 = 72.9 liters. Pure alcohol percentage = 72.9%.

---

Q381.
MERN: [MongoDB][Medium][Product Company] Explain MongoDB ACID multi-document transactions. How do you implement a transaction in Mongoose?
Hint: Session-based transactions ensure operations succeed or roll back entirely. Example:
`const session = await mongoose.startSession(); session.startTransaction(); try { await User.create([user], { session }); await Account.create([account], { session }); await session.commitTransaction(); } catch(e) { await session.abortTransaction(); } finally { session.endSession(); }`

DSA: [Linked List][Medium][Amazon] Remove the N-th node from the end of a singly linked list.
Hint: Use two pointers. Move the first pointer N steps ahead. Then move both pointers together until the first pointer reaches the end. The second pointer will point to the node before the N-th node. Remove it. Time: O(n), Space: O(1).

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All apples are red. Some red things are sweet. No sweet thing is a vegetable.
**Conclusions**:
1. Some apples are not vegetables.
2. Some red things are not vegetables.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Red things intersect with sweet. Since sweet and vegetables are disjoint, the red things that are sweet cannot be vegetables. Thus, "Some red things are not vegetables" is true (2 follows). Apples set might not overlap with sweet or vegetables, so 1 does not follow.

---

Q382.
MERN: [MongoDB][Medium][Product Company] What is Sharding in MongoDB? How do you select a good Shard Key for horizontal scalability?
Hint: Sharding distributes data across multiple machines. Shard Key determines document routing. A good Shard Key has: 1) High cardinality (lots of unique values) 2) Low frequency (even distribution) 3) Non-monotonic increases (prevents single-shard bottlenecks, like sequential IDs).

DSA: [Linked List][Medium][Amazon] Given the heads of two singly linked lists, return the node at which the two lists intersect.
Hint: Two pointers starting at heads A and B. When a pointer reaches the end, redirect it to the other list's head. They will meet at the intersection point or null because they cover the same total distance. Time: O(n + m), Space: O(1).

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "Micro-credentials and certifications are disrupting higher education. As employers focus on specific skill validation, traditional four-year degrees face declining enrollment, driving universities to offer shorter, career-oriented credentials."
**Question**: What trend is impacting enrollment in traditional four-year degrees?
Hint: The trend of employers focusing on specific skill validation and the rise of micro-credentials/certifications is causing a decline in traditional degree enrollment.

---

Q383.
MERN: [MongoDB][Medium][Product Company] What are MongoDB consistency Read Concerns? Compare `local`, `majority`, and `linearizable`.
Hint: 1) `local`: returns node's local data; fast but could be rolled back if primary fails 2) `majority`: returns data committed by a majority of nodes; safe against rollbacks 3) `linearizable`: blocks read queries until a majority confirms primary status; protects against stale data.

DSA: [Linked List][Medium][Product Company] Given a linked list, partition it such that all nodes less than x come before nodes greater than or equal to x.
Hint: Use two dummy nodes: `lessHead` and `greaterHead`. Traverse list. If node value < x, append to `less` chain; else append to `greater` chain. Merge them: `lessTail.next = greaterHead.next; greaterTail.next = null`. Time: O(n), Space: O(1).

Aptitude: [SI/CI][Medium-Hard] At what rate of compound interest per annum will ₹10,000 amount to ₹12,100 in 2 years?
Hint: 12100 = 10000(1 + R/100)² → 1.21 = (1 + R/100)² → 1.1 = 1 + R/100 → R/100 = 0.1 → R = 10%.

---

Q384.
MERN: [MongoDB][Medium][Product Company] What is Write Concern in MongoDB? What is the safety difference between `w: 1` and `w: "majority"`?
Hint: Write Concern specifies verification levels before acknowledging writes. `w: 1`: acknowledges after primary writes (fast, risk of data loss if primary fails before replicating). `w: "majority"`: acknowledges after majority of replica set nodes write (safe against rollbacks, slower network latency).

DSA: [Linked List][Medium][Amazon] Swap every two adjacent nodes in a linked list and return its head.
Hint: Use a dummy node pointing to head. Maintain `prev` pointing to dummy. Swap the next two nodes: `first = prev.next`, `second = first.next`. Update pointers: `first.next = second.next`, `second.next = first`, `prev.next = second`. Move `prev = first`. Time: O(n), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] A milkman mixes milk costing ₹30/liter with water. If he sells the mixture at ₹33/liter making a profit of 20%, find the ratio of water to milk.
Hint: Profit = 20%, SP = 33. CP of mixture = 33 / 1.2 = ₹27.5 per liter.
Alligation: Water CP (0), Milk CP (30), Mean CP (27.5).
Ratio = (30 - 27.5) : (27.5 - 0) = 2.5 : 27.5 = 1 : 11.
Ratio of water to milk = 1:11.

---

Q385.
MERN: [MongoDB][Medium][Product Company] Compare MongoDB Atlas Vector Search and standard Text Indexes. What are the use cases for Vector Search?
Hint: Text indexes search for exact character matches (keyword search). Vector Search converts text into mathematical embeddings (using AI models) and performs nearest-neighbor searches (semantic search). Use cases: building RAG chatbot integrations, recommendation systems, semantic search engine features.

DSA: [Linked List][Medium][Microsoft] Given a linked list, rotate the list to the right by k places.
Hint: Find length of list `L` and make list circular by connecting tail to head. Compute actual shifts: `k = k % L`. Find new tail at position `L - k` from the head. Break the circle at this tail, set its next to null, and return the new head. Time: O(n), Space: O(1).

Aptitude: [Syllogisms][Medium] **Statements**: All cats are pets. No pet is a tiger. Some tigers are wild.
**Conclusions**:
1. Some cats are not tigers.
2. Some wild things are not pets.
Which conclusion(s) logically follow?
Hint: Both 1 and 2 follow. Cats are inside pets. Since pets and tigers are disjoint, cats and tigers must be disjoint, so 1 is true. Wild things intersect with tigers. Since tigers and pets are disjoint, the wild things that are tigers cannot be pets, so 2 is true.

---

Q386.
MERN: [Mongoose][Medium][Product Company] What are Mongoose Discriminators? Show a code example implementing inheritance: a base `User` model, with `Student` and `Teacher` sub-models.
Hint: Discriminators store inherited schemas in the same collection. Example:
`const User = mongoose.model('User', userSchema);`
`const Student = User.discriminator('Student', new mongoose.Schema({ gpa: Number }));`
MongoDB stores a `__t: "Student"` field automatically to identify type.

DSA: [Linked List][Medium][Google] Given a linked list where each node has a next pointer and a child pointer pointing to a separate list, flatten the list into a single level.
Hint: Use a DFS approach or queue. Traverse list. When a node with a child is found, save its next node. Append child list after current node. Traverse child list to its tail, then connect the tail to the saved next node. Repeat. Time: O(n), Space: O(1) in-place.

Aptitude: [Grammar][Easy-Medium] Correct: "The reason why I am late is because my car broke down." Explain the redundant phrasing error.
Hint: "The reason why I am late is **that** my car broke down." (Or "I am late because my car broke down"). Rule: Combining "the reason why" with "is because" is redundant since both indicate cause. Use "the reason...is that" or just "because".

---

Q387.
MERN: [Mongoose][Medium][Product Company] Explain how the `lean()` option impacts documents returned by query operations in Mongoose. What features do you lose?
Hint: `lean()` returns plain JS objects, bypassing cast formatting, virtuals, and change tracking, which speeds up GET queries. You lose: document instance helper methods, the ability to call `.save()`, `.populate()`, and validation checking.

DSA: [Stack][Medium][Product Company] Implement a Stack using Queues. Compare the push-heavy vs pop-heavy trade-offs.
Hint: Use two queues `q1` and `q2`. Push-heavy: enqueue to `q1` (O(1)). Pop: shift all elements except last from `q1` to `q2`, return last element, swap names (Pop is O(n)). Pop-heavy: enqueue to `q2`, transfer all from `q1` to `q2`, swap names (Push is O(n), Pop is O(1)).

Aptitude: [SI/CI][Medium-Hard] Find the interest on ₹25,000 at 12% per annum simple interest for 2.5 years.
Hint: SI = P × R × T / 100 = 25000 × 12 × 2.5 / 100 = 25000 × 0.3 = ₹7,500.

---

Q388.
MERN: [Mongoose][Medium][Product Company] What is `Model.bulkWrite()` in Mongoose? When and why would you use it instead of running `insertMany()` or multiple `save()` queries?
Hint: `bulkWrite()` executes multiple operations (inserts, updates, deletes) in a single database round-trip network call. E.g., `Model.bulkWrite([{ insertOne: { document } }, { updateOne: { filter, update } }])`. Use it to process bulk imports or updates efficiently.

DSA: [Stack][Medium][Google] 🔴 MUST DO — Implement the "Daily Temperatures" problem: given daily temperatures, find how many days you have to wait until a warmer temperature.
Hint: Monotonic decreasing stack. Traverse the array. For each temperature, while the stack is not empty and the current temperature is greater than the temperature at the index stored at the top of the stack, pop from stack and calculate diff: `res[popped_index] = curr_index - popped_index`. Push `curr_index` to stack. Time: O(n), Space: O(n).

Aptitude: [Mixtures][Medium-Hard] A grocer mixes two types of coffee costing ₹120/kg and ₹180/kg in some ratio. If he sells the mixture at ₹187/kg making a profit of 10%, find the mixing ratio.
Hint: Profit = 10%, SP = 187. CP of mixture = 187 / 1.1 = ₹170 per kg.
Alligation: Coffee 1 CP (120), Coffee 2 CP (180), Mean CP (170).
Ratio = (180 - 170) : (170 - 120) = 10 : 50 = 1 : 5.
The mixing ratio is 1:5.

---

Q389.
MERN: [Mongoose][Medium][Product Company] What are MongoDB Change Streams? How do you consume them in a Node.js controller using Mongoose?
Hint: Change Streams listen to real-time collections modifications using the replication oplog. Example:
`const changeStream = User.watch(); changeStream.on('change', next => console.log('Change detected:', next));`. Great for sending real-time push updates via WebSockets.

DSA: [Stack][Medium][Product Company] Implement a Queue using Stacks. Compare the enqueue-heavy vs dequeue-heavy trade-offs.
Hint: Use two stacks `s1` and `s2`. Enqueue-heavy: push to `s1` (O(1)). Dequeue: if `s2` is empty, pop all from `s1` and push to `s2`. Pop from `s2` (Amortized O(1) dequeue). Dequeue-heavy: push to `s2`, pop all from `s1` to `s2`, push new element to `s1`, pop all from `s2` to `s1` (Enqueue is O(n), Dequeue is O(1)).

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All pencils are pens. Some pens are markers. No marker is a crayon.
**Conclusions**:
1. Some pens are not crayons.
2. Some pencils are markers.
Which conclusion(s) logically follow?
Hint: Only 1 follows. Pens intersect with markers. Since markers and crayons are disjoint, the pens that are markers cannot be crayons. So 1 is true. Pencils and markers might not intersect, so 2 does not follow.

---

Q390.
MERN: [Mongoose][Medium][Product Company] How do you execute Geospatial queries in Mongoose? Show a schema definition with a 2dsphere index and a query finding users within 5km of coordinates.
Hint: Define coordinates path: `location: { type: { type: String, default: 'Point' }, coordinates: [Number] }`. Create index: `schema.index({ location: '2dsphere' })`. Query:
`User.find({ location: { $near: { $geometry: { type: 'Point', coordinates: [lng, lat] }, $maxDistance: 5000 } } })`.

DSA: [Stack][Medium][Amazon] 🔴 MUST DO — Given an array of integers, find the next greater element for each element.
Hint: Monotonic decreasing stack. Traverse array from right to left. While stack is not empty and `stack.top <= arr[i]`, pop. If stack is empty, next greater is -1; else it is `stack.top`. Push `arr[i]` to stack. Time: O(n), Space: O(n).

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "Remote work reduces overhead costs for businesses and commute times for employees. However, it also blurs the boundary between personal and professional life, sometimes leading to burnout and decreased engagement."
**Question**: What is the dual impact of remote work on employees discussed in the passage?
Hint: The dual impact is that it reduces commute times (positive), but it also blurs personal-professional boundaries, leading to burnout and decreased engagement (negative).

---

Q391.
MERN: [Authentication][Medium][Product Company] How do you handle JWT revocation? If a user logs out or changes their password, how do you invalidate their active tokens?
Hint: Since JWTs are stateless, they cannot be revoked natively. Invalidation strategies: 1) Blacklist: save active token in Redis with TTL until its expiry; check blacklist in auth middleware 2) Token Versioning: store `tokenVersion` number in user DB; increment version on password change, invalidating older tokens containing old versions.

DSA: [Queue][Easy-Medium][Product Company] Design a Circular Deque (Double-Ended Queue) with fixed capacity using an array.
Hint: Deque supports insert/delete from both front and rear. Maintain `front` and `rear` pointers. Use modulo arithmetic: `front = (front - 1 + capacity) % capacity` for inserting at front. Track size to check full/empty. Time: O(1).

Aptitude: [SI/CI][Medium-Hard] A sum of money compounded annually doubles itself in 5 years. It will become eight times of itself in how many years?
Hint: Amount doubles in 5 years. Eight times = 2³ times.
Cycles required = 3. Total years = 3 × 5 = 15 years.

---

Q392.
MERN: [Authentication][Medium][Product Company] Explain the OAuth 2.0 Authorization Code Flow. Why is it preferred for secure MERN applications?
Hint: 1) Client redirects user to Google Auth 2) User logs in and grants access 3) Google redirects user back to React client with a short-lived `authorization code` 4) React client sends this code to the Express backend 5) Express backend sends the code to Google's Token Endpoint along with its client secret to obtain access/refresh tokens. Safe because the client secret is never exposed to the frontend browser.

DSA: [Queue][Medium][Amazon] Design a hit counter that counts the number of hits received in the past 300 seconds.
Hint: Use a queue containing timestamps. For every `hit(timestamp)`, enqueue the timestamp. For `getHits(timestamp)`, dequeue all timestamps from the front of the queue that are less than or equal to `timestamp - 300`. Return the queue size. Time: O(1) amortized, Space: O(300) max.

Aptitude: [Mixtures][Medium-Hard] A jar contains 60 liters of alcohol. A person removes 6 liters of alcohol and replaces it with water. He repeats this process two more times. How much pure alcohol is left in the jar?
Hint: Final Alcohol = Initial × (1 - x/V)^n = 60 × (1 - 6/60)³ = 60 × (0.9)³ = 60 × 0.729 = 43.74 liters.

---

Q393.
MERN: [CORS][Medium][Product Company] What is a CORS Preflight request? Which HTTP methods and headers trigger it, and how does the server respond?
Hint: A preflight request is an HTTP `OPTIONS` request sent by the browser before the actual request. It checks if the server trusts the origin and method. Triggered by: HTTP methods other than GET, POST, or HEAD, or custom request headers (like `Authorization` or `Content-Type: application/json`). Server responds with `Access-Control-Allow-Origin`, `Access-Control-Allow-Methods`, etc.

DSA: [Queue][Medium][Amazon] 🟡 HIGH FREQUENCY — Implement a double-ended queue (Deque) using a doubly linked list.
Hint: Deque supports insert/delete from both front and rear in O(1). Maintain `head` and `tail` pointers. Every node has `val`, `prev`, and `next` pointers. Update pointers carefully during insertion and deletion. Time: O(1).

Aptitude: [Syllogisms][Medium-Hard] **Statements**: All tables are chairs. Some chairs are desks. No desk is a whiteboard.
**Conclusions**:
1. Some tables are whiteboards.
2. Some chairs are not whiteboards.
Which conclusion(s) logically follow?
Hint: Only 2 follows. Chairs intersect with desks. Since desks and whiteboards are disjoint, the chairs that are desks cannot be whiteboards. Thus, "Some chairs are not whiteboards" is true (2 follows). Tables and whiteboards might not overlap, so 1 does not follow.

---

Q394.
MERN: [MERN Integration][Medium][Product Company] Compare client-side rendering (CSR), server-side rendering (SSR), and static site generation (SSG) in a MERN/Next.js architecture.
Hint: CSR (standard React): browser downloads minimal HTML and a large JS bundle; renders page on client (slow initial load, fast navigation). SSR: server runs React components to generate HTML for each request (fast initial paint, high server load). SSG: HTML generated once during build time (extremely fast load, good for SEO, stale data if not regenerated).

DSA: [Queue][Medium][Google] 🔴 MUST DO — Design a queue that supports push, pop, peek, and retrieving the maximum element in constant time O(1).
Hint: Monotonic Deque approach. Use a main queue for elements and a double-ended queue (deque) to store candidates for maximums. When pushing x, pop from back of deque all elements smaller than x. When popping from main, if popped element equals front of deque, pop from front of deque. Time: O(1) amortized, Space: O(n).

Aptitude: [Grammar][Easy-Medium] Correct: "Each of the candidate are expected to submit their registration forms before Friday." Explain subject-verb agreement with each.
Hint: "Each of the candidates **is** expected to submit **his or her** registration form before Friday." Rule: "Each" is singular and takes a singular verb ("is") and singular pronouns/nouns. Also, "each of the" should be followed by a plural noun ("candidates").

---

Q395.
MERN: [MERN Integration][Medium][Product Company] How do you design nested Layouts in Next.js using the App Router? Show the directory layout structure and props configuration.
Hint: Create directories: `app/layout.js` (root layout, wraps all routes) and `app/dashboard/layout.js` (nested dashboard layout). Next.js automatically nests layouts. The dashboard layout receives the active route page as `children` prop:
`export default function DashboardLayout({ children }) { return <section><Sidebar />{children}</section>; }`

DSA: [Queue][Hard][Amazon] 🔴 MUST DO — Find the maximum element in each sliding window of size k using a monotonic deque.
Hint: Deque stores indices. Remove from front if outside window. Remove from back if smaller than current. Front = max. O(n) time.

Aptitude: [SI/CI][Medium-Hard] The simple interest on a sum of money for 3 years at 9% per annum is ₹270. Find the compound interest on the same sum for 2 years at 10% per annum.
Hint: SI = P × R × T / 100 → 270 = P × 9 × 3 / 100 → P = ₹1,000.
CI on ₹1,000 at 10% for 2 years: Amount = 1000(1.1)² = ₹1,210. CI = 1210 - 1000 = ₹210.

---

Q396.
MERN: [React][Medium][Product Company] What are the rules of React Hooks? Why do they exist, and how does the React compiler check them?
Hint: Rules: 1) Only call hooks at the top level (not inside loops, conditions, or nested functions) 2) Only call hooks from React function components or custom hooks. Why: React relies on the call order of hooks to link state correctly to components. Checked via `eslint-plugin-react-hooks`.

DSA: [Queue][Hard][Amazon] 🟡 HIGH FREQUENCY — Implement a Task Scheduler: given character array representing tasks, and cooling time n, find the minimum cycles to complete all tasks.
Hint: Max frequency greedy strategy. Use a Max-Heap / Priority Queue. Keep track of tasks with their frequencies and cooling down periods. Time: O(N), Space: O(1).

Aptitude: [Mixtures][Medium-Hard] A milkman mixes milk and water in the ratio 5:3. He sells 16 liters of the mixture and adds 16 liters of water. The ratio of milk to water becomes 3:5. Find the initial quantity of the mixture.
Hint: Let initial milk = 5x, water = 3x. Total = 8x.
16L removed: contains 10L milk, 6L water.
Remaining: milk = 5x - 10, water = 3x - 6.
Water added = 16L. New water = 3x - 6 + 16 = 3x + 10.
New Ratio = (5x - 10) / (3x + 10) = 3/5 → 25x - 50 = 9x + 30 → 16x = 80 → x = 5.
Initial quantity = 8x = 40 liters.

---

Q397.
MERN: [Node.js][Medium][Product Company] What is the default heap memory limit in Node.js? How do you increase it using the `--max-old-space-size` flag?
Hint: The default limit is approximately 512MB (on 32-bit systems) and 1.4GB - 4GB (on 64-bit systems depending on version). Increase limit for memory-heavy operations: `node --max-old-space-size=4096 app.js` (sets limit to 4GB).

DSA: [Linked List][Medium][Google] Find the start node of a cycle in a linked list. If no cycle, return null.
Hint: Detect cycle using slow and fast pointers. If they meet, reset slow to head. Move both slow and fast pointer one step at a time. The node where they meet is the start of the cycle. Time: O(n), Space: O(1).

Aptitude: [Syllogisms][Medium] **Statements**: All markers are pens. Some pens are folders. No folder is a stapler.
**Conclusions**:
1. Some pens are not staplers.
2. Some markers are folders.
Which conclusion(s) logically follow?
Hint: Only 1 follows. Pens intersect with folders. Since folders and staplers are disjoint, the pens that are folders cannot be staplers. So 1 is true. Markers and folders might not intersect, so 2 does not follow.

---

Q398.
MERN: [Node.js][Medium][Product Company] What is structured logging? Why is logging in JSON format critical for microservice deployments, and what tools collect these logs?
Hint: Structured logging writes logs in a standardized, machine-readable format (JSON). Critical for microservices because it allows centralized log collectors (like Elasticsearch, Logstash, Kibana - ELK stack, or Grafana Loki) to parse, filter, and index logs by fields (like service name, correlation ID, or log level) automatically.

DSA: [Linked List][Medium][Product Company] Given a linked list, check if it is a palindrome.
Hint: Find the middle node (slow/fast pointers). Reverse the second half of the linked list. Compare the first half and reversed second half element by element. Time: O(n), Space: O(1).

Aptitude: [Reading Comprehension][Easy-Medium] Read the passage: "Traditional marketing pushes advertisements onto a general audience. In contrast, inbound marketing pulls interested prospects by producing valuable content tailored to their specific needs, reducing conversion acquisition costs."
**Question**: What is the primary difference in how inbound marketing attracts customers compared to traditional marketing?
Hint: Inbound marketing attracts prospects by creating valuable content tailored to their needs, whereas traditional marketing pushes ads onto a general audience.

---

Q399.
MERN: [Express][Medium][Product Company] How do you implement response caching in an Express API using Redis? Show a controller middleware example.
Hint: Create a middleware that checks Redis. Example:
`app.get('/data', async (req, res, next) => { const cached = await redis.get(req.url); if (cached) return res.json(JSON.parse(cached)); res.sendResponse = res.json; res.json = (body) => { redis.set(req.url, JSON.stringify(body), 'EX', 3600); res.sendResponse(body); }; next(); });`

DSA: [Linked List][Hard][Google] 🔴 MUST DO — Reverse nodes of a linked list k at a time.
Hint: Count list length. For every block of k nodes, reverse them. Use recursion or iterative tracking (keep pointers to group prev, group head, group tail). If remaining nodes < k, leave them as-is. Time: O(n), Space: O(1) iterative.

Aptitude: [SI/CI][Medium-Hard] Find the difference between the compound interest and simple interest on ₹20,000 at 5% per annum for 2 years.
Hint: Diff for 2 years = P(R/100)² = 20000 × (5/100)² = 20000 × 0.0025 = ₹50.

---

Q400.
MERN: [Express][Medium][Product Company] What is response compression in Express? Show how to configure the `compression` middleware and explain the CPU vs Bandwidth trade-off.
Hint: Response compression (Gzip/Brotli) compresses JSON/HTML bodies before sending. Configure: `app.use(compression())`. Trade-off: Compressing response bodies reduces network bandwidth and speeds up load times, but increases server CPU usage to perform compression on-the-fly.

DSA: [Linked List][Hard][Microsoft] 🔴 MUST DO — Merge k sorted linked lists and return it as one sorted list.
Hint: Use a Min-Heap (Priority Queue) to store the head nodes of all lists. Extract the minimum element, add to the result list, and push the next node of that list to the heap. Time: O(N log k) where N is total nodes, Space: O(k) for heap.

Aptitude: [Mixtures][Medium-Hard] A jar contains alcohol and water in the ratio 4:1. On adding 5 liters of water, the ratio of alcohol to water becomes 4:2. Find the quantity of alcohol in the jar.
Hint: Let alcohol be 4x, water be x.
4x / (x + 5) = 4/2 → 8x = 4x + 20 → 4x = 20 → x = 5.
Alcohol quantity = 4x = 20 liters.

---

## 📝 REVISION CHECKPOINT — Q301 to Q400

### Top Patterns Learned
1. **React hooks & Server Side Rendering**: Explored Concurrent Mode rendering, interruptible transitions (`useTransition`, `useDeferredValue`), and Server Components vs Client Components.
2. **Production-level Express**: Configured dynamic multi-origin CORS, added structured logging (Winston + Morgan), implemented request body and param validation, response caching with Redis, and response compression.
3. **Advanced MongoDB Queries**: Analyzed indexing in compound indices (ESR rule), text indexing search queries, replication elections, change streams, and geospatial queries.
4. **DSA Concepts**:
   - *Stacks*: Evaluated postfix RPN, path simplification, string decoding, valid parenthesis string validation, and largest rectangle in histogram.
   - *Queues*: Sliding window maximum, Task Scheduler cycles, Hit Counters, circular deques, and stack implementations.
   - *Binary Search*: Mountain array peaks, rotated sorted array searches with duplicate handling, search in 2D sorted matrices, and cargo ship capacity bounds.
   - *Linked Lists*: Reversing lists in groups of k, merging k sorted lists, partitioning around value x, sorted list duplicate removal, and clone lists with random pointers.
5. **Aptitude Formulas**: Compound interest compounding quarterly/semi-annually, alligation ratios for mixture values, double negative removal in grammatical contexts, collective noun pronoun assignments, and Venn diagram representation of syllogisms.

### Most Important Concepts
- 🔴 Monotonic Queue/Deque pattern to retrieve maximum in sliding window in O(1) (Q348)
- 🔴 Compressing JSON responses (Gzip/Brotli) to reduce network payload size (Q400)
- 🔴 Bottom-up Merge Sort on Linked Lists in O(n log n) and O(1) space (Q361)
- 🔴 Replica set primary node failure elections (Q360)
- 🔴 AbortController cancellation inside custom useEffect handlers (Q303)

### Revision Checklist
- [ ] Can you configure a dynamic origin CORS middleware validator?
- [ ] Can you implement the "Largest Rectangle in Histogram" in O(n) time?
- [ ] Can you explain the ESR compound indexing rule in MongoDB?
- [ ] Can you set up a nested routing layout in Next.js?
- [ ] Can you solve the "Merge k Sorted Linked Lists" using a Min-Heap?
- [ ] Can you write a Winster JSON log transport formatter?
- [ ] Can you calculate the compound interest compounding quarterly?

---

## 🎤 MOCK INTERVIEW ROUND #2 — After Q400

### Round 2: Technical Interview (45 minutes)

**MERN Questions (15 min):**
1. How does React 18's Concurrent Mode differ from the traditional synchronous rendering pipeline? What are the key advantages of `useTransition`?
2. If your Express server experiences a memory leak in production, what diagnostics would you run, and how would you find the root cause using Heap dumps?
3. What is the ESR rule in MongoDB compound index design? Why does the order of fields matter?

**DSA Coding (20 min):**
1. Given an array of integers representing weights of packages and a limit of D days, find the minimum cargo capacity of the ship to transport all packages within D days. (Binary Search on answer space)
2. Given a singly linked list, reverse the nodes of the list k at a time and return the modified list. (Linked List reversal in blocks of k)

**Aptitude & Logical Reasoning (10 min):**
1. In a jar, liquid A and B are mixed in the ratio 5:3. When 16 liters of mixture are drawn off and replaced by liquid B, the ratio becomes 3:5. Find the initial volume of the jar.
   Hint: V = 40 liters. (Using ratio subtraction and replacement arithmetic)
2. **Statements**: All tables are wooden. Some wooden things are heavy. No heavy thing is plastic.
   **Conclusions**:
   - Conclusions 1: Some tables are heavy.
   - Conclusions 2: Some wooden things are not plastic.
   Determine which conclusions follow.
   Hint: Only Conclusion 2 follows. (Visualized via disjoint sets: heavy and plastic are disjoint, wooden intersects heavy).

---
# ⭐⭐ INTERMEDIATE ROADMAP — Q401 to Q450

## Next.js, advanced Mongoose, Webhooks | Trees, Binary Trees, BST, Heaps | Advanced Permutations, Seating Arrangements, Data Interpretation

---

Q401.
MERN: [MERN Integration][Medium][Product Company] What are Webhooks? How do you implement a secure webhook listener endpoint in an Express backend?
Hint: Webhooks are HTTP POST callbacks triggered by event occurrences in third-party services (e.g. Stripe payment success). Implement securely by: 1) Verifying the request signature header using a shared webhook secret 2) Validating IP address ranges of caller 3) Replaying timestamp checks to prevent replay attacks. Use raw request body buffer for signature verification.

DSA: [Trees][Easy][Amazon] 🔴 MUST DO — Find the maximum depth/height of a binary tree.
Hint: Recursive: height = `1 + max(maxDepth(left), maxDepth(right))`. Base case: if node is null, return 0. Time: O(n), Space: O(h) where h is tree height.

Aptitude: [P&C][Easy-Medium] In how many different ways can the letters of the word 'CORPORATION' be arranged so that the vowels always come together?
Hint: Vowels in 'CORPORATION': O, O, A, I, O (5 vowels, with O repeated 3 times).
Consonants: C, R, P, R, T, N (6 consonants, with R repeated 2 times).
Treat the vowels group as 1 unit. Total units = 6 + 1 = 7.
Arrangements of 7 units = 7! / 2! (for 2 R's) = 5040 / 2 = 2520.
Arrangements within the vowels unit = 5! / 3! (for 3 O's) = 120 / 6 = 20.
Total arrangements = 2520 × 20 = 50,400.

---

Q402.
MERN: [MERN Integration][Medium][Product Company] Explain the concept of Idempotency Keys in POST requests. How do you implement it using Express and Redis?
Hint: Duplicate requests (like double-clicks) can create duplicate database actions. Client sends unique `Idempotency-Key` UUID header. Express checks Redis: if key exists, return the cached response. If not, lock the key in Redis, execute controller action, cache the response in Redis (with a TTL, e.g., 24h), and release lock.

DSA: [Trees][Easy][Amazon] 🔴 MUST DO — Given the roots of two binary trees, check if they are identical (same structure and same node values).
Hint: Recursive: return true if both are null. If only one is null, return false. If values differ, return false. Otherwise, check `isSameTree(leftA, leftB) && isSameTree(rightA, rightB)`. Time: O(n), Space: O(h).

Aptitude: [Puzzles][Easy-Medium] Six friends A, B, C, D, E, and F are sitting in a circle facing the center. C is between A and E. D is to the immediate left of F. B is adjacent to A. Who is to the immediate right of E?
Hint: Draw the arrangement. Clockwise or counter-clockwise: A sits adjacent to B and C. C sits between A and E. So order is B - A - C - E. D sits to the immediate left of F. Since two seats are left, D and F must occupy them. Since D is left of F (facing center, left is clockwise), and remaining order is E - D - F - B, E sits to the left of D (immediate right of E is D).

---

Q403.
MERN: [MERN Integration][Medium][Product Company] How do you set up a GraphQL server in an Express app using Apollo Server? Show schema and resolver registration code.
Hint:
`const { ApolloServer, gql } = require('apollo-server-express');`
`const typeDefs = gql` type Query { hello: String } `;`
`const resolvers = { Query: { hello: () => 'Hello world' } };`
`const server = new ApolloServer({ typeDefs, resolvers });`
`await server.start(); server.applyMiddleware({ app });`

DSA: [Trees][Easy][Google] 🟡 HIGH FREQUENCY — Check if a binary tree is symmetric (a mirror of itself).
Hint: Compare left and right subtrees. Helper function `isMirror(t1, t2)`: return true if both null; false if one null; check `t1.val == t2.val && isMirror(t1.left, t2.right) && isMirror(t1.right, t2.left)`. Time: O(n), Space: O(h).

Aptitude: [Data Interpretation][Easy-Medium] A bar chart shows production of a company over 5 years: Year 1 = 40 tons, Year 2 = 55 tons, Year 3 = 48 tons, Year 4 = 65 tons, Year 5 = 80 tons. What is the average annual production of the company?
Hint: Average = (40 + 55 + 48 + 65 + 80) / 5 = 288 / 5 = 57.6 tons.

---

Q404.
MERN: [MERN Integration][Medium][Product Company] Compare URL versioning (e.g. `/api/v1/users`) vs Header versioning (e.g. custom HTTP header or Accept header) for REST APIs.
Hint: URL versioning is visible, easy to test, and enables caching, but violates REST resource purity (same resource has multiple URLs). Header versioning keeps URLs clean and separates concerns, but is harder to inspect in browser debuggers and requires custom routing logic in Express.

DSA: [Trees][Easy-Medium][Google] 🔴 MUST DO — Implement Breadth-First Search (Level Order Traversal) of a binary tree, returning a list of lists representing each level.
Hint: Queue-based approach. Use a queue. Enqueue root. While queue is not empty, get its current size (number of nodes at current level). Loop through size, dequeue, add value to level list, and enqueue non-null children. Add level list to results. Time: O(n), Space: O(w) where w is max width.

Aptitude: [P&C][Easy-Medium] In how many ways can 5 boys and 3 girls be seated in a row such that no two girls sit together?
Hint: Seat boys first: 5! = 120 ways. This leaves 6 gaps (before, between, and after boys).
Select 3 gaps for the 3 girls: C(6,3) = 20 ways.
Arrange the 3 girls in selected gaps: 3! = 6 ways.
Total ways = 120 × 20 × 6 = 14,400 ways.

---

Q405.
MERN: [MongoDB][Medium][Product Company] What is Optimistic Concurrency Control (OCC) in MongoDB? How does Mongoose implement OCC using the `__v` version key?
Hint: OCC assumes conflicts are rare and verifies data versions before saving. Mongoose adds `__v` field to documents. When updating a document, it queries `where({ _id: id, __v: oldVersionValue })` and increments `__v` by 1. If another request updated the document first, the version won't match, throwing a `VersionError`, prompting retry.

DSA: [Trees][Easy-Medium][Amazon] 🔴 MUST DO — Find the Lowest Common Ancestor (LCA) of two nodes p and q in a binary tree.
Hint: Recursive search. If root is null or root equals p or q, return root. Search left and right subtrees. If both left and right search calls return non-null, root is the LCA. If only one is non-null, return that non-null node. Time: O(n), Space: O(h).

Aptitude: [Puzzles][Easy-Medium] In a queue of 40 students, Rupa is 14th from the front. What is her rank from the back?
Hint: Rank from back = Total - Rank from front + 1 = 40 - 14 + 1 = 27th.

---

Q406.
MERN: [MongoDB][Medium][Product Company] Explain the `$unwind` and `$project` stages in MongoDB Aggregation. Show a pipeline code example.
Hint: `$unwind` deconstructs an array field from input documents, outputting one document for each element of the array. `$project` reshapes documents, adding, removing, or renaming fields. Example:
`db.orders.aggregate([ { $unwind: "$items" }, { $project: { customerName: 1, itemName: "$items.name", totalCost: { $multiply: ["$items.price", "$items.qty"] } } } ])`

DSA: [Trees][Medium][Amazon] 🔴 MUST DO — Given a binary tree, validate if it is a binary search tree (BST).
Hint: Recursive validation using range boundaries. Helper function `isValid(node, min, max)`: return true if node is null. If `node.val <= min` or `node.val >= max`, return false. Validate left subtree with `(min, node.val)` and right with `(node.val, max)`. Time: O(n), Space: O(h).

Aptitude: [Data Interpretation][Easy-Medium] A line graph shows sales of a shop: Mon = ₹1200, Tue = ₹1500, Wed = ₹900, Thu = ₹2000, Fri = ₹1800. What is the percentage increase in sales from Wednesday to Thursday?
Hint: Wednesday Sales = 900, Thursday Sales = 2000.
Increase = 2000 - 900 = 1100.
Percentage Increase = (1100 / 900) × 100 ≈ 122.22%.

---

Q407.
MERN: [MongoDB][Medium][Product Company] Explain `$facet` and `$bucket` stages in MongoDB aggregation. Give a real-world use case for each.
Hint: `$facet` runs multiple independent aggregation pipelines on the same input documents (use case: sidebar filters count and paginated data in one call). `$bucket` groups documents into user-defined ranges (buckets) based on an expression value (use case: grouping products by price brackets: 0-50, 50-100, 100+).

DSA: [Trees][Easy-Medium][Google] Convert a sorted array into a height-balanced Binary Search Tree (BST).
Hint: Divide & Conquer. Find the middle element of the array, make it the root node. Recursively construct the left subtree using the left half of the array, and the right subtree using the right half. Time: O(n), Space: O(log n) stack.

Aptitude: [P&C][Easy-Medium] How many 3-digit numbers can be formed using the digits 0, 1, 2, 3, 4, 5 with no repetition?
Hint: The hundreds position cannot be 0, so it has 5 choices (1, 2, 3, 4, 5).
The tens position can be 0, leaving 5 choices (0 and remaining 4 digits).
The units position has 4 choices.
Total numbers = 5 × 5 × 4 = 100.

---

Q408.
MERN: [MongoDB][Medium][Product Company] What are TTL (Time-To-Live) Indexes in MongoDB? Show how to create a TTL index in Mongoose for a user session collection.
Hint: TTL indexes automatically delete documents after a specified time. Create a date field index with `expireAfterSeconds`. Example:
`const sessionSchema = new Schema({ createdAt: { type: Date, default: Date.now, expires: 3600 } });` (deletes session document 1 hour after creation).

DSA: [Trees][Medium-Hard][Google] Construct a binary tree from its preorder and inorder traversals.
Hint: The first element in preorder traversal is the root. Locate this root value in inorder traversal; this splits inorder into left subtree values and right subtree values. Recursively build left and right subtrees. Use a hash map to look up inorder indices in O(1). Time: O(n), Space: O(n).

Aptitude: [Puzzles][Medium] A is the father of B. B is the brother of C. C is the mother of D. D is married to E. E is the son of F. How is B related to E?
Hint: B is brother of C. C is mother of D. So B is D's maternal uncle. E is married to D. So B is E's wife's maternal uncle (uncle-in-law).

---

Q409.
MERN: [MongoDB][Medium][Product Company] Explain Sharding in MongoDB. What is a Shard Key, and what are the differences between ranged sharding and hashed sharding?
Hint: Sharding distributes data across shards. Shard Key determines how documents partition. Ranged sharding groups documents by ranges of keys (good for range queries on key, but risks hot-spotting on sequential writes). Hashed sharding hashes keys to distribute documents evenly (excellent write distribution, but poor for range queries).

DSA: [Trees][Medium][Amazon] 🟡 HIGH FREQUENCY — Given the root of a binary tree, return the right side view (nodes visible looking at it from right side).
Hint: Perform BFS (level order traversal). For each level, collect the last node of that level (rightmost node) and append to results. Or use DFS tracking `maxDepth` visited. Time: O(n), Space: O(w) queue size.

Aptitude: [Data Interpretation][Easy-Medium] A pie chart represents budget distribution: Rent = 30%, Food = 25%, Education = 20%, Savings = 15%, Utilities = 10%. If total monthly budget is ₹40,000, how much is spent on rent and savings combined?
Hint: Combined percentage = 30% + 15% = 45%.
Expenditure = 45% of 40000 = 0.45 × 40000 = ₹18,000.

---

Q410.
MERN: [MongoDB][Medium][Product Company] What is Write Concern in MongoDB? Compare `{w: 1}`, `{w: "majority"}`, and `{j: true}` in terms of safety and write performance.
Hint: `w: 1`: acknowledges write after primary writes (fast, risk of data loss if primary crashes before replicating). `w: majority`: acknowledges after majority of replica set nodes write (safe against rollbacks, slower network latency). `j: true`: forces journal synchronization before acknowledging (safe against power outages).

DSA: [Trees][Medium][Google] Flatten a binary tree into a singly linked list in-place (preorder traversal order, using the right child pointer).
Hint: For each node, if it has a left child, find the rightmost node of that left child (inorder predecessor). Connect its right pointer to current node's right child. Move the left child to the right child pointer and set left to null. Advance to next node. Time: O(n), Space: O(1) in-place.

Aptitude: [P&C][Medium] A box contains 4 red, 3 black, and 2 green balls. In how many ways can 3 balls be drawn if at least one red ball is to be included in the draw?
Hint: Total balls = 9. Total ways to draw 3 balls = C(9,3) = 84.
Ways to draw 3 balls with no red balls (choosing from 3 black + 2 green = 5 balls) = C(5,3) = 10.
Ways with at least one red ball = 84 - 10 = 74 ways.

---

Q411.
MERN: [Security][Medium][FAANG-Level] What is NoSQL Injection in MongoDB? How do you prevent it in an Express/Node.js MERN application?
Hint: Happens when user input is passed directly to queries as objects. E.g. req.body.password = `{"$gt": ""}` bypasses password checks. Prevent by: 1) Using Mongoose schemas (auto-casts inputs to matching schema types) 2) Sanitizing request payloads using `express-mongo-sanitize` (removes keys starting with `$`) 3) Validating inputs with Joi.

DSA: [Trees][Medium][Amazon] Given a binary tree and a target sum, return all root-to-leaf paths where the sum of node values equals the target sum.
Hint: DFS with backtracking. Traverse tree. Add current node to path. If leaf node and path sum equals target, add path copy to results. Recurse left and right. Backtrack by popping current node from path before returning. Time: O(n), Space: O(h) recursion stack.

Aptitude: [Puzzles][Medium] Seven people P, Q, R, S, T, U, and V are standing in a line. Q is standing left of R but right of P. S is right of T but left of U. U is left of P. V is right of R. Who is standing in the middle?
Hint: Work out the sequence:
"Q is left of R, right of P" → P - Q - R.
"S is right of T, left of U" → T - S - U.
"U is left of P" → T - S - U - P.
Combine: T - S - U - P - Q - R - V.
Total = 7 people. Middle person (4th) is P.

---

Q412.
MERN: [Security][Medium][Product Company] Compare `bcrypt` and `argon2` for password hashing in Node.js. Why is salt hashing critical?
Hint: Hashing with salt produces unique outputs for identical inputs, blocking rainbow table dictionary attacks. `bcrypt` uses custom blowfish-based key-derivation (computationally heavy, resistant to CPU brute-force). `argon2` is the modern standard (winner of Password Hashing Competition), adding configurable memory-hardness and thread concurrency parameters, resisting GPU/ASIC brute-force.

DSA: [Trees][Hard][Google] 🔴 MUST DO — Given a binary tree, find the maximum path sum. The path may start and end at any node.
Hint: DFS recursion. For each node, calculate the max branch sum of left and right subtrees. Max path passing through current node is `node.val + leftBranch + rightBranch`. Track maximum overall path sum in a global/outer variable. Return `node.val + max(leftBranch, rightBranch)` to parent. Time: O(n), Space: O(h).

Aptitude: [Data Interpretation][Easy-Medium] A table shows population (in millions) of 4 cities: City A = 12, City B = 8, City C = 15, City D = 6. If the literacy rates are 80%, 75%, 60%, and 90% respectively, find the total number of literate people in all four cities combined.
Hint: City A: 12 × 0.8 = 9.6M. City B: 8 × 0.75 = 6M. City C: 15 × 0.6 = 9M. City D: 6 × 0.9 = 5.4M.
Total Literate = 9.6 + 6 + 9 + 5.4 = 30 million.

---

Q413.
MERN: [Security][Medium][FAANG-Level] Explain the top three JWT security vulnerabilities (e.g. `alg: none`, signature stripping, weak signing keys) and how to fix them.
Hint: 1) `alg: none`: attacker strips signature and sets header `alg:none`. Fix: configure library to disallow none algorithm. 2) Signature stripping: attacker bypasses signature check. Fix: verify signature on every request. 3) Weak signing keys: keys guessed via brute-force. Fix: use strong environment secrets (e.g., 256-bit keys) and rotate them.

DSA: [Trees][Hard][Google] Serialize and deserialize a binary tree (convert to string representation and restore it).
Hint: Use preorder traversal. Serialization: append node values to string separated by commas, representing null pointers as '#'. Deserialization: split string by commas, use a queue/iterator to read values recursively to reconstruct left and right subtrees. Time: O(n), Space: O(n).

Aptitude: [P&C][Medium-Hard] A committee of 5 members is to be formed from 6 gentlemen and 4 ladies. In how many ways can this be done if the committee must contain at least 2 ladies?
Hint: Cases:
1. 2 Ladies, 3 Gentlemen: C(4,2) × C(6,3) = 6 × 20 = 120.
2. 3 Ladies, 2 Gentlemen: C(4,3) × C(6,2) = 4 × 15 = 60.
3. 4 Ladies, 1 Gentleman: C(4,4) × C(6,1) = 1 × 6 = 6.
Total ways = 120 + 60 + 6 = 186 ways.

---

Q414.
MERN: [Security][Medium][Product Company] What is Express HTTP Parameter Pollution (HPP)? How can it be exploited, and how do you protect against it?
Hint: HPP occurs when query parameters contain multiple values of the same key, turning `req.query.key` from a string into an array (e.g. `/api?user=admin&user=user`). If backend assumes string, it can throw exceptions or bypass validation. Protect by using the `hpp()` middleware to discard duplicate params, keeping only the last value.

DSA: [Trees][Easy-Medium][Google] Count complete tree nodes in a complete binary tree (filled left-to-right) in less than O(n) time.
Hint: Compare left height and right height of the tree. If equal, left subtree is perfect binary tree, count = `2^(height) - 1 + 1 (root) + countNodes(right)`. If not equal, right subtree is perfect binary tree, count = `2^(height-1) - 1 + 1 (root) + countNodes(left)`. Time: O(log² n), Space: O(log n).

Aptitude: [Puzzles][Medium-Hard] Eight people A, B, C, D, E, F, G, and H are sitting around a circular table facing the center. A is second to the left of C, who is immediate neighbor of H. D is third to the right of G. G is adjacent to B. F is between D and H. Find the position of E relative to A.
Hint: Deduce order:
C - H - F - D - G - B - A - E.
Verify adjacencies and relative counts. Circular table fits 8 people.
Position of E is immediate left of A (or right of C).

---

Q415.
MERN: [Performance][Medium][Product Company] How does response compression improve web performance? Show how to configure `compression` in Express, and discuss the CPU-bandwidth trade-off.
Hint: Gzip/Brotli compresses text responses, saving up to 70% bandwidth. Setup:
`const compression = require('compression'); app.use(compression());`. Trade-off: Compressing on-the-fly reduces network latency but increases server CPU load. Best practice: use CDNs/Nginx for static file compression and keep Node for dynamic payload compression.

DSA: [BST][Easy-Medium][Amazon] 🔴 MUST DO — Search for a node value in a Binary Search Tree (BST).
Hint: BST property: left child < parent < right child. If root is null or matches target, return root. If target < root.val, search recursively on left subtree; else search right. Time: O(h) where h is height (O(log n) average, O(n) worst case).

Aptitude: [Data Interpretation][Medium] A table shows the population (in thousands) of a town over four decades: 1980 = 80, 1990 = 100, 2000 = 130, 2010 = 150. What is the percentage growth rate of the town's population in the decade 1990-2000?
Hint: Population in 1990 = 100k, in 2000 = 130k.
Growth = 130 - 100 = 30k.
Growth Rate = (30 / 100) × 100 = 30%.

---

Q416.
MERN: [Performance][Medium][Product Company] What are the differences between Index Scans and Collection Scans in MongoDB? How do you use `explain()` to check?
Hint: Collection Scan (COLLSCAN): queries check every document in collection (O(n) - slow). Index Scan (IXSCAN): queries use B-tree index (O(log n) - fast). Check by running `.explain('executionStats')` on mongoose queries. Look for `stage: "IXSCAN"` instead of `COLLSCAN`.

DSA: [BST][Easy-Medium][Amazon] 🔴 MUST DO — Insert a node value into a Binary Search Tree (BST).
Hint: Recursive search. If root is null, return new Node(val). If `val < root.val`, `root.left = insert(root.left, val)`. Else, `root.right = insert(root.right, val)`. Return root. Time: O(h) space: O(h).

Aptitude: [P&C][Medium-Hard] How many 4-letter words can be formed using the letters of the word 'LOGARITHMS' with no repetition such that the word must begin with L?
Hint: 'LOGARITHMS' has 10 distinct letters.
The first letter must be L (1 choice).
Remaining 3 positions can be filled using the remaining 9 letters.
Number of ways = P(9,3) = 9 × 8 × 7 = 504.

---

Q417.
MERN: [Mongoose][Medium][Product Company] What are Mongoose Discriminators? Show a code example implementing schema inheritance: a base `User` schema and a `Student` sub-schema.
Hint: Discriminators store inherited schemas in the same collection. Example:
`const userSchema = new Schema({ name: String }, { discriminatorKey: 'type' });`
`const User = model('User', userSchema);`
`const Student = User.discriminator('Student', new Schema({ gpa: Number }));`
MongoDB stores `type: "Student"` automatically.

DSA: [BST][Medium-Hard][Amazon] 🔴 MUST DO — Delete a node value from a Binary Search Tree (BST).
Hint: 1) If node to delete has 0/1 children, return its non-null child or null. 2) If it has 2 children, find its inorder successor (smallest node in right subtree). Copy its value to current node, then delete that successor from the right subtree. Time: O(h), Space: O(h).

Aptitude: [Puzzles][Medium-Hard] A clock strikes once at 1 o'clock, twice at 2 o'clock, and so on. How many times will it strike in 24 hours?
Hint: Strikes in 12 hours = 1 + 2 + 3 + ... + 12 = 12 × 13 / 2 = 78.
Strikes in 24 hours = 78 × 2 = 156.

---

Q418.
MERN: [Mongoose][Medium][Product Company] What are the differences between `findOneAndUpdate()` and document `save()` in Mongoose? When do middleware hooks run?
Hint: `findOneAndUpdate()` bypasses Mongoose validation and hooks by default (runs direct DB operation). Document `save()` runs validation and Mongoose pre/post hooks. To run validations in findOneAndUpdate, pass `{ runValidators: true }`. Use `save()` when schema hooks (like password hashing) are required.

DSA: [BST][Medium][Amazon] 🟡 HIGH FREQUENCY — Find the Kth smallest element in a Binary Search Tree (BST).
Hint: Inorder traversal of a BST visits nodes in sorted order. Perform an iterative in-order traversal using a stack. Decrement k when popping a node. When `k == 0`, return that node's value. Time: O(h + k), Space: O(h).

Aptitude: [Data Interpretation][Medium] A table shows the distribution of students in 3 streams: Science = 120, Commerce = 150, Arts = 80. If 40%, 30%, and 50% of students in these streams respectively are girls, what is the ratio of boys to girls in the school?
Hint: Girls: Science = 48, Commerce = 45, Arts = 40. Total Girls = 48 + 45 + 40 = 133.
Boys: Science = 72, Commerce = 105, Arts = 40. Total Boys = 72 + 105 + 40 = 217.
Ratio of boys to girls = 217 : 133 = 31 : 19.

---

Q419.
MERN: [Mongoose][Medium][Product Company] What is `Model.bulkWrite()` in Mongoose? Write a code snippet executing multiple insert, update, and delete actions in one query.
Hint: `bulkWrite` groups database operations to reduce network latency. Example:
`User.bulkWrite([ { insertOne: { document: { name: 'A' } } }, { updateOne: { filter: { name: 'B' }, update: { $set: { age: 30 } } } }, { deleteOne: { filter: { name: 'C' } } } ]);`

DSA: [BST][Medium][Google] Find the Lowest Common Ancestor (LCA) of two nodes in a Binary Search Tree (BST).
Hint: BST property: if both target nodes are smaller than root, LCA lies in left subtree (`root = root.left`). If both are larger, LCA lies in right subtree (`root = root.right`). If they split (one smaller, one larger or equals root), root is the LCA. Time: O(h), Space: O(1) iterative.

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'LEADER' be arranged?
Hint: 'LEADER' has 6 letters, where E is repeated twice.
Number of arrangements = 6! / 2! = 720 / 2 = 360 ways.

---

Q420.
MERN: [Mongoose][Medium][Product Company] What are MongoDB Change Streams? How do they enable real-time features on a Node/Express backend?
Hint: Change Streams listen to database collection changes using the oplog. Consume via Mongoose Model:
`const stream = User.watch(); stream.on('change', (data) => { io.emit('user_changed', data); });` (pipes events to clients in real-time via WebSockets).

DSA: [BST][Medium-Hard][Google] Recover a BST where exactly two nodes were swapped by mistake.
Hint: Inorder traversal. Keep track of current node, prev node, and two violated nodes. During inorder traversal, if `prev.val > curr.val`, mark the first violation as `prev` and second violation as `curr`. Swap values of first and second violated nodes at the end. Time: O(n), Space: O(h).

Aptitude: [Puzzles][Medium-Hard] A matrix matching logic puzzle: Three people (Alice, Bob, Charlie) have three different professions (Doctor, Engineer, Lawyer) and live in three different cities (New York, London, Paris). Alice is not a doctor. Bob lives in London. The engineer lives in Paris. Charlie is a lawyer. Who lives in New York?
Hint: Deduce: Charlie is lawyer. Bob lives in London. Alice is not doctor, so Alice must be the engineer. Since engineer lives in Paris, Alice lives in Paris. Charlie must live in New York. Bob (Doctor) lives in London. Charlie (Lawyer) lives in New York.

---

Q421.
MERN: [MERN Integration][Medium][Product Company] How do you handle file uploads in a MERN stack application? Explain frontend file selection, Axios upload, and backend processing.
Hint: Frontend: use `<input type="file" onChange={e => setFile(e.target.files[0])}>`. Send file inside `FormData` object with headers `Content-Type: multipart/form-data`. Backend: mount `multer` middleware to parse multipart request and save file to local disk or pipe to AWS S3.

DSA: [Heap][Medium][Amazon] 🔴 MUST DO — Implement a Min-Heap (Priority Queue) from scratch with `insert`, `extractMin`, `heapifyUp`, and `heapifyDown` operations.
Hint: Store elements in an array. Left child index = `2*i + 1`, right = `2*i + 2`, parent = `(i-1)/2`. `insert`: append to end and `heapifyUp`. `extractMin`: swap root with last element, pop, and `heapifyDown` from root. Time: O(log n) insert/extract.

Aptitude: [Data Interpretation][Medium] A line graph shows the percentage growth of two companies over 4 years. Company A: Year 1 = 10%, Year 2 = 12%, Year 3 = 15%, Year 4 = 18%. Company B: Year 1 = 12%, Year 2 = 10%, Year 3 = 14%, Year 4 = 20%. If both companies started with equal revenues in Year 0, which company had higher revenue at the end of Year 2?
Hint: Let Year 0 revenue = 100.
Company A (Year 2) = 100 × 1.10 × 1.12 = 123.2.
Company B (Year 2) = 100 × 1.12 × 1.10 = 123.2.
They had equal revenues at the end of Year 2.

---

Q422.
MERN: [MERN Integration][Medium][Product Company] How do you implement infinite scrolling on the frontend and offset/cursor pagination on the backend?
Hint: Frontend: listen to scroll positions or use Intersection Observer API on a sentinel node; trigger next page fetch when visible. Backend: Cursor pagination: `Model.find({ _id: { $gt: lastId } }).limit(limit)` (preferred for performance and preventing duplicate items when new data inserts).

DSA: [Heap][Medium][Amazon] 🔴 MUST DO — Find the Kth largest element in an unsorted array.
Hint: Use a Min-Heap of size K. Iterate through the array. If heap size < K, push current element. Else, if current element > min element in heap (root), pop root and push current. After traversing, root of min-heap is the Kth largest element. Time: O(n log K), Space: O(K).

Aptitude: [P&C][Medium-Hard] Find the number of diagonals that can be drawn in a decagon (10-sided polygon).
Hint: Formula for number of diagonals in an n-sided polygon = C(n,2) - n = n(n-3)/2.
Decagon n = 10. Diagonals = 10 × 7 / 2 = 35.

---

Q423.
MERN: [MERN Integration][Medium][Product Company] How do you set up environment-specific configuration files in Express? Show `dotenv` and config directory patterns.
Hint: Create `.env` files: `.env.development`, `.env.production`. Load via:
`require('dotenv').config({ path: `.env.${process.env.NODE_ENV}` })`. Or use a `config/` directory containing `db.js`, `server.js` exporting configuration constants based on `process.env`.

DSA: [Heap][Medium-Hard][Google] 🟡 HIGH FREQUENCY — Merge k sorted linked lists and return it as one sorted list.
Hint: Use a Min-Heap (Priority Queue). Enqueue the head nodes of all k lists. While heap is not empty, extract the minimum node, append it to result list, and enqueue the next node of that extracted node. Time: O(N log k), Space: O(k).

Aptitude: [Puzzles][Medium-Hard] Five people (P, Q, R, S, T) are sitting in a row. R is to the immediate right of P. Q is sitting next to T. S is on the extreme left. T is not sitting next to R. Who is sitting next to R?
Hint: S is on extreme left (Position 1: S).
R is immediate right of P (P - R adjacent).
Q is next to T (Q - T adjacent).
Since S is on left, possible order: S - P - R - Q - T (Verify: T is not next to R, Q is next to T).
So the order is S - P - R - Q - T.
The person sitting next to R is Q (and P).

---

Q424.
MERN: [Next.js][Medium][Product Company] What are Next.js API Routes? How do you implement a GET and POST handler in the Next.js App Router (`app/api/users/route.js`)?
Hint: Create file `route.js`. Export named HTTP method functions:
`export async function GET(request) { return Response.json({ users: [] }); }`
`export async function POST(request) { const body = await request.json(); return Response.json(body); }`

DSA: [Heap][Medium-Hard][Amazon] Find the top K frequent elements in an array.
Hint: Count element frequencies using a hash map. Enqueue map entries into a Min-Heap of size K based on frequency. If frequency > root's, pop root and push current. At the end, extract elements from heap. Time: O(n log K), Space: O(n).

Aptitude: [Data Interpretation][Medium] A table shows the profit (in millions) of three companies over 3 years: Company A: 10, 12, 15. Company B: 8, 11, 14. Company C: 12, 12, 12. Which company had the highest percentage growth in profit from Year 1 to Year 3?
Hint: Company A growth = (15-10)/10 = 50%.
Company B growth = (14-8)/8 = 75%.
Company C growth = 0%.
Company B had the highest percentage growth (75%).

---

Q425.
MERN: [Next.js][Medium][Product Company] Explain Next.js Server Actions. How do they simplify client-server communication compared to writing API endpoints?
Hint: Server Actions (`'use server'`) are async functions executed on the server that can be called directly from Client Components. They eliminate the boilerplate of writing API endpoints (`fetch('/api/action')`), setting up body parsers, and manual type checking, while preserving form validation and progressive enhancement.

DSA: [Heap][Hard][Google] 🔴 MUST DO — Find the median from a continuous data stream (Median Finder).
Hint: Use two heaps: a Max-Heap for the left half of numbers, and a Min-Heap for the right half. Maintain balance so the size difference is at most 1. Median is the root of the larger heap, or the average of both roots if heap sizes are equal. Time: O(log n) add, O(1) findMedian.

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'VALENTINE' be arranged?
Hint: 'VALENTINE' has 9 letters, with E repeated twice, N twice, and I once, but wait: V, A, L, E, N, T, I, N, E.
Letters: V (1), A (1), L (1), E (2), N (2), T (1), I (1).
Total arrangements = 9! / (2! × 2!) = 362880 / 4 = 90,720 ways.

---

Q426.
MERN: [React][Medium][Product Company] What are React portals? Write code rendering a tooltip overlay into a `#tooltip-root` div.
Hint: Use `ReactDOM.createPortal`. Example:
`const Tooltip = ({ text }) => ReactDOM.createPortal(<div className="tooltip">{text}</div>, document.getElementById('tooltip-root'));` (avoids layout/CSS nesting bugs).

DSA: [Heap][Medium][Amazon] Find the K closest points to the origin (0, 0) on a 2D plane.
Hint: Compute Euclidean distance for each point. Maintain a Max-Heap of size K. Enqueue points based on distance. If current distance < root, pop root and push current point. The heap will contain the K closest points. Time: O(n log K), Space: O(K).

Aptitude: [Puzzles][Medium-Hard] A seating arrangement puzzle: Seven people A, B, C, D, E, F, and G are sitting in a row facing North. A is sitting next to B. C is sitting third to the left of D. E is sitting next to G. F is sitting at the extreme right. B is not sitting next to F or G. Find the position of A.
Hint: Order is: G - E - C - A - B - D - F.
Verify constraints: F is extreme right (Position 7: F). D is at 6, C is at 3 (C is third to left of D). A next to B (4 and 5). E next to G (1 and 2). B not next to F or G. Yes, order is G - E - C - A - B - D - F.
Position of A is 4th from left.

---

Q427.
MERN: [React][Medium][Product Company] What are React error boundaries? What methods must they implement, and what errors do they fail to catch?
Hint: Class component that catches errors in child components. Must implement: `static getDerivedStateFromError()` and `componentDidCatch()`. Cannot catch: errors in event handlers, async code (e.g. `setTimeout`), SSR, or errors in the boundary itself.

DSA: [Trie][Medium][Google] 🔴 MUST DO — Implement a Trie (Prefix Tree) with `insert`, `search`, and `startsWith` methods.
Hint: Define Node class: `class TrieNode { children = {}; isEndOfWord = false; }`. `insert`: traverse/create child nodes characters by characters, set `isEndOfWord = true` at end. `search`: traverse, return true if node non-null and `isEndOfWord == true`. `startsWith`: traverse, return true if node non-null. Time: O(L) where L is word length.

Aptitude: [Data Interpretation][Medium] A table shows the percentage marks of 4 students in 3 subjects: Student 1: Math=80%, Science=70%, English=90%. Student 2: Math=90%, Science=80%, English=70%. Student 3: Math=70%, Science=90%, English=80%. Student 4: Math=85%, Science=85%, English=85%. If the maximum marks in Math, Science, and English are 100, 150, and 50 respectively, which student scored the highest total marks?
Hint: Subject Weights: Math=100, Science=150, English=50 (Total max = 300).
Student 1 total = 80 + 105 + 45 = 230.
Student 2 total = 90 + 120 + 35 = 245.
Student 3 total = 70 + 135 + 40 = 245.
Student 4 total = 85 + 127.5 + 42.5 = 255.
Student 4 scored the highest total marks (255).

---

Q428.
MERN: [React][Medium][Product Company] Explain how the `createSlice` API works in Redux Toolkit. Write a slice for an authentication feature.
Hint: `createSlice` generates actions and reducers automatically. Example:
`const authSlice = createSlice({ name: 'auth', initialState: { user: null }, reducers: { login: (state, action) => { state.user = action.payload; } } });`
`export const { login } = authSlice.actions; export default authSlice.reducer;`

DSA: [Trie][Medium-Hard][Amazon] 🟡 HIGH FREQUENCY — Implement a Search Suggestion System: given an array of products and a search word, return list of at most three matching products after each character of search word is typed.
Hint: Insert all products into a Trie. At each TrieNode, store a list of at most 3 alphabetically sorted products that share the prefix. When typing search word, traverse Trie and collect stored suggestions from matching nodes. Time: O(N log N + L) where L is search word length.

Aptitude: [P&C][Medium-Hard] In how many different ways can a team of 4 players be chosen from 5 boys and 4 girls such that it contains at least 1 boy and 1 girl?
Hint: Total ways to choose 4 from 9 = C(9,4) = 126.
Ways with only boys (choosing 4 from 5 boys) = C(5,4) = 5.
Ways with only girls (choosing 4 from 4 girls) = C(4,4) = 1.
Ways with at least 1 boy and 1 girl = 126 - 5 - 1 = 120 ways.

---

Q429.
MERN: [React][Medium][Product Company] What is Redux Thunk? Write a thunk action creator that fetches user data from an API.
Hint: Thunk middleware lets you write action creators returning functions instead of actions. Example:
`const fetchUser = (id) => async (dispatch) => { dispatch(startFetch()); try { const res = await api.get(`/users/${id}`); dispatch(successFetch(res.data)); } catch(err) { dispatch(failFetch(err.message)); } };`

DSA: [Trie][Hard][Google] 🔴 MUST DO — Solve the Word Search II problem: given a 2D board of characters and a list of words, find all words on the board.
Hint: Insert all words into a Trie. Perform DFS traversal on the board. At each cell, check if the character exists in the Trie root's children. If yes, recurse to neighbors, passing the matching Trie node. Mark cells visited to avoid reuse. Prune Trie nodes after finding words to save work. Time: O(M * N * 4^L) where L is max word length.

Aptitude: [Puzzles][Medium-Hard] A seating puzzle: Six people (A, B, C, D, E, F) are sitting in a circle facing the center. A is sitting next to B. C is sitting opposite to D. E is sitting next to F. B is sitting third to the right of F. Who is sitting opposite to A?
Hint: Order is: F - E - D - B - A - C.
Verify opposite checks. C is opposite to D. F is opposite to B. So E must be opposite to A.
The person sitting opposite to A is E.

---

Q430.
MERN: [React][Medium][Product Company] What is Zustand? Why is it considered a simpler state management alternative to Redux?
Hint: Zustand defines state and actions in a single hook: `const useStore = create(set => ({ count: 0, inc: () => set(state => ({ count: state.count + 1 })) }))`. Simpler because it lacks actions/reducers boilerplate, context provider wrappers, and leverages selector subscriptions automatically for performance.

DSA: [Trie][Hard][Google] Implement a prefix matching function that returns the longest matching prefix for a given word in a dictionary.
Hint: Traverse the Trie characters by characters. Track the index of the latest node where `isEndOfWord == true`. Stop traversing if no child node exists for current character. Return substring up to that latest index. Time: O(L), Space: O(1).

Aptitude: [Data Interpretation][Medium] A table shows the percentage of marks of 5 students in 5 subjects. If the subject maximum marks are all 100, what is the aggregate percentage marks of the student who scored the second highest total?
Hint: Sum the percentage scores for each student (since max is 100, aggregate percentage = average of percentages). Sort and find the second highest aggregate percentage value.

---

Q431.
MERN: [React][Medium][Product Company] Write a custom React hook `useLocalStorage` that syncs state to browser storage.
Hint: Initialize state from localStorage or default:
`const [val, setVal] = useState(() => JSON.parse(localStorage.getItem(key)) || initial);`
Sync via useEffect: `useEffect(() => { localStorage.setItem(key, JSON.stringify(val)); }, [key, val]);`

DSA: [Trees][Medium][Amazon] Compute the diameter of a binary tree (longest path between any two nodes).
Hint: Recursive height calculation. For each node, diameter through it is `height(left) + height(right)`. Calculate height and track maximum diameter globally to avoid O(n²) double traversals. Time: O(n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'MATHEMATICS' be arranged?
Hint: 'MATHEMATICS' has 11 letters: M (2), A (2), T (2), H (1), E (1), I (1), C (1), S (1).
Arrangements = 11! / (2! × 2! × 2!) = 39,916,800 / 8 = 4,989,600.

---

Q432.
MERN: [MERN Integration][Medium][Product Company] How do you handle authentication inside Next.js API Routes or Server Actions? Show middleware validation.
Hint: Extract request cookie/header. Validate JWT. In Next.js:
`const token = cookies().get('token')?.value;`
`if (!token) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });`
`const payload = jwt.verify(token, process.env.JWT_SECRET);`

DSA: [Trees][Medium][Google] Find the sum of all left leaves in a given binary tree.
Hint: DFS recursion. When traversing, pass a flag indicating if the current node is a left child. If leaf node and `isLeft == true`, return its value; else return 0. Sum all returns. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] Five people (A, B, C, D, E) live in five different cities (New York, Paris, Tokyo, Sydney, Berlin). A lives in Tokyo. B lives in Paris or Sydney. C does not live in Berlin. D lives in Sydney. Where does C live?
Hint: A in Tokyo. D in Sydney. B in Paris or Sydney (must be Paris since D is in Sydney). Remaining cities: Berlin, New York. Since C does not live in Berlin, C must live in New York. E lives in Berlin. C lives in New York.

---

Q433.
MERN: [React][Medium][Product Company] What are controlled inputs vs uncontrolled inputs in React? Show how to create a file input using useRef.
Hint: File inputs in React are always uncontrolled because their value is read-only. Example:
`const fileInput = useRef(); const submit = () => { upload(fileInput.current.files[0]); };`
`<input type="file" ref={fileInput}/>`

DSA: [Trees][Medium][Product Company] Invert a binary tree (swap left and right children of every node recursively).
Hint: Recursive: if node is null, return. Swap: `temp = left; left = right; right = temp;`. Recurse left and right subtrees. Time: O(n), Space: O(h).

Aptitude: [Data Interpretation][Medium] A bar chart shows the average monthly rainfall in 3 cities. What is the ratio of total rainfall in City A to total rainfall in City B over the 3 months?
Hint: Sum the rainfall values for City A and City B separately across the 3 months, then find their ratio.

---

Q434.
MERN: [Node.js][Medium][Product Company] Explain the concept of connection pooling in MongoDB. How does it improve performance, and how do you configure it in Mongoose?
Hint: Connection pooling keeps active database connections open, avoiding the network cost of establishing TCP sockets on every query. Configure: `mongoose.connect(uri, { maxPoolSize: 50, minPoolSize: 10 })`.

DSA: [Trees][Medium][Amazon] Check if a binary tree is height-balanced (height difference of left and right subtrees ≤ 1 for every node).
Hint: Recursive height calculation. Return -1 if unbalanced. If `leftHeight == -1` or `rightHeight == -1` or `abs(left - right) > 1`, return -1. Else return height. Time: O(n), Space: O(h).

Aptitude: [P&C][Medium-Hard] How many 5-digit numbers can be formed using digits 1, 2, 3, 4, 5 with repetition allowed?
Hint: Each of the 5 positions can be filled using any of the 5 digits.
Total numbers = 5⁵ = 3,125.

---

Q435.
MERN: [Mongoose][Medium][Product Company] Explain Mongoose virtuals. How do you create a virtual property `fullName` that splits a string into `firstName` and `lastName` on set?
Hint: Define schema virtual with getter and setter. Example:
`schema.virtual('fullName').get(function() { return `${this.first} ${this.last}`; }).set(function(v) { const [first, last] = v.split(' '); this.first = first; this.last = last; });`

DSA: [Trees][Medium][Product Company] Find the path sum: given a binary tree and target, return true if there is a root-to-leaf path that sums to target.
Hint: Recursive subtraction. If node is null, return false. Subtract node value from target. If leaf node, return `target === 0`. Else, recurse left and right subtrees. Time: O(n), Space: O(h).

Aptitude: [Puzzles][Medium-Hard] A clock strikes once at half past each hour and strikes the number of the hour at each hour. How many times will it strike in 12 hours?
Hint: Strike once at half-hour: 12 times.
Strikes at hour: 1 + 2 + 3 + ... + 12 = 78 times.
Total strikes = 78 + 12 = 90 times.

---

Q436.
MERN: [MERN Integration][Medium][Product Company] How do you handle CORS preflight request issues in Express when custom headers are sent?
Hint: Ensure the `cors` middleware is mounted before all routes and configured to return a 204 or 200 status on `OPTIONS` requests. Example:
`app.use(cors({ origin: 'https://client.com', allowedHeaders: ['Content-Type', 'Authorization'] }));`

DSA: [BST][Medium][Amazon] Find the lowest common ancestor (LCA) of two nodes in a Binary Search Tree (BST).
Hint: Iterative traversal. If both target nodes are smaller than current node, search left (`curr = curr.left`). If both are larger, search right. If they split, current node is the LCA. Time: O(h), Space: O(1).

Aptitude: [Data Interpretation][Medium] A table shows the sales (in lakhs) of 4 branches of a publishing house in 2 consecutive years. What is the percentage growth in total sales across all branches?
Hint: Sum sales for Year 1, sum for Year 2. Percentage growth = `(Year2 - Year1) / Year1 * 100`.

---

Q437.
MERN: [React][Medium][Product Company] Write a custom React hook `useWindowSize` that listens to window resize events and returns `{ width, height }`.
Hint: Inside hook, define state, update state inside event listener function, register event listener in `useEffect`, and return cleanup function removing the listener:
`useEffect(() => { const handle = () => setSize({ w: window.innerWidth }); window.addEventListener('resize', handle); return () => window.removeEventListener('resize', handle); }, []);`

DSA: [BST][Medium][Google] Convert a sorted singly linked list into a height-balanced BST.
Hint: Find the middle node of the linked list using slow/fast pointers (with previous pointer to split list). Make it root. Recurse for left and right halves. Time: O(n log n) or O(n) if building inorder.

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'BASKET' be arranged?
Hint: 'BASKET' has 6 distinct letters.
Number of arrangements = 6! = 720 ways.

---

Q438.
MERN: [MongoDB][Medium][Product Company] What are the differences between ranged sharding and hashed sharding in MongoDB?
Hint: Ranged sharding groups documents by ranges of keys, which optimizes range queries but causes write hot-spotting for sequential keys. Hashed sharding hashes keys to distribute writes evenly across shards, but degrades range query performance.

DSA: [BST][Medium][Product Company] Validate if a given binary tree is a Binary Search Tree (BST).
Hint: Helper function checking range bounds. `isValid(node, min, max)`. Left child must be in `(min, node.val)` and right in `(node.val, max)`. Time: O(n), Space: O(h).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways.
Within each unit, the couple can swap seats: 2³ = 8 ways.
Total arrangements = 6 × 8 = 48 ways.

---

Q439.
MERN: [Mongoose][Medium][Product Company] How do you implement soft deletes in Mongoose? Show how to create a middleware hook filtering deleted documents from `find` queries automatically.
Hint: Add `isDeleted: { type: Boolean, default: false }` to schema. Add query middleware hook:
`schema.pre(/^find/, function(next) { this.find({ isDeleted: { $ne: true } }); next(); });` (filters soft-deleted records).

DSA: [Heap][Medium][Amazon] Find the Kth largest element in an unsorted array.
Hint: Use a Min-Heap of size K. Iterate array. If heap size < K, push. Else if element > root, pop root and push element. Root is the Kth largest. Time: O(n log K).

Aptitude: [Data Interpretation][Medium] A pie chart shows the percentage of electricity generated from various sources: Coal=50%, Gas=20%, Nuclear=15%, Hydro=10%, Solar=5%. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%.
Generation = 25% of 50000 = 12,500 MW.

---

Q440.
MERN: [Security][Medium][Product Company] What are secure CORS settings for cookies in Express?
Hint: To allow credential sharing (cookies/headers), configure `credentials: true` and specify a single origin (cannot use wildcard `*` with credentials). Set cookies with `httpOnly: true`, `secure: true`, and `sameSite: 'none'` (for cross-origin requests).

DSA: [Heap][Medium-Hard][Google] Find the top K frequent elements in an array.
Hint: Map frequencies. Push elements to Min-Heap of size K based on frequency. Root contains the Kth frequent element. Pop elements at the end. Time: O(n log K).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total ways to select 3 from 8 = C(8,3) = 56.
Ways to select 3 with only men = C(5,3) = 10.
Ways with at least one woman = 56 - 10 = 46 ways.

---

Q441.
MERN: [Performance][Medium][Product Company] Explain the concept of write amplification in MongoDB. How does schema design affect WiredTiger write amplification?
Hint: Write amplification is writing more data to disk than requested. Caused by: updating small fields inside large documents with many indexes, forcing index tree rewrites. Mitigate by: denormalizing selectively, keeping documents smaller, and avoiding over-indexing.

DSA: [Heap][Hard][Amazon] Given a list of intervals, merge all overlapping intervals.
Hint: Sort intervals by start time. Initialize merged list with first interval. For each subsequent interval, if its start <= end of last merged, update end of last merged to `max(last.end, current.end)`; else append current interval. Time: O(n log n).

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a row. A is next to B. C is between D and E. F is at the extreme left. B is third to the left of E. Who is sitting next to C?
Hint: F sits at extreme left (Position 1: F).
B is third to left of E (Positions: B at 2, E at 5 or B at 3, E at 6).
C is between D and E. If E is at 5, C could be at 4, D at 3.
A next to B. B at 2, A at 3. Then D at 4, C at 5? No, C between D and E.
Sequence is: F - B - A - D - C - E.
Verify: B at 2, E at 6. No, B third to left of E: 6 - 2 = 4 (actually B at 2, E at 5 is third to left, meaning indices: B=2, X=3, Y=4, E=5).
Yes, order F - B - A - D - C - E fits.
The people sitting next to C are D and E.

---

Q442.
MERN: [Mongoose][Medium][Product Company] How do you configure Mongoose connection pooling options? Explain `maxPoolSize` and `socketTimeoutMS`.
Hint: Options:
`mongoose.connect(uri, { maxPoolSize: 50, socketTimeoutMS: 45000 })`. `maxPoolSize` restricts parallel connections (reduces DB process limits). `socketTimeoutMS` terminates hanging database queries.

DSA: [Heap][Medium-Hard][Amazon] Design a data structure that supports insert and find median of a stream in O(log n) time.
Hint: Two heaps: Max-Heap (left half) and Min-Heap (right half). Balance size difference to ≤ 1. Median is root of larger heap or average of both roots. Time: O(log n) insert.

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q443.
MERN: [Security][Medium][Product Company] What is MongoDB query injection? How does it differ from SQL injection?
Hint: MongoDB injection passes query objects (like `{$ne: null}`) through inputs. SQL injection parses input as SQL code commands. Prevent MongoDB injection using Joi validation schemas and cast validation.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing child character map and end flag. Traversal for insertion, search, and startsWith matches. Time: O(L) where L is word length.

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third.
Total words = 5 × 4 × 3 = 60.

---

Q444.
MERN: [MERN Integration][Medium][Product Company] Explain Next.js SSG (Static Site Generation) and ISR (Incremental Static Regeneration).
Hint: SSG generates page HTML once at build time. ISR regenerates pages in the background after a specified interval (`revalidate: 60`), serving static pages while updating content dynamically.

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Insert search words. When prefix typed, traverse to corresponding node. From there, run DFS/BFS search collecting leaf node words sharing that prefix. Return top 3 sorted words. Time: O(L + V).

Aptitude: [Puzzles][Medium-Hard] In a class, Amit is 10th from the top and Sunil is 15th from the bottom. If there are 5 students between them, find the minimum number of students in the class.
Hint: Overlapping case: Min students = Amit's rank + Sunil's rank - middle students - 2 = 10 + 15 - 5 - 2 = 18 students.

---

Q445.
MERN: [Authentication][Medium][Product Company] What are refresh token replay attacks? How does rotation solve them?
Hint: Replay attack is when interceptor steals and reuses a refresh token. Rotation invalidates old tokens immediately when a new one is requested. If the server sees a reuse request, it invalidates all associated tokens, blocking the attacker.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. At each step, follow Trie children. If leaf word found, add to results. Mark visited coordinates and prune Trie. Time: O(M * N * 4^L).

Aptitude: [Data Interpretation][Medium] A bar chart shows the pass percentage of a school in 3 subjects. What is the average pass percentage?
Hint: Sum the pass percentages of the 3 subjects and divide by 3.

---

Q446.
MERN: [React][Medium][Product Company] Explain the rules of hooks in React. How does `eslint-plugin-react-hooks` help?
Hint: Hooks must only be called at top-level (not in loops/conditions) and inside function components. The eslint plugin warns compile-time.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie characters by characters. Track latest node where `isEndOfWord == true`. Stop if no child exists. Return substring to that index. Time: O(L).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters.
Number of arrangements = 6! = 720 ways.

---

Q447.
MERN: [Node.js][Medium][Product Company] What is the difference between CPU-bound tasks and I/O-bound tasks? Which is Node.js optimized for?
Hint: CPU-bound: calculation heavy (sorting, encryption). I/O-bound: network, databases, files. Node.js is optimized for I/O-bound tasks due to its single-threaded non-blocking architecture.

DSA: [Trees][Medium][Amazon] Find the lowest common ancestor (LCA) in a Binary Tree.
Hint: Recursive search. If root null or matches p/q, return root. Recurse left and right. If both return non-null, root is LCA. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds.
6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q448.
MERN: [Mongoose][Medium][Product Company] How do you write a Mongoose query sorting results by multiple fields (e.g. `role` ascending and `createdAt` descending)?
Hint: Pass an object or string to `.sort()`. Example:
`User.find().sort({ role: 1, createdAt: -1 })` or `.sort('role -createdAt')`.

DSA: [Trees][Medium][Google] Convert a binary tree to its mirror/inverse.
Hint: Swap left and right child pointers for each node recursively. Time: O(n).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q449.
MERN: [Security][Medium][Product Company] What is a JWT signature stripped vulnerability? How do you prevent it?
Hint: Attacker alters token header to specify algorithm `none`. Prevent by enforcing signature verification with specific algorithms (e.g., HS256) on the server.

DSA: [Trees][Medium][Product Company] Validate if a binary tree is a Binary Search Tree (BST).
Hint: Check ranges recursively: `isValid(node, min, max)`. Left must be in `(min, node.val)`, right in `(node.val, max)`. Time: O(n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters.
Number of arrangements = 6! = 720 ways.

---

Q450.
MERN: [Performance][Medium][Product Company] What are cover queries in MongoDB? How do they avoid reading documents from disk?
Hint: A query is covered if all queried fields and projection fields exist in the index. The database reads index keys directly from memory, skipping document fetch from disk. Check via `.explain()`: `totalDocsExamined` must be 0.

DSA: [Trees][Medium][Amazon] Compute the Lowest Common Ancestor (LCA) in a Binary Search Tree (BST).
Hint: If both targets smaller than root, LCA in left; if both larger, in right; else root is LCA. Time: O(h).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C.
B is opposite to C. A is opposite to D.
The person sitting opposite to B is C.
# ⭐⭐ INTERMEDIATE ROADMAP — Q451 to Q500

## Advanced Database, Backend Architecture, React API | Trees, BST, Heaps, Tries | Advanced Permutations, Puzzles, Data Interpretation

---

Q451.
MERN: [MERN Integration][Medium][Product Company] What are Next.js Server Actions? How do they handle form submissions, and what are their benefits over standard API endpoints?
Hint: Server Actions allow calling server-side logic directly from React forms using `action={myServerAction}`. Benefits: 1) Zero-boilerplate API creation 2) Progressive enhancement (works even if JS is disabled on client) 3) Automatic state synchronization and query validation.

DSA: [Trees][Medium-Hard][Amazon] Given a binary tree, return the right side view (nodes visible looking at it from right side).
Hint: Perform BFS level-order traversal. For each level, collect the last node (rightmost node) and append to results list. Time: O(n), Space: O(w) where w is max width.

Aptitude: [P&C][Medium-Hard] How many 4-digit numbers can be formed using digits 0, 1, 2, 3, 4, 5 with no repetition such that the number is divisible by 5?
Hint: Divisible by 5 if units digit is 0 or 5.
Case 1: Units digit is 0 (1 choice).
Remaining 3 positions can be filled from {1, 2, 3, 4, 5}: P(5,3) = 5 × 4 × 3 = 60.
Case 2: Units digit is 5 (1 choice).
Hundreds position cannot be 0, so it has 4 choices (1, 2, 3, 4).
Tens position has 4 choices (0 and remaining 3 digits).
Units position has 3 choices.
Ways = 4 × 4 × 3 = 48.
Total numbers = 60 + 48 = 108.

---

Q452.
MERN: [React][Medium][Product Company] What is the difference between `useTransition` and `useDeferredValue` in React 18?
Hint: `useTransition` is used to defer state updates (yields a transition starting function: `startTransition(() => setState(val))`). `useDeferredValue` is used to defer updating a value received as prop or from another state (`const deferredVal = useDeferredValue(val)`). Use `useTransition` when you control the state setter; use `useDeferredValue` when you only have access to the value.

DSA: [Trees][Medium-Hard][Google] Flatten a binary tree into a singly linked list in-place using preorder traversal order.
Hint: For each node, if it has a left child, find the rightmost node of that left child (inorder predecessor). Connect its right pointer to current node's right child. Move the left child to the right child pointer and set left to null. Advance to next node. Time: O(n), Space: O(1).

Aptitude: [Puzzles][Medium-Hard] A logic puzzle: Five students (A, B, C, D, E) sit in a row. A sits to the left of B but right of C. D sits to the right of E but left of C. Who is sitting in the middle?
Hint: Order: E - D - C - A - B.
Middle person is C.

---

Q453.
MERN: [TypeScript][Medium][Product Company] How do you type generic React components in TypeScript? Write a generic `<Dropdown>` component that accepts an array of options of type T.
Hint: Declare generic parameter before props. Example:
`function Dropdown<T>({ options, onSelect }: { options: T[], onSelect: (opt: T) => void }) { ... }` (enables type-safety when rendering option lists and selecting entries).

DSA: [BST][Medium-Hard][Amazon] 🔴 MUST DO — Find the Kth smallest element in a Binary Search Tree (BST).
Hint: Perform an iterative in-order traversal using a stack. Decrement k when popping a node. When `k == 0`, return that popped node's value. Time: O(h + k), Space: O(h).

Aptitude: [Data Interpretation][Medium] A table shows sales (in lakhs) of 4 branches in 2 years. Branch 1: Yr1=80, Yr2=90. Branch 2: Yr1=110, Yr2=105. Branch 3: Yr1=95, Yr2=115. Branch 4: Yr1=75, Yr2=85. Which branch recorded the highest percentage increase in sales?
Hint: Percentage growth = (Yr2 - Yr1)/Yr1 * 100.
B1 = 10/80 = 12.5%. B2 = -5/110 = -4.5%. B3 = 20/95 ≈ 21.05%. B4 = 10/75 ≈ 13.33%.
Branch 3 recorded the highest percentage increase (21.05%).

---

Q454.
MERN: [Mongoose][Medium][Product Company] What are Mongoose Virtual properties? Give a schema example that creates a virtual `age` from a `birthDate` field.
Hint: Virtual properties are document properties that are not stored in MongoDB. Example:
`schema.virtual('age').get(function() { return new Date().getFullYear() - this.birthDate.getFullYear(); });`
Ensure to enable virtuals in JSON options: `schema.set('toJSON', { virtuals: true });`.

DSA: [BST][Medium-Hard][Google] Recover a BST where exactly two nodes were swapped by mistake.
Hint: Inorder traversal. Maintain `prev` node and two variables for violated nodes. If `prev.val > curr.val`, set first violation to `prev` (if not set) and second to `curr`. Swap their values at the end. Time: O(n), Space: O(h).

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed from the letters of the word 'EQUATION' with no repetition such that the word contains at least one vowel?
Hint: 'EQUATION' has 8 letters: Vowels = E, U, A, I, O (5). Consonants = Q, T, N (3).
Total 3-letter words = P(8,3) = 8 × 7 × 6 = 336.
3-letter words with NO vowels (only consonants) = P(3,3) = 3! = 6.
Words with at least one vowel = 336 - 6 = 330.

---

Q455.
MERN: [Performance][Medium][Product Company] What is write amplification in MongoDB? How does having too many indexes on a collection affect write performance?
Hint: Write amplification is writing more data to disk than requested. Each write (insert, update, delete) must update not only the document B-tree but also all associated index B-trees. Too many indexes force the disk to rewrite index trees, slowing down write throughput.

DSA: [Heap][Medium-Hard][Google] 🔴 MUST DO — Find the median of a continuous data stream (Median Finder).
Hint: Use two heaps: a Max-Heap for the left half of numbers, and a Min-Heap for the right half. Maintain balance so the size difference is at most 1. Median is the root of the larger heap, or the average of both roots if heap sizes are equal. Time: O(log n) add, O(1) find.

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a circle facing the center. A is opposite to B. C is between A and E. D is opposite to E. Who is sitting between B and D?
Hint: Clockwise: A sits adjacent to C and F. C sits adjacent to E. D is opposite to E. A opposite to B.
Order: A - C - E - B - D - F.
The person sitting between B and D is no one (they are adjacent) or wait: order is A - C - E - D - B - F?
Let's check opposites: A opposite to B (pos 1 and 4), D opposite to E (pos 3 and 6). C between A and E.
So order: A (1) - C (2) - E (3) - B (4) - F (5) - D (6).
Let's check opposites: A(1) opposite B(4) - Yes. D(6) opposite E(3) - Yes.
Who is between B and D? F (position 5).
The person sitting between B and D is F.

---

Q456.
MERN: [Security][Medium][Product Company] What is MongoDB Query Injection? How can it be exploited, and how do you protect against it?
Hint: Query injection occurs when user input is parsed directly as query objects (e.g. bypassing login with `req.body.username = { $ne: null }`). Protect by: 1) Using Mongoose schemas (auto-casts inputs to matching schema types) 2) Sanitizing payloads with `express-mongo-sanitize` 3) Input validation with Joi/Joi schemas.

DSA: [Heap][Medium-Hard][Amazon] Find the K closest points to the origin (0, 0) on a 2D plane.
Hint: Compute Euclidean distance for each point. Maintain a Max-Heap of size K. Enqueue points based on distance. If current distance < root, pop root and push current point. Time: O(n log K), Space: O(K).

Aptitude: [Data Interpretation][Medium] A pie chart shows sales of 5 models: A=20%, B=35%, C=15%, D=20%, E=10%. If total revenue is ₹80,000, find the difference in revenue between Model B and Model E.
Hint: Percentage difference = 35% - 10% = 25%.
Difference in revenue = 25% of 80000 = ₹20,000.

---

Q457.
MERN: [Mongoose][Medium][Product Company] What is the difference between Mongoose schema pre-save hooks and pre-validate hooks?
Hint: Pre-validate hooks execute before schema validation occurs. Pre-save hooks execute after validation passes but before the document is persisted to MongoDB. Put validation modifications in pre-validate; put tasks like password hashing in pre-save.

DSA: [Trie][Medium-Hard][Google] 🔴 MUST DO — Implement a Trie (Prefix Tree) with `insert`, `search`, and `startsWith` methods.
Hint: Node class has a child character map and a boolean `isEndOfWord`. Traverse character by character. For `startsWith`, return true if traversal completes. For `search`, return true if traversal completes and `isEndOfWord == true`. Time: O(L) where L is word length.

Aptitude: [P&C][Medium-Hard] Find the number of ways to arrange the letters of the word 'SUCCESS' such that the two C's are always together.
Hint: SUCCESS has 7 letters: S (3), U (1), C (2), E (1).
Treat the two C's as 1 unit. Total units = 5 + 1 = 6.
Arrangements of 6 units (S repeated 3 times) = 6! / 3! = 720 / 6 = 120 ways.
(Within the C's unit, arranging two C's is 1 way).
Total arrangements = 120 ways.

---

Q458.
MERN: [Authentication][Medium][Product Company] Explain the concept of JWT Token Versioning. How does it enable immediate token revocation on password change?
Hint: Store a `tokenVersion` number (e.g. 1) in the user document. When generating a JWT, include `tokenVersion` in the payload. In the auth middleware, fetch the user and check if the payload `tokenVersion` matches the database value. On password change or logout, increment `tokenVersion` in the DB, invalidating all active JWTs.

DSA: [Trie][Medium-Hard][Amazon] 🟡 HIGH FREQUENCY — Implement a Search Suggestion System: given products and a search word, return list of at most three matching products after each character is typed.
Hint: Insert products into a Trie. At each TrieNode, store a list of at most 3 alphabetically sorted products sharing that prefix. Traverse Trie as search word is typed, and return suggestions from matching nodes. Time: O(N log N + L).

Aptitude: [Puzzles][Medium-Hard] A clock strikes once at 1 o'clock, twice at 2 o'clock, ..., and strikes once at half past each hour. How many times will it strike in 24 hours?
Hint: Hour strikes in 12 hours = 1 + 2 + ... + 12 = 78. In 24 hours = 78 × 2 = 156.
Half-hour strikes in 24 hours = 24.
Total strikes = 156 + 24 = 180.

---

Q459.
MERN: [MERN Integration][Medium][Product Company] How do you handle CORS preflight OPTIONS requests when sending custom authorization headers in a MERN app?
Hint: Ensure the `cors` middleware is mounted before all routes and configured to return a 200 or 204 status on `OPTIONS` requests. Example:
`app.use(cors({ origin: 'https://client.com', allowedHeaders: ['Authorization', 'Content-Type'] }));`

DSA: [Trie][Hard][Google] 🔴 MUST DO — Solve the Word Search II problem: given a 2D board of characters and a list of words, find all words on the board.
Hint: Insert all words into a Trie. Perform DFS traversal on the board. At each cell, check if the character exists in the Trie root's children. If yes, recurse to neighbors, passing the matching Trie node. Mark cells visited to avoid reuse. Prune Trie nodes after finding words to save work. Time: O(M * N * 4^L) where L is max word length.

Aptitude: [Data Interpretation][Medium] A table shows import and export values of a country over 3 years: Yr1: Imp=50, Exp=60. Yr2: Imp=65, Exp=70. Yr3: Imp=80, Exp=90. What is the average trade surplus (Export - Import) over the 3 years?
Hint: Trade surplus: Yr1 = 10, Yr2 = 5, Yr3 = 10.
Average surplus = (10 + 5 + 10) / 3 = 25 / 3 = 8.33.

---

Q460.
MERN: [Express][Medium][Product Company] What is response compression? How do you configure `compression` in Express, and what is the CPU vs Bandwidth trade-off?
Hint: Response compression (Gzip/Brotli) compresses JSON/HTML bodies before sending. Configure: `app.use(compression())`. Trade-off: Compressing response bodies reduces network bandwidth and speeds up load times, but increases server CPU usage to perform compression on-the-fly.

DSA: [Trie][Hard][Google] Implement a prefix matching function that returns the longest matching prefix for a given word in a dictionary.
Hint: Traverse the Trie characters by characters. Track the index of the latest node where `isEndOfWord == true`. Stop traversing if no child node exists for current character. Return substring up to that latest index. Time: O(L), Space: O(1).

Aptitude: [P&C][Medium-Hard] How many 5-letter words can be formed from the letters of the word 'FLOWER' with no repetition?
Hint: Choose and arrange 5 letters out of 6: P(6,5) = 6 × 5 × 4 × 3 × 2 = 720.

---

Q461.
MERN: [MERN Integration][Medium][Product Company] Explain the difference between client-side rendering (CSR), server-side rendering (SSR), and static site generation (SSG) in a MERN/Next.js architecture.
Hint: CSR: browser downloads minimal HTML and renders page on client. SSR: server runs React components to generate HTML for each request. SSG: HTML generated once during build time.

DSA: [Trees][Medium][Amazon] Find the lowest common ancestor (LCA) in a Binary Tree.
Hint: Recursive search. If root is null or matches p/q, return root. Recurse left and right. If both return non-null, root is LCA. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q462.
MERN: [Mongoose][Medium][Product Company] How do you write a Mongoose query sorting results by multiple fields (e.g. `role` ascending and `createdAt` descending)?
Hint: Pass an object or string to `.sort()`. Example: `User.find().sort({ role: 1, createdAt: -1 })` or `.sort('role -createdAt')`.

DSA: [Trees][Medium][Google] Convert a binary tree to its mirror/inverse.
Hint: Swap left and right child pointers for each node recursively. Time: O(n).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q463.
MERN: [Security][Medium][Product Company] What is a JWT signature stripped vulnerability? How do you prevent it?
Hint: Attacker alters token header to specify algorithm `none`. Prevent by enforcing signature verification with specific algorithms (e.g., HS256) on the server.

DSA: [Trees][Medium][Product Company] Validate if a binary tree is a Binary Search Tree (BST).
Hint: Check ranges recursively: `isValid(node, min, max)`. Left must be in `(min, node.val)`, right in `(node.val, max)`. Time: O(n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q464.
MERN: [Performance][Medium][Product Company] What are cover queries in MongoDB? How do they avoid reading documents from disk?
Hint: A query is covered if all queried fields and projection fields exist in the index. The database reads index keys directly from memory, skipping document fetch from disk. Check via `.explain()`: `totalDocsExamined` must be 0.

DSA: [Trees][Medium][Amazon] Compute the Lowest Common Ancestor (LCA) in a Binary Search Tree (BST).
Hint: If both targets smaller than root, LCA in left; if both larger, in right; else root is LCA. Time: O(h).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q465.
MERN: [Mongoose][Medium][Product Company] Explain the `lean()` option in Mongoose. What do you lose by using it, and when should you use it?
Hint: `lean()` returns plain JS objects instead of Mongoose Documents, which speeds up GET queries. You lose: document instance helper methods, the ability to call `.save()`, `.populate()`, and validation checking.

DSA: [Trees][Easy-Medium][Amazon] Find the height/depth of a binary tree.
Hint: Recursive: height = 1 + max(height(left), height(right)). Base: null → 0. Time: O(n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'BASKET' be arranged?
Hint: 'BASKET' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q466.
MERN: [Security][Medium][Product Company] What are secure CORS settings for cookies in Express?
Hint: To allow credential sharing (cookies/headers), configure `credentials: true` and specify a single origin (cannot use wildcard `*` with credentials). Set cookies with `httpOnly: true`, `secure: true`, and `sameSite: 'none'` (for cross-origin requests).

DSA: [Trees][Easy][Amazon] Count the total number of nodes in a binary tree.
Hint: Recursive: count = 1 + count(left) + count(right). Base: null → 0. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q467.
MERN: [Performance][Medium][Product Company] Explain the concept of write amplification in MongoDB. How does schema design affect WiredTiger write amplification?
Hint: Write amplification is writing more data to disk than requested. Caused by: updating small fields inside large documents with many indexes, forcing index tree rewrites. Mitigate by: denormalizing selectively, keeping documents smaller, and avoiding over-indexing.

DSA: [Trees][Easy][Product Company] Write a function to check if two binary trees are identical (same structure and values).
Hint: Recursive: check root values equal AND left subtrees identical AND right subtrees identical. Base: both null → true. One null → false. Time: O(n).

Aptitude: [Data Interpretation][Medium] A pie chart shows the percentage of electricity generated from various sources: Coal=50%, Gas=20%, Nuclear=15%, Hydro=10%, Solar=5%. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%. Generation = 25% of 50000 = 12,500 MW.

---

Q468.
MERN: [Mongoose][Medium][Product Company] How do you configure Mongoose connection pooling options? Explain `maxPoolSize` and `socketTimeoutMS`.
Hint: Options: `mongoose.connect(uri, { maxPoolSize: 50, socketTimeoutMS: 45000 })`. `maxPoolSize` restricts parallel connections (reduces DB process limits). `socketTimeoutMS` terminates hanging database queries.

DSA: [Trees][Easy-Medium][Amazon] Write a function to check if a binary tree is symmetric (mirror of itself).
Hint: Compare left subtree with mirror of right subtree. Recursive: `isMirror(left, right) && isMirror(left.left, right.right) && isMirror(left.right, right.left)`. Time: O(n).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total ways to select 3 from 8 = C(8,3) = 56. Ways to select 3 with only men = C(5,3) = 10. Ways with at least one woman = 56 - 10 = 46 ways.

---

Q469.
MERN: [Security][Medium][Product Company] What is MongoDB query injection? How does it differ from SQL injection?
Hint: MongoDB injection passes query objects (like `{$ne: null}`) through inputs. SQL injection parses input as SQL code commands. Prevent MongoDB injection using Joi validation schemas and cast validation.

DSA: [Trees][Easy-Medium][Google] Given a binary tree, return the level-order traversal as a list of lists (each list = one level).
Hint: BFS with level tracking. Process queue level by level (track queue size per level). Time: O(n).

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a row. A is next to B. C is between D and E. F is at the extreme left. B is third to the left of E. Who is sitting next to C?
Hint: Sequence is: F - B - A - D - C - E. The people sitting next to C are D and E.

---

Q470.
MERN: [MERN Integration][Medium][Product Company] Explain Next.js SSG (Static Site Generation) and ISR (Incremental Static Regeneration).
Hint: SSG generates page HTML once at build time. ISR regenerates pages in the background after a specified interval (`revalidate: 60`), serving static pages while updating content dynamically.

DSA: [Trees][Easy-Medium][Amazon] Write a function to find the lowest common ancestor (LCA) of two nodes in a binary tree.
Hint: Recursive: if root is null or matches p or q, return root. Search left and right. If both non-null, root is LCA. Time: O(n).

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q471.
MERN: [Authentication][Medium][Product Company] What are refresh token replay attacks? How does rotation solve them?
Hint: Replay attack is when interceptor steals and reuses a refresh token. Rotation invalidates old tokens immediately when a new one is requested. If the server sees a reuse request, it invalidates all associated tokens, blocking the attacker.

DSA: [Trees][Easy-Medium][Google] Write a function to find the diameter of a binary tree (longest path between any two nodes).
Hint: Diameter through a node = height(left) + height(right). Track max diameter across all nodes. Time: O(n) — compute height and diameter simultaneously.

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third. Total words = 5 × 4 × 3 = 60.

---

Q472.
MERN: [React][Medium][Product Company] Explain the rules of hooks in React. How does `eslint-plugin-react-hooks` help?
Hint: Hooks must only be called at top-level (not in loops/conditions) and inside function components. The eslint plugin warns compile-time.

DSA: [Trees][Easy-Medium][Product Company] Write a function to check if a binary tree is balanced (height difference of left and right subtrees ≤ 1 for every node).
Hint: Return -1 if unbalanced, else height. Recursive: check left, check right, if diff > 1 → unbalanced. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] In a class, Amit is 10th from the top and Sunil is 15th from the bottom. If there are 5 students between them, find the minimum number of students in the class.
Hint: Overlapping case: Min students = Amit's rank + Sunil's rank - middle students - 2 = 10 + 15 - 5 - 2 = 18 students.

---

Q473.
MERN: [Node.js][Medium][Product Company] What is the difference between CPU-bound tasks and I/O-bound tasks? Which is Node.js optimized for?
Hint: CPU-bound: calculation heavy (sorting, encryption). I/O-bound: network, databases, files. Node.js is optimized for I/O-bound tasks due to its single-threaded non-blocking architecture.

DSA: [BST][Easy-Medium][Amazon] Search for a node value in a Binary Search Tree (BST).
Hint: BST property: left child < parent < right child. If target < root.val, search left; else search right. Time: O(h).

Aptitude: [Data Interpretation][Medium] A bar chart shows the pass percentage of a school in 3 subjects. What is the average pass percentage?
Hint: Sum the pass percentages of the 3 subjects and divide by 3.

---

Q474.
MERN: [Mongoose][Medium][Product Company] How do you write a Mongoose query sorting results by multiple fields (e.g. `role` ascending and `createdAt` descending)?
Hint: Pass an object or string to `.sort()`. Example: `User.find().sort({ role: 1, createdAt: -1 })` or `.sort('role -createdAt')`.

DSA: [BST][Easy-Medium][Amazon] Insert a node value into a Binary Search Tree (BST).
Hint: Recursive search. If root is null, return new Node(val). If `val < root.val`, `root.left = insert(root.left, val)`. Else, `root.right = insert(root.right, val)`. Return root. Time: O(h).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q475.
MERN: [Security][Medium][Product Company] What is a JWT signature stripped vulnerability? How do you prevent it?
Hint: Attacker alters token header to specify algorithm `none`. Prevent by enforcing signature verification with specific algorithms (e.g., HS256) on the server.

DSA: [BST][Medium-Hard][Amazon] Delete a node value from a Binary Search Tree (BST).
Hint: 1) If node has 0/1 children, return its child. 2) If 2 children, copy inorder successor value to current, and delete that successor from right subtree. Time: O(h).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q476.
MERN: [Performance][Medium][Product Company] What are cover queries in MongoDB? How do they avoid reading documents from disk?
Hint: A query is covered if all queried fields and projection fields exist in the index. The database reads index keys directly from memory, skipping document fetch from disk. Check via `.explain()`: `totalDocsExamined` must be 0.

DSA: [BST][Medium][Amazon] Find the lowest common ancestor (LCA) of two nodes in a Binary Search Tree (BST).
Hint: Iterative traversal. If both targets smaller than current node, search left (`curr = curr.left`). If both are larger, search right. If they split, current node is the LCA. Time: O(h), Space: O(1).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q477.
MERN: [Mongoose][Medium][Product Company] Explain the `lean()` option in Mongoose. What do you lose by using it, and when should you use it?
Hint: `lean()` returns plain JS objects instead of Mongoose Documents, which speeds up GET queries. You lose: document instance helper methods, the ability to call `.save()`, `.populate()`, and validation checking.

DSA: [BST][Medium-Hard][Google] Convert a sorted singly linked list into a height-balanced BST.
Hint: Find the middle node of the linked list using slow/fast pointers (with previous pointer to split list). Make it root. Recurse for left and right halves. Time: O(n log n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q478.
MERN: [Security][Medium][Product Company] What are secure CORS settings for cookies in Express?
Hint: To allow credential sharing (cookies/headers), configure `credentials: true` and specify a single origin (cannot use wildcard `*` with credentials). Set cookies with `httpOnly: true`, `secure: true`, and `sameSite: 'none'` (for cross-origin requests).

DSA: [BST][Medium][Product Company] Validate if a given binary tree is a Binary Search Tree (BST).
Hint: Helper function checking range bounds. `isValid(node, min, max)`. Left child must be in `(min, node.val)` and right in `(node.val, max)`. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q479.
MERN: [Performance][Medium][Product Company] Explain the concept of write amplification in MongoDB. How does schema design affect WiredTiger write amplification?
Hint: Write amplification is writing more data to disk than requested. Caused by: updating small fields inside large documents with many indexes, forcing index tree rewrites. Mitigate by: denormalizing selectively, keeping documents smaller, and avoiding over-indexing.

DSA: [Heap][Medium][Amazon] Find the Kth largest element in an unsorted array.
Hint: Use a Min-Heap of size K. Iterate array. If heap size < K, push. Else if element > root, pop root and push element. Root is the Kth largest. Time: O(n log K).

Aptitude: [Data Interpretation][Medium] A pie chart shows the percentage of electricity generated from various sources: Coal=50%, Gas=20%, Nuclear=15%, Hydro=10%, Solar=5%. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%. Generation = 25% of 50000 = 12,500 MW.

---

Q480.
MERN: [Mongoose][Medium][Product Company] How do you configure Mongoose connection pooling options? Explain `maxPoolSize` and `socketTimeoutMS`.
Hint: Options: `mongoose.connect(uri, { maxPoolSize: 50, socketTimeoutMS: 45000 })`. `maxPoolSize` restricts parallel connections (reduces DB process limits). `socketTimeoutMS` terminates hanging database queries.

DSA: [Heap][Medium-Hard][Google] Find the top K frequent elements in an array.
Hint: Map frequencies. Push elements to Min-Heap of size K based on frequency. Root contains the Kth frequent element. Pop elements at the end. Time: O(n log K).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total ways to select 3 from 8 = C(8,3) = 56. Ways to select 3 with only men = C(5,3) = 10. Ways with at least one woman = 56 - 10 = 46 ways.

---

Q481.
MERN: [Security][Medium][Product Company] What is MongoDB query injection? How does it differ from SQL injection?
Hint: MongoDB injection passes query objects (like `{$ne: null}`) through inputs. SQL injection parses input as SQL code commands. Prevent MongoDB injection using Joi validation schemas and cast validation.

DSA: [Heap][Medium-Hard][Amazon] Design a data structure that supports insert and find median of a stream in O(log n) time.
Hint: Two heaps: Max-Heap (left half) and Min-Heap (right half). Balance size difference to ≤ 1. Median is root of larger heap or average of both roots. Time: O(log n) insert.

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a row. A is next to B. C is between D and E. F is at the extreme left. B is third to the left of E. Who is sitting next to C?
Hint: Sequence is: F - B - A - D - C - E. The people sitting next to C are D and E.

---

Q482.
MERN: [MERN Integration][Medium][Product Company] Explain Next.js SSG (Static Site Generation) and ISR (Incremental Static Regeneration).
Hint: SSG generates page HTML once at build time. ISR regenerates pages in the background after a specified interval (`revalidate: 60`), serving static pages while updating content dynamically.

DSA: [Trie][Medium][Google] Implement a Trie (Prefix Tree).
Hint: Node class containing child character map and end flag. Traversal for insertion, search, and startsWith matches. Time: O(L) where L is word length.

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q483.
MERN: [Authentication][Medium][Product Company] What are refresh token replay attacks? How does rotation solve them?
Hint: Replay attack is when interceptor steals and reuses a refresh token. Rotation invalidates old tokens immediately when a new one is requested. If the server sees a reuse request, it invalidates all associated tokens, blocking the attacker.

DSA: [Trie][Medium-Hard][Amazon] Implement auto-suggest suggestions feature using a Trie.
Hint: Insert search words. When prefix typed, traverse to corresponding node. From there, run DFS/BFS search collecting leaf node words sharing that prefix. Return top 3 sorted words. Time: O(L + V).

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third. Total words = 5 × 4 × 3 = 60.

---

Q484.
MERN: [React][Medium][Product Company] Explain the rules of hooks in React. How does `eslint-plugin-react-hooks` help?
Hint: Hooks must only be called at top-level (not in loops/conditions) and inside function components. The eslint plugin warns compile-time.

DSA: [Trie][Hard][Google] Word Search II: find all matching words in a grid of characters.
Hint: Insert words in Trie. Run DFS on grid. At each step, follow Trie children. If leaf word found, add to results. Mark visited coordinates and prune Trie. Time: O(M * N * 4^L).

Aptitude: [Puzzles][Medium-Hard] In a class, Amit is 10th from the top and Sunil is 15th from the bottom. If there are 5 students between them, find the minimum number of students in the class.
Hint: Overlapping case: Min students = Amit's rank + Sunil's rank - middle students - 2 = 10 + 15 - 5 - 2 = 18 students.

---

Q485.
MERN: [Node.js][Medium][Product Company] What is the difference between CPU-bound tasks and I/O-bound tasks? Which is Node.js optimized for?
Hint: CPU-bound: calculation heavy (sorting, encryption). I/O-bound: network, databases, files. Node.js is optimized for I/O-bound tasks due to its single-threaded non-blocking architecture.

DSA: [Trie][Hard][Google] Implement longest prefix matching in a Trie.
Hint: Traverse Trie characters by characters. Track latest node where `isEndOfWord == true`. Stop if no child exists. Return substring to that index. Time: O(L).

Aptitude: [Data Interpretation][Medium] A bar chart shows the pass percentage of a school in 3 subjects. What is the average pass percentage?
Hint: Sum the pass percentages of the 3 subjects and divide by 3.

---

Q486.
MERN: [Mongoose][Medium][Product Company] How do you write a Mongoose query sorting results by multiple fields (e.g. `role` ascending and `createdAt` descending)?
Hint: Pass an object or string to `.sort()`. Example: `User.find().sort({ role: 1, createdAt: -1 })` or `.sort('role -createdAt')`.

DSA: [Trees][Medium][Amazon] Find the lowest common ancestor (LCA) in a Binary Tree.
Hint: Recursive search. If root null or matches p/q, return root. Recurse left and right. If both return non-null, root is LCA. Time: O(n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q487.
MERN: [Security][Medium][Product Company] What is a JWT signature stripped vulnerability? How do you prevent it?
Hint: Attacker alters token header to specify algorithm `none`. Prevent by enforcing signature verification with specific algorithms (e.g., HS256) on the server.

DSA: [Trees][Medium][Google] Convert a binary tree to its mirror/inverse.
Hint: Swap left and right child pointers for each node recursively. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q488.
MERN: [Performance][Medium][Product Company] What are cover queries in MongoDB? How do they avoid reading documents from disk?
Hint: A query is covered if all queried fields and projection fields exist in the index. The database reads index keys directly from memory, skipping document fetch from disk. Check via `.explain()`: `totalDocsExamined` must be 0.

DSA: [Trees][Medium][Product Company] Validate if a binary tree is a Binary Search Tree (BST).
Hint: Check ranges recursively: `isValid(node, min, max)`. Left must be in `(min, node.val)`, right in `(node.val, max)`. Time: O(n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'FLOWER' be arranged?
Hint: 'FLOWER' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q489.
MERN: [Mongoose][Medium][Product Company] Explain the `lean()` option in Mongoose. What do you lose by using it, and when should you use it?
Hint: `lean()` returns plain JS objects instead of Mongoose Documents, which speeds up GET queries. You lose: document instance helper methods, the ability to call `.save()`, `.populate()`, and validation checking.

DSA: [Trees][Medium][Amazon] Compute the Lowest Common Ancestor (LCA) in a Binary Search Tree (BST).
Hint: If both targets smaller than root, LCA in left; if both larger, in right; else root is LCA. Time: O(h).

Aptitude: [Puzzles][Medium-Hard] Four friends (A, B, C, D) sit around a table. A sits next to B. C sits next to D. A does not sit next to C. Who is sitting opposite to B?
Hint: Order around the table clockwise: A - B - D - C. B is opposite to C. A is opposite to D. The person sitting opposite to B is C.

---

Q490.
MERN: [Security][Medium][Product Company] What are secure CORS settings for cookies in Express?
Hint: To allow credential sharing (cookies/headers), configure `credentials: true` and specify a single origin (cannot use wildcard `*` with credentials). Set cookies with `httpOnly: true`, `secure: true`, and `sameSite: 'none'` (for cross-origin requests).

DSA: [Trees][Easy-Medium][Amazon] Find the height/depth of a binary tree.
Hint: Recursive: height = 1 + max(height(left), height(right)). Base: null → 0. Time: O(n).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'BASKET' be arranged?
Hint: 'BASKET' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q491.
MERN: [Performance][Medium][Product Company] Explain the concept of write amplification in MongoDB. How does schema design affect WiredTiger write amplification?
Hint: Write amplification is writing more data to disk than requested. Caused by: updating small fields inside large documents with many indexes, forcing index tree rewrites. Mitigate by: denormalizing selectively, keeping documents smaller, and avoiding over-indexing.

DSA: [Trees][Easy][Amazon] Count the total number of nodes in a binary tree.
Hint: Recursive: count = 1 + count(left) + count(right). Base: null → 0. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] Three couples sit in a row of 6 seats. In how many ways can they be seated if couples must sit together?
Hint: Treat each of the 3 couples as 1 unit. Arrange 3 units: 3! = 6 ways. Within each unit, the couple can swap seats: 2³ = 8 ways. Total arrangements = 6 × 8 = 48 ways.

---

Q492.
MERN: [Mongoose][Medium][Product Company] How do you configure Mongoose connection pooling options? Explain `maxPoolSize` and `socketTimeoutMS`.
Hint: Options: `mongoose.connect(uri, { maxPoolSize: 50, socketTimeoutMS: 45000 })`. `maxPoolSize` restricts parallel connections (reduces DB process limits). `socketTimeoutMS` terminates hanging database queries.

DSA: [Trees][Easy][Product Company] Write a function to check if two binary trees are identical (same structure and values).
Hint: Recursive: check root values equal AND left subtrees identical AND right subtrees identical. Base: both null → true. One null → false. Time: O(n).

Aptitude: [Data Interpretation][Medium] A pie chart shows the percentage of electricity generated from various sources: Coal=50%, Gas=20%, Nuclear=15%, Hydro=10%, Solar=5%. If total generation is 50,000 MW, find the electricity generated from nuclear and hydro sources combined.
Hint: Combined percentage = 15% + 10% = 25%. Generation = 25% of 50000 = 12,500 MW.

---

Q493.
MERN: [Security][Medium][Product Company] What is MongoDB query injection? How does it differ from SQL injection?
Hint: MongoDB injection passes query objects (like `{$ne: null}`) through inputs. SQL injection parses input as SQL code commands. Prevent MongoDB injection using Joi validation schemas and cast validation.

DSA: [Trees][Easy-Medium][Amazon] Write a function to check if a binary tree is symmetric (mirror of itself).
Hint: Compare left subtree with mirror of right subtree. Recursive: `isMirror(left, right) && isMirror(left.left, right.right) && isMirror(left.right, right.left)`. Time: O(n).

Aptitude: [P&C][Medium-Hard] Out of 5 men and 3 women, in how many ways can a committee of 3 members be formed if it contains at least one woman?
Hint: Total ways to select 3 from 8 = C(8,3) = 56. Ways to select 3 with only men = C(5,3) = 10. Ways with at least one woman = 56 - 10 = 46 ways.

---

Q494.
MERN: [MERN Integration][Medium][Product Company] Explain Next.js SSG (Static Site Generation) and ISR (Incremental Static Regeneration).
Hint: SSG generates page HTML once at build time. ISR regenerates pages in the background after a specified interval (`revalidate: 60`), serving static pages while updating content dynamically.

DSA: [Trees][Easy-Medium][Google] Given a binary tree, return the level-order traversal as a list of lists (each list = one level).
Hint: BFS with level tracking. Process queue level by level (track queue size per level). Time: O(n).

Aptitude: [Puzzles][Medium-Hard] Six people (A, B, C, D, E, F) sit in a row. A is next to B. C is between D and E. F is at the extreme left. B is third to the left of E. Who is sitting next to C?
Hint: Sequence is: F - B - A - D - C - E. The people sitting next to C are D and E.

---

Q495.
MERN: [Authentication][Medium][Product Company] What are refresh token replay attacks? How does rotation solve them?
Hint: Replay attack is when interceptor steals and reuses a refresh token. Rotation invalidates old tokens immediately when a new one is requested. If the server sees a reuse request, it invalidates all associated tokens, blocking the attacker.

DSA: [Trees][Easy-Medium][Amazon] Write a function to find the lowest common ancestor (LCA) of two nodes in a binary tree.
Hint: Recursive: if root is null or matches p or q, return root. Search left and right. If both non-null, root is LCA. Time: O(n).

Aptitude: [Data Interpretation][Medium] A table shows the import and export data of a country over 3 years. Which year recorded the highest trade surplus (Export - Import)?
Hint: Calculate (Export - Import) value for each year and identify the maximum surplus.

---

Q496.
MERN: [React][Medium][Product Company] Explain the rules of hooks in React. How does `eslint-plugin-react-hooks` help?
Hint: Hooks must only be called at top-level (not in loops/conditions) and inside function components. The eslint plugin warns compile-time.

DSA: [Trees][Easy-Medium][Google] Write a function to find the diameter of a binary tree (longest path between any two nodes).
Hint: Diameter through a node = height(left) + height(right). Track max diameter across all nodes. Time: O(n) — compute height and diameter simultaneously.

Aptitude: [P&C][Medium-Hard] How many 3-letter words can be formed using letters of the word 'PRIDE' with no repetition?
Hint: 5 choices for first, 4 for second, 3 for third. Total words = 5 × 4 × 3 = 60.

---

Q497.
MERN: [Node.js][Medium][Product Company] What is the difference between CPU-bound tasks and I/O-bound tasks? Which is Node.js optimized for?
Hint: CPU-bound: calculation heavy (sorting, encryption). I/O-bound: network, databases, files. Node.js is optimized for I/O-bound tasks due to its single-threaded non-blocking architecture.

DSA: [Trees][Easy-Medium][Product Company] Write a function to check if a binary tree is balanced (height difference of left and right subtrees ≤ 1 for every node).
Hint: Return -1 if unbalanced, else height. Recursive: check left, check right, if diff > 1 → unbalanced. Time: O(n).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

Q498.
MERN: [Mongoose][Medium][Product Company] How do you write a Mongoose query sorting results by multiple fields (e.g. `role` ascending and `createdAt` descending)?
Hint: Pass an object or string to `.sort()`. Example: `User.find().sort({ role: 1, createdAt: -1 })` or `.sort('role -createdAt')`.

DSA: [BST][Easy-Medium][Amazon] Search for a node value in a Binary Search Tree (BST).
Hint: BST property: left child < parent < right child. If target < root.val, search left; else search right. Time: O(h).

Aptitude: [Data Interpretation][Medium] A table shows the number of cars sold by 3 dealers in 3 months. Find the percentage contribution of Dealer 1 to total sales.
Hint: Sum sales for Dealer 1, sum overall sales. Percentage = `Dealer1 / Total * 100`.

---

Q499.
MERN: [Security][Medium][Product Company] What is a JWT signature stripped vulnerability? How do you prevent it?
Hint: Attacker alters token header to specify algorithm `none`. Prevent by enforcing signature verification with specific algorithms (e.g., HS256) on the server.

DSA: [BST][Easy-Medium][Amazon] Insert a node value into a Binary Search Tree (BST).
Hint: Recursive search. If root is null, return new Node(val). If `val < root.val`, `root.left = insert(root.left, val)`. Else, `root.right = insert(root.right, val)`. Return root. Time: O(h).

Aptitude: [P&C][Medium-Hard] In how many different ways can the letters of the word 'ORANGE' be arranged?
Hint: 'ORANGE' has 6 distinct letters. Number of arrangements = 6! = 720 ways.

---

Q500.
MERN: [Performance][Medium][Product Company] What are cover queries in MongoDB? How do they avoid reading documents from disk?
Hint: A query is covered if all queried fields and projection fields exist in the index. The database reads index keys directly from memory, skipping document fetch from disk. Check via `.explain()`: `totalDocsExamined` must be 0.

DSA: [BST][Medium-Hard][Amazon] Delete a node value from a Binary Search Tree (BST).
Hint: 1) If node has 0/1 children, return its child. 2) If 2 children, copy inorder successor value to current, and delete that successor from right subtree. Time: O(h).

Aptitude: [Puzzles][Medium-Hard] A clock strikes 12 times in 12 seconds. How long does it take to strike 6 times?
Hint: 12 strikes have 11 intervals. Total time = 12s, so 1 interval = 12/11 seconds. 6 strikes have 5 intervals. Time = 5 × 12/11 = 60/11 ≈ 5.45 seconds.

---

## 📝 REVISION CHECKPOINT — Q401 to Q500

### Top Patterns Learned
1. **React State & APIs**: Deferring state updates vs values (`useTransition` vs `useDeferredValue`), generic Dropdowns typing in TS, and setting up error boundaries.
2. **Next.js app patterns**: Learned Server Actions syntax and advantages, using layouts, and routing hooks.
3. **Advanced Mongoose schemas & operations**: Implemented OCC version control (with `__v`), discriminators for schema inheritance, soft deleting query hooks, and geospatial queries.
4. **DSA Concepts**:
   - *Trees & BSTs*: Diameter calculations, Right Side Views, lowest common ancestor discovery, symmetry checking, converting arrays to BSTs, and recovery algorithms.
   - *Heaps*: Median stream calculation, top-K frequent elements, and K-closest points.
   - *Tries*: Implementations, search auto-suggest, and Word Search grid algorithms.
5. **Aptitude Formulas**: Circular table seating combinations, clock intervals, polygon diagonals, trade surpluses, and city literacy rates.

### Most Important Concepts
- 🔴 Next.js Server Actions progressive enhancement (Q425, Q451)
- 🔴 Mongoose Version key (`__v`) check for OCC (Q405)
- 🔴 BST recovery using in-order traversal tracking (Q420, Q454)
- 🔴 Priority Queue dual-heap median stream finder (Q425, Q455)
- 🔴 Trie auto-suggest index traversals (Q428, Q458)

### Revision Checklist
- [ ] Can you implement Next.js Server Actions with validation?
- [ ] Can you find the LCA of two tree nodes in O(n)?
- [ ] Can you validate if a tree is a BST?
- [ ] Can you find the median from a data stream in O(log n)?
- [ ] Can you write a Trie word search suggestion algorithm?
- [ ] Can you implement Mongoose discriminators?
- [ ] Can you calculate the number of diagonals in a polygon?

---

### 🔚 END OF PART 2 — Q251 to Q500

> **Continue to [Part 3](./Elite_Interview_Roadmap_Part3.md) for Q501–Q750 (⭐⭐⭐ Upper-Intermediate)**

---
