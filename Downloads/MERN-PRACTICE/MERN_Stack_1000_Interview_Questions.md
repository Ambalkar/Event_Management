# 1000 Challenging Interview Questions for MERN Stack Developers

> Organized by topic and difficulty: **Beginner** | **Intermediate** | **Advanced**

---

## TABLE OF CONTENTS

1. [HTML](#html) — Q1–Q80
2. [CSS](#css) — Q81–Q180
3. [JavaScript (Core)](#javascript-core) — Q181–Q340
4. [React](#react) — Q341–Q530
5. [Node.js](#nodejs) — Q531–Q660
6. [Express.js](#expressjs) — Q661–Q760
7. [MongoDB & Mongoose](#mongodb--mongoose) — Q761–Q880
8. [Full-Stack & System Design](#full-stack--system-design) — Q881–Q960
9. [DevOps, Security & Performance](#devops-security--performance) — Q961–Q1000

---

## HTML

### Beginner

1. What does HTML stand for, and what is its primary purpose in web development?
2. Explain the difference between an HTML element and an HTML attribute.
3. What is the purpose of the `<!DOCTYPE html>` declaration?
4. What is the difference between block-level and inline elements? Give three examples of each.
5. Explain the purpose of semantic HTML. Why is it important?
6. What is the difference between `<div>` and `<span>`?
7. What are void elements in HTML? Give five examples.
8. Explain the difference between `id` and `class` attributes.
9. What does the `alt` attribute on an `<img>` tag do? Why is it important?
10. What is the purpose of the `<meta>` tag? Give three common uses.
11. What is the difference between absolute and relative URLs?
12. How do you create a hyperlink that opens in a new tab?
13. What is the purpose of the `<head>` vs the `<body>` section of an HTML document?
14. What is the difference between `<strong>` and `<b>`, and between `<em>` and `<i>`?
15. How do you create an ordered list vs an unordered list?

### Intermediate

16. Explain the purpose and usage of HTML5 semantic elements: `<header>`, `<footer>`, `<nav>`, `<article>`, `<section>`, `<aside>`, `<main>`.
17. What is the `data-*` attribute? How would you access it in JavaScript?
18. Explain the difference between `<script>`, `<script async>`, and `<script defer>`. When would you use each?
19. What is the difference between `localStorage`, `sessionStorage`, and cookies at the HTML/browser level?
20. How does the HTML `<form>` element work? Explain `action`, `method`, and form submission.
21. What is the difference between GET and POST form methods at the HTML level?
22. What is the `<template>` element and when would you use it?
23. Explain the `<picture>` element and how it enables responsive images.
24. What is the `srcset` attribute on an `<img>` tag? How does it differ from using `<picture>`?
25. How does the `<iframe>` element work? What are its security implications?
26. What is the `contenteditable` attribute? Where might you use it in a MERN app?
27. Explain HTML accessibility (a11y). What are ARIA roles and attributes?
28. What is the difference between `<input type="button">`, `<input type="submit">`, and `<button>`?
29. What are custom data attributes? How would you use them in a React application?
30. Explain the `tabindex` attribute and its values. How does it affect keyboard navigation?

### Advanced

31. What is the Web Components standard? How do Custom Elements relate to frameworks like React?
32. Explain the Shadow DOM. How does it differ from the real DOM?
33. What is the HTML Constraint Validation API? How would you use it alongside React-controlled inputs?
34. What are the performance implications of inline SVGs vs. image SVGs in an HTML document?
35. Explain how browser rendering works: from parsing HTML to painting pixels (critical rendering path).
36. What is render-blocking HTML/CSS/JS? How do you minimize it?
37. What is the purpose of `<link rel="preload">`, `<link rel="prefetch">`, and `<link rel="preconnect">`?
38. How does the `<canvas>` element work? When would you use it over SVG?
39. Explain the `<dialog>` element and its native API. How does it compare to a modal built in React?
40. What is the Document Object Model (DOM)? Explain the difference between the DOM and HTML source.
41. What are HTML entities? Give examples of when they're necessary.
42. What is an accessible rich internet application (ARIA live region)? Give a use case in a React SPA.
43. How do browsers handle character encoding? What is the significance of `<meta charset="UTF-8">`?
44. What is the difference between `innerHTML`, `innerText`, and `textContent`? Which is safest and why?
45. Explain the concept of progressive enhancement and graceful degradation in the context of HTML.
46. What is the `<noscript>` tag? When is it relevant in a MERN/React app?
47. How does the `<base>` element affect relative URL resolution? Could this cause issues in a React SPA?
48. What is the purpose of the `manifest` attribute on the `<html>` tag (Web App Manifest)?
49. Explain microdata and Schema.org. How do they affect SEO?
50. What is the `<slot>` element in the context of Web Components?

---

## CSS

### Beginner

51. What is the CSS Box Model? Describe its components.
52. What is the difference between `margin` and `padding`?
53. Explain CSS specificity. How is it calculated?
54. What is the difference between `display: none` and `visibility: hidden`?
55. What are pseudo-classes? Give five examples.
56. What are pseudo-elements? Give examples and explain their syntax (`::` vs `:`).
57. What is the difference between `position: relative`, `absolute`, `fixed`, and `sticky`?
58. What is the CSS cascade? How does it determine which styles are applied?
59. Explain the difference between `em`, `rem`, `%`, `px`, `vw`, and `vh` units.
60. What is the difference between `inline`, `block`, and `inline-block` display values?
61. What is `z-index` and when does it apply?
62. What is the difference between `border-box` and `content-box` in `box-sizing`?
63. How do CSS classes and IDs differ in terms of specificity?
64. What is CSS inheritance? Which properties are inherited by default?
65. What is a CSS reset vs a CSS normalize, and why would you use one?
66. How do you center an element horizontally and vertically in CSS?
67. What is the `float` property? What problems does it cause and how are they solved?
68. How does `overflow` work? What are the different values?
69. What is the `::before` and `::after` pseudo-element used for?
70. What are CSS variables (custom properties)? How do you define and use them?

### Intermediate

71. Explain CSS Flexbox. What are the main container and item properties?
72. Explain CSS Grid. How does it differ from Flexbox? When would you use one over the other?
73. What is a CSS media query? Write an example for a mobile-first responsive design.
74. What is the BEM (Block Element Modifier) naming convention? Give an example.
75. What is CSS specificity conflict? How would you resolve it without using `!important`?
76. Explain the difference between `transform`, `transition`, and `animation` in CSS.
77. What is the `will-change` property? When should and shouldn't you use it?
78. What are CSS preprocessors like SASS/SCSS? What features do they add?
79. What is a CSS module? How does it help with scoping in a React application?
80. What is the `clamp()` CSS function? Give a use case.
81. Explain `min-content`, `max-content`, and `fit-content` keywords in CSS sizing.
82. What is the difference between `nth-child()` and `nth-of-type()` selectors?
83. What is `calc()` in CSS? Give a practical example.
84. How does `object-fit` work? Compare the values `contain`, `cover`, and `fill`.
85. What is `CSS Grid auto-placement`? How does `grid-auto-flow` affect it?
86. What is a CSS stacking context? What properties create a new stacking context?
87. How do you implement a dark mode toggle using CSS custom properties and JavaScript?
88. Explain `Flexbox` shorthand properties: `flex`, `flex-grow`, `flex-shrink`, `flex-basis`.
89. What is the `aspect-ratio` CSS property and when is it useful?
90. What are CSS logical properties (e.g., `margin-inline`, `padding-block`)? Why are they important for internationalization?

### Advanced

91. What is the CSS paint API (Houdini)? How does it extend CSS capabilities?
92. Explain CSS containment (`contain` property). What performance benefits does it provide?
93. What is the difference between a CSS animation performed on the main thread vs the compositor thread?
94. How do you build a performant CSS animation that avoids layout and paint steps?
95. What is CSS subgrid? Give an example of where it solves a real layout problem.
96. Explain `@layer` (cascade layers) in CSS. How do they change the cascade order?
97. What is a Critical CSS strategy? How would you implement it in a Node/Express-served React app?
98. How does `content-visibility: auto` improve rendering performance?
99. What is the difference between `:is()`, `:where()`, and `:has()` CSS selectors?
100. How would you implement a pixel-perfect responsive layout using CSS Grid and `minmax()`?
101. Explain CSS `@container` queries. How are they different from media queries?
102. What are `@property` custom properties in CSS? How do you use them for animations?
103. What is the Intersection Observer API, and how can it work in tandem with CSS for lazy-loaded animations?
104. How does CSS specificity interact with CSS Modules in a React project?
105. What is the "FOUC" (Flash of Unstyled Content)? How do you prevent it in server-side rendering?
106. Explain how styled-components (CSS-in-JS) generates class names and injects styles. What are the trade-offs?
107. What is CSS font subsetting and why does it improve performance?
108. How would you architect a design system's CSS for a large-scale MERN application?
109. Explain the repaint and reflow cycles. Which CSS properties trigger each?
110. What is the CSS `backdrop-filter` property and what are its performance implications?

---

## JavaScript (Core)

### Beginner

111. What are the primitive data types in JavaScript?
112. Explain the difference between `==` and `===`.
113. What is `typeof`? What are some surprising results it can return?
114. What is `undefined` vs `null` in JavaScript?
115. What is variable hoisting? Explain with an example.
116. What is the difference between `var`, `let`, and `const`?
117. What is a closure in JavaScript? Give a simple example.
118. Explain the difference between function declarations and function expressions.
119. What is an arrow function? How does it differ from a regular function?
120. What is the `this` keyword? How is it determined in regular vs arrow functions?
121. What is the difference between `for...in` and `for...of`?
122. What are template literals? Give an example.
123. What are default parameters in JavaScript functions?
124. What is destructuring assignment? Show an example with arrays and objects.
125. What is the spread operator (`...`)? Give three practical use cases.
126. What is the rest parameter? How does it differ from the spread operator?
127. What are higher-order functions? Give examples: `map`, `filter`, `reduce`.
128. What is a callback function? Give a real-world example.
129. What is `JSON.stringify()` and `JSON.parse()`? When would you use them?
130. What is `Array.isArray()`? Why not use `typeof` to check for arrays?

### Intermediate

131. Explain the JavaScript event loop. What is the call stack, heap, and task queue?
132. What are Promises? Explain the states: pending, fulfilled, rejected.
133. What is `async/await`? How does it relate to Promises?
134. What is the difference between microtask queue and macrotask queue?
135. Explain `Promise.all()`, `Promise.race()`, `Promise.allSettled()`, and `Promise.any()`.
136. What is a generator function? What is the `yield` keyword?
137. What is the prototype chain in JavaScript? Explain prototypal inheritance.
138. What is `Object.create()`? How does it differ from using `new`?
139. What is a `WeakMap` and `WeakSet`? When would you use them?
140. Explain `Symbol` in JavaScript. Give a use case.
141. What is `Proxy` in JavaScript? Give a use case.
142. What is `Reflect` in JavaScript? How does it relate to `Proxy`?
143. What is the Module system in JavaScript? Explain ES Modules (`import`/`export`) vs CommonJS (`require`/`module.exports`).
144. Explain event delegation. Why is it a useful pattern?
145. What is debouncing? What is throttling? When would you use each?
146. What is the difference between synchronous and asynchronous code?
147. What is memoization? Implement a simple memoize function.
148. Explain `Object.freeze()` vs `Object.seal()`.
149. What is a pure function? Why are pure functions important in React?
150. What is immutability? Why is it preferred in modern JavaScript development?
151. What are getters and setters in JavaScript objects?
152. What is optional chaining (`?.`)? What problem does it solve?
153. What is the nullish coalescing operator (`??`)? How does it differ from `||`?
154. What is `structuredClone()`? How does it differ from `JSON.parse(JSON.stringify())`?
155. What are tagged template literals? Give an advanced use case.
156. What is the Temporal Dead Zone (TDZ)?
157. What is an Immediately Invoked Function Expression (IIFE)? Why was it commonly used?
158. What is currying in JavaScript? Write a curried function.
159. What is function composition? How does it differ from piping?
160. What is `Array.prototype.flat()` and `flatMap()`? Give use cases.

### Advanced

161. Explain how the JavaScript engine compiles and executes code (V8 internals: parsing, AST, bytecode, JIT compilation).
162. What is a memory leak in JavaScript? Give three common causes in Node.js applications.
163. What are WeakRefs in JavaScript? How do they help prevent memory leaks?
164. Explain tail call optimization. Does JavaScript support it?
165. What is the difference between shallow copy and deep copy? Write a deep clone function without using JSON methods.
166. Explain the concept of trampolining in JavaScript. When is it useful?
167. What are iterators and iterables? How do they enable `for...of` loops?
168. What is the Async Iterator protocol? Give an example using `for await...of`.
169. How does garbage collection work in V8? What is generational garbage collection?
170. What is a service worker? How does it differ from a web worker?
171. Explain `SharedArrayBuffer` and `Atomics`. What problem do they solve?
172. What is CSP (Content Security Policy) and how does it interact with inline JavaScript?
173. What is prototype pollution? How can it be exploited and prevented?
174. What are abstract equality comparison rules (`==`) in ES spec? Why can `[] == false` be true?
175. How does `setTimeout(fn, 0)` interact with the event loop? What does it guarantee?
176. What is the difference between `process.nextTick()`, `setImmediate()`, and `Promise.resolve()` in terms of execution order?
177. Explain observable streams (RxJS concept). How would you use them in a complex MERN application?
178. What is the Actor model? How could it apply to JavaScript concurrency?
179. What are the trade-offs between using `class` syntax vs factory functions in JavaScript?
180. Explain how `async/await` works under the hood in terms of generator functions and Promises.
181. What is tree shaking? How does the JavaScript module system enable it?
182. What is the Temporal API (TC39 proposal)? How does it improve on the `Date` object?
183. How would you implement a publish/subscribe (PubSub) pattern in JavaScript from scratch?
184. Explain the differences between `Function.prototype.call()`, `apply()`, and `bind()`. When would you use each?
185. What is the event propagation model? Explain capture phase, target phase, and bubble phase.
186. How do you prevent XSS when inserting user content into the DOM?
187. What is `requestAnimationFrame`? How does it differ from `setInterval` for animations?
188. Explain the concept of monadic composition in functional JavaScript.
189. What is property descriptor in JavaScript? Explain `writable`, `enumerable`, `configurable`.
190. How would you write a JavaScript scheduler that manages task priority with the event loop?

---

## React

### Beginner

191. What is React? Why use it over plain JavaScript?
192. What is a React component? Explain functional vs class components.
193. What is JSX? How does it differ from HTML?
194. What is the virtual DOM? How does React use it for efficient rendering?
195. What are props in React? How do you pass them?
196. What is state in React? How is it different from props?
197. What is `useState`? Show a simple example.
198. What is `useEffect`? What is it used for?
199. How do you handle events in React? How is it different from HTML event handling?
200. What is a key prop in React lists? Why is it required?
201. What is conditional rendering in React? Show three different ways.
202. What is a controlled component? Give an example with a form input.
203. What is an uncontrolled component? When would you prefer it over a controlled one?
204. What is `React.Fragment`? Why use it instead of a wrapping `<div>`?
205. What is `prop-types`? How does it help in development?
206. What is the difference between `onClick` and `onClick={handleClick()}` in JSX?
207. How do you render a list of items in React?
208. What is `children` in React props?
209. How do you apply CSS classes conditionally in React?
210. What is React DevTools and what can you inspect with it?

### Intermediate

211. Explain the React component lifecycle (for class components). Which hooks correspond to which lifecycle methods?
212. What is `useEffect` dependency array? Explain the behavior with `[]`, `[dep]`, and no array.
213. What is `useCallback`? When should you use it?
214. What is `useMemo`? How does it differ from `useCallback`?
215. What is `useRef`? Give two different use cases (DOM access and persisting values).
216. What is `useContext`? How does it solve prop drilling?
217. What is `useReducer`? When would you use it over `useState`?
218. What are custom hooks? Write a custom `useFetch` hook.
219. What is `React.memo`? How does it prevent unnecessary re-renders?
220. Explain React reconciliation. What algorithm does React use (Fiber)?
221. What is the React Context API? What are its limitations for state management?
222. What is the difference between imperative and declarative programming? How does React embody the declarative approach?
223. What is code splitting in React? How does `React.lazy` and `Suspense` enable it?
224. What is `React.StrictMode`? What does it catch in development?
225. Explain the concept of lifting state up.
226. What is a controlled vs uncontrolled form in React? Which is preferred and why?
227. How do you handle side effects in React? What patterns do you use?
228. What is the `useLayoutEffect` hook? How does it differ from `useEffect`?
229. What is `useImperativeHandle`? When would you use it with `forwardRef`?
230. What is the difference between `createRef` and `useRef`?
231. How does React handle forms with multiple inputs? Show an approach using a single state object.
232. What is an error boundary in React? How do you implement one?
233. What is the difference between `useEffect` cleanup and `componentWillUnmount`?
234. Explain the concept of render props pattern.
235. What are higher-order components (HOCs)? Give an example.
236. What is the Context + useReducer pattern? How does it compare to Redux?
237. How do you implement infinite scrolling in React?
238. What is `React.createPortal`? Give a use case.
239. How do you optimize a React app for performance? List at least five strategies.
240. What is `Concurrent Mode` in React? How does it differ from legacy rendering?

### Advanced

241. Explain React Fiber architecture in depth. What problem does it solve over the stack reconciler?
242. What are React Server Components? How do they differ from client components?
243. What is hydration in React? What is partial hydration?
244. What is `startTransition`? How does it help with urgent vs non-urgent updates?
245. What is the `useTransition` hook? Give a practical use case.
246. What is `useDeferredValue`? How does it differ from debouncing?
247. What is the `useId` hook? What problem does it solve in SSR?
248. What is `useSyncExternalStore`? Why was it introduced?
249. Explain how React's diffing algorithm works. What are its assumptions and limitations?
250. What is `flushSync` in React? When would you need it?
251. How does React 18's automatic batching differ from React 17?
252. What is Zustand? How does it compare to Redux Toolkit in terms of boilerplate and performance?
253. Explain Redux architecture: actions, reducers, store, middleware, selectors.
254. What is Redux Thunk? How does it compare to Redux Saga?
255. What are Redux Saga effects: `call`, `put`, `take`, `takeLatest`, `takeEvery`, `fork`, `join`?
256. What is `reselect`? How do memoized selectors improve performance?
257. Explain the concept of normalizing state in Redux. Why is it important?
258. What is React Query (TanStack Query)? How does it handle caching, invalidation, and refetching?
259. What is the `stale-while-revalidate` caching strategy? How does React Query implement it?
260. What is `SWR`? How does it compare to React Query?
261. How would you architect the state management of a large-scale e-commerce React application?
262. What is `Jotai`? How does atomic state management differ from a single store?
263. How do you test React components? Explain the difference between unit, integration, and E2E tests in the React context.
264. What is React Testing Library? What is its guiding philosophy?
265. What is `jest.mock()`? How do you mock API calls in React tests?
266. What is snapshot testing? What are its advantages and disadvantages?
267. What is `msw` (Mock Service Worker)? How does it improve API mocking in tests?
268. Explain how you would implement server-side rendering (SSR) in a React app using Next.js or Express.
269. What is Static Site Generation (SSG)? How does it differ from SSR and CSR?
270. What is Incremental Static Regeneration (ISR)? How is it implemented in Next.js?
271. What is the React DevTools Profiler? How do you use it to identify performance bottlenecks?
272. Explain how you would implement a highly performant virtualized list (e.g., using `react-window`).
273. What is React's `act()` utility in testing? Why is it important for async updates?
274. How does React's event system work under the hood? What is event delegation in React?
275. What is the compound component pattern? Give a real-world example.
276. What is the "state machine" pattern in UI development? How would you implement it with XState in a React app?
277. What is `react-hook-form`? How does it achieve performance improvements over controlled inputs?
278. How do you implement animations in React? Compare Framer Motion, React Spring, and CSS transitions.
279. What is the "Islands Architecture"? How does it relate to React and partial hydration?
280. What are React's rules of hooks, and why do they exist?

### Expert-Level React

281. How would you implement a custom React renderer from scratch?
282. What is the scheduler package in React? How does it prioritize work?
283. How does React's lane model work for scheduling concurrent updates?
284. Explain the commit phase vs the render phase in React's Fiber reconciler.
285. What are the `__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED` internals and why do they exist?
286. How would you build a fully accessible (WCAG 2.1 AA) modal dialog in React?
287. What is the "Algebraic Effects" concept that React's team has discussed for future versions?
288. How do you implement a real-time collaborative editor UI in React (like a Google Docs clone)?
289. How would you implement a drag-and-drop interface in React without a library?
290. What is the difference between `React.cloneElement` and `React.Children.map`? When would you use each?

---

## Node.js

### Beginner

291. What is Node.js? How does it differ from JavaScript in the browser?
292. What is the Node.js event loop? How is it different from the browser event loop?
293. What is `npm`? How is it different from `npx`?
294. What is `package.json`? What are `dependencies` vs `devDependencies`?
295. What is `package-lock.json`? Why should it be committed to source control?
296. What is a module in Node.js? Explain `require` and `module.exports`.
297. What is the difference between `__dirname` and `__filename`?
298. How do you read a file asynchronously in Node.js?
299. What is the `path` module? Why is it important for cross-platform development?
300. What is the `os` module? Give three pieces of information it can provide.
301. What is the `http` module? Show how to create a simple HTTP server.
302. What is the difference between `process.argv`, `process.env`, and `process.exit()`?
303. What are Node.js streams? Name the four types.
304. What is a Buffer in Node.js? When do you need it?
305. What is `dotenv` and why is it used in Node.js projects?

### Intermediate

306. Explain the Node.js module resolution algorithm. What order does it look for modules?
307. What is the difference between `require()` (CommonJS) and `import` (ESM) in Node.js?
308. What is `cluster` module in Node.js? How does it help with multi-core utilization?
309. What is `worker_threads` in Node.js? How does it differ from the `cluster` module?
310. What is `libuv`? What role does it play in Node.js's non-blocking I/O?
311. What are readable, writable, duplex, and transform streams? Give an example of each.
312. What is backpressure in Node.js streams? How do you handle it?
313. What is the `EventEmitter` class? How do you implement a custom event emitter?
314. What are the different phases of the Node.js event loop? (timers, I/O callbacks, idle, poll, check, close)
315. What is `process.nextTick()`? How does it differ from `setImmediate()` and `setTimeout(0)`?
316. What is the `crypto` module? How would you hash a password using it?
317. What is the `child_process` module? When would you use `exec` vs `spawn` vs `fork`?
318. How do you handle uncaught exceptions and unhandled promise rejections in Node.js?
319. What is `REPL` in Node.js?
320. What is the Node.js `--inspect` flag? How do you debug Node.js applications?
321. What is the `fs.promises` API? How does it compare to `fs` with callbacks or `util.promisify`?
322. What is the difference between `fs.readFile` and `fs.createReadStream`? When would you use each?
323. What is `compression` middleware in the context of Express/Node? How does Gzip improve performance?
324. What is the `net` module? Give a use case for raw TCP servers.
325. How do you implement graceful shutdown in a Node.js server?

### Advanced

326. Explain V8's hidden classes and how they affect object property access performance in Node.js.
327. What is N-API (Node-API)? When would you write a native Node.js addon?
328. How does Node.js handle memory allocation? What is the heap size limit and how can it be increased?
329. What is a thread pool in libuv? Which Node.js operations use it?
330. How would you profile a Node.js application for CPU bottlenecks? What tools would you use?
331. What is `async_hooks` in Node.js? How would you use it for request tracing?
332. What is the difference between a process crash due to an uncaught exception vs SIGTERM vs SIGKILL?
333. Explain the concept of a connection pool in the context of Node.js database drivers.
334. How would you implement a rate limiter in Node.js without a library?
335. What is `piscina`? How does it improve CPU-bound task performance in Node.js?
336. Explain the concept of "hot module replacement" in a Node.js dev server context.
337. How does Node.js handle DNS resolution? What is the impact on performance?
338. What is `socket.io`? Explain how it handles WebSocket connections and falls back to polling.
339. How would you implement a message queue system using Redis and Node.js (Bull/BullMQ)?
340. How would you architect a Node.js microservices system? What communication patterns would you use?
341. What is gRPC? How would you use it for inter-service communication in a Node.js microservices architecture?
342. What is NATS or RabbitMQ? How does a message broker differ from Redis pub/sub for Node.js services?
343. What is the `--max-old-space-size` flag? When and why would you use it?
344. How do you implement structured logging in a Node.js application? What libraries would you use?
345. What is OpenTelemetry? How would you instrument a Node.js application with it?

---

## Express.js

### Beginner

346. What is Express.js? Why is it used with Node.js?
347. How do you create a simple Express server?
348. What is a route in Express? How do you define GET, POST, PUT, DELETE routes?
349. What is middleware in Express? How does it work?
350. What is the purpose of `app.use()`?
351. What are route parameters in Express? How do you access them?
352. What are query parameters? How do you access them in Express?
353. How do you send a JSON response in Express?
354. What is `express.json()` middleware? What does it do?
355. What is `express.urlencoded()` middleware?
356. How do you handle 404 errors in Express?
357. What is the request object (`req`) in Express? Name five properties.
358. What is the response object (`res`) in Express? Name five methods.
359. What is `express.Router()`? Why use it?
360. How do you serve static files in Express?

### Intermediate

361. What is the order of middleware execution in Express?
362. How does error-handling middleware differ from regular middleware in Express?
363. What is `cors` middleware? Why do you need it in a MERN app?
364. What is `helmet` middleware? What security headers does it set?
365. What is `morgan` middleware? What logging formats does it support?
366. How do you implement authentication middleware in Express (JWT validation)?
367. What is `multer` middleware? How do you handle file uploads in Express?
368. How do you implement request validation in Express (e.g., using Joi or express-validator)?
369. What is rate limiting in Express? How would you implement it with `express-rate-limit`?
370. How do you implement pagination in an Express API?
371. What is a RESTful API? What are the REST constraints?
372. What is the difference between REST and GraphQL? When would you choose one over the other?
373. How do you structure a large Express application? What folder structure would you use?
374. How do you implement environment-specific configuration in Express?
375. What is `compression` middleware and when would you use it?
376. Explain how cookies work in Express. How do you set and read cookies securely?
377. What is `express-session`? How does it work and what are its limitations?
378. How do you implement HTTPS in Express?
379. How do you handle CORS for multiple allowed origins in Express?
380. How would you implement a webhook endpoint in Express?

### Advanced

381. What is the difference between `app.use('/path', router)` and `router.use('/subpath', handler)`?
382. How would you implement idempotency keys for POST requests in an Express API?
383. What is GraphQL with Apollo Server? How would you set it up in an Express app?
384. Explain the concept of API versioning. What are the different strategies (URI, header, query param)?
385. How would you implement a full HATEOAS REST API in Express?
386. What is a BFF (Backend for Frontend) pattern? When would you use it in a MERN stack?
387. How would you implement circuit breaker pattern in Express for downstream service calls?
388. What is response caching in Express? How would you implement HTTP caching headers (`Cache-Control`, `ETag`, `Last-Modified`)?
389. How would you implement request tracing across a distributed Express API?
390. How do you handle streaming responses in Express (e.g., Server-Sent Events or chunked transfer encoding)?
391. What is `express-async-errors`? Why is it useful? What does it solve that vanilla Express doesn't?
392. How would you implement a multipart form data parser from scratch in Express?
393. What is tRPC? How does it compare to REST and GraphQL for type-safe APIs in a MERN stack?
394. How would you implement API gateway functionality in Express?
395. What is event sourcing? How would you implement it in an Express/Node.js backend?
396. Explain CQRS (Command Query Responsibility Segregation). How does it apply to an Express API?
397. How would you implement soft deletes in an Express/MongoDB API?
398. What is the saga pattern for distributed transactions? How would you implement it with Node.js?
399. How do you ensure your Express API is fully OpenAPI (Swagger) compliant and auto-documented?
400. How would you implement a plugin/extension system in an Express application?

---

## MongoDB & Mongoose

### Beginner

401. What is MongoDB? How does it differ from relational databases like MySQL?
402. What is a document in MongoDB? What format does it use?
403. What is a collection in MongoDB?
404. What is BSON? How does it differ from JSON?
405. What is the `_id` field in MongoDB? What type does it default to?
406. How do you insert a document into MongoDB using the shell?
407. What are the basic CRUD operations in MongoDB?
408. What is `find()` in MongoDB? How do you filter documents?
409. What is a query operator in MongoDB? Give five examples (`$eq`, `$gt`, `$in`, `$and`, `$or`).
410. What is an index in MongoDB? Why are indexes important?
411. What is Mongoose? Why use it instead of the native MongoDB driver?
412. What is a Mongoose schema? How do you define one?
413. What is a Mongoose model? How is it related to a schema?
414. How do you connect to MongoDB using Mongoose in a Node.js application?
415. What are Mongoose validators? Give examples of built-in validators.
416. What is the difference between `save()` and `create()` in Mongoose?
417. What is a Mongoose middleware (pre/post hooks)? Give an example.
418. What is the `populate()` method in Mongoose? What problem does it solve?
419. How do you update a document in Mongoose? Compare `findByIdAndUpdate()` vs `save()`.
420. What is the difference between `deleteOne()`, `deleteMany()`, and `findByIdAndDelete()`?

### Intermediate

421. What is MongoDB aggregation? What is the aggregation pipeline?
422. Explain the following aggregation stages: `$match`, `$group`, `$project`, `$sort`, `$limit`, `$skip`, `$lookup`, `$unwind`.
423. What is the `$lookup` stage? How does it perform a join?
424. What is `$facet` in MongoDB aggregation?
425. What is `$bucket` and `$bucketAuto`?
426. What are compound indexes in MongoDB? When are they beneficial?
427. What is a text index in MongoDB? How do you perform full-text search?
428. What are sparse indexes? When would you use one?
429. What are TTL (Time-To-Live) indexes? Give a use case.
430. What is MongoDB Atlas? What advantages does it offer over self-hosted MongoDB?
431. What is a replica set in MongoDB? What is its purpose?
432. What is sharding in MongoDB? When would you use it?
433. What are the different consistency levels in MongoDB reads (read concern)?
434. What is write concern in MongoDB? What does `w: "majority"` mean?
435. What is a MongoDB transaction? How do you implement one with Mongoose?
436. What is schema design in MongoDB? Explain the embedding vs referencing trade-off.
437. What is the Mongoose `lean()` option? When would you use it?
438. What is discriminator in Mongoose? Give a use case.
439. What is `select()` in Mongoose? How does projection improve performance?
440. What is the difference between `Model.find()` and `Model.findOne()` returning a Mongoose Query vs a Document?
441. What is `Model.aggregate()` in Mongoose? How does Mongoose wrap the native aggregation pipeline?
442. What is the `timestamps` option in Mongoose schemas?
443. How would you implement soft deletes in Mongoose?
444. What are Mongoose virtual properties? When are they useful?
445. How do you paginate results in Mongoose efficiently?
446. What is the `Model.bulkWrite()` method? When is it useful?
447. What is change streams in MongoDB? How would you use them in a real-time Node.js app?
448. What is `$expr` in MongoDB queries? When would you use it?
449. What are array query operators: `$elemMatch`, `$all`, `$size`?
450. What is the difference between `findOneAndUpdate()` with `returnDocument: 'after'` vs `after: true`?

### Advanced

451. How does MongoDB storage work at the WiredTiger engine level?
452. What is the MMAP vs WiredTiger storage engine? Why did MongoDB move to WiredTiger?
453. How does MongoDB handle concurrency? What is document-level locking?
454. What is a covered query in MongoDB? How do you verify one using `explain()`?
455. How do you analyze query performance in MongoDB? Explain `explain('executionStats')` output.
456. What is the "index intersection" in MongoDB? How does it differ from compound indexes?
457. What is the ESR (Equality, Sort, Range) rule for compound index design?
458. How would you design a MongoDB schema for a social media platform at scale?
459. What are MongoDB Atlas Search and Vector Search? How do they differ from text indexes?
460. What is the GridFS specification? When would you use it?
461. How would you implement full-text search in a MERN app? Compare MongoDB text indexes, Atlas Search, and Elasticsearch.
462. What is the Outbox Pattern? How would you implement it with MongoDB for reliable event publishing?
463. How do you handle schema migrations in MongoDB? What challenges exist compared to SQL migrations?
464. What is a write amplification problem in MongoDB? How does schema design affect it?
465. What are MongoDB's ACID guarantees in multi-document transactions vs single-document operations?
466. How would you implement optimistic concurrency control in MongoDB?
467. How would you back up and restore a large MongoDB database with minimal downtime?
468. What is the oplog in MongoDB? How does it enable replication?
469. How would you implement a geospatial query in MongoDB (e.g., find restaurants near a location)?
470. What is the MongoDB Aggregation `$graphLookup` stage? Give a use case (e.g., org chart traversal).
471. How do you use MongoDB Atlas Data API and Atlas App Services?
472. What is the difference between `$inc`, `$set`, `$unset`, `$push`, `$pull`, `$addToSet` update operators?
473. How would you model a many-to-many relationship in MongoDB efficiently?
474. What is the bucket pattern in MongoDB schema design?
475. What is the attribute pattern? How does it handle sparse or variable attributes?
476. How would you implement a multi-tenant architecture in MongoDB?
477. What is connection pooling in Mongoose? How do you configure it?
478. How do you handle connection errors and reconnection logic in Mongoose?
479. What is the difference between `Model.countDocuments()` and `Model.estimatedDocumentCount()`?
480. How would you implement a leaderboard with real-time ranking using MongoDB?

---

## Full-Stack & System Design

### MERN Integration

481. Describe the typical request-response lifecycle in a MERN stack application.
482. How do you handle authentication in a MERN app? Describe a JWT-based auth flow.
483. What is the difference between JWT and session-based authentication? What are the pros and cons of each in a MERN app?
484. How do you implement refresh tokens securely in a MERN application?
485. What is OAuth 2.0? How would you implement Google login in a MERN app?
486. How do you handle role-based access control (RBAC) in a MERN application?
487. What is CORS and why do you need to configure it in a MERN app?
488. How does a React frontend communicate with an Express backend? What are different approaches (Axios, Fetch, React Query)?
489. How would you handle file uploads in a MERN app (frontend to backend to cloud storage)?
490. Describe how you would implement real-time notifications in a MERN application.
491. How do you handle form validation on both the frontend (React) and backend (Express/MongoDB)?
492. What is API error handling? How do you propagate errors from MongoDB to Express to React?
493. How do you implement search functionality in a MERN app?
494. How do you implement pagination on both the backend (Express/MongoDB) and frontend (React)?
495. How would you implement email verification in a MERN app?

### System Design

496. Design a URL shortener service using the MERN stack. Consider scalability and collision handling.
497. Design a real-time chat application using MERN stack + WebSockets (Socket.io).
498. Design a scalable REST API for a multi-tenant SaaS product on the MERN stack.
499. How would you design an e-commerce platform with the MERN stack? Discuss product catalog, cart, orders, and payments.
500. Design a social media feed with infinite scroll, likes, and comments in a MERN stack.
501. How would you design a file storage system (like Dropbox) using MERN stack?
502. Design an analytics dashboard that processes millions of events per day using the MERN stack.
503. How would you architect a MERN app to handle 1 million concurrent users?
504. What is a CDN and how would you use it in a MERN application?
505. Explain the microservices vs monolithic architecture. What are the trade-offs for a MERN startup?
506. What is horizontal vs vertical scaling? Which MongoDB components support each?
507. What is the CAP theorem? How does it apply to MongoDB?
508. What is eventual consistency? How does MongoDB handle it in a replica set?
509. What is a load balancer? How would you use Nginx as a reverse proxy and load balancer for a MERN app?
510. What is Redis? Give five use cases for Redis in a MERN application (caching, session, pub/sub, rate limiting, job queue).
511. What is an API Gateway? When would you introduce one in a MERN architecture?
512. How would you implement a search engine for a job board using the MERN stack?
513. What is event-driven architecture? How would you implement it in a MERN stack?
514. How would you design a notification system (email, SMS, push) in a MERN app?
515. What is the strangler fig pattern? How would you use it to migrate a monolith to microservices?

### Architecture & Best Practices

516. What is the MVC pattern? How does it apply to an Express/Node.js backend?
517. What is the repository pattern? How does it help with MongoDB abstraction?
518. What is dependency injection? How would you implement it in a Node.js application?
519. What is DRY principle? Give examples of how to apply it in a MERN codebase.
520. What is SOLID? Explain each principle with an example in a Node.js context.
521. What is domain-driven design (DDD)? How would you apply it to a MERN project?
522. What is the 12-Factor App methodology? How does it apply to a MERN deployment?
523. How do you implement proper logging in a full-stack MERN application?
524. What is observability? What are the three pillars (metrics, logs, traces)?
525. What is OpenAPI/Swagger? How would you document a MERN API?
526. How do you version control database schema changes in a MongoDB-based MERN app?
527. What is a monorepo? What are the trade-offs vs polyrepo for a MERN codebase?
528. What are webhooks? How would you implement and secure them in a MERN application?
529. How would you implement an audit log in a MERN application?
530. What is chaos engineering? How would you apply it to test a MERN stack's resilience?

---

## DevOps, Security & Performance

### Testing

531. What is unit testing? What should you unit test in a MERN stack?
532. What is integration testing? How does it differ from unit testing in the context of MERN?
533. What is end-to-end (E2E) testing? What tools would you use (Cypress, Playwright)?
534. What is test-driven development (TDD)? What are its advantages and disadvantages?
535. What is a testing pyramid? How does it apply to a MERN stack?
536. How do you mock MongoDB in unit tests? Discuss `mongodb-memory-server`.
537. What is `supertest`? How do you use it to test Express routes?
538. How do you achieve high code coverage? Is 100% coverage always the goal?
539. What is property-based testing? What library would you use in JavaScript?
540. How do you test WebSocket connections in a Node.js application?

### Security

541. What is SQL injection? Can it affect MongoDB? What is NoSQL injection?
542. What is XSS (Cross-Site Scripting)? How do you prevent it in a MERN app?
543. What is CSRF (Cross-Site Request Forgery)? How do you prevent it?
544. What is clickjacking? How does the `X-Frame-Options` header prevent it?
545. What are the OWASP Top 10? Discuss at least five that apply to MERN apps.
546. How do you store passwords securely in MongoDB? Discuss bcrypt and argon2.
547. What is a timing attack? How do you prevent it when comparing secrets?
548. What is JWT security? What are common JWT vulnerabilities?
549. What is the `alg: none` JWT vulnerability?
550. What is HTTPS? How do you configure SSL/TLS in a Node.js/Express application?
551. What is certificate pinning? When would you use it?
552. What is a DDoS attack? How would you protect a MERN app from one?
553. What is SSRF (Server-Side Request Forgery)? How can it occur in a Node.js app?
554. What is parameter pollution? How does it affect Express APIs?
555. What is the principle of least privilege? How does it apply to MongoDB Atlas user roles?
556. How would you audit a MERN application for security vulnerabilities?
557. What is `npm audit`? How do you handle vulnerable dependencies?
558. What is an API key? How do you secure API keys in a MERN app?
559. What is environment variable injection? How do you prevent secrets from leaking?
560. What is the security implication of `eval()` in a Node.js backend?

### Performance & Optimization

561. What is the Time to First Byte (TTFB)? What affects it in a MERN stack?
562. What is Largest Contentful Paint (LCP)? How do you optimize it?
563. What is First Input Delay (FID) / Interaction to Next Paint (INP)? How do you improve it?
564. What is Cumulative Layout Shift (CLS)? What causes it and how do you fix it?
565. What is a Lighthouse audit? How do you interpret and act on its results?
566. How do you implement HTTP caching in an Express API?
567. What is Redis caching? How do you implement a cache-aside pattern in Node.js?
568. How do you implement query optimization in MongoDB for a slow query?
569. What is the N+1 problem? How does it occur with Mongoose `populate()` and how do you solve it?
570. What is connection pooling and why is it critical for Node.js + MongoDB performance?
571. How do you implement lazy loading in React to improve initial bundle size?
572. What is tree shaking in a React/Webpack project? How do you enable it?
573. What is code splitting? How does `React.lazy` and dynamic `import()` enable it?
574. How do you optimize images in a MERN app?
575. What is a CDN and how does it reduce latency for a globally distributed MERN app?
576. What is SSR (Server-Side Rendering) and how does it improve perceived performance?
577. What is a service worker and how does it enable offline-first experiences?
578. How would you implement a web performance budget in a MERN project?
579. What is the difference between CPU profiling and memory profiling in Node.js?
580. How do you implement database read replicas to scale read-heavy MERN workloads?

### CI/CD & Deployment

581. What is CI/CD? Explain the difference between continuous integration, delivery, and deployment.
582. What is Docker? How would you containerize a MERN application?
583. What is a `Dockerfile`? Write one for a Node.js/Express application.
584. What is Docker Compose? Write a `docker-compose.yml` for a MERN stack.
585. What is Kubernetes? When would you move from Docker Compose to K8s?
586. What is a Kubernetes Pod, Deployment, Service, and Ingress?
587. What is Helm? How does it simplify Kubernetes deployments?
588. What is GitHub Actions? Write a CI workflow for a MERN app that runs tests on every PR.
589. What is semantic versioning (SemVer)? How does it apply to npm packages and API versioning?
590. What is blue-green deployment? How does it enable zero-downtime releases?
591. What is a canary deployment? How does it reduce risk during releases?
592. What is infrastructure as code (IaC)? Name two IaC tools.
593. What is Terraform? How would you use it to provision MongoDB Atlas and a Node.js app on AWS?
594. What is AWS EC2 vs ECS vs Lambda for hosting a Node.js backend?
595. What is serverless architecture? What are the trade-offs for an Express API converted to Lambda?
596. What is Nginx? How would you use it as a reverse proxy for an Express/Node.js application?
597. What is PM2? How does it manage a Node.js process in production?
598. How do you implement health check endpoints in an Express API?
599. What is a rolling update in Kubernetes? How does it differ from a recreate strategy?
600. What is observability in a MERN deployment? What tools would you use (Datadog, Grafana, Prometheus)?

---

## Additional Challenging Questions Across Topics

### JavaScript Deep Dives

601. Implement a deep equality function in JavaScript without using `JSON.stringify`.
602. Write a function that flattens a nested array to any depth without using `Array.prototype.flat`.
603. Implement `Promise.all` from scratch.
604. Write a function that retries a failed async operation up to N times with exponential backoff.
605. Implement a simple event emitter class in JavaScript.
606. Write a memoize function that supports multiple arguments.
607. Implement `Function.prototype.bind` from scratch.
608. Write a function to detect circular references in a JavaScript object.
609. Implement a throttle function from scratch.
610. Implement a debounce function from scratch.
611. Write a JavaScript function that groups an array of objects by a given key.
612. Implement a LRU (Least Recently Used) cache in JavaScript.
613. Write a function to serialize and deserialize a binary tree.
614. Implement a simple state machine in JavaScript.
615. Write a function that deep clones an object including functions and Date objects.
616. Implement an observable from scratch (simplified RxJS observable).
617. Write a pipeline function that composes async functions in sequence.
618. Implement a simple dependency injection container in JavaScript.
619. Write a function that converts a flat list of items with parentId to a tree structure.
620. Implement a simple virtual DOM diffing algorithm.

### React Practical Challenges

621. Implement a custom `useLocalStorage` hook.
622. Build a `useDebounce` hook and explain how it prevents excessive API calls.
623. Implement a custom `useIntersectionObserver` hook for lazy loading.
624. Build a `usePrevious` hook that stores the previous value of a variable.
625. Write a `useEventListener` hook that cleans up properly.
626. Implement a `useAsync` hook that handles loading, error, and data states.
627. Build a compound component (e.g., Accordion) with proper context sharing.
628. Implement a virtualized list component without a library.
629. Create a controlled multi-step form with React and form validation.
630. Build a drag-and-drop list in React using the HTML5 Drag and Drop API.
631. Implement an infinite scroll component in React using IntersectionObserver.
632. Build a rich text editor toolbar component in React.
633. Implement optimistic UI updates in a React application with rollback on error.
634. Build a real-time search component with debouncing and cancellation.
635. Implement a responsive data table with sorting, filtering, and pagination in React.
636. Build an accessible dropdown menu from scratch in React.
637. Implement a toast notification system using React Context.
638. Build a carousel/slider component with auto-play and swipe support.
639. Implement a file upload component with drag-and-drop and progress indicator.
640. Build a color picker component from scratch in React.

### Node.js/Express Practical Challenges

641. Write an Express middleware that logs request duration.
642. Implement JWT authentication middleware in Express.
643. Build an Express route that handles file uploads and stores them to AWS S3.
644. Write a rate-limiting middleware without using any external library.
645. Implement a caching middleware in Express using an in-memory Map.
646. Build a graceful shutdown handler for an Express + MongoDB application.
647. Write an Express middleware that validates request body against a JSON schema.
648. Implement a simple retry mechanism for a MongoDB query in Node.js.
649. Build a streaming CSV export endpoint in Express.
650. Implement a webhook signature verification middleware in Express.
651. Write a scheduled job in Node.js using `node-cron` to clean up expired sessions.
652. Implement an Express API that supports field filtering (e.g., `?fields=name,email`).
653. Build a paginated cursor-based API endpoint in Express + MongoDB.
654. Implement a request ID middleware that traces requests through logs.
655. Write an Express middleware that implements request deduplication.

### MongoDB Practical Challenges

656. Write an aggregation pipeline to find the top 10 most active users by post count.
657. Build a MongoDB aggregation that calculates monthly revenue from an orders collection.
658. Write a Mongoose query to find all documents where an array field contains at least one of several values.
659. Implement a full-text search query with relevance scoring in MongoDB.
660. Write an aggregation pipeline to compute a 7-day rolling average.
661. Design a MongoDB schema for a multi-level commenting system (threaded comments).
662. Write an atomic operation to increment a counter and update a status in a single MongoDB operation.
663. Implement a distributed lock using MongoDB's `findOneAndUpdate` with TTL index.
664. Write an aggregation that joins two collections and filters on joined fields.
665. Implement optimistic locking in MongoDB using a version field.

### Full-Stack Architecture Scenarios

666. A user reports that the React app is slow to load. Walk through your investigation process from browser to backend to database.
667. Your MongoDB queries are timing out under high load. What steps do you take to diagnose and fix the issue?
668. The Express API is returning 502 errors intermittently in production. What's your debugging process?
669. You need to add real-time features to an existing REST-based MERN app. What approach do you take?
670. How would you migrate a client-side React app to server-side rendering without a full rewrite?
671. Your React application has excessive re-renders causing jank. How do you diagnose and fix it?
672. How would you implement multi-language support (i18n) across the entire MERN stack?
673. Design a strategy for zero-downtime database migrations in a production MongoDB database.
674. You need to implement a payment system in your MERN app. Walk through the architecture and security considerations.
675. How would you add end-to-end encryption to user messages in a MERN chat application?

### Scenario-Based System Design

676. Design the data model for a ride-sharing app (Uber-like) in MongoDB.
677. How would you implement location-based search (e.g., nearby drivers) in a MERN app?
678. Design a job queue system for sending transactional emails in a MERN application.
679. How would you implement a feature flag system in a MERN stack?
680. Design a MERN app for a hospital appointment booking system with concurrency control.
681. How would you implement A/B testing in a MERN application?
682. Design a real-time collaborative whiteboard application using MERN + WebSockets.
683. How would you implement a recommendation engine in a MERN application?
684. Design a multi-vendor marketplace (like Etsy) using the MERN stack.
685. How would you implement user activity tracking and analytics in a MERN app?

### Advanced CSS & Styling in React

686. How do you implement a responsive masonry grid layout in CSS?
687. What is `styled-components`? Explain how it scopes styles and what performance considerations exist.
688. What is Tailwind CSS? How does it differ from CSS-in-JS? What are the trade-offs?
689. How would you implement a complex theme system in a MERN app (styled-components + Context)?
690. What is CSS-in-JS? Compare styled-components, Emotion, and vanilla-extract.
691. How do you handle global CSS resets in a React application?
692. Implement a responsive navigation bar that collapses to a hamburger menu.
693. What are CSS Houdini APIs? How could they be used for custom rendering effects in a React app?
694. How do you implement CSS animations that coordinate with React state transitions?
695. What is Stitches.js? How does it approach styling compared to styled-components?

### JavaScript Algorithms & Data Structures (MERN context)

696. How would you implement pagination logic in JavaScript for a MongoDB cursor?
697. Implement a trie data structure for an autocomplete search feature.
698. Write a function to validate and sanitize user input on the backend (Node.js).
699. Implement a binary search on a sorted MongoDB query result set.
700. Write a function that parses and validates a complex query string in an Express route.
701. Implement a simple job scheduler using a priority queue in Node.js.
702. Write a function to detect duplicate entries in a large MongoDB collection efficiently.
703. Implement a simple bloom filter in JavaScript for checking if an email is already registered.
704. Write a function to generate a slug from a blog post title (handle special characters).
705. Implement a function that recursively resolves nested MongoDB populate calls.

### HTTP, REST & API Design

706. What is idempotency? Which HTTP methods are idempotent?
707. What is the difference between `PUT` and `PATCH`?
708. What are HTTP status codes? Explain the significance of 200, 201, 204, 400, 401, 403, 404, 409, 422, 429, 500, 502, 503.
709. What is content negotiation in HTTP? How does it work with `Accept` and `Content-Type` headers?
710. What is HTTP/2? What improvements does it bring over HTTP/1.1?
711. What is HTTP/3? How does QUIC affect MERN app performance?
712. What are long polling, short polling, WebSockets, and Server-Sent Events? Compare them.
713. What is RESTful API design best practices? Give five rules.
714. What is the HATEOAS constraint in REST? How would you implement it in Express?
715. What is an HTTP proxy? How does it affect CORS and cookie handling?
716. What is a reverse proxy? How does Nginx act as a reverse proxy for Express?
717. What is Keep-Alive in HTTP? How does it affect Express performance?
718. What is multipart/form-data? When is it used in a MERN application?
719. What are HTTP conditional requests? How do `If-Modified-Since` and `If-None-Match` work?
720. What is HTTP compression? How does `Content-Encoding` work with gzip/brotli?

### TypeScript with MERN

721. What is TypeScript? Why would you use it in a MERN stack?
722. What is the difference between `interface` and `type` in TypeScript?
723. What are generics in TypeScript? Give a use case with a Mongoose model.
724. What is TypeScript's `unknown` vs `any`? Why is `unknown` safer?
725. What are utility types in TypeScript? Give examples: `Partial`, `Required`, `Pick`, `Omit`, `Record`.
726. How do you type Express route handlers in TypeScript?
727. How do you create typed Mongoose schemas in TypeScript?
728. What is declaration merging in TypeScript? Give a use case.
729. What are conditional types in TypeScript? Give an example.
730. What is `infer` in TypeScript conditional types?
731. What are mapped types in TypeScript? Give an example of creating `ReadOnly<T>` from scratch.
732. What is the `satisfies` operator in TypeScript?
733. How do you type React component props and state in TypeScript?
734. What is `ReturnType<T>` and `Parameters<T>` utility types?
735. How do you handle third-party JavaScript library types (`@types/...`) in TypeScript?

### Testing Deep Dives

736. What is the AAA (Arrange-Act-Assert) pattern in unit testing?
737. What is a test double? Explain stub, mock, spy, and fake.
738. How do you test asynchronous code in Jest?
739. What is code coverage? What is branch coverage vs line coverage?
740. How do you test a Mongoose model in isolation?
741. What is contract testing? How does Pact enable it in a MERN microservices context?
742. How do you implement visual regression testing in a React app?
743. What is mutation testing? What library would you use in JavaScript?
744. How do you test Express middleware in isolation?
745. What is load testing? What tools would you use to load test a MERN API?

### Cloud & Infrastructure

746. What is AWS S3? How would you integrate it with a MERN app for file storage?
747. What is AWS Lambda? How would you deploy an Express app as Lambda functions?
748. What is AWS EC2 Auto Scaling? When would you use it for a Node.js backend?
749. What is AWS RDS vs DynamoDB vs DocumentDB? When would you use each?
750. What is Cloudflare? How do its CDN and WAF features protect a MERN app?
751. What is Vercel? What features make it popular for deploying React frontends?
752. What is Railway or Render? How do they simplify Node.js backend deployments?
753. What is MongoDB Atlas? How do Atlas Search, Atlas Functions, and Atlas Triggers extend a MERN app?
754. What is a VPC (Virtual Private Cloud)? Why should your MongoDB instance be in a private VPC?
755. What is IAM (Identity and Access Management)? How would you apply least privilege to a MERN app's AWS resources?

### Miscellaneous Advanced Topics

756. What is WebAssembly (WASM)? Could you use it to improve performance in a MERN app?
757. What is a PWA (Progressive Web App)? What features does it require?
758. What is the App Shell model for PWAs?
759. What is Edge Computing? How does deploying React at the edge (e.g., Cloudflare Workers, Vercel Edge) affect MERN architecture?
760. What is GraphQL subscriptions? How would you implement real-time data in a GraphQL MERN app?
761. What is Apollo Client cache? How does normalized caching work?
762. What is Dataloader? How does it solve the N+1 problem in GraphQL?
763. What is `@defer` and `@stream` in GraphQL? How do they improve perceived performance?
764. What is tRPC? How does it enable end-to-end type safety in a MERN stack?
765. What is Zod? How would you use it for shared validation in both React forms and Express routes?
766. What is Prisma? How does it compare to Mongoose for database access in Node.js?
767. What is the "mono-repo with shared types" pattern for MERN? How does it improve DX?
768. What is Turborepo? How does it speed up builds in a MERN monorepo?
769. What is Nx? How does it compare to Turborepo for monorepo management?
770. What is Bun.js? How does it compare to Node.js in terms of performance and compatibility?
771. What is Deno? How does it differ from Node.js and could it replace Node.js in a MERN stack?
772. What is the `vite` bundler? How does it compare to Webpack for a React app in development?
773. What is esbuild? How does it achieve its build speed?
774. What is Rollup? When would you use it over Webpack or Vite?
775. What is the Module Federation in Webpack 5? How does it enable micro-frontend architecture in React?
776. What is a micro-frontend? How would you implement one using a MERN stack?
777. What is the "Backend for Frontend" (BFF) pattern? Why is it useful in a MERN app with mobile and web clients?
778. What is Protocol Buffers (Protobuf)? How does it compare to JSON for API payloads?
779. What is OpenTelemetry distributed tracing? How would you trace a request from React to Express to MongoDB?
780. What is Storybook? How does it improve component development and documentation in a React project?

### Final Expert-Level Questions

781. Explain how you would architect a globally distributed MERN application with data locality and latency requirements.
782. How would you implement a zero-downtime database migration with millions of documents in MongoDB?
783. Describe your approach to debugging a production memory leak in a Node.js application with minimal downtime.
784. How would you implement end-to-end type safety across the entire MERN stack?
785. Design a MERN-based platform that handles PCI-DSS compliance for payment data.
786. How would you implement a distributed rate limiter for a multi-instance Node.js API using Redis?
787. Explain the CAP theorem trade-offs you'd make when designing MongoDB schema and read/write concerns for a financial MERN app.
788. How would you implement a CQRS + Event Sourcing architecture in a MERN application?
789. Describe how you would introduce machine learning predictions into a MERN app without blocking the event loop.
790. How would you design a multi-region active-active architecture for a MERN application?
791. What is the Hexagonal (Ports and Adapters) architecture? How would you apply it to a MERN backend?
792. How would you implement a GraphQL federation across multiple MERN microservices?
793. Describe how you would perform a full security audit of a MERN application before production launch.
794. How would you implement a data pipeline from MongoDB change streams to a real-time analytics dashboard?
795. Explain how you would build a MERN application that supports offline-first functionality.
796. How would you implement a custom distributed tracing solution without a third-party tool in a MERN stack?
797. Describe your strategy for gradually migrating a MERN monolith to a microservices architecture.
798. How would you implement a multi-tenancy architecture that isolates data at the database level in MongoDB?
799. What is the actor model of concurrency? How would you apply it to a Node.js MERN backend?
800. How would you build a real-time operational transformation (OT) engine for collaborative editing in a MERN app?

---

## Questions 801–1000: Comprehensive Mixed Review

### HTML & Accessibility (801–820)

801. What is the `role` attribute in ARIA? When should you use it over native semantic HTML?
802. What are landmark roles in ARIA? Name six and their corresponding HTML elements.
803. What is the `aria-live` attribute? What values does it accept and when do you use each?
804. How do screen readers interact with React SPAs? What challenges exist and how do you address them?
805. What is focus management in a SPA? How do you handle it on route changes in React?
806. What is `aria-label` vs `aria-labelledby` vs `aria-describedby`?
807. How do you make a custom `<select>` dropdown accessible?
808. What is the `prefers-reduced-motion` media query? How do you implement it in a React app?
809. What is the `prefers-color-scheme` media query? How do you sync it with a React theme system?
810. What accessibility issues are most commonly found in React SPAs during an audit?
811. What is keyboard trap? When is it appropriate (modals) and when is it a bug?
812. How do you implement skip links in a React application?
813. What is the `tabindex="-1"` trick used for in focus management?
814. How does WCAG 2.1 differ from WCAG 2.2?
815. What is color contrast ratio? What minimum ratio does WCAG AA require for normal text?
816. How do you make SVG icons accessible?
817. What is a tree view widget in ARIA? What keyboard interactions does it require?
818. How do you test for accessibility in an automated CI pipeline?
819. What is `axe-core`? How do you integrate it with React Testing Library?
820. What is the accessibility tree? How does it differ from the DOM?

### CSS Advanced Scenarios (821–840)

821. How do you implement a sticky header that changes appearance on scroll using only CSS and minimal JavaScript?
822. What is the `:has()` selector? Write a practical use case for a form with validation feedback.
823. How would you implement a CSS-only dark/light theme without JavaScript?
824. What is the CSS `@scope` rule and how does it affect cascading?
825. Implement a CSS grid layout for a magazine-style editorial with asymmetric columns.
826. What is anchor positioning in CSS? How does it replace complex JavaScript positioning?
827. How do you create a smooth page transition animation in a React/CSS context?
828. Implement a CSS blur-in animation that is GPU-accelerated.
829. What are CSS scroll-driven animations? How do they differ from JavaScript scroll listeners?
830. How do you implement a text gradient in CSS cross-browser?
831. What is the `env()` CSS function? Give a use case on mobile devices.
832. How would you implement a CSS-only tooltip that is fully accessible?
833. What is the CSS `inert` attribute and what styling implications does it have?
834. How do you style a custom file input in CSS without losing accessibility?
835. What is the difference between `em` and `rem` in the context of accessible font scaling?
836. How do you implement a responsive typographic scale in CSS?
837. What is `font-display: swap`? How does it improve perceived performance?
838. Implement a CSS skeleton loading screen for a card component.
839. What is `@starting-style` in CSS? How does it enable enter animations?
840. How do you implement a horizontal scrolling snap carousel in pure CSS?

### JavaScript Runtime & Tooling (841–860)

841. What is a source map? Why is it critical for debugging minified production code?
842. What is tree shaking and how does Webpack or Rollup enable it?
843. What is the difference between Webpack and Vite's dev server architecture?
844. What is HMR (Hot Module Replacement)? How does it work in Vite?
845. What is Babel? What is its role in a modern React project?
846. What is the difference between `@babel/preset-env` and `@babel/preset-react`?
847. What is polyfilling? How do you use `core-js` for targeted browser support?
848. What is a bundle analyzer? How would you use `webpack-bundle-analyzer` to reduce bundle size?
849. What are `sideEffects` in `package.json`? How does it affect tree shaking?
850. What is the difference between `esm`, `cjs`, and `umd` module formats?
851. What is `pnpm`? How does it solve dependency duplication vs `npm` and `yarn`?
852. What is `Yarn Workspaces`? How does it help manage a MERN monorepo?
853. What is semantic release? How do you automate versioning and changelog generation?
854. What is Husky? How do you use it with lint-staged to enforce code quality on commit?
855. What is ESLint? How do you configure a strict ruleset for a MERN project?
856. What is Prettier? How does it complement ESLint?
857. What is Oxlint? How does it compare to ESLint in terms of speed?
858. What is `zx` from Google? How does it simplify shell scripting in Node.js?
859. What is the `--experimental-vm-modules` flag in Node.js and when do you need it in Jest?
860. What is Vitest? How does it differ from Jest and why might you choose it for a Vite project?

### Node.js & Express Deep Scenarios (861–880)

861. You are seeing high CPU usage in your Node.js Express app but no obvious busy loops. How do you diagnose and solve it?
862. Your Node.js server is running out of file descriptors. What causes this and how do you fix it?
863. How would you implement a multi-step background job with progress reporting in Node.js?
864. Implement a circuit breaker pattern in Node.js for calling an external payment API.
865. Your Express app has a route that takes 30 seconds to respond because of a heavy computation. How do you fix this without blocking the event loop?
866. How do you implement request deduplication in an Express API to prevent double payments?
867. Your Node.js app is crashing due to unhandled promise rejections in a library you can't control. How do you handle this?
868. How would you implement server-sent events (SSE) in Express for a live notification feed?
869. Implement a robust retry-with-jitter mechanism for a Mongoose database operation.
870. How do you securely proxy a third-party API through Express to avoid exposing API keys to the client?
871. How would you implement a streaming JSON API in Express that sends data as it arrives from MongoDB?
872. You need to run an Express API across 4 CPU cores with shared session state. How do you architect this?
873. How do you implement partial response (sparse fieldsets) like the JSON:API spec in Express + Mongoose?
874. How would you implement HTTP long polling as a fallback for WebSockets in Express?
875. Your Express app needs to handle 10,000 concurrent file uploads efficiently. What architecture would you use?

### MongoDB Scenario-Based (876–895)

876. Your MongoDB collection has 50 million documents and a query is doing a full collection scan. How do you fix it?
877. You need to add a new required field to a MongoDB collection with 10 million existing documents. How do you do it safely?
878. Your MongoDB replica set primary fails. Walk through what happens automatically and what you need to monitor.
879. You're seeing high write latency in MongoDB Atlas. How do you diagnose the issue?
880. Design a MongoDB schema for a multi-step checkout process that must handle concurrent modifications safely.
881. How would you implement an efficient leaderboard with rank calculation in MongoDB?
882. Your aggregation pipeline runs in 30 seconds. How do you optimize it?
883. How would you implement cascading deletes in MongoDB + Mongoose?
884. You need to migrate data from a relational schema to MongoDB. How do you approach the denormalization?
885. How would you implement multi-language content storage in MongoDB (e.g., English, French, Hindi)?

### Behavioral & Soft Skills for MERN Developers (886–920)

886. Tell me about a time you had to debug a complex issue in a MERN application. What was your approach?
887. How do you approach code reviews? What do you look for and what feedback style do you use?
888. Describe a time you disagreed with a technical decision. How did you handle it?
889. How do you stay current with the rapidly evolving MERN ecosystem?
890. Describe a project where you improved application performance significantly. What did you do?
891. How do you handle technical debt in a production MERN application?
892. Describe how you onboard a new developer to a complex MERN codebase.
893. How do you prioritize tasks when you have multiple urgent bugs and feature requests?
894. Describe a time you introduced a new technology or library to your team. How did you evaluate and pitch it?
895. How do you estimate development time for a complex MERN feature?
896. How do you approach writing documentation for a MERN project?
897. Describe how you would handle a production incident on a MERN app at 2 AM.
898. How do you balance shipping features quickly vs writing clean, maintainable code?
899. How would you mentor a junior MERN developer who is struggling with async JavaScript?
900. How do you measure the success of a feature you built in a MERN application?

### Final Gauntlet: Open-Ended Expert Questions (901–1000)

901. You're given a legacy MERN app with no tests, no TypeScript, and poor performance. How do you modernize it without rewriting from scratch?
902. How would you architect a MERN app that needs to comply with GDPR (right to be forgotten, data portability)?
903. Explain the difference between eventual consistency and strong consistency and when you'd accept each in a MERN app.
904. How would you design a MERN app's deployment strategy to achieve 99.99% uptime?
905. What is a chaos monkey? How would you implement chaos engineering in a MERN stack?
906. How would you implement a MERN app with automatic failover between two MongoDB clusters in different regions?
907. Describe how you would build a plugin marketplace feature into a MERN SaaS application.
908. How would you implement a customer-facing changelog and feature release notification system in MERN?
909. Design a billing and subscription system with Stripe in a MERN app. Handle webhooks, failed payments, and plan changes.
910. How would you implement server-side search with relevance ranking, typo tolerance, and faceted filters in a MERN app?
911. How would you build a headless CMS using the MERN stack?
912. Describe how you'd implement a report generation service (PDF, Excel) in a MERN app without blocking the main Node.js event loop.
913. How would you design the data model for a versioned document editing system (like Notion) in MongoDB?
914. Implement a complete auth system in MERN: registration, login, JWT, refresh tokens, email verification, password reset, and OAuth.
915. How would you implement feature toggles that can be changed at runtime without redeploying a MERN app?
916. Describe how you'd architect a MERN app for a high-traffic event (like a product launch with millions of simultaneous users).
917. How would you implement a distributed caching strategy across multiple Node.js instances using Redis?
918. How would you build a webhook delivery system with retries and delivery guarantees in Node.js + MongoDB?
919. Describe how you would implement a fully automated database seeding and teardown process for a MERN test environment.
920. How would you design a MERN application architecture that can switch between MongoDB and PostgreSQL with minimal code change?
921. What is the strangler vine pattern and how would you apply it to a MERN monolith?
922. How would you implement request coalescing (batching) in an Express API to reduce database load?
923. Explain your approach to designing APIs that will remain backward-compatible over years of development.
924. How would you implement an idempotent payment API in Express + MongoDB to prevent double charges?
925. Design a MERN-based food delivery platform's real-time order tracking system.
926. How would you implement live sports score updates in a MERN application for 500,000 concurrent users?
927. Describe how you would build a MERN developer platform (like Vercel or Netlify) that deploys user code.
928. How would you implement a time-series data storage and querying system in MongoDB?
929. Describe how you would add progressive enhancement to an existing CSR React app.
930. How would you implement a MERN app's API documentation that auto-updates when routes change?
931. How would you design a distributed logging system for a MERN microservices architecture?
932. Describe how you would build a user permission system that supports custom roles and fine-grained resource access in MERN.
933. How would you implement delta sync (only sync changed data) between a React app and a Node.js API?
934. Design the architecture for a real-time multiplayer quiz game using the MERN stack.
935. How would you implement predictive caching in a React + Node.js app based on user behavior?
936. Describe how you would build a MERN app's developer SDK for third-party integrations.
937. How would you implement request signing (like AWS SigV4) for server-to-server communication in Node.js?
938. Design a MERN-based appointment scheduling system that handles timezone differences correctly.
939. How would you build a fraud detection system that runs real-time checks during checkout in a MERN app?
940. Describe how you'd implement a content delivery pipeline (upload → process → distribute) in a MERN app.
941. How would you implement progressive image loading (blur-up technique) in a React app?
942. Describe how you'd build a data export system that handles 10GB CSV exports without crashing a Node.js server.
943. How would you implement a flexible reporting engine that allows end-users to build custom reports in a MERN app?
944. How would you design an API that supports both REST and GraphQL simultaneously in Express?
945. Describe how you'd implement server-driven UI (where the server defines the UI structure) in a MERN app.
946. How would you architect a MERN app to support white-labeling for enterprise customers?
947. How would you implement a request priority queue in Express so that premium users get faster responses?
948. Describe how you'd design a MERN-based SaaS with isolated per-customer MongoDB databases.
949. How would you implement automatic query optimization suggestions in a MongoDB-backed Express API?
950. Design the end-to-end architecture of a MERN-based telemedicine platform considering HIPAA compliance.
951. How would you implement connection draining in a Node.js server during a rolling Kubernetes deployment?
952. Describe how you would build a MERN app that supports collaborative real-time editing with conflict resolution (CRDT).
953. How would you implement adaptive streaming (HLS/DASH) video upload and playback in a MERN app?
954. Design a MERN-based market data platform that ingests 1 million price updates per second.
955. How would you implement a dark launch (shadow traffic) strategy for testing a new Node.js API in production?
956. Describe how you would build a MERN app's CI/CD pipeline from scratch, including testing, security scanning, and deployment.
957. How would you implement a multi-step, resumable file upload with chunking in a MERN app?
958. Describe how you'd implement cross-region data replication with conflict resolution in a MongoDB-based MERN app.
959. How would you design a MERN application that handles seasonal traffic spikes of 100x normal load automatically?
960. What is your philosophy on choosing third-party libraries vs building custom solutions in a MERN project? Give a framework for making this decision.

### Final Reflection Questions (961–1000)

961. What are the biggest limitations of the MERN stack and when would you choose a different stack?
962. How has the MERN stack evolved over the last five years and where do you see it going?
963. What is your experience with React Server Components and how do they change the MERN architecture?
964. How would you approach selecting between Next.js, Remix, and a custom Express + React SSR setup for a new MERN project?
965. What are the trade-offs between using MongoDB Atlas vs self-hosted MongoDB in production?
966. How do you approach API design to maximize developer experience for frontend teams consuming your Express API?
967. What is your process for making architectural decisions on a MERN project with high uncertainty?
968. How do you evaluate when to introduce a cache layer in a MERN app and what to cache?
969. Describe the most complex React component you've ever built and the challenges you faced.
970. What is your approach to managing secrets and credentials across development, staging, and production in a MERN app?
971. How do you measure and improve developer productivity in a MERN team?
972. What is your strategy for backward-compatible API evolution in a production MERN app?
973. How do you approach performance testing and capacity planning for a MERN application?
974. Describe your ideal MERN project setup from scratch (tools, structure, CI/CD, standards).
975. What is the most challenging MongoDB performance issue you've encountered and how did you resolve it?
976. How do you balance innovation (new tech/patterns) with stability in a production MERN codebase?
977. What is your approach to handling breaking changes in npm dependencies in a MERN project?
978. How do you ensure consistency in code style, patterns, and architecture across a large MERN team?
979. Describe how you would pitch moving from REST to GraphQL to a skeptical engineering team.
980. What is your process for reviewing a MERN application's security posture before a major release?
981. How do you approach database query optimization as a MERN developer—what's your process?
982. What's the most interesting MERN side project you've built and what did you learn from it?
983. How do you think about the trade-off between developer experience and end-user performance in a MERN app?
984. If you could redesign the MERN stack from scratch today, what would you change and why?
985. What emerging technology do you think will most disrupt the MERN ecosystem in the next 3 years?
986. How do you handle the situation where a React library you depend on is abandoned?
987. Describe your approach to technical interviewing junior MERN developers.
988. How do you think about the trade-off between over-engineering and under-engineering in MERN architecture?
989. What advice would you give to someone learning the MERN stack from scratch today?
990. What is the hardest debugging session you've ever had in a MERN app? What did you learn?
991. How do you stay motivated and avoid burnout when working on complex, long-running MERN projects?
992. What is your take on "clean code" principles in the context of a rapidly evolving MERN codebase?
993. How do you evaluate whether to use a managed cloud service (like Atlas) or open-source self-hosted tooling for a MERN project?
994. What are the top three mistakes you see junior MERN developers make, and how do you help them improve?
995. How do you approach building a MERN app's initial MVP vs its production-ready version?
996. Describe a time when a MERN technology choice turned out to be wrong. What happened and what did you learn?
997. What do you think is the most underrated feature or technique in the MERN stack that few developers use?
998. How do you think about "good enough" in MERN development — when do you stop optimizing?
999. What is your most creative use of MongoDB's aggregation pipeline that you've seen or implemented?
1000. If you had to teach the entire MERN stack to a complete beginner in one week, what would your curriculum look like?

---

*© 2024 MERN Stack Interview Guide — 1000 Questions covering HTML, CSS, JavaScript, React, Node.js, Express, MongoDB, System Design, Security, Performance, DevOps, and more.*
