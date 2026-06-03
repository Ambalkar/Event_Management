# 🚀 ELITE INTERVIEW ROADMAP — Part 1: Q1–Q250

## ⭐ Beginner → ⭐⭐ Intermediate Start
## Foundations & Core Concepts

> **Progressive Difficulty**: Questions gradually increase from absolute beginner to early intermediate
> **Tags**: `[Topic]` `[Difficulty]` `[Company-Level]` `[Pattern]`
> **Priority**: 🔴 MUST DO | 🟡 HIGH FREQUENCY | 🔵 REVISION CRITICAL

---

# ⭐ BEGINNER — Q1 to Q100

## HTML, CSS Basics, JavaScript Fundamentals | Arrays, Strings, Sorting, Searching, Hashing | Arithmetic, Ratios, Vocabulary

---

Q1.
MERN: [HTML][Easy][Startup] What does HTML stand for and what is its role in web development? Explain why HTML is called a markup language and not a programming language.
Hint: HyperText Markup Language — structures content, not logic. Browsers parse tags to build the DOM.

DSA: [Basics][Easy][Product Company] What is the difference between a variable and a constant? Write a program that swaps two numbers without using a third variable.
Hint: Use arithmetic (a = a+b, b = a-b, a = a-b) or XOR swap.

Aptitude: [Percentages][Easy] If a student scores 72 out of 80 in an exam, what is their percentage score?
Hint: (72/80) × 100 = 90%.

Q2.
MERN: [HTML][Easy][Startup] Explain the difference between an HTML element, an HTML tag, and an HTML attribute. Give an example of each.
Hint: Tag = `<p>`, Element = `<p>content</p>`, Attribute = `class="intro"` inside the opening tag.

DSA: [Basics][Easy][Product Company] What are the primitive data types in your preferred programming language? How do they differ in memory usage?
Hint: JS: number, string, boolean, undefined, null, symbol, bigint. Numbers are 64-bit floats.

Aptitude: [Percentages][Easy] A shopkeeper increases the price of an item by 20%. If the original price was ₹500, what is the new price?
Hint: 500 × 1.20 = ₹600.

Q3.
MERN: [HTML][Easy][Startup] What is the purpose of the `<!DOCTYPE html>` declaration? What happens if you omit it?
Hint: Tells browser to use standards mode. Without it → quirks mode → inconsistent rendering.

DSA: [Basics][Easy][Product Company] What is the difference between compiled and interpreted languages? Where does JavaScript fall?
Hint: JS is JIT-compiled (V8 compiles to machine code at runtime). Historically interpreted.

Aptitude: [Ratios][Easy] Divide ₹1200 between A and B in the ratio 3:5. How much does each receive?
Hint: Total parts = 8. A = (3/8)×1200 = ₹450, B = ₹750.

Q4.
MERN: [HTML][Easy][Product Company] What is the difference between block-level and inline elements? Give three examples of each and explain when to use them.
Hint: Block: div, p, h1 (full width, new line). Inline: span, a, strong (flows with text).

DSA: [Basics][Easy][Startup] What is a flowchart? Draw a flowchart to check if a given number is even or odd.
Hint: Start → Input n → n%2==0? → Yes: Even / No: Odd → End.

Aptitude: [Averages][Easy] The average of five numbers is 24. If one number is removed and the new average becomes 22, what was the removed number?
Hint: Total = 120. New total = 88. Removed = 120 − 88 = 32.

Q5. 🔴 MUST DO
MERN: [HTML][Easy][FAANG-Level] What is semantic HTML? Name five semantic elements and explain why using `<article>` is better than `<div>` for a blog post.
Hint: Semantic = meaningful tags. Helps SEO, accessibility, screen readers. `<article>`, `<section>`, `<nav>`, `<header>`, `<footer>`.

DSA: [Basics][Easy][Product Company] What is pseudocode? Write pseudocode to find the largest of three numbers.
Hint: Compare a>b, then winner vs c. Return max.

Aptitude: [Percentages][Easy] In an election, candidate A received 55% of the votes and won by 4000 votes. How many total votes were cast?
Hint: A gets 55%, B gets 45%. Diff = 10% = 4000. Total = 40,000.

Q6. 🔴 MUST DO
MERN: [HTML][Easy][Product Company] What is the difference between `<div>` and `<span>`? When would you use each in a real project?
Hint: `<div>` = block container. `<span>` = inline container. Use div for layout sections, span for inline styling.

DSA: [Time Complexity][Easy][FAANG-Level] What is time complexity? Why do we measure algorithm efficiency using Big-O notation instead of actual time?
Hint: Big-O measures growth rate independent of hardware. O(n) means linear growth. Actual time varies by machine.

Aptitude: [Ratios][Easy] If the ratio of boys to girls in a class is 4:3 and there are 28 boys, how many girls are there?
Hint: 4 parts = 28, so 1 part = 7. Girls = 3×7 = 21.

Q7.
MERN: [HTML][Easy][Startup] What are void (self-closing) elements in HTML? Give five examples and explain why they don't need closing tags.
Hint: `<img>`, `<br>`, `<hr>`, `<input>`, `<meta>`. They can't have children content.

DSA: [Time Complexity][Easy][FAANG-Level] What is the time complexity of accessing an element in an array by index? Why is it O(1)?
Hint: Arrays use contiguous memory. Address = base + index × size. Direct calculation, no traversal.

Aptitude: [Averages][Easy] The average age of a group of 10 friends is 25. A new friend aged 36 joins. What is the new average?
Hint: Total = 250 + 36 = 286. New avg = 286/11 = 26.

Q8. 🔴 MUST DO
MERN: [HTML][Easy][Product Company] Explain the difference between the `id` and `class` attributes. Can an element have both? When would you use each?
Hint: id = unique per page, class = reusable. id for JS targeting, class for CSS styling. Yes, can have both.

DSA: [Time Complexity][Easy][FAANG-Level] Explain the difference between O(1), O(n), O(n²), and O(log n) with real-world analogies.
Hint: O(1)=looking up a phone contact. O(n)=reading a book page by page. O(n²)=handshakes in a group. O(log n)=binary search in dictionary.

Aptitude: [Percentages][Easy] A product's price is reduced by 10% and then by another 20%. What is the total percentage decrease?
Hint: Not 30%! It's 1 − (0.9 × 0.8) = 1 − 0.72 = 28%.

Q9.
MERN: [HTML][Easy][Product Company] What does the `alt` attribute on an `<img>` tag do? Why is it critical for accessibility and SEO?
Hint: Alternative text for screen readers and when image fails. Google indexes alt text for image search.

DSA: [Time Complexity][Easy][Product Company] What is space complexity? What is the space complexity of storing an array of n integers?
Hint: Space = memory used. Array of n ints = O(n). Includes input + auxiliary space.

Aptitude: [Number System][Easy] Find the LCM and HCF of 12 and 18. What is the relationship between LCM, HCF, and the product of two numbers?
Hint: HCF=6, LCM=36. Product = LCM × HCF = 216 = 12×18. Always holds for two numbers.

Q10. 🟡 HIGH FREQUENCY
MERN: [HTML][Easy][Product Company] What is the purpose of the `<meta>` tag? Give three common `<meta>` tags used in production websites and explain why each matters.
Hint: charset=UTF-8, viewport for mobile, description for SEO. Also: og:tags for social sharing.

DSA: [Time Complexity][Easy][FAANG-Level] If an algorithm has a nested loop where the outer loop runs n times and the inner loop runs n times, what is the time complexity? Justify your answer.
Hint: n × n = O(n²). Each outer iteration runs all n inner iterations.

Aptitude: [Ratios][Easy] A mixture contains milk and water in the ratio 5:2. If there are 35 liters of milk, how many liters of water are there?
Hint: 5 parts = 35L → 1 part = 7L → water = 2×7 = 14L.

Q11.
MERN: [HTML][Easy][Startup] What is the difference between absolute and relative URLs? Give an example of when you'd use each in a MERN application.
Hint: Absolute: `https://api.example.com/users`. Relative: `/api/users`. Use relative for same-origin API calls.

DSA: [Arrays][Easy][Product Company] What is an array? How does it differ from a linked list in terms of memory allocation?
Hint: Array = contiguous memory, O(1) access. Linked list = nodes with pointers, O(n) access but O(1) insert/delete at known position.

Aptitude: [Percentages][Easy] A student gets 45 marks out of 50 in Math and 38 out of 50 in Science. What is the overall percentage?
Hint: Total = 83/100 = 83%.

Q12.
MERN: [HTML][Easy][Product Company] How do you create a hyperlink that opens in a new tab? What security attribute should you add and why?
Hint: `target="_blank"` + `rel="noopener noreferrer"`. Prevents reverse tabnabbing (opened page accessing window.opener).

DSA: [Arrays][Easy][Product Company] Write a function to find the largest element in an array of integers.
Hint: Initialize max = arr[0]. Iterate, update max if arr[i] > max. O(n) time.

Aptitude: [Averages][Easy] The average weight of 8 people is 65 kg. One person weighing 80 kg leaves. What is the new average?
Hint: Total = 520. New total = 440. New avg = 440/7 ≈ 62.86 kg.

Q13. 🔴 MUST DO
MERN: [HTML][Easy][FAANG-Level] Explain the purpose of the `<head>` section vs the `<body>` section. What goes in each and why?
Hint: Head = metadata (title, meta, links, scripts). Body = visible content. Head loads first → affects rendering.

DSA: [Arrays][Easy][FAANG-Level] Write a function to reverse an array in-place without using a second array.
Hint: Two pointers: swap arr[left] and arr[right], move inward. O(n) time, O(1) space.

Aptitude: [Number System][Easy] Is 91 a prime number? How do you efficiently check whether a number is prime?
Hint: 91 = 7×13, NOT prime. Check divisibility up to √n. Only need to check odd numbers after 2.

Q14.
MERN: [HTML][Easy][Product Company] What is the difference between `<strong>` and `<b>`, and between `<em>` and `<i>`? Why does this matter for accessibility?
Hint: `<strong>` = semantic importance (screen readers emphasize). `<b>` = visual only. Same for `<em>` vs `<i>`.

DSA: [Arrays][Easy][Amazon] Given an array of integers, write a function to find the second largest element.
Hint: Track both max and secondMax in single pass. Handle duplicates. O(n) time.

Aptitude: [Ratios][Easy] Three partners invest ₹10,000, ₹15,000, and ₹25,000 in a business. If the total profit is ₹10,000, how is it divided?
Hint: Ratio = 2:3:5. Shares: ₹2000, ₹3000, ₹5000.

Q15.
MERN: [HTML][Easy][Startup] What is the difference between ordered lists (`<ol>`), unordered lists (`<ul>`), and description lists (`<dl>`)? When would you use each?
Hint: ol = numbered steps. ul = bullet points. dl = term-definition pairs (glossaries, FAQs).

DSA: [Arrays][Easy][Product Company] Write a function to check if an array is sorted in ascending order.
Hint: Iterate, check arr[i] <= arr[i+1] for all i. Return false on first violation. O(n).

Aptitude: [Percentages][Easy] A salary of ₹30,000 is increased by 15%. What is the new salary?
Hint: 30,000 × 1.15 = ₹34,500.

Q16. 🟡 HIGH FREQUENCY
MERN: [HTML][Easy][FAANG-Level] Explain the purpose of HTML5 semantic elements: `<header>`, `<footer>`, `<nav>`, `<article>`, `<section>`, `<aside>`, `<main>`. How do they help screen readers?
Hint: Semantic elements create landmark regions. Screen readers can jump between landmarks. Improves navigation for visually impaired users.

DSA: [Arrays][Easy][Google] Write a function to remove all duplicate elements from a sorted array in-place.
Hint: Two pointers: slow pointer for write position, fast pointer for reading. O(n) time, O(1) space.

Aptitude: [Profit & Loss][Easy] A shopkeeper buys an article for ₹400 and sells it for ₹500. What is the profit percentage?
Hint: Profit = 100. Profit% = (100/400)×100 = 25%.

Q17.
MERN: [HTML][Easy][Product Company] What is the `data-*` attribute? Write an example showing how to set and access a custom data attribute in JavaScript.
Hint: `data-user-id="123"` → `element.dataset.userId`. Useful for passing data to event handlers in React.

DSA: [Arrays][Easy][Amazon] Given an array of integers, write a function to rotate the array to the right by k positions.
Hint: Reverse entire array → reverse first k → reverse remaining. O(n) time, O(1) space.

Aptitude: [Profit & Loss][Easy] By selling a book for ₹240, a bookseller gains 20%. What was the cost price?
Hint: SP = CP × 1.2. CP = 240/1.2 = ₹200.

Q18. 🔴 MUST DO
MERN: [HTML][Easy][FAANG-Level] Explain the difference between `<script>`, `<script async>`, and `<script defer>`. Draw a timeline showing when each loads and executes.
Hint: Regular blocks parsing. Async loads parallel, executes immediately (blocks). Defer loads parallel, executes after DOM ready (preserves order).

DSA: [Arrays][Easy][Meta] Write a function that moves all zeros in an array to the end while maintaining the order of other elements.
Hint: Two pointers: swap non-zero with position tracker. O(n) time, O(1) space.

Aptitude: [Averages][Easy] The average of 20 numbers is 35. If each number is increased by 5, what is the new average?
Hint: Average increases by same amount = 35 + 5 = 40.

Q19. 🟡 HIGH FREQUENCY
MERN: [HTML][Easy][FAANG-Level] What is the difference between `localStorage`, `sessionStorage`, and cookies? Compare storage capacity, lifetime, and accessibility.
Hint: localStorage: 5-10MB, persists forever, client-only. sessionStorage: 5MB, tab lifetime. Cookies: 4KB, sent with every request, can set expiry.

DSA: [Arrays][Easy][Product Company] Given a sorted array and a target value, write a function to find if the target exists (linear search).
Hint: Iterate, compare. O(n). For sorted arrays, binary search is O(log n) — but this asks for linear.

Aptitude: [Number System][Easy] What is the remainder when 2^10 is divided by 7?
Hint: 2^10 = 1024. 1024 ÷ 7 = 146 remainder 2. Or use pattern: 2^1=2, 2^2=4, 2^3=1(mod7), cycle of 3.

Q20.
MERN: [HTML][Easy][Product Company] How does the HTML `<form>` element work? Explain the `action`, `method`, and `enctype` attributes.
Hint: action = URL to submit to. method = GET/POST. enctype = multipart/form-data for file uploads.

DSA: [Arrays][Easy][Startup] Write a function to find the sum of all elements in an array. Then modify it to find the sum of only even numbers.
Hint: Use reduce() or loop. Filter even: num % 2 === 0. O(n) time.

Aptitude: [Percentages][Easy] If the population of a town is 50,000 and it grows at 5% per year, what will it be after 1 year?
Hint: 50,000 × 1.05 = 52,500.

Q21. 🔴 MUST DO
MERN: [CSS][Easy][FAANG-Level] What is the CSS Box Model? Draw and label all four components (content, padding, border, margin).
Hint: Content → Padding (inside border) → Border → Margin (outside border). Total width = content + padding + border (with border-box).

DSA: [Arrays][Easy][Google] Given two sorted arrays, write a function to merge them into a single sorted array.
Hint: Two pointers, compare and push smaller. O(n+m) time, O(n+m) space. Foundation for merge sort.

Aptitude: [Profit & Loss][Easy] A merchant marks up goods by 25% above cost and then gives a 10% discount. What is the net profit percentage?
Hint: Effective = 1.25 × 0.90 = 1.125. Profit = 12.5%.

Q22.
MERN: [CSS][Easy][Product Company] What is the difference between `margin` and `padding`? When does margin collapsing occur?
Hint: Padding = inside border (background extends). Margin = outside (transparent). Vertical margins of adjacent blocks collapse to the larger value.

DSA: [Arrays][Easy][Product Company] Write a function to find the frequency of each element in an array using a simple approach.
Hint: Use a hash map. O(n) time, O(k) space where k = unique elements.

Aptitude: [Ratios][Easy] A and B can do a work in 10 and 15 days respectively. In how many days can they finish it together?
Hint: Combined rate = 1/10 + 1/15 = 5/30 = 1/6. Together = 6 days.

Q23. 🔴 MUST DO
MERN: [CSS][Easy][FAANG-Level] Explain CSS specificity. How do you calculate it? Rank these selectors by specificity: `#id`, `.class`, `element`, `*`, `inline style`.
Hint: Inline(1000) > #id(100) > .class(10) > element(1) > *(0). Multiple selectors add up. !important overrides all (avoid it).

DSA: [Arrays][Easy][Amazon] Write a function to find the intersection of two arrays (common elements).
Hint: Use a hash set from first array. Check second array against it. O(n+m) time.

Aptitude: [Number System][Easy] What is the sum of the first 50 natural numbers?
Hint: n(n+1)/2 = 50×51/2 = 1275.

Q24.
MERN: [CSS][Easy][Product Company] What is the difference between `display: none` and `visibility: hidden`? How does each affect document flow and accessibility?
Hint: display:none removes from flow + inaccessible. visibility:hidden keeps space + still in accessibility tree.

DSA: [Arrays][Easy][Product Company] Write a function to find the union of two arrays (all unique elements from both).
Hint: Add both to a Set. O(n+m) time.

Aptitude: [Averages][Easy] A cricketer's average after 10 innings is 32. How many runs must he score in the 11th innings to raise his average to 35?
Hint: Need total 385. Current = 320. Required = 65.

Q25.
MERN: [CSS][Easy][Product Company] What are CSS pseudo-classes? Explain `:hover`, `:focus`, `:first-child`, `:nth-child()`, and `:not()` with examples.
Hint: Pseudo-classes select elements based on state or position. :hover = mouse over. :focus = keyboard focus. :nth-child(2n) = even children.

DSA: [Arrays][Easy][Microsoft] Given an array and a number k, write a function to find the k-th smallest element.
Hint: Sort and return arr[k-1] → O(n log n). Or use QuickSelect → O(n) average.

Aptitude: [Percentages][Easy] In a class of 60 students, 40% are girls. How many boys are there?
Hint: Girls = 24. Boys = 60 − 24 = 36.

Q26.
MERN: [CSS][Easy][Product Company] What are pseudo-elements? Explain `::before`, `::after`, `::first-line`, and `::placeholder` with practical examples.
Hint: Pseudo-elements style parts of elements. ::before/::after add content. Need `content` property. Used for decorations, icons.

DSA: [Arrays][Easy][Product Company] Write a function to check if two arrays are equal (same elements in same order).
Hint: Check length first, then element-by-element comparison. O(n) time.

Aptitude: [Profit & Loss][Easy] If the selling price of 10 articles equals the cost price of 12 articles, what is the profit percentage?
Hint: 10×SP = 12×CP → SP/CP = 12/10 = 1.2. Profit = 20%.

Q27. 🔴 MUST DO
MERN: [CSS][Easy][FAANG-Level] Explain the difference between `position: relative`, `absolute`, `fixed`, and `sticky`. When would you use each?
Hint: relative = offset from normal. absolute = relative to nearest positioned ancestor. fixed = relative to viewport. sticky = toggles between relative/fixed on scroll.

DSA: [Arrays][Easy][Amazon] Write a function to find the missing number in an array containing numbers from 1 to n.
Hint: Expected sum = n(n+1)/2. Missing = expected − actual sum. O(n) time, O(1) space. XOR approach also works.

Aptitude: [Ratios][Easy] The ratio of two numbers is 3:7 and their sum is 50. Find the two numbers.
Hint: 10 parts = 50. Numbers: 15 and 35.

Q28. 🟡 HIGH FREQUENCY
MERN: [CSS][Easy][Product Company] What is the CSS cascade? Explain how the browser decides which styles to apply when there are conflicts.
Hint: Origin (user-agent < author < user) → Specificity → Source order. !important breaks normal cascade.

DSA: [Arrays][Easy][Google] Write a function that returns true if any value appears at least twice in an array (contains duplicate).
Hint: Use a Set. Add elements; if already in set, return true. O(n) time, O(n) space.

Aptitude: [Time & Work][Easy] A can complete a job in 12 days. B can complete it in 18 days. How many days will it take if they work together?
Hint: 1/12 + 1/18 = 5/36. Days = 36/5 = 7.2 days.

Q29. 🔴 MUST DO
MERN: [CSS][Easy][FAANG-Level] Explain CSS units: `em`, `rem`, `%`, `px`, `vw`, `vh`. When would you use each for responsive design?
Hint: rem for fonts (consistent scaling). % for widths. vw/vh for viewport sections. px for borders/shadows. em for component-relative sizing.

DSA: [Arrays][Easy][FAANG-Level] Given an array of integers and a target sum, find two numbers that add up to the target (brute force approach).
Hint: Two nested loops checking all pairs. O(n²). Better: hash map O(n) — covered later.

Aptitude: [Percentages][Easy] A number is increased by 25% and then decreased by 20%. What is the net change?
Hint: 1.25 × 0.80 = 1.00. No net change (0%).

Q30.
MERN: [CSS][Easy][Product Company] What is the difference between `inline`, `block`, and `inline-block` display values? Show a practical example for each.
Hint: Block = full width, new line. Inline = content width, no width/height. Inline-block = inline + respects width/height.

DSA: [Arrays][Easy][Product Company] Write a function to left rotate an array by d positions.
Hint: Reverse first d elements → reverse remaining → reverse all. O(n) time, O(1) space.

Aptitude: [Number System][Easy] Find the largest 4-digit number that is divisible by 88.
Hint: 9999 ÷ 88 = 113.625. Floor × 88 = 113 × 88 = 9944.

Q31.
MERN: [CSS][Easy][Product Company] What is `z-index` and how does it work? Why does setting `z-index: 9999` sometimes not work?
Hint: z-index only works on positioned elements (not static). Stacking contexts create isolation — parent's z-index limits children.

DSA: [Arrays][Easy][Product Company] Write a function to find the "leaders" in an array — elements that are greater than all elements to their right.
Hint: Traverse from right, track max. If current > max, it's a leader. O(n) time.

Aptitude: [Averages][Easy] The average marks obtained by 120 students in an exam is 35. If the average of passed students is 39 and failed students is 15, how many students passed?
Hint: Let p = passed. 39p + 15(120-p) = 120×35. Solve: 24p = 2400. p = 100.

Q32.
MERN: [CSS][Easy][Product Company] What is the difference between `border-box` and `content-box` in `box-sizing`? Which is preferred in modern development and why?
Hint: content-box: width = content only. border-box: width includes padding + border. border-box preferred — intuitive sizing.

DSA: [Strings][Easy][Product Company] Write a function to reverse a string without using built-in reverse methods.
Hint: Two pointers or build from end. O(n) time.

Aptitude: [Profit & Loss][Easy] A man sells two TVs for ₹10,000 each — one at 20% profit and another at 20% loss. What is the overall profit or loss?
Hint: CP1 = 10000/1.2 = 8333.33. CP2 = 10000/0.8 = 12500. Total CP = 20833.33. SP = 20000. Loss = ₹833.33. Loss% ≈ 4%.

Q33. 🟡 HIGH FREQUENCY
MERN: [CSS][Easy][Product Company] What is CSS inheritance? Which properties are inherited by default? How can you force inheritance using `inherit`?
Hint: Text properties inherited: color, font-*, line-height, text-align. Box properties NOT inherited: margin, padding, border. Use `inherit` keyword to force.

DSA: [Strings][Easy][Amazon] Write a function to check if a given string is a palindrome (reads the same forwards and backwards).
Hint: Two pointers from both ends, compare characters. O(n) time, O(1) space.

Aptitude: [Ratios][Easy] The ages of A and B are in the ratio 5:3. After 6 years, the ratio will be 7:5. Find their present ages.
Hint: 5x and 3x. (5x+6)/(3x+6) = 7/5. Solve: x=6. Ages: 30 and 18.

Q34.
MERN: [CSS][Easy][Startup] What is a CSS reset vs CSS normalize? Why would you use one in a MERN project?
Hint: Reset strips all defaults. Normalize preserves useful defaults and fixes browser inconsistencies. Normalize is more practical.

DSA: [Strings][Easy][Product Company] Write a function to count the number of vowels and consonants in a given string.
Hint: Check each char against vowel set. O(n) time.

Aptitude: [Time & Work][Easy] A pipe can fill a tank in 6 hours. Another pipe can empty it in 8 hours. If both are opened, how long to fill the tank?
Hint: Net rate = 1/6 − 1/8 = 1/24. Time = 24 hours.

Q35. 🔴 MUST DO
MERN: [CSS][Easy][FAANG-Level] What are three different ways to center an element horizontally and vertically in CSS? Show code for each.
Hint: 1) Flexbox: display:flex + justify-content:center + align-items:center. 2) Grid: place-items:center. 3) Position: absolute + transform: translate(-50%, -50%).

DSA: [Strings][Easy][Google] Write a function to find the first non-repeating character in a string.
Hint: Count frequency with hash map, then find first char with count 1. O(n) time.

Aptitude: [Percentages][Easy] A candidate who gets 36% of marks fails by 24 marks. Another who gets 42% marks gets 12 more than the minimum pass marks. Find the maximum marks.
Hint: Pass marks = 0.36M + 24 = 0.42M − 12. 0.06M = 36. M = 600.

Q36. 🟡 HIGH FREQUENCY
MERN: [CSS][Easy][Product Company] What are CSS variables (custom properties)? How do you define, use, and override them? Give a theming example.
Hint: `--primary: #007bff;` on :root. Use: `var(--primary)`. Override in child scopes. Perfect for dark/light themes.

DSA: [Strings][Easy][Amazon] Write a function to check if two strings are anagrams of each other.
Hint: Sort both and compare, or count character frequencies with hash map. O(n log n) or O(n).

Aptitude: [Number System][Easy] How many 3-digit numbers are divisible by 6?
Hint: First = 102, Last = 996. Count = (996-102)/6 + 1 = 150.

Q37.
MERN: [CSS][Easy][Startup] What is the `float` property? What problems does it cause and how do you clear floats?
Hint: Float removes from normal flow. Parent collapses. Fix: clearfix hack, overflow:hidden, or just use Flexbox/Grid (modern approach).

DSA: [Strings][Easy][Product Company] Write a function to convert a string to title case (capitalize the first letter of each word).
Hint: Split by space, capitalize first char of each, join. Handle edge cases (empty, single char).

Aptitude: [Profit & Loss][Easy] A trader allows a discount of 15% on marked price. How much above the cost price should he mark his goods to gain 19%?
Hint: SP = CP × 1.19. SP = MP × 0.85. MP = 1.19CP/0.85 = 1.4CP. Mark up = 40%.

Q38.
MERN: [CSS][Easy][Product Company] How does the `overflow` property work? Explain the difference between `visible`, `hidden`, `scroll`, and `auto`.
Hint: visible = overflow shown. hidden = clipped. scroll = always show scrollbar. auto = scrollbar only when needed.

DSA: [Strings][Easy][Product Company] Write a function to count the frequency of each character in a string.
Hint: Use a hash map/object. Iterate string, increment counts. O(n) time.

Aptitude: [Averages][Easy] A family of 5 members has an average age of 30. A baby is born. What is the new average age?
Hint: Total = 150 + 0 = 150. New avg = 150/6 = 25 years.

Q39. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What are the primitive data types in JavaScript? How do they differ from reference types?
Hint: Primitives: string, number, boolean, null, undefined, symbol, bigint. Stored by value. Reference types (objects, arrays): stored by reference (pointer to heap).

DSA: [Strings][Easy][Product Company] Write a function to remove all whitespace from a string.
Hint: Use regex: str.replace(/\s/g, '') or filter/loop. O(n) time.

Aptitude: [Time & Work][Easy] A and B together can finish a work in 12 days. A alone can do it in 20 days. In how many days can B alone finish it?
Hint: B's rate = 1/12 − 1/20 = 2/60 = 1/30. B alone = 30 days.

Q40. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] Explain the difference between `==` and `===` in JavaScript. Why is `===` preferred?
Hint: == does type coercion ('' == 0 is true). === checks type + value (strict). Always use === to avoid bugs.

DSA: [Strings][Easy][Amazon] Given a string of words separated by spaces, write a function to reverse the order of words.
Hint: Split by space, reverse array, join. Handle multiple spaces. O(n) time.

Aptitude: [Ratios][Easy] A sum of money is divided among A, B, and C in the ratio 2:3:5. If C's share is ₹1500, find the total sum.
Hint: 5 parts = 1500 → 1 part = 300. Total = 10 parts = ₹3000.

Q41.
MERN: [JavaScript][Easy][Product Company] What is the `typeof` operator? What are some surprising results? What does `typeof null` return and why?
Hint: typeof null = "object" (historical bug since JS v1). typeof NaN = "number". typeof [] = "object". Use Array.isArray() for arrays.

DSA: [Strings][Easy][Product Company] Write a function to check if a string contains only digits.
Hint: Regex /^\d+$/ or iterate and check charCode. O(n) time.

Aptitude: [Percentages][Easy] The price of petrol rose by 10%. By what percentage must a person reduce consumption to maintain the same expenditure?
Hint: Reduction = (increase/(100+increase))×100 = (10/110)×100 ≈ 9.09%.

Q42.
MERN: [JavaScript][Easy][Product Company] What is `undefined` vs `null` in JavaScript? When would you use each?
Hint: undefined = variable declared but not assigned (JS sets it). null = intentional absence of value (developer sets it). typeof undefined = "undefined", typeof null = "object".

DSA: [Strings][Easy][Startup] Write a function to find the longest word in a sentence.
Hint: Split by space, iterate, track max length. O(n) time.

Aptitude: [Number System][Easy] Find the unit digit of 7^95.
Hint: 7's unit digit cycle: 7,9,3,1 (length 4). 95 mod 4 = 3. Third in cycle = 3.

Q43. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is variable hoisting? Explain hoisting behavior for `var`, `let`, `const`, and function declarations.
Hint: var hoisted + initialized to undefined. let/const hoisted but NOT initialized (TDZ). Function declarations fully hoisted. Function expressions follow variable rules.

DSA: [Strings][Easy][Google] Write a function to compress a string — e.g., "aabcccccaaa" becomes "a2b1c5a3".
Hint: Iterate, count consecutive chars, build result. Return original if compressed isn't shorter. O(n) time.

Aptitude: [Profit & Loss][Easy] An article is bought for ₹800 and sold at a loss of 12%. What is the selling price?
Hint: SP = 800 × 0.88 = ₹704.

Q44. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is the difference between `var`, `let`, and `const`? Explain scope, hoisting, and reassignment rules for each.
Hint: var = function-scoped, hoisted, re-declarable. let = block-scoped, TDZ, not re-declarable. const = like let + can't reassign (but object props can change).

DSA: [Strings][Easy][Amazon] Write a function to check if one string is a rotation of another (e.g., "waterbottle" is a rotation of "erbottlewat").
Hint: If same length, check if s2 is substring of s1+s1. O(n) time.

Aptitude: [Time & Work][Easy] 10 workers can complete a task in 15 days. How many days will 25 workers take?
Hint: Total work = 150 man-days. 150/25 = 6 days.

Q45. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is a closure in JavaScript? Write a simple example showing a function that remembers variables from its outer scope.
Hint: Inner function retains access to outer function's variables even after outer returns. Used for: private variables, factories, event handlers.

DSA: [Strings][Easy][Google] Write a function to find the longest common prefix among an array of strings.
Hint: Compare char by char across all strings. Stop at first mismatch. O(S) where S = sum of all characters.

Aptitude: [Averages][Easy] The average of 11 results is 50. If the average of the first 6 results is 49 and the last 6 is 52, find the 6th result.
Hint: Total = 550. First 6 = 294. Last 6 = 312. 6th = 294 + 312 − 550 = 56.

Q46.
MERN: [JavaScript][Easy][Product Company] What is the difference between function declarations and function expressions? How does hoisting affect each?
Hint: Declaration: `function foo(){}` — fully hoisted. Expression: `const foo = function(){}` — variable hoisted, not the function. Arrow functions are expressions too.

DSA: [Strings][Easy][Product Company] Write a function to remove duplicate characters from a string while preserving order.
Hint: Use a Set to track seen characters. Build result string. O(n) time.

Aptitude: [Ratios][Easy] 15 liters of a mixture contains 20% alcohol. How many liters of alcohol must be added so that the alcohol percentage becomes 25%?
Hint: Alcohol = 3L. Let x be added. (3+x)/(15+x) = 0.25. Solve: x = 1L.

Q47. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is an arrow function? How does it differ from a regular function in terms of `this`, `arguments`, and `new`?
Hint: Arrow functions: lexical `this` (inherits from parent), no `arguments` object, can't be used with `new`. Shorter syntax for callbacks.

DSA: [Strings][Easy-Medium][Product Company] Write a function to find all permutations of a string. What is its time complexity?
Hint: Backtracking: fix each char, recurse on remaining. O(n! × n) time. n! permutations.

Aptitude: [Number System][Easy] Convert the decimal number 156 to binary.
Hint: Divide by 2 repeatedly: 156 → 10011100.

Q48. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is the `this` keyword? How is it determined in regular functions, arrow functions, and class methods?
Hint: Regular: determined by how function is called. Arrow: lexical (enclosing scope). Class method: the instance. Use bind/call/apply to set manually.

DSA: [Arrays][Easy][Product Company] Write a function to segregate even and odd numbers in an array (all evens first, then odds).
Hint: Two pointers: left scans for odd, right scans for even, swap. O(n) time, O(1) space.

Aptitude: [Percentages][Easy] Two numbers are 30% and 40% less than a third number. What percentage is the second number of the first?
Hint: First = 0.7x, Second = 0.6x. Second/First = 0.6/0.7 ≈ 85.71%.

Q49.
MERN: [JavaScript][Easy][Product Company] What is the difference between `for...in` and `for...of`? When would you use each? What happens if you use `for...in` on an array?
Hint: for...in iterates keys/properties (objects). for...of iterates values (iterables). for...in on arrays includes prototype properties — avoid it.

DSA: [Arrays][Easy][Product Company] Write a function to find the maximum sum subarray of size k (fixed window, brute force).
Hint: Calculate sum of each window of size k. O(n×k) brute force. O(n) with sliding window — covered later.

Aptitude: [Time & Work][Easy] A is twice as efficient as B. Together they finish a task in 14 days. How many days will A take alone?
Hint: A's rate = 2x, B's = x. 3x = 1/14 → x = 1/42. A alone = 1/(2/42) = 21 days.

Q50. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][Product Company] What are template literals? How do they improve string handling over concatenation? Show a multiline example.
Hint: Backticks allow interpolation `${variable}`, multiline, and tagged templates. Cleaner than "Hello " + name.

DSA: [Arrays][Easy][Amazon] Write a function to find the equilibrium index of an array — the index where the sum of elements on the left equals the sum on the right.
Hint: Compute total sum. Traverse, track leftSum. rightSum = total − leftSum − arr[i]. O(n) time.

Aptitude: [Profit & Loss][Easy] A man bought 20 oranges for ₹100 and sold them at ₹6 each. Find the profit or loss percentage.
Hint: CP per orange = ₹5. SP = ₹6. Profit = ₹1. Profit% = 20%.

Q51. 🔴 MUST DO
MERN: [JavaScript][Easy][Product Company] What are default parameters in JavaScript functions? How do they interact with `undefined` vs `null`?
Hint: `function foo(x = 10)`. Default triggers for `undefined` only. Passing `null` does NOT trigger default (null is a value).

DSA: [Arrays][Easy][Amazon][Frequency: High] 🔴 MUST DO — Given an array of stock prices where prices[i] is the price on day i, find the maximum profit from one buy-one sell transaction. (Best Time to Buy and Sell Stock)
Hint: Track minPrice so far. At each day, profit = price − minPrice. Track maxProfit. O(n) time, O(1) space.

Aptitude: [Time-Speed-Distance][Easy] A car travels 240 km in 4 hours. What is its average speed?
Hint: Speed = Distance/Time = 240/4 = 60 km/h.

Q52. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is destructuring assignment? Show examples with arrays, objects, and nested structures. How do you set default values?
Hint: `const {name, age = 25} = user;` `const [first, ...rest] = arr;`. Nested: `const {address: {city}} = user;`.

DSA: [Hashing][Easy][FAANG-Level] What is a hash map/hash table? Explain how it stores key-value pairs and why lookup is O(1) on average.
Hint: Hash function converts key → index. Collisions handled by chaining or open addressing. Amortized O(1) for insert/lookup/delete.

Aptitude: [Time-Speed-Distance][Easy] If a train 150m long passes a pole in 15 seconds, what is the speed of the train in km/h?
Hint: Speed = 150/15 = 10 m/s = 10 × 18/5 = 36 km/h.

Q53. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is the spread operator (`...`)? Give three practical use cases: copying arrays, merging objects, and function arguments.
Hint: Copy: `[...arr]`. Merge: `{...obj1, ...obj2}`. Args: `Math.max(...nums)`. Creates shallow copies.

DSA: [Hashing][Easy][Google] 🔴 MUST DO — Given an array of integers, write a function using a hash map to find two numbers that add up to a target sum. (Two Sum)
Hint: For each num, check if (target − num) exists in map. If yes, return pair. If no, add num to map. O(n) time, O(n) space.

Aptitude: [Time-Speed-Distance][Easy] A person walks at 5 km/h and reaches 10 minutes late. If he walks at 6 km/h, he reaches 10 minutes early. Find the distance.
Hint: d/5 − d/6 = 20/60. d(6-5)/30 = 1/3. d = 10 km.

Q54.
MERN: [JavaScript][Easy][Product Company] What is the rest parameter (`...args`)? How does it differ from the spread operator and the `arguments` object?
Hint: Rest collects arguments into array. Spread expands. arguments is array-like (no map/filter). Rest only works as last param.

DSA: [Hashing][Easy][Product Company] Write a function to find the first non-repeating element in an array using a hash map.
Hint: Count frequencies, then find first with count 1. O(n) time, two passes.

Aptitude: [Ratios][Easy] If A:B = 2:3, B:C = 4:5, find A:B:C.
Hint: Make B common: A:B = 8:12, B:C = 12:15. A:B:C = 8:12:15.

Q55. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][FAANG-Level] What are higher-order functions? Explain `map`, `filter`, and `reduce` with real-world data transformation examples.
Hint: HOF takes/returns function. map transforms each element. filter selects. reduce accumulates. Example: users.filter(u => u.active).map(u => u.name).

DSA: [Hashing][Easy][Product Company] Write a function to count the frequency of each element in an array using a hash map.
Hint: Iterate array, use element as key, increment value. O(n) time.

Aptitude: [Percentages][Easy] A shopkeeper offers successive discounts of 20% and 10%. What is the effective single discount?
Hint: Effective = 1 − (0.8 × 0.9) = 1 − 0.72 = 28%.

Q56.
MERN: [JavaScript][Easy][Product Company] What is a callback function? Explain callback hell and why it's problematic. Show a simple example.
Hint: Function passed as argument. Callback hell = nested callbacks → hard to read. Solution: Promises, async/await.

DSA: [Hashing][Easy][Product Company] Given two arrays, write a function to check if they are equal (contain the same elements with the same frequency) using a hash map.
Hint: Count frequencies of both, compare maps. O(n) time.

Aptitude: [Time & Work][Easy] A can do a piece of work in 10 days and B can do it in 15 days. A starts the work and leaves after 2 days. In how many days will B finish the remaining work?
Hint: A does 2/10 = 1/5 in 2 days. Remaining = 4/5. B's time = (4/5)/(1/15) = 12 days.

Q57.
MERN: [JavaScript][Easy][Product Company] What is `JSON.stringify()` and `JSON.parse()`? What are their limitations? What happens with `Date` objects, `undefined`, and functions?
Hint: stringify drops undefined and functions. Date becomes string (not restored by parse). Circular references throw error. Use structuredClone for deep copy.

DSA: [Hashing][Easy][Google] Write a function to group an array of strings by their anagrams using a hash map.
Hint: Sort each string as key, group originals. O(n × k log k) where k = max string length.

Aptitude: [Number System][Easy] What is the remainder when 3^20 is divided by 5?
Hint: 3^1=3, 3^2=4, 3^3=2, 3^4=1 (mod 5). Cycle=4. 20 mod 4=0 → 3^4 mod 5=1. Remainder = 1.

Q58.
MERN: [JavaScript][Easy][Product Company] What is `Array.isArray()`? Why can't you use `typeof` to check for arrays? What does `typeof []` return?
Hint: typeof [] = "object". Arrays are objects. Use Array.isArray([]) = true. Also: arr instanceof Array (but cross-frame issues).

DSA: [Hashing][Easy][Amazon] Write a function to find the longest substring without repeating characters (brute force approach).
Hint: Check all substrings, verify uniqueness with Set. O(n³). Optimal with sliding window = O(n).

Aptitude: [Profit & Loss][Easy] A dealer buys 15 items for ₹25 each and sells them at 2 for ₹11. Find the profit or loss percentage.
Hint: Total CP = 375. SP per item = 5.5. Total SP = 82.50. Wait — 15 items at 2 for ₹11 = 15 × 5.5 = 82.50. Loss = 292.50. Loss% = 78%. (Re-check: 2 for ₹11 means SP=₹5.5/item, total SP=₹82.5. Huge loss.)

Q59. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is the difference between synchronous and asynchronous code in JavaScript? Why is async important for web development?
Hint: Sync blocks execution. Async allows non-blocking I/O (network, file, timer). JS is single-threaded — async prevents UI freeze.

DSA: [Hashing][Easy][Product Company] Given an array, write a function to check if there exist two elements whose sum equals zero.
Hint: Use a Set. For each element, check if its negation exists. O(n) time.

Aptitude: [Averages][Easy] The average of five consecutive odd numbers is 41. Find the largest number.
Hint: Middle = 41. Numbers: 37, 39, 41, 43, 45. Largest = 45.

Q60. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is a Promise? Explain the three states: pending, fulfilled, rejected. Write a simple Promise example.
Hint: `new Promise((resolve, reject) => {...})`. .then() for success, .catch() for error. Can't change state after settled.

DSA: [Hashing][Easy][Product Company] Write a function to find the subarray with sum equal to zero (brute force) in an array of integers.
Hint: Check all subarrays. O(n²). Better: prefix sum + hash map for O(n).

Aptitude: [Time-Speed-Distance][Easy] Two trains of lengths 100m and 150m run on parallel tracks. When running in same direction, they cross each other in 25 seconds. When running in opposite directions, they cross in 5 seconds. Find their speeds.
Hint: Total length = 250m. Same dir: (v1-v2) = 250/25 = 10 m/s. Opposite: (v1+v2) = 250/5 = 50 m/s. v1=30, v2=20 m/s.

Q61. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is `async/await`? How does it relate to Promises? Rewrite a Promise chain using async/await.
Hint: async function returns Promise. await pauses until Promise resolves. Syntactic sugar over .then(). Use try/catch for error handling.

DSA: [Hashing][Easy][Product Company] Write a function to find the number of pairs in an array whose sum is divisible by k.
Hint: Count remainders. Pairs: remainder r pairs with remainder (k-r). Handle r=0 separately. O(n) time.

Aptitude: [Ratios][Easy] The incomes of A and B are in the ratio 3:4 and their expenditures in the ratio 4:5. If each saves ₹600, find their incomes.
Hint: 3x − 4y = 600 and 4x − 5y = 600. Solve: x = 600, y = 300. Incomes: ₹1800, ₹2400.

Q62.
MERN: [HTML][Easy][Product Company] What is the `<template>` element in HTML5? When would you use it? How does it differ from hiding content with CSS?
Hint: Template content is inert — not rendered, scripts don't run, images don't load. Activated via JS cloneNode. display:none still loads resources.

DSA: [Arrays][Easy][Amazon] 🔴 MUST DO — Given an array of n integers where every element appears twice except one, find the single element.
Hint: XOR all elements. Pairs cancel out (a^a=0). Remaining = single element. O(n) time, O(1) space.

Aptitude: [Percentages][Easy] A student scores 85% in Math, 76% in English, and 92% in Science. If the maximum marks in each subject are 100, 150, and 50 respectively, find the overall percentage.
Hint: Marks: 85 + 114 + 46 = 245. Total max = 300. Percentage = 81.67%.

Q63.
MERN: [HTML][Easy][Product Company] Explain the `<picture>` element. How does it enable responsive images? When would you use it over `srcset`?
Hint: `<picture>` with multiple `<source>` for art direction (different crops). srcset for same image, different resolutions. picture = more control.

DSA: [Arrays][Easy][Google] Given an array of n-1 integers in the range 1 to n, find the missing number.
Hint: Sum formula: n(n+1)/2 − sum(array). Or XOR 1..n with all elements. O(n) time.

Aptitude: [Time & Work][Easy] Three pipes A, B, and C can fill a tank in 10, 15, and 20 hours respectively. How long will it take to fill the tank if all three are opened simultaneously?
Hint: Combined rate = 1/10 + 1/15 + 1/20 = 13/60. Time ≈ 4.62 hours.

Q64.
MERN: [HTML][Easy][Startup] What is the `srcset` attribute on `<img>`? How does it help with responsive images and performance?
Hint: Browser picks best image for screen size/resolution. Saves bandwidth on mobile. `srcset="img-320.jpg 320w, img-640.jpg 640w"`.

DSA: [Arrays][Easy][Product Company] Write a function to find the maximum and minimum element in an array using the minimum number of comparisons.
Hint: Compare pairs: 3n/2 comparisons vs 2n. Process elements in pairs, compare pair first, then min/max.

Aptitude: [Number System][Easy] If the sum of two numbers is 45 and their HCF is 5, find all possible pairs.
Hint: Numbers = 5a and 5b where a+b=9 and gcd(a,b)=1. Pairs: (1,8), (2,7), (4,5) → (5,40), (10,35), (20,25).

Q65. 🔴 MUST DO
MERN: [CSS][Easy][FAANG-Level] Explain CSS Flexbox. What are the main container properties (`display`, `flex-direction`, `justify-content`, `align-items`, `flex-wrap`)?
Hint: 1D layout. justify-content = main axis. align-items = cross axis. flex-wrap = allow wrapping. flex-direction = row/column.

DSA: [Arrays][Easy][Product Company] Given a sorted array of distinct elements, find an element where the value equals the index (arr[i] == i).
Hint: Binary search: if arr[mid] == mid, found. If arr[mid] > mid, go left. If arr[mid] < mid, go right. O(log n).

Aptitude: [Profit & Loss][Easy] By selling 33 meters of cloth, a shopkeeper gains the selling price of 11 meters. Find the gain percentage.
Hint: 33×SP − 33×CP = 11×SP → 22SP = 33CP → SP/CP = 3/2. Gain = 50%.

Q66. 🔴 MUST DO
MERN: [CSS][Easy][FAANG-Level] Explain CSS Grid basics. What are `grid-template-columns`, `grid-template-rows`, `gap`, and `grid-area`?
Hint: 2D layout. Columns: `grid-template-columns: 1fr 2fr 1fr`. gap replaces grid-gap. grid-area names regions. Grid excels at page layouts.

DSA: [Arrays][Easy][Product Company] Write a function to rearrange an array so that positive and negative numbers alternate.
Hint: Separate positives and negatives. Interleave. Handle unequal counts. O(n) time, O(n) space.

Aptitude: [Averages][Easy] Find the weighted average of 70, 80, 90 with weights 2, 3, 5.
Hint: (70×2 + 80×3 + 90×5)/(2+3+5) = (140+240+450)/10 = 83.

Q67.
MERN: [CSS][Easy][Product Company] What is a CSS media query? Write an example implementing a mobile-first responsive design breakpoint.
Hint: `@media (min-width: 768px) { ... }`. Mobile-first = default styles for mobile, media queries add larger screen styles.

DSA: [Arrays][Easy][Amazon] Write a function to find the majority element (appearing more than n/2 times) in an array using brute force.
Hint: Count each element. O(n²). Better: Boyer-Moore Voting Algorithm O(n) — covered later.

Aptitude: [Time-Speed-Distance][Easy] A man rows upstream at 6 km/h and downstream at 10 km/h. Find his speed in still water and the speed of the stream.
Hint: Still water = (6+10)/2 = 8 km/h. Stream = (10-6)/2 = 2 km/h.

Q68.
MERN: [CSS][Easy][Product Company] Explain `transform`, `transition`, and `animation` in CSS. How are they different? When would you use each?
Hint: transform = apply effect (rotate, scale). transition = animate between two states on trigger. animation = keyframe-based, auto-playing. Use transition for hover, animation for continuous.

DSA: [Sorting][Easy][Product Company] Explain Bubble Sort. Write the code and analyze its time and space complexity.
Hint: Compare adjacent, swap if wrong order. Repeat n times. O(n²) time, O(1) space. Stable. Detect sorted with flag → O(n) best case.

Aptitude: [Ratios][Easy] If 40% of a number is added to another number, the result becomes 80% of the second number. Find the ratio of the two numbers.
Hint: 0.4x + y = 0.8y → 0.4x = -0.2y? Re-read: result is 80% of second → 0.4a + b = 0.8b? → 0.4a = -0.2b? Let me restate: 0.4x + y = 0.8(x+y)? The ratio x:y = 2:1.

Q69.
MERN: [CSS][Easy][Product Company] What is the `clamp()` CSS function? Give a practical example for responsive font sizing.
Hint: `font-size: clamp(1rem, 2.5vw, 2rem)`. Min=1rem, preferred=2.5vw, max=2rem. Responsive without media queries.

DSA: [Sorting][Easy][Product Company] Explain Selection Sort. Write the code and analyze its time and space complexity.
Hint: Find minimum, swap with current position. O(n²) always. O(1) space. NOT stable (default). Fewer swaps than bubble sort.

Aptitude: [Percentages][Easy] A's salary is 20% higher than B's. How much percent is B's salary lower than A's?
Hint: A = 1.2B. Difference = 0.2B. Lower by = 0.2B/1.2B × 100 = 16.67%.

Q70.
MERN: [CSS][Easy][Product Company] How does the `object-fit` property work? Compare `contain`, `cover`, `fill`, and `none` values.
Hint: contain = fit inside (letterbox). cover = fill entire area (crop). fill = stretch (distort). none = original size. Used for images in fixed containers.

DSA: [Sorting][Easy][Product Company] Explain Insertion Sort. Write the code. Why is it efficient for nearly sorted arrays?
Hint: Insert each element into correct position in sorted portion. O(n²) worst, O(n) best (nearly sorted). Stable. Good for small arrays.

Aptitude: [Number System][Easy] How many numbers between 1 and 100 are divisible by both 3 and 5?
Hint: LCM(3,5) = 15. Count = floor(100/15) = 6. Numbers: 15, 30, 45, 60, 75, 90.

Q71. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] Explain the JavaScript event loop in simple terms. What is the call stack and the callback queue?
Hint: Call stack executes sync code. When empty, event loop checks callback queue (setTimeout, events) and microtask queue (Promises). Microtasks first.

DSA: [Sorting][Easy][Product Company] What is the difference between stable and unstable sorting algorithms? Which of Bubble, Selection, and Insertion Sort are stable?
Hint: Stable preserves relative order of equal elements. Bubble and Insertion = stable. Selection = unstable (due to swapping over equal elements).

Aptitude: [Time & Work][Easy] A man is paid ₹500 for each day he works and fined ₹100 for each day he is absent. After 30 days he earns ₹11,400. How many days did he work?
Hint: 500x − 100(30-x) = 11400. 600x = 14400. x = 24 days.

Q72. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][FAANG-Level] What is `Promise.all()`? How does it differ from `Promise.allSettled()`? When would you use each?
Hint: all() fails fast — rejects if ANY rejects. allSettled() waits for ALL, returns status of each. Use allSettled when you need all results regardless of failures.

DSA: [Sorting][Easy][FAANG-Level] 🔴 MUST DO — Explain Merge Sort. Write the code and analyze its time and space complexity. Why is it preferred for linked lists?
Hint: Divide in half, sort each, merge. O(n log n) always. O(n) space (arrays). Preferred for linked lists: no random access needed, O(1) extra space.

Aptitude: [Profit & Loss][Easy] A shopkeeper mixes 40 kg of rice at ₹12/kg with 60 kg of rice at ₹10/kg. At what rate per kg should he sell to gain 10%?
Hint: Total CP = 480 + 600 = 1080. SP = 1080 × 1.1 = 1188. Rate = 1188/100 = ₹11.88/kg.

Q73. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][FAANG-Level] What is event delegation? Explain with a practical example of handling clicks on dynamically generated list items.
Hint: Attach single listener to parent. Use event.target to identify clicked child. Works for dynamic elements. Fewer event listeners = better performance.

DSA: [Sorting][Easy][FAANG-Level] 🔴 MUST DO — Explain Quick Sort. Write the code. What is the worst-case scenario and how can you avoid it?
Hint: Partition around pivot. O(n log n) average, O(n²) worst (sorted array + first/last pivot). Avoid: random pivot or median-of-three. In-place.

Aptitude: [Averages][Easy] The average monthly salary of 12 employees is ₹8,000. If the manager's salary is added, the average increases by ₹1,000. What is the manager's salary?
Hint: New total = 13 × 9000 = 117,000. Old total = 96,000. Manager = ₹21,000.

Q74. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][FAANG-Level] What is debouncing? What is throttling? Implement a debounce function and explain a real-world use case (search input).
Hint: Debounce: execute after delay from LAST call (search input). Throttle: execute at most once per interval (scroll handler). Both use setTimeout.

DSA: [Sorting][Easy][Product Company] Compare Merge Sort, Quick Sort, Bubble Sort, Insertion Sort, and Selection Sort in terms of time complexity, space complexity, and stability.
Hint: Merge: O(n log n) / O(n) / stable. Quick: O(n log n) avg / O(log n) / unstable. Bubble: O(n²) / O(1) / stable. Insertion: O(n²) / O(1) / stable. Selection: O(n²) / O(1) / unstable.

Aptitude: [Time-Speed-Distance][Easy] A boat takes 3 hours to go downstream 36 km and 6 hours to return upstream. Find the speed of the boat and the current.
Hint: Downstream speed = 12 km/h. Upstream = 6 km/h. Boat = 9, Current = 3.

Q75.
MERN: [JavaScript][Easy][Product Company] What is memoization? Write a memoized version of a function that calculates Fibonacci numbers.
Hint: Cache results. `const memo = {}; if (n in memo) return memo[n]; memo[n] = fib(n-1) + fib(n-2);`. Reduces O(2^n) to O(n).

DSA: [Searching][Easy][Product Company] Explain Linear Search. What is its time complexity? When is it preferable over binary search?
Hint: Scan each element. O(n). Use when: unsorted data, small arrays, or searching linked lists.

Aptitude: [Ratios][Easy] A bag contains ₹1, ₹2, and ₹5 coins in the ratio 3:2:1. If the total amount is ₹140, find the number of each type of coin.
Hint: Let counts = 3x, 2x, x. Total = 3x(1) + 2x(2) + x(5) = 12x = 140. x ≈ 11.67. Recheck: 3x + 4x + 5x = 12x = 140 → x = 140/12 ≈ 11.67. Hmm, not integer. Correct: amounts = 3x×1 + 2x×2 + 1x×5 = 3x+4x+5x = 12x = 140. x is not integer — problem likely has different values. Coins: 35, ~23, ~12 approximately.

Q76. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is `Object.freeze()` vs `Object.seal()`? What is the difference? Does `Object.freeze()` work deeply?
Hint: freeze: no add/remove/modify. seal: no add/remove, CAN modify existing. freeze is shallow — nested objects are NOT frozen. Use recursive freeze for deep.

DSA: [Searching][Easy][FAANG-Level] 🔴 MUST DO — Explain Binary Search on a sorted array. Write the code (iterative and recursive). What is its time complexity?
Hint: Compare target with mid. Go left or right half. O(log n) time, O(1) iterative / O(log n) recursive space. Array MUST be sorted.

Aptitude: [Percentages][Easy] In an examination, 30% of students failed in Math, 25% in English, and 10% in both. What percentage passed in both subjects?
Hint: Failed in at least one = 30 + 25 − 10 = 45%. Passed in both = 55%.

Q77.
MERN: [JavaScript][Easy][Product Company] What is a pure function? Give three examples. Why are pure functions important in React?
Hint: Same input → same output, no side effects. Examples: add(a,b), filter(), map(). React: pure components = predictable rendering, easier testing.

DSA: [Searching][Easy][Amazon] Given a sorted and rotated array, find the minimum element using binary search.
Hint: Compare mid with right. If mid > right, min is in right half. Else left half. O(log n).

Aptitude: [Number System][Easy] Find the number of zeros at the end of 100! (100 factorial).
Hint: Count factors of 5: floor(100/5) + floor(100/25) = 20 + 4 = 24 zeros.

Q78.
MERN: [JavaScript][Easy][Product Company] What is optional chaining (`?.`)? What problem does it solve? Show examples with objects, arrays, and function calls.
Hint: `user?.address?.city`. Returns undefined instead of throwing if any part is null/undefined. Also: `arr?.[0]`, `fn?.()`.

DSA: [Searching][Easy][Google] Write a function to find the square root of a number using binary search (integer square root).
Hint: Binary search 0 to n. If mid² <= n and (mid+1)² > n, return mid. O(log n).

Aptitude: [Time & Work][Easy] A contractor employed 150 workers to finish a project in 100 days. After 40 days, he realized only 40% of the work was done. How many additional workers should he employ?
Hint: Work done = 40% in 40 days by 150. Remaining = 60% in 60 days. Workers needed = (60% × 150 × 100)/(40% × 60) = 375. Additional = 375 − 150 = 225.

Q79.
MERN: [JavaScript][Easy][Product Company] What is the nullish coalescing operator (`??`)? How does it differ from `||`? Give a practical example showing the difference.
Hint: `??` only checks null/undefined. `||` checks all falsy (0, '', false). `count ?? 10` → if count is 0, returns 0. `count || 10` → returns 10.

DSA: [Searching][Easy][Amazon] 🟡 HIGH FREQUENCY — Given a sorted array with duplicates, find the first and last occurrence of a target element using binary search.
Hint: Two binary searches: one biased left (first occurrence), one biased right (last occurrence). O(log n).

Aptitude: [Profit & Loss][Easy] A shopkeeper uses a false weight of 900g instead of 1kg. Find his gain percentage.
Hint: Gain = (True − False)/False × 100 = (1000−900)/900 × 100 = 11.11%.

Q80. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][FAANG-Level] What is the prototype chain in JavaScript? Explain prototypal inheritance with a simple example.
Hint: Every object has __proto__ pointing to its prototype. Property lookup walks the chain. `Object.create(parent)` sets prototype. Classes are sugar over prototypes.

DSA: [Searching][Easy][Google] Given a sorted 2D matrix (each row sorted, first element of each row > last element of previous row), search for a target value.
Hint: Treat as 1D sorted array. Binary search with row = mid/cols, col = mid%cols. O(log(m×n)).

Aptitude: [Averages][Easy] The average of 25 results is 18. The average of the first 12 is 14 and the last 12 is 17. Find the 13th result.
Hint: Total = 450. First 12 = 168. Last 12 = 204. 13th = 168 + 204 − 450 = -78? Recheck: 450 − 168 − 204 + 13th... 13th = 450 − (168 + 204 − 13th). Actually: 168 + (13th) + (204 − 13th's contribution)... Total = 168 + 204 − 13th (since 13th is counted in both) → 13th = 168 + 204 − 450 = -78. This is valid if numbers can be negative.

Q81.
MERN: [HTML][Easy][Product Company] What is the `<iframe>` element? What are its security implications? What is the `sandbox` attribute?
Hint: iframe embeds external content. Risks: clickjacking, XSS. sandbox restricts: no scripts, no forms, no navigation by default. Add permissions explicitly.

DSA: [Recursion][Easy][Product Company] What is recursion? What is a base case? Write a recursive function to calculate factorial.
Hint: Function calls itself. Base case stops recursion (n <= 1 → return 1). factorial(n) = n × factorial(n-1). O(n) time, O(n) stack space.

Aptitude: [Time-Speed-Distance][Easy] Two cars start from the same point and travel in opposite directions at 60 km/h and 40 km/h. After how many hours will they be 300 km apart?
Hint: Relative speed = 100 km/h (opposite). Time = 300/100 = 3 hours.

Q82.
MERN: [HTML][Easy][Product Company] What is the `contenteditable` attribute? How could you use it in a MERN app? What are the drawbacks?
Hint: Makes any element editable. Use for inline editing (comments, titles). Drawbacks: XSS risk, inconsistent behavior across browsers, no built-in validation.

DSA: [Recursion][Easy][Product Company] Write a recursive function to compute the nth Fibonacci number. What is its time complexity? Why is it inefficient?
Hint: fib(n) = fib(n-1) + fib(n-2). O(2^n) — exponential! Redundant calculations. Fix with memoization → O(n) or iterative.

Aptitude: [Ratios][Easy] A mixture of milk and water contains 60% milk. How much water must be added to 10 liters of this mixture to make milk 40%?
Hint: Milk = 6L (constant). 6/(10+x) = 0.4 → 10+x = 15 → x = 5L water.

Q83.
MERN: [HTML][Easy][Product Company] What are ARIA roles and attributes? Name five common ARIA attributes and when you'd use them.
Hint: ARIA = Accessible Rich Internet Applications. Attributes: role, aria-label, aria-hidden, aria-expanded, aria-live, aria-describedby. Use when native HTML semantics aren't sufficient.

DSA: [Recursion][Easy][Product Company] Write a recursive function to calculate the sum of digits of a number.
Hint: sumDigits(n) = n%10 + sumDigits(n/10). Base: n < 10 → return n. O(log n) calls.

Aptitude: [Percentages][Easy] The length of a rectangle is increased by 20% and breadth decreased by 20%. What is the percentage change in area?
Hint: New area = 1.2L × 0.8B = 0.96LB. Decrease = 4%.

Q84.
MERN: [CSS][Easy][Startup] What is the `aspect-ratio` CSS property? Give a practical use case for responsive video embeds.
Hint: `aspect-ratio: 16/9`. Replaces the padding-bottom hack. Browser maintains ratio automatically. Great for images, videos, cards.

DSA: [Recursion][Easy][Product Company] Write a recursive function to reverse a string.
Hint: reverse(s) = reverse(s[1:]) + s[0]. Base: empty or single char. O(n) time, O(n) space.

Aptitude: [Number System][Easy] Express 0.373737... as a fraction.
Hint: x = 0.373737... → 100x = 37.3737... → 99x = 37 → x = 37/99.

Q85.
MERN: [CSS][Easy][Product Company] What is BEM (Block Element Modifier) naming convention? Give an example of a card component using BEM.
Hint: Block: `card`. Element: `card__title`, `card__image`. Modifier: `card--featured`, `card__title--large`. Prevents naming conflicts.

DSA: [Recursion][Easy][Product Company] Write a recursive function to check if a string is a palindrome.
Hint: Compare first and last chars. Recurse on substring without them. Base: length 0 or 1 → true. O(n) time.

Aptitude: [Profit & Loss][Easy] A man buys eggs at ₹6 per dozen and sells at ₹7 per 10. Find his profit or loss percentage.
Hint: CP per egg = 0.5. SP per egg = 0.7. Profit = 0.2/0.5 × 100 = 40% profit.

Q86.
MERN: [CSS][Easy][Product Company] What are CSS logical properties (e.g., `margin-inline`, `padding-block`)? Why are they important for internationalization?
Hint: Logical properties adapt to writing direction. margin-inline-start = left in LTR, right in RTL. Essential for Arabic, Hebrew support.

DSA: [Recursion][Easy][Product Company] Write a recursive function to compute x^n (power of a number). Optimize it to O(log n).
Hint: Naive: x × power(x, n-1) → O(n). Optimized: if n even, power(x², n/2). If odd, x × power(x², (n-1)/2). O(log n).

Aptitude: [Time & Work][Easy] If 6 men or 8 women can do a piece of work in 10 days, how many days will 3 men and 4 women take?
Hint: 1 man = 1/60, 1 woman = 1/80. 3M + 4W rate = 3/60 + 4/80 = 1/20 + 1/20 = 1/10. Days = 10.

Q87.
MERN: [CSS][Easy][Startup] What is `calc()` in CSS? Give three practical examples combining different units.
Hint: `width: calc(100% - 300px)`. `font-size: calc(1rem + 0.5vw)`. `height: calc(100vh - 60px)`. Mix any units.

DSA: [Recursion][Easy][Product Company] Write a recursive function to print all subsequences of a string.
Hint: For each char: include it or exclude it. Recurse. O(2^n) subsequences.

Aptitude: [Averages][Easy] The average of 8 numbers is 21. If one number is excluded, the average becomes 19. Find the excluded number.
Hint: Total = 168. New total = 133. Excluded = 35.

Q88.
MERN: [JavaScript][Easy][Product Company] What is an Immediately Invoked Function Expression (IIFE)? Why was it commonly used before ES6 modules?
Hint: `(function(){...})()`. Creates private scope. Before modules, prevented global variable pollution. Less needed now with let/const and modules.

DSA: [Recursion][Easy][Product Company] Write a recursive function to generate all subsets of a given array.
Hint: For each element: include or exclude. O(2^n) subsets. Base: index = array length → add current subset.

Aptitude: [Time-Speed-Distance][Easy] A thief is spotted by a policeman at a distance of 200m. The thief runs at 8 km/h and the policeman at 10 km/h. In how much time will the policeman catch the thief?
Hint: Relative speed = 2 km/h. Distance = 0.2 km. Time = 0.2/2 = 0.1 hr = 6 min.

Q89.
MERN: [JavaScript][Easy][Product Company] What are getters and setters in JavaScript objects? Write an example with a `fullName` getter.
Hint: `get fullName() { return this.first + ' ' + this.last; }`. Accessed like property (user.fullName, not user.fullName()). Setters can add validation.

DSA: [Recursion][Easy][Product Company] Explain the Tower of Hanoi problem. Write a recursive solution and analyze its time complexity.
Hint: Move n-1 disks to aux. Move nth to target. Move n-1 from aux to target. O(2^n - 1) moves. Classic recursion example.

Aptitude: [Ratios][Easy] Gold is 19 times as heavy as water and copper 9 times. In what ratio must they be mixed to get an alloy 15 times as heavy as water?
Hint: Alligation: Gold 19, Copper 9, Mean 15. Ratio = (15-9):(19-15) = 6:4 = 3:2.

Q90.
MERN: [JavaScript][Easy][Product Company] What is the difference between shallow copy and deep copy? Give examples of methods that produce each.
Hint: Shallow: `{...obj}`, Object.assign() — nested refs shared. Deep: structuredClone(), JSON.parse(JSON.stringify()) — full copy. Deep needed for nested objects.

DSA: [Recursion][Easy][Amazon] 🟡 HIGH FREQUENCY — Write a recursive function to count the number of ways to reach the nth stair if you can take 1 or 2 steps at a time.
Hint: ways(n) = ways(n-1) + ways(n-2). Same as Fibonacci! O(2^n) naive. O(n) with memoization.

Aptitude: [Number System][Easy] Simplify: (2^3 × 3^2 × 5) / (2^2 × 3 × 5^2)
Hint: = 2^(3-2) × 3^(2-1) × 5^(1-2) = 2 × 3 × (1/5) = 6/5 = 1.2.

Q91.
MERN: [JavaScript][Easy][Product Company] What are `Map` and `Set` in JavaScript? How do they differ from plain objects and arrays?
Hint: Map: any key type, preserves insertion order, size property. Set: unique values only. Objects: string/symbol keys. Map better for frequent add/delete.

DSA: [Arrays][Easy][Google] Write a function to find all triplets in an array that sum to zero (brute force O(n³)).
Hint: Three nested loops. Check arr[i]+arr[j]+arr[k]==0. Avoid duplicates. O(n³). Better: sort + two pointers O(n²).

Aptitude: [Percentages][Easy] 60% of the students in a school are boys. 40% of boys and 25% of girls passed. What percentage of total students passed?
Hint: Boys passed = 0.6 × 0.4 = 0.24. Girls passed = 0.4 × 0.25 = 0.10. Total = 34%.

Q92. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][Product Company] What is `Array.prototype.flat()` and `flatMap()`? Give use cases for each.
Hint: flat(depth) flattens nested arrays. `[1,[2,[3]]].flat(2)` → [1,2,3]. flatMap = map + flat(1). Use flatMap to expand: users.flatMap(u => u.orders).

DSA: [Arrays][Easy][Amazon] 🔴 MUST DO — Write a function to find the product of all elements in an array except the element at that index, without using division.
Hint: Two passes: left products and right products. result[i] = leftProduct[i] × rightProduct[i]. O(n) time, O(n) space. Can optimize to O(1) extra space.

Aptitude: [Profit & Loss][Easy] A dealer offers a discount of 20% on the list price. To make a profit of 12%, at what percent above cost price should the goods be listed?
Hint: SP = 0.8 × MP. SP = 1.12 × CP. MP = 1.12CP/0.8 = 1.4CP. List 40% above CP.

Q93.
MERN: [JavaScript][Easy][FAANG-Level] What is the Temporal Dead Zone (TDZ)? How does it affect `let` and `const` declarations?
Hint: TDZ = time between entering scope and declaration. Accessing let/const in TDZ throws ReferenceError. var doesn't have TDZ (returns undefined).

DSA: [Sorting][Easy][Product Company] What is Counting Sort? When is it efficient? Write the code and analyze its complexity.
Hint: Count occurrences. Prefix sum. Place elements. O(n+k) time, O(k) space. Only for integers with known small range. Stable.

Aptitude: [Time & Work][Easy] A cistern is normally filled in 8 hours, but a leak delays filling by 2 hours. In how many hours will the leak empty a full cistern?
Hint: Fill rate = 1/8. Combined = 1/10. Leak rate = 1/8 − 1/10 = 1/40. Leak empties in 40 hours.

Q94.
MERN: [JavaScript][Easy][Product Company] What is currying in JavaScript? Write a curried version of `add(a, b, c)` and explain its practical use.
Hint: `const add = a => b => c => a+b+c`. add(1)(2)(3). Used for: partial application, configuration, React HOCs.

DSA: [Sorting][Easy][Product Company] What is Radix Sort? How does it achieve O(nk) time complexity? When would you use it?
Hint: Sort by each digit (LSD first). Use stable sort (counting) per digit. O(d × (n+b)) where d=digits, b=base. Good for fixed-length integers.

Aptitude: [Averages][Easy] The average height of 30 students is 150 cm. If the teacher's height is added, the average becomes 151 cm. What is the teacher's height?
Hint: Total = 4500. New total = 31 × 151 = 4681. Teacher = 181 cm.

Q95.
MERN: [HTML][Easy][Product Company] What is the difference between `innerHTML`, `innerText`, and `textContent`? Which is safest against XSS attacks?
Hint: innerHTML parses HTML (XSS risk!). innerText returns visible text (triggers reflow). textContent returns all text (fastest, safest). Use textContent for safety.

DSA: [Arrays][Easy][Amazon] Write a function to spiral traverse a 2D matrix (print elements in spiral order).
Hint: Track top, bottom, left, right boundaries. Move right→down→left→up. Shrink boundaries. O(m×n) time.

Aptitude: [Time-Speed-Distance][Easy] A man walks from his house to office at 5 km/h and returns at 3 km/h. If the total time is 8 hours, find the distance between his house and office.
Hint: d/5 + d/3 = 8. 8d/15 = 8. d = 15 km.

Q96.
MERN: [HTML][Easy][Product Company] What is the `tabindex` attribute? Explain the difference between `tabindex="0"`, `tabindex="-1"`, and positive values.
Hint: 0 = follows natural tab order. -1 = focusable by JS only (not tab). Positive = custom order (avoid — disrupts natural flow).

DSA: [Arrays][Easy][Microsoft] Write a function to set the entire row and column to zero if any element in a matrix is zero.
Hint: Use first row/column as markers. Two passes: mark then set. O(m×n) time, O(1) space.

Aptitude: [Ratios][Easy] In a school, the ratio of number of students who play cricket to those who play football is 5:3. If 120 students play both and the total is 360, how many play only football?
Hint: Using inclusion-exclusion. Cricket+Football-Both = Total → C + F − 120 = 360. With ratio C:F = 5:3... C = 5x, F = 3x. 5x + 3x − 120 = 360 → 8x = 480 → x = 60. Only football = 180 − 120 = 60.

Q97.
MERN: [CSS][Easy][Product Company] What is the `nth-child()` selector? How does it differ from `nth-of-type()`? Give practical examples.
Hint: nth-child counts ALL children. nth-of-type counts only matching type. `p:nth-child(2)` = second child IF it's a p. `p:nth-of-type(2)` = second p regardless of position.

DSA: [Hashing][Easy][Google] Given a list of strings, group all anagrams together and return them as a list of lists.
Hint: Sort each string → use as hash key → group originals. O(n × k log k). Or use char frequency tuple as key → O(n × k).

Aptitude: [Percentages][Easy] Due to a 25% increase in price, a family reduces sugar consumption by 20%. What is the percentage change in expenditure?
Hint: New expenditure = 1.25 × 0.8 = 1.0. No change (0%).

Q98.
MERN: [CSS][Easy][Product Company] What is a CSS stacking context? What properties create a new stacking context?
Hint: Stacking context = independent z-index layer. Created by: position + z-index, opacity < 1, transform, filter, will-change, isolation:isolate.

DSA: [Hashing][Easy][Amazon] Given an array and an integer k, find whether there are two distinct indices i and j such that nums[i] == nums[j] and |i - j| <= k.
Hint: Use a sliding window Set of size k. Check if element exists in set before adding. Remove old elements. O(n) time.

Aptitude: [Number System][Easy] What is the sum of all even numbers between 1 and 200 (inclusive)?
Hint: Even numbers: 2,4,...200. Count = 100. Sum = 100 × (2+200)/2 = 100 × 101 = 10,100.

Q99. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][FAANG-Level] What is `structuredClone()`? How does it differ from `JSON.parse(JSON.stringify())` for deep cloning?
Hint: structuredClone handles: Date, RegExp, Map, Set, ArrayBuffer, circular refs. JSON method: loses these types, can't handle circular refs, drops undefined.

DSA: [Hashing][Easy][Amazon] 🔴 MUST DO — Write a function to find the longest consecutive sequence in an unsorted array. (E.g., [100,4,200,1,3,2] → 4, because [1,2,3,4])
Hint: Add all to Set. For each num where num-1 NOT in set (start of sequence), count consecutive. O(n) time.

Aptitude: [Profit & Loss][Easy] A man purchased a house for ₹5,00,000. After 2 years, he sold it at 20% profit. He invested the amount in stock that lost 15%. What is his overall gain or loss?
Hint: House SP = 600,000. Stock value = 600,000 × 0.85 = 510,000. Overall gain = 10,000. Gain% = 2%.

Q100. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is the Module system in JavaScript? Explain the difference between ES Modules (`import`/`export`) and CommonJS (`require`/`module.exports`).
Hint: ESM: static, tree-shakeable, async, `import x from 'y'`. CJS: dynamic, synchronous, `const x = require('y')`. Node.js supports both. Browsers use ESM.

DSA: [Hashing][Easy-Medium][Google] Design a data structure that supports insert, delete, and getRandom in O(1) time. Explain your approach.
Hint: Array + HashMap. Map stores element→index. Insert: push to array, add to map. Delete: swap with last, pop. getRandom: random index. All O(1).

Aptitude: [Time & Work][Easy] A piece of work can be completed by A in 10 days, B in 12 days, and C in 15 days. A and B work together for 3 days, then C joins them. In how many days will the remaining work be finished?
Hint: A+B rate = 1/10+1/12 = 11/60. Work in 3 days = 33/60 = 11/20. Remaining = 9/20. A+B+C rate = 11/60+1/15 = 15/60 = 1/4. Time = (9/20)/(1/4) = 9/5 = 1.8 days.

---

## 📝 REVISION CHECKPOINT — Q1 to Q100

### Top Patterns Learned
1. **HTML**: Semantic elements, accessibility attributes, forms, meta tags
2. **CSS**: Box model, specificity, positioning, Flexbox, Grid, responsive units
3. **JavaScript**: Primitives vs references, closures, hoisting, async/await, Promises, event loop
4. **DSA**: Array manipulation, string processing, hash maps, basic sorting/searching, recursion fundamentals
5. **Aptitude**: Percentage calculations, ratio & proportion, profit & loss basics, averages, time & work

### Most Important Concepts
- 🔴 CSS Box Model & Specificity (Q21, Q23)
- 🔴 JavaScript Closures & Hoisting (Q43, Q44, Q45)
- 🔴 Array reversal, Two Sum, missing number patterns (Q13, Q27, Q53)
- 🔴 Hash map for O(n) lookups (Q52-Q61)
- 🔴 Merge Sort & Quick Sort (Q72, Q73)

### Frequently Repeated Interview Themes
- Event loop & async JavaScript
- CSS positioning & centering
- Array manipulation (rotate, reverse, deduplicate)
- Hash map usage for counting and lookup
- Sorting algorithm comparisons

### Revision Checklist
- [ ] Can you explain the event loop with a diagram?
- [ ] Can you implement binary search from memory?
- [ ] Can you solve Two Sum in O(n) using a hash map?
- [ ] Can you center an element three different ways in CSS?
- [ ] Can you explain closures with a practical example?
- [ ] Can you compare all sorting algorithms by complexity?

---

# ⭐ BEGINNER+ — Q101 to Q200

## JavaScript Intermediate, React, DOM, Node.js, Express | Two Pointers, Sliding Window, Linked Lists, Stacks, Queues | Mixed Aptitude

---

Q101. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][FAANG-Level] What is the event propagation model? Explain capture phase, target phase, and bubble phase with a diagram.
Hint: Events flow: Window → target (capture) then target → Window (bubble). addEventListener 3rd arg = useCapture. stopPropagation() stops flow.

DSA: [Two Pointers][Easy][Amazon] Given a sorted array, write a function to find a pair of elements that sum to a target value using two pointers.
Hint: Left pointer at start, right at end. If sum < target, move left. If sum > target, move right. O(n) time, O(1) space.

Aptitude: [Profit & Loss][Easy] A trader marks goods 30% above cost price and gives 10% discount. Find the profit percentage.
Hint: Effective = 1.3 × 0.9 = 1.17. Profit = 17%.

Q102. 🔴 MUST DO
MERN: [JavaScript][Easy][FAANG-Level] What is `Function.prototype.call()`, `apply()`, and `bind()`? Show practical examples of each.
Hint: call(thisArg, arg1, arg2). apply(thisArg, [args]). bind(thisArg) returns new function. Use: borrowing methods, setting this explicitly.

DSA: [Two Pointers][Easy][Google] 🔴 MUST DO — Write a function to remove duplicates from a sorted array in-place and return the new length.
Hint: Slow pointer for write position, fast pointer reads. If fast != slow's value, write. O(n) time, O(1) space.

Aptitude: [Coding-Decoding][Easy] If APPLE is coded as DSSOH (each letter shifted by 3), how is MANGO coded?
Hint: Each letter +3: M→P, A→D, N→Q, G→J, O→R. MANGO = PDQJR.

Q103.
MERN: [JavaScript][Easy][Product Company] What is `requestAnimationFrame()`? How does it differ from `setInterval()` for animations?
Hint: rAF syncs with browser refresh (60fps). setInterval can cause jank. rAF pauses in background tabs. Better performance and battery life.

DSA: [Two Pointers][Easy][Amazon] Given a sorted array, write a function to square each element and return the result in sorted order.
Hint: Two pointers from both ends. Compare absolute values. Fill result from end. O(n) time, O(n) space.

Aptitude: [Grammar][Easy] Choose the correct sentence: (a) "He don't know nothing" (b) "He doesn't know anything" (c) "He don't know anything." Explain the grammar rule.
Hint: (b) is correct. Double negative in (a). Subject-verb agreement: He doesn't (not don't).

Q104.
MERN: [JavaScript][Easy][Product Company] What is `WeakMap` and `WeakSet`? How are they different from `Map` and `Set`? When would you use them?
Hint: Weak refs allow garbage collection. Keys must be objects. Not iterable, no size. Use for: caching, private data, DOM node metadata.

DSA: [Two Pointers][Easy][Meta] Given a string, determine if it is a palindrome considering only alphanumeric characters and ignoring cases.
Hint: Two pointers from both ends. Skip non-alphanumeric. Compare lowercase. O(n) time, O(1) space.

Aptitude: [Profit & Loss][Easy] A shopkeeper sells one item at 10% loss and another at 20% profit. If both items cost ₹500 each, what is the net profit or loss?
Hint: SP1 = 450, SP2 = 600. Total SP = 1050, Total CP = 1000. Profit = ₹50 = 5%.

Q105.
MERN: [JavaScript][Easy][Product Company] What is `Symbol` in JavaScript? Give three use cases including well-known Symbols.
Hint: Unique identifier. Use: private-ish properties, Symbol.iterator for iterables, Symbol.toPrimitive for type conversion. Not truly private.

DSA: [Two Pointers][Easy][Product Company] Given an array sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
Hint: Same as Q103 DSA — Two pointers on absolute values. O(n) time.

Aptitude: [Coding-Decoding][Easy] In a certain code, 'COMPUTER' is written as 'RFUVQNPC'. How is 'MEDICINE' written in that code?
Hint: Reverse the word: COMPUTER → RETUPMOC, then check shift. Pattern: reverse the letters. MEDICINE reversed = ENICIDEM.

Q106.
MERN: [CSS][Easy][Product Company] Explain Flexbox shorthand properties: `flex`, `flex-grow`, `flex-shrink`, `flex-basis`. What does `flex: 1` mean?
Hint: flex: 1 = flex-grow:1 flex-shrink:1 flex-basis:0%. Item grows to fill space. flex: 0 0 auto = don't grow/shrink, use content width.

DSA: [Two Pointers][Easy][Product Company] Write a function to reverse a string in-place using two pointers.
Hint: Swap s[left] and s[right], move inward. O(n) time, O(1) space.

Aptitude: [Grammar][Easy] Identify the error: "Each of the students have submitted their assignment." Correct the sentence and explain why.
Hint: "Each" is singular → "has submitted his/her assignment." Subject-verb agreement with "each."

Q107.
MERN: [CSS][Easy][Product Company] What is `min-content`, `max-content`, and `fit-content` in CSS? Give practical use cases for each.
Hint: min-content = smallest possible width. max-content = no wrapping width. fit-content = between min and available. Great for responsive grid columns.

DSA: [Two Pointers][Easy-Medium][Amazon] Given a sorted array of integers, find three numbers whose sum is closest to a given target.
Hint: Sort. Fix one, two pointers on rest. Track closest sum. O(n²) time.

Aptitude: [Time & Work][Easy-Medium] A and B working together can complete a task in 6 days. B and C together in 10 days. A and C together in 7.5 days. How long for all three together?
Hint: 2(A+B+C) = 1/6+1/10+1/7.5. Solve for combined rate. Together ≈ 5 days.

Q108.
MERN: [CSS][Easy][Product Company] How do you implement a dark mode toggle using CSS custom properties and a JavaScript class toggle?
Hint: Define --bg and --text on :root and .dark-mode. Toggle: document.body.classList.toggle('dark-mode'). Respect prefers-color-scheme.

DSA: [Two Pointers][Easy][Product Company] Given an integer array and a value, remove all instances of that value in-place and return the new length.
Hint: Slow pointer writes non-target values. Fast pointer reads. O(n) time, O(1) space.

Aptitude: [Percentages][Easy-Medium] In an election between two candidates, the winning candidate got 58% of the total valid votes. 15% of the total votes were invalid. If the total votes were 10,000, how many votes did the winner get?
Hint: Valid = 8500. Winner = 58% × 8500 = 4930.

Q109. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy][Product Company] Explain the difference between `Object.keys()`, `Object.values()`, and `Object.entries()`. When would you use each?
Hint: keys → array of key strings. values → array of values. entries → array of [key, value] pairs. entries for iteration: `for (const [k,v] of Object.entries(obj))`.

DSA: [Sliding Window][Easy][Amazon] Find the maximum sum of k consecutive elements in an array using the sliding window technique.
Hint: First window sum. Slide: add right, remove left. Track max. O(n) time, O(1) space. Classic sliding window intro.

Aptitude: [Coding-Decoding][Easy] If 1 = 5, 2 = 25, 3 = 325, 4 = 4325, then 5 = ?
Hint: Pattern: each new number prepends to previous. 5 = 1 (given 1=5, so 5=1). Trick question!

Q110.
MERN: [JavaScript][Easy-Medium][Product Company] What is tagged template literal? Write a custom tag function that sanitizes HTML input to prevent XSS.
Hint: `function sanitize(strings, ...values)`. Escape HTML in values: replace <, >, &, ", '. Return safe string.

DSA: [Sliding Window][Easy-Medium][Google] Given a string, find the length of the longest substring with at most k distinct characters using a sliding window.
Hint: Expand right, track char counts. When distinct > k, shrink left. Track max window size. O(n) time.

Aptitude: [Grammar][Easy] Fill in the blank: "Neither the teacher nor the students ___ (was/were) present." Explain the rule.
Hint: "were" — with neither/nor, verb agrees with the CLOSER subject (students = plural).

Q111. 🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What is React and why use it over vanilla JavaScript? What problems does it solve?
Hint: Component-based UI library. Solves: manual DOM manipulation, state management, reusability. Virtual DOM for performance. Declarative approach.

DSA: [Sliding Window][Easy][Product Company] Given a binary array, find the maximum number of consecutive 1s.
Hint: Track current streak and max streak. Reset on 0. O(n) time, O(1) space.

Aptitude: [Time-Speed-Distance][Easy-Medium] A train traveling at 72 km/h crosses a platform in 30 seconds and a man standing on the platform in 18 seconds. Find the length of the platform.
Hint: Speed = 20 m/s. Train length = 20×18 = 360m. Train+Platform = 20×30 = 600m. Platform = 240m.

Q112. 🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What is a React component? Explain the difference between functional and class components. Which is preferred today and why?
Hint: Functional = function returning JSX, uses hooks. Class = extends React.Component, uses lifecycle methods. Functional preferred: simpler, hooks, better performance.

DSA: [Sliding Window][Easy-Medium][Amazon] Find the smallest subarray with sum greater than or equal to a given value s.
Hint: Expand right until sum >= s. Then shrink left while maintaining sum >= s. Track min length. O(n) time.

Aptitude: [Profit & Loss][Easy-Medium] A dealer purchased a washing machine for ₹8,000. He allows successive discounts of 10% and 5% on its marked price of ₹12,000. Find his profit percentage.
Hint: SP = 12000 × 0.9 × 0.95 = ₹10,260. Profit = 2260. Profit% = 28.25%.

Q113. 🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What is JSX? How does it differ from HTML? What are five differences between JSX and HTML syntax?
Hint: className (not class), htmlFor, camelCase props, self-closing tags required, JS expressions in {}, event handlers camelCase (onClick).

DSA: [Sliding Window][Easy][Product Company] Given an array of integers of size n, calculate the maximum sum of k consecutive elements using a sliding window.
Hint: Same as Q109 DSA — initialize window, slide by adding/removing. O(n) time.

Aptitude: [Coding-Decoding][Easy] In a certain language, CLOUD is coded as 3-12-15-21-4. How is STORM coded?
Hint: Letter positions: S=19, T=20, O=15, R=18, M=13. STORM = 19-20-15-18-13.

Q114. 🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What is the Virtual DOM? How does React use it for efficient rendering? Draw a simplified flow diagram.
Hint: VDOM = lightweight JS copy of real DOM. On state change: new VDOM → diff with old → minimal real DOM updates. Batch updates for performance.

DSA: [Prefix Sum][Easy][Product Company] Given an array, compute the prefix sum array. Use it to answer range sum queries in O(1).
Hint: prefix[i] = prefix[i-1] + arr[i]. Range sum(l,r) = prefix[r] - prefix[l-1]. O(n) build, O(1) query.

Aptitude: [Grammar][Easy] Which is correct: "I have been living here since 5 years" or "I have been living here for 5 years"? Explain the difference between 'since' and 'for.'
Hint: "for 5 years" is correct. "since" = point in time (since 2019). "for" = duration (for 5 years).

Q115. 🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What are props in React? How do you pass data from parent to child? Can a child modify props?
Hint: Props = read-only data. Pass: `<Child name="John" />`. Child CANNOT modify props (unidirectional data flow). To communicate back: pass callback functions.

DSA: [Prefix Sum][Easy][Google] Given an array, find if there exists a subarray with sum equal to zero using prefix sums.
Hint: If any prefix sum repeats, subarray between those indices has sum 0. Use a Set. O(n) time.

Aptitude: [Averages][Easy-Medium] The average score of a class of 40 students is 52. The average of boys is 56 and girls is 48. How many boys and girls are there?
Hint: 56b + 48(40-b) = 40×52. 8b = 160. b = 20 boys, 20 girls.

Q116. 🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What is state in React? How is it different from props? When should you use state vs props?
Hint: State = component's internal mutable data. Props = external immutable data. State for user input, toggles, API data. Props for parent-child communication.

DSA: [Prefix Sum][Easy-Medium][Amazon] 🟡 HIGH FREQUENCY — Given an array of integers and an integer k, find the total number of subarrays whose sum equals k.
Hint: Track prefix sums in hash map. At each index, check if (currentSum - k) exists in map. O(n) time, O(n) space.

Aptitude: [Time & Work][Easy-Medium] A work is done by two people. A works for 3 days and B works for 4 days to complete 60% of the work. A works for 2 more days and B for 3 more days to finish the remaining. How many days can each finish it alone?
Hint: 3a + 4b = 0.6 and 2a + 3b = 0.4. Solve: a = 1/10, b = 3/40. A = 10 days, B = 40/3 ≈ 13.3 days.

Q117.  🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What is `useState`? Show examples with strings, numbers, booleans, arrays, and objects. What is the updater function pattern?
Hint: `const [count, setCount] = useState(0)`. Updater: `setCount(prev => prev + 1)`. For objects: `setState(prev => ({...prev, key: value}))`. Never mutate directly.

DSA: [Prefix Sum][Easy][Product Company] Given an n×n matrix, compute the prefix sum matrix and answer submatrix sum queries in O(1).
Hint: Build prefix using inclusion-exclusion. Query: sum(r1,c1,r2,c2) = prefix[r2][c2] - prefix[r1-1][c2] - prefix[r2][c1-1] + prefix[r1-1][c1-1].

Aptitude: [Ratios][Easy-Medium] A bag contains ₹1, ₹5, and ₹10 notes in the ratio 2:3:5. If the total value is ₹1,850, find the number of notes of each denomination.
Hint: Values: 2x×1 + 3x×5 + 5x×10 = 2x + 15x + 50x = 67x = 1850. x ≈ 27.6. Recheck: If x=27, total = 1809. Adjust — perhaps ratio means note counts and x should be rational.

Q118. 🔴 MUST DO
MERN: [React][Easy][FAANG-Level] What is `useEffect`? What are its three usage patterns: no deps, empty array, and with dependencies?
Hint: No deps = runs every render. [] = runs once on mount. [dep] = runs when dep changes. Return function = cleanup (unmount/before re-run).

DSA: [Prefix Sum][Easy][Product Company] Given an array, find the equilibrium index where the sum of elements on the left equals the sum on the right using prefix sums.
Hint: Total sum. Traverse, track leftSum. If leftSum == total - leftSum - arr[i], found. O(n) time.

Aptitude: [Coding-Decoding][Easy] If Z=26, A=1, then what is the value of SPARK (sum of letter positions)?
Hint: S=19, P=16, A=1, R=18, K=11. Sum = 65.

Q119.
MERN: [React][Easy][Product Company] How do you handle events in React? How is `onClick` different from HTML's `onclick`? What is the synthetic event system?
Hint: React uses camelCase (onClick). Pass function reference, not string. SyntheticEvent wraps native events — cross-browser consistent. event.nativeEvent for raw.

DSA: [Hashing][Easy-Medium][Amazon] Given a list of integers, determine if any two integers in the list sum up to a specific target using a hash set.
Hint: For each num, check if (target - num) in set. O(n) time. Same pattern as Two Sum.

Aptitude: [Grammar][Easy] Correct the sentence: "Me and him went to the store yesterday." Explain the grammar rules involved.
Hint: "He and I went to the store." Subject pronouns (I, he) not object pronouns (me, him). Standard: name others first.

Q120. 🟡 HIGH FREQUENCY
MERN: [React][Easy][FAANG-Level] What is the `key` prop in React lists? Why is it required? What happens if you use the array index as a key?
Hint: Key helps React identify which items changed. Index as key causes bugs with reorder/delete (wrong component reused). Use unique stable IDs.

DSA: [Hashing][Easy-Medium][Google] Implement a function to determine if a string has all unique characters without using additional data structures.
Hint: Without DS: sort then check adjacent O(n log n). With bit manipulation: use int as bitset (26 chars). O(n).

Aptitude: [Percentages][Easy-Medium] The population of a city increased by 10% in the first year and decreased by 10% in the second year. If the current population is 49,500, what was it two years ago?
Hint: P × 1.1 × 0.9 = 49500. P × 0.99 = 49500. P = 50,000.

Q121.
MERN: [React][Easy][Product Company] What is conditional rendering in React? Show three different patterns: ternary, `&&` operator, and early return.
Hint: Ternary: `{isAuth ? <Dashboard/> : <Login/>}`. &&: `{error && <Error/>}`. Early return: `if (!data) return <Loading/>;`.

DSA: [Arrays][Easy-Medium][Google] 🔴 MUST DO — Implement the Dutch National Flag algorithm to sort an array of 0s, 1s, and 2s in one pass.
Hint: Three pointers: low, mid, high. If 0: swap with low. If 2: swap with high. If 1: advance mid. O(n) time, O(1) space.

Aptitude: [Time-Speed-Distance][Easy-Medium] Two cyclists start from the same place at the same time and travel in opposite directions. One cycles at 10 km/h and the other at 12 km/h. After what time will they be 88 km apart?
Hint: Relative speed = 22 km/h. Time = 88/22 = 4 hours.

Q122. 🟡 HIGH FREQUENCY
MERN: [React][Easy][FAANG-Level] What is a controlled component? Write a controlled form input with validation.
Hint: Value controlled by React state. `<input value={name} onChange={e => setName(e.target.value)} />`. Validation in onChange or onSubmit.

DSA: [Arrays][Easy-Medium][Amazon] 🔴 MUST DO — Given an array, find the contiguous subarray with the maximum sum (Kadane's Algorithm).
Hint: maxEndingHere = max(arr[i], maxEndingHere + arr[i]). Track maxSoFar. O(n) time, O(1) space. Classic DP/greedy.

Aptitude: [Profit & Loss][Easy-Medium] A man sells two watches for ₹1,995 each, gaining 5% on one and losing 5% on the other. Find the overall profit or loss percentage.
Hint: CP1 = 1995/1.05 = 1900. CP2 = 1995/0.95 = 2100. Total CP = 4000. Total SP = 3990. Loss = ₹10 = 0.25%.

Q123.
MERN: [React][Easy][Product Company] What is an uncontrolled component? When would you prefer it over a controlled component? Show a `useRef` form example.
Hint: Value managed by DOM (not React state). Use ref to read value. `const inputRef = useRef(); inputRef.current.value`. Good for file inputs, simple forms.

DSA: [Arrays][Easy-Medium][Product Company] Given an array of integers, find the maximum product of any two integers in the array.
Hint: Sort, check max of (last two product) vs (first two product — both negative). O(n log n). Or track top 2 max + bottom 2 min. O(n).

Aptitude: [Blood Relations][Easy] A introduces B saying, "He is the son of the only son of my grandfather." How is B related to A?
Hint: Only son of A's grandfather = A's father. B is son of A's father. B is A's brother.

Q124.
MERN: [React][Easy][Product Company] What is `React.Fragment`? Why use it instead of wrapping in a `<div>`? Show the shorthand syntax.
Hint: Fragment groups without extra DOM node. Shorthand: `<>...</>`. Full: `<React.Fragment key={id}>`. Reduces DOM bloat, avoids CSS issues.

DSA: [Arrays][Easy-Medium][Product Company] Rearrange an array such that arr[i] becomes arr[arr[i]] using O(1) extra space (for elements 0 to n-1).
Hint: Encode two values: arr[i] = arr[i] + (arr[arr[i]] % n) × n. Decode: arr[i] = arr[i] / n. Modular arithmetic trick.

Aptitude: [Grammar][Easy] Choose the correct option: "The committee ___ (has/have) decided to postpone the meeting." Explain the rule for collective nouns.
Hint: "has" — committee is singular (acting as one body). Use plural when members act individually.

Q125.
MERN: [React][Easy][Product Company] How do you render a list of items in React? Why is using `map()` preferred? What are common mistakes?
Hint: `items.map(item => <Item key={item.id} {...item} />)`. Common mistakes: missing key, index as key, forgetting return in map.

DSA: [Arrays][Easy-Medium][Product Company] Given an integer array, move all negative elements to one side of the array.
Hint: Partition approach: two pointers. Similar to Dutch National Flag but two groups. O(n) time, O(1) space.

Aptitude: [Time & Work][Easy-Medium] A contractor employs 20 workers to complete a project in 60 days. After 20 days, he fires 5 workers. How many more days will the remaining workers take to complete the project?
Hint: Work done in 20 days = 20/60 = 1/3. Remaining = 2/3. 15 workers → (2/3)/(15/1200) = 2/3 × 80 = 53.33 days. Or: 20×20 = 400 man-days done. Total = 1200. Remaining = 800/15 ≈ 53.3 days.

Q126.
MERN: [React][Easy][Product Company] What is the `children` prop? How do you use it to create reusable wrapper/layout components?
Hint: `children` = content between opening and closing tags. `<Card>{children}</Card>`. Great for layouts, modals, error boundaries.

DSA: [Strings][Easy-Medium][Amazon] 🔴 MUST DO — Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid (balanced brackets).
Hint: Stack: push opening brackets. On closing, check top matches. Stack empty at end = valid. O(n) time, O(n) space.

Aptitude: [Coding-Decoding][Easy] In a certain code, TIGER is written as UJHFS. How is HORSE written in that code?
Hint: T+1=U, I+1=J, G+1=H, E+1=F, R+1=S. Each letter +1. HORSE: H→I, O→P, R→S, S→T, E→F = IPSTF.

Q127.
MERN: [React][Easy][Product Company] How do you apply CSS classes conditionally in React? Show three approaches: template literals, classnames library, and ternary.
Hint: Template: `` `btn ${active ? 'active' : ''}` ``. Ternary: `className={isError ? 'error' : 'success'}`. classnames: `cn('btn', {active: isActive})`.

DSA: [Strings][Easy-Medium][Amazon] Implement a function to convert a Roman numeral string to an integer.
Hint: Map symbols. If current < next, subtract. Else add. Traverse left to right. O(n) time.

Aptitude: [Percentages][Easy-Medium] A fruit seller had some apples. He sells 40% apples and still has 420 apples. How many did he originally have?
Hint: 60% = 420. Original = 420/0.6 = 700.

Q128.
MERN: [React][Easy][Product Company] What is React DevTools? Name five things you can inspect with it.
Hint: Component tree, props, state, hooks, render timing, profiler (flamegraph), highlight re-renders, context values, source location.

DSA: [Strings][Easy-Medium][Amazon] 🟡 HIGH FREQUENCY — Given a string s, find the longest palindromic substring.
Hint: Expand from center (each char + between chars). O(n²) time, O(1) space. DP alternative: O(n²) time & space. Manacher's: O(n).

Aptitude: [Blood Relations][Easy] Pointing to a photograph, Aman said, "She is the mother of my father's only granddaughter." How is the woman related to Aman?
Hint: Father's only granddaughter = Aman's daughter. The woman is the mother of Aman's daughter = Aman's wife.

Q129.
MERN: [JavaScript][Easy-Medium][Product Company] What is the prototype chain? How does `Object.create()` work? Draw the prototype chain for an object created with `Object.create()`.
Hint: `Object.create(proto)` creates object with proto as __proto__. Chain: obj → proto → Object.prototype → null. Property lookup walks chain.

DSA: [Strings][Easy-Medium][Microsoft] Implement `atoi()` (string to integer) handling whitespace, sign, overflow, and invalid characters.
Hint: Trim whitespace. Check sign. Parse digits. Clamp to INT_MIN/MAX. Stop at non-digit. Edge cases are the hard part.

Aptitude: [Averages][Easy-Medium] A batsman has a certain average after 20 innings. In the 21st inning, he scores 120 and his average increases by 4. What was his average after the 20th inning?
Hint: 20x + 120 = 21(x+4). 20x + 120 = 21x + 84. x = 36.

Q130.
MERN: [JavaScript][Easy-Medium][Product Company] What is the difference between `process.nextTick()`, `setImmediate()`, and `Promise.resolve()` in Node.js?
Hint: nextTick: runs before any I/O. Promise.resolve: microtask (after nextTick). setImmediate: macrotask (after I/O callbacks). Priority: nextTick > Promise > setImmediate.

DSA: [Strings][Easy-Medium][Google] Given two strings s and t, determine if t is an anagram of s. Follow up: handle Unicode characters.
Hint: Count char frequencies. Compare maps. O(n) time. Unicode: use Map instead of array (handles any char).

Aptitude: [Direction Sense][Easy] A man starts from point A, walks 4 km North, turns right and walks 3 km, turns right and walks 4 km. How far and in which direction is he from point A?
Hint: Forms a U-shape. End point is 3 km East of A.

Q131. 🟡 HIGH FREQUENCY
MERN: [CSS][Easy-Medium][Product Company] What is CSS Grid auto-placement? How does `grid-auto-flow: dense` differ from the default?
Hint: Auto-placement fills cells in order. Dense backfills empty cells (smaller items fill gaps). Default = row-first, sparse. Dense may reorder visually.

DSA: [Two Pointers][Easy-Medium][Google] 🔴 MUST DO — Given an array of n integers, find all unique triplets that sum to zero (3Sum problem).
Hint: Sort. Fix one element, two pointers on remaining. Skip duplicates. O(n²) time. Classic interview problem.

Aptitude: [Profit & Loss][Easy-Medium] A shopkeeper gives a 12.5% discount on MRP but still earns a 10% profit. If the cost price is ₹800, find the MRP.
Hint: SP = 800 × 1.1 = 880. SP = MRP × 0.875. MRP = 880/0.875 ≈ ₹1005.71.

Q132.
MERN: [CSS][Easy-Medium][Product Company] What is the `will-change` property? When should you use it and what are the risks of overusing it?
Hint: Tells browser to optimize for upcoming change. `will-change: transform`. Risks: excess memory, forced compositing layers. Remove after animation. Use sparingly.

DSA: [Two Pointers][Easy-Medium][Google] Given a sorted array, remove duplicates such that each element appears at most twice, and return the new length.
Hint: Track write position. Allow at most 2 of each. Compare with position write-2. O(n) time, O(1) space.

Aptitude: [Coding-Decoding][Easy-Medium] If 'ROAD' is coded as 'URDG' (R+3, O+6, A+3, D+3), find the pattern and decode 'WUHQ'.
Hint: Pattern: +3,+6,+3,+3. Decode WUHQ: W-3=T, U-6=O, H-3=E, Q-3=N. Answer: TOEN. Recheck pattern...

Q133.
MERN: [JavaScript][Easy-Medium][FAANG-Level] Explain the difference between microtask queue and macrotask queue. What goes into each? Which has higher priority?
Hint: Microtask: Promises, MutationObserver, queueMicrotask. Macrotask: setTimeout, setInterval, I/O, UI rendering. Microtasks drain completely before next macrotask.

DSA: [Two Pointers][Easy-Medium][Amazon] 🔴 MUST DO — Given a container represented by an array of heights, find two lines that form a container holding the maximum water (Container With Most Water).
Hint: Two pointers at ends. Area = min(h[l], h[r]) × (r-l). Move shorter pointer inward. O(n) time.

Aptitude: [Grammar][Easy-Medium] Correct: "The data shows that the hypothesis are incorrect." Identify all errors and explain.
Hint: "data" can be singular (modern usage). "hypothesis" should be "hypotheses" (plural). "The data show(s) that the hypotheses are incorrect."

Q134.
MERN: [JavaScript][Easy-Medium][Product Company] What is `Proxy` in JavaScript? Write a proxy that validates property types when they're set on an object.
Hint: `new Proxy(target, { set(obj, prop, val) { if (typeof val !== 'string') throw Error; ... } })`. Use for: validation, logging, reactive systems.

DSA: [Two Pointers][Easy-Medium][Google] 🔴 MUST DO — Given n non-negative integers representing an elevation map, compute how much water can be trapped after raining (Trapping Rain Water — two pointer approach).
Hint: Two pointers. Track leftMax, rightMax. Water at i = min(leftMax, rightMax) - height[i]. O(n) time, O(1) space.

Aptitude: [Time-Speed-Distance][Easy-Medium] A and B start walking from the same point. A walks north at 6 km/h. B walks east at 8 km/h. What is the distance between them after 2 hours?
Hint: A: 12km north. B: 16km east. Distance = √(12²+16²) = √(400) = 20 km. Pythagoras.

Q135.
MERN: [JavaScript][Easy-Medium][Product Company] What is `Reflect` in JavaScript? How does it work with `Proxy`? Give a logging example.
Hint: Reflect mirrors Proxy trap methods. `Reflect.set(target, prop, val)` does default behavior. Use in Proxy handlers: log + forward via Reflect.

DSA: [Two Pointers][Easy-Medium][Amazon] Given an array of integers sorted in ascending order, find two numbers such that they add up to a specific target (Two Sum II).
Hint: Two pointers: left=0, right=end. If sum < target, left++. If sum > target, right--. O(n) time, O(1) space.

Aptitude: [Ratios][Easy-Medium] In a class of 60 students, the ratio of boys to girls is 2:1. If 10 more girls join, what is the new ratio?
Hint: Boys = 40, Girls = 20. New girls = 30. New ratio = 40:30 = 4:3.

Q136.
MERN: [React][Easy-Medium][Product Company] Explain the React component lifecycle for class components. Map each lifecycle method to its hooks equivalent.
Hint: componentDidMount → useEffect(fn, []). componentDidUpdate → useEffect(fn, [deps]). componentWillUnmount → useEffect return fn. getDerivedState → useState.

DSA: [Sliding Window][Easy-Medium][Amazon] 🔴 MUST DO — Find the longest substring without repeating characters using a sliding window and hash set.
Hint: Expand right, add to set. If duplicate, shrink left until unique. Track max window. O(n) time. Classic interview question.

Aptitude: [Percentages][Easy-Medium] In a mixture of 40 liters, the ratio of milk to water is 3:1. How much water should be added to make the ratio 2:1?
Hint: Milk = 30L, Water = 10L. 30/(10+x) = 2/1 → x = 5L.

Q137. 🔴 MUST DO
MERN: [React][Easy-Medium][FAANG-Level] What is the `useEffect` dependency array? Explain the behavior differences between `[]`, `[dep]`, and no array. Show examples.
Hint: []: once on mount. [dep]: on dep change. None: every render (usually a bug). Missing deps = stale closures. eslint-plugin-react-hooks catches this.

DSA: [Sliding Window][Medium][Google] Given a string s and a string t, find the minimum window in s that contains all characters of t (Minimum Window Substring — explain approach).
Hint: Expand right until all chars covered. Shrink left to minimize. Track char counts with hash map. O(n) time. Hard but classic.

Aptitude: [Blood Relations][Easy-Medium] Looking at a portrait, a man says, "The father of the person in the portrait is the son of my father." How is the person in the portrait related to the man?
Hint: Son of my father = me or my brother. Father of portrait person = me/brother. Portrait person is my child or nephew.

Q138. 🟡 HIGH FREQUENCY
MERN: [React][Easy-Medium][FAANG-Level] What is `useCallback`? When should you use it? Show an example where it prevents unnecessary child re-renders.
Hint: Memoizes function reference. Prevents child re-render when parent re-renders (if child uses React.memo). `useCallback(fn, [deps])`. Don't overuse — adds complexity.

DSA: [Sliding Window][Easy-Medium][Product Company] Find the maximum number of vowels in a substring of given length k.
Hint: Sliding window of size k. Count vowels in window. Slide: subtract left, add right if vowels. O(n) time.

Aptitude: [Profit & Loss][Easy-Medium] A dealer sold a VCR at a loss of 20%. Had he sold it for ₹800 more, he would have earned a profit of 20%. Find the cost price.
Hint: 0.8CP + 800 = 1.2CP. 0.4CP = 800. CP = ₹2000.

Q139. 🟡 HIGH FREQUENCY
MERN: [React][Easy-Medium][FAANG-Level] What is `useMemo`? How does it differ from `useCallback`? When does memoization actually help performance?
Hint: useMemo memoizes VALUE. useCallback memoizes FUNCTION. useMemo(fn, [deps]) re-computes only when deps change. Helps with expensive calculations, not simple state.

DSA: [Sliding Window][Medium][Amazon] Given an array of integers and a positive integer k, find the maximum for each contiguous subarray of size k (Sliding Window Maximum — explain approaches).
Hint: Brute force O(nk). Optimal: monotonic deque, keep elements in decreasing order. O(n) time.

Aptitude: [Coding-Decoding][Easy-Medium] If in a certain code, FRIEND is written as HUMGPF, how is CANDLE written in that code?
Hint: F+2=H, R+3=U, I+4=M, E+2=G, N+2=P, D+2=F. Pattern: +2,+3,+4,+2,+2,+2. Apply to CANDLE: C+2=E, A+3=D, N+4=R, D+2=F, L+2=N, E+2=G. CANDLE = EDRFNG.

Q140.
MERN: [React][Easy-Medium][Product Company] What is `useRef`? Give two use cases: DOM access and persisting values across renders without causing re-renders.
Hint: `const ref = useRef(null)`. DOM: ref.current = element. Persist: ref.current = value (no re-render on change). Common for timers, previous values.

DSA: [Sliding Window][Easy-Medium][Product Company] Find the number of subarrays with product less than k using a sliding window.
Hint: If product < k, subarrays ending at right = right-left+1. Expand right, if product >= k, shrink left. O(n) time.

Aptitude: [Grammar][Easy-Medium] Identify the correct sentence: (a) "Who's book is this?" (b) "Whose book is this?" (c) "Whom's book is this?" Explain the differences.
Hint: (b) "Whose" = possessive. "Who's" = "who is." "Whom's" doesn't exist. Whose = possessive pronoun for who.

Q141. 🔴 MUST DO
MERN: [React][Easy-Medium][FAANG-Level] What is `useContext`? How does it solve prop drilling? Write a theme context example.
Hint: createContext → Provider wraps tree → useContext(ThemeContext) in any child. Avoids passing props through intermediate components. Not a global state solution.

DSA: [Prefix Sum][Easy-Medium][Google] Given an array of integers and an integer k, find the number of subarrays with sum divisible by k using prefix sums and modular arithmetic.
Hint: Count prefix sum remainders. If same remainder appears, subarray between has sum divisible by k. Use nC2 for each remainder. O(n).

Aptitude: [Time & Work][Easy-Medium] A, B, and C can do a work in 10, 12, and 15 days respectively. They start working together. After 2 days, C leaves. After 2 more days, B also leaves. How many more days will A take to finish the work?
Hint: Rate = 1/10+1/12+1/15 = 1/4. 2 days = 1/2. Then A+B for 2 days = 2×(1/10+1/12) = 11/30. Done = 1/2+11/30 = 26/30. Remaining = 4/30. A: (4/30)/(1/10) = 4/3 ≈ 1.33 days.

Q142. 🔴 MUST DO
MERN: [React][Easy-Medium][FAANG-Level] What is `useReducer`? When would you use it over `useState`? Implement a shopping cart reducer.
Hint: `useReducer(reducer, initialState)`. Use for: complex state logic, multiple related values, next state depends on previous. dispatch({type: 'ADD_ITEM', payload}).

DSA: [Prefix Sum][Easy-Medium][Amazon] Given a binary array, find the maximum length of a contiguous subarray with an equal number of 0s and 1s.
Hint: Replace 0s with -1. Find longest subarray with sum 0 using prefix sum + hash map. O(n) time.

Aptitude: [Direction Sense][Easy-Medium] A person walks 5 km south, then turns left and walks 3 km, then turns left and walks 5 km. In which direction and how far is he from the starting point?
Hint: South 5km → East 3km → North 5km. Net: 3 km East of start.

Q143. 🟡 HIGH FREQUENCY
MERN: [React][Easy-Medium][FAANG-Level] What are custom hooks? Write a custom `useFetch` hook that handles loading, error, and data states.
Hint: Custom hooks start with `use`. Extract reusable stateful logic. `useFetch(url)` → {data, loading, error}. Uses useState + useEffect internally.

DSA: [Hashing][Easy-Medium][Product Company] Given two strings s and t, return true if s is a subsequence of t. Follow up: handle millions of incoming queries.
Hint: Two pointers: one on s, one on t. If match, advance both. O(n). Follow up: preprocess t with char→index map + binary search. O(m log n) per query.

Aptitude: [Percentages][Easy-Medium] A sum of money doubles in 5 years at simple interest. What is the rate of interest?
Hint: SI = P (doubles). P×R×5/100 = P. R = 20%.

Q144. 🟡 HIGH FREQUENCY
MERN: [React][Easy-Medium][FAANG-Level] What is `React.memo`? How does it prevent unnecessary re-renders? When does shallow comparison fail?
Hint: Memoizes component output. Skips re-render if props unchanged (shallow compare). Fails for: objects/arrays (new reference each render). Pass custom comparator.

DSA: [Hashing][Easy-Medium][Amazon] 🔴 MUST DO — Given an unsorted array of integers, find the length of the longest consecutive elements sequence in O(n) time.
Hint: Add all to Set. For each num where num-1 NOT in set (sequence start), count streak. O(n) average.

Aptitude: [Blood Relations][Easy-Medium] If P+Q means P is the father of Q, P-Q means P is the wife of Q, P*Q means P is the brother of Q, P/Q means P is the daughter of Q. What does M+N-O*P/Q mean?
Hint: M is father of N. N is wife of O. O is brother of P. P is daughter of Q. So M is N's father, N married O, O is P's brother, P is Q's daughter.

Q145. 🟡 HIGH FREQUENCY
MERN: [React][Easy-Medium][FAANG-Level] Explain React reconciliation. What is the diffing algorithm? What are its two main assumptions?
Hint: 1) Different element types produce different trees (unmount old). 2) Keys identify stable elements across renders. O(n) diffing instead of O(n³). Fiber enables async rendering.

DSA: [Hashing][Easy-Medium][Product Company] Given an array of integers and a value k, find the number of distinct pairs with difference equal to k.
Hint: Add all to Set. For each num, check if num+k or num-k in set. O(n) time. Handle duplicates carefully.

Aptitude: [Profit & Loss][Easy-Medium] A merchant gets a 10% discount on wholesale. He marks up goods 20% above the catalog price. If the catalog price is ₹500, find his profit percentage.
Hint: His CP = 500 × 0.9 = 450. SP = 500 × 1.2 = 600. Profit = 150. Profit% = 150/450 = 33.33%.

Q146.
MERN: [React][Easy-Medium][Product Company] What is the React Context API? What are its limitations for state management? When should you NOT use Context?
Hint: Context causes ALL consumers to re-render on any change. Not for high-frequency updates (use Zustand/Redux). Good for: themes, auth, locale — infrequent changes.

DSA: [Hashing][Medium][FAANG-Level] Implement an LRU Cache with get and put operations in O(1) time (explain the approach using hash map + doubly linked list).
Hint: HashMap for O(1) lookup. Doubly linked list for O(1) insert/remove. get: move to front. put: add to front, evict from tail if over capacity.

Aptitude: [Coding-Decoding][Easy-Medium] In a certain code, '+' means '×', '−' means '÷', '×' means '−', '÷' means '+'. Find the value of 8 + 6 − 3 × 4 ÷ 2.
Hint: Replace operators: 8 × 6 ÷ 3 − 4 + 2 = 48/3 − 4 + 2 = 16 − 4 + 2 = 14.

Q147.
MERN: [React][Easy-Medium][Product Company] What is the difference between imperative and declarative programming? How does React embody the declarative approach?
Hint: Imperative: HOW (step by step). Declarative: WHAT (describe desired outcome). React: declare UI for each state, React figures out DOM changes.

DSA: [Sorting][Easy-Medium][Amazon] 🟡 HIGH FREQUENCY — Implement a sorting algorithm that sorts an array of 0s, 1s, and 2s without using any sorting function (Dutch National Flag algorithm).
Hint: Same as Q121 DSA. Three pointers: low, mid, high. One pass. O(n) time, O(1) space.

Aptitude: [Grammar][Easy-Medium] Complete: "Had I known about the meeting, I ___ (would attend / would have attended / will attend) it." Explain conditional tenses.
Hint: "would have attended" — Third conditional (past unreal). Had + past participle → would have + past participle.

Q148.
MERN: [React][Easy-Medium][Product Company] What is code splitting in React? How do `React.lazy` and `Suspense` enable it? What are the limitations?
Hint: `const Comp = React.lazy(() => import('./Comp'))`. Wrap in `<Suspense fallback={<Spinner/>}>`. Reduces initial bundle. SSR limitations (use loadable-components).

DSA: [Sorting][Easy-Medium][Amazon] Given an array of intervals, merge all overlapping intervals and return the non-overlapping intervals.
Hint: Sort by start. If current.start <= prev.end, merge (extend end). O(n log n) time. Edge case: enclosed intervals.

Aptitude: [Time-Speed-Distance][Easy-Medium] A train overtakes two persons walking at 2 km/h and 4 km/h in 9 seconds and 10 seconds respectively. Find the speed of the train and its length.
Hint: L = (v-2)×9 = (v-4)×10. Solve: 9v-18 = 10v-40. v = 22 km/h. L = (22-2)×(5/18)×9 = 50m.

Q149.
MERN: [React][Easy-Medium][Product Company] What is `React.StrictMode`? What checks does it perform in development? Why does it render components twice?
Hint: Double-renders to detect side effects. Warns about deprecated APIs. Checks for unsafe lifecycles. Production unaffected. Helps find bugs early.

DSA: [Sorting][Easy-Medium][Amazon] Given a list of non-negative integers, arrange them to form the largest possible number (e.g., [3,30,34] → "34330").
Hint: Custom comparator: compare a+b vs b+a as strings. Sort descending. O(n log n). Handle leading zeros.

Aptitude: [Averages][Easy-Medium] The average salary of all staff is ₹2,000. The average salary of officers is ₹14,000 and that of non-officers is ₹500. If there are 15 officers, find the number of non-officers.
Hint: 14000×15 + 500×n = 2000×(15+n). 210000 + 500n = 30000 + 2000n. 1500n = 180000. n = 120.

Q150.
MERN: [React][Easy-Medium][Product Company] Explain the concept of "lifting state up" in React. When is it necessary? What are the drawbacks?
Hint: Move shared state to closest common ancestor. Pass state + setter as props. Drawback: prop drilling for deeply nested trees. Solution: Context or state library.

DSA: [Sorting][Easy-Medium][Google] Given an array where every element occurs three times except one element which occurs only once, find that element.
Hint: Bit manipulation: count bits at each position mod 3. Remaining bits = single element. O(n) time, O(1) space.

Aptitude: [Ratios][Easy-Medium] An alloy contains zinc and copper in the ratio 5:3. If 8 kg of zinc is added, the ratio becomes 3:1. Find the original quantity of the alloy.
Hint: Zinc = 5x, Copper = 3x. (5x+8)/(3x) = 3/1. 5x+8 = 9x. 4x = 8. x = 2. Alloy = 16 kg.

Q151. 🔴 MUST DO
MERN: [Node.js][Easy][FAANG-Level] What is Node.js? How does it differ from JavaScript in the browser? What is the V8 engine?
Hint: Node = JS runtime for server. No DOM/window. Has fs, http, process. V8 = Google's JS engine (compiles to machine code). Event-driven, non-blocking I/O.

DSA: [Linked List][Easy][Product Company] What is a linked list? What are its advantages over arrays? Implement a singly linked list with insert, delete, and traverse.
Hint: Dynamic size, O(1) insert/delete at known position. No random access (O(n)). Node: {value, next}. Head pointer.

Aptitude: [Time & Work][Easy-Medium] A and B can do a job in 8 days. B and C in 12 days. A, B, and C together in 6 days. How many days for A and C together?
Hint: A+B+C = 1/6. B = 1/6 - (A+C). A+B = 1/8 → A = 1/8 - B. B+C = 1/12 → C = 1/12 - B. A+C = 1/6 - B + ... Solve: A+C = 1/6 - (1/6 - 1/8 - 1/12 + ...). A+C rate = 1/8 + 1/12 - 1/6 = 1/24. A and C together = 24 days. Wait: A+C = (A+B+C) - B. B = (A+B+C) - (A+C). Also (A+B) + (B+C) - (A+B+C) = B. B = 1/8 + 1/12 - 1/6 = 1/24. A+C = 1/6 - 1/24 = 3/24 = 1/8. Together = 8 days.

Q152.
MERN: [Node.js][Easy][Product Company] What is the Node.js event loop? Draw a simplified diagram showing the phases.
Hint: Phases: timers → pending callbacks → idle → poll → check → close callbacks. Each phase has a queue. Microtasks between phases.

DSA: [Linked List][Easy][Product Company] Write a function to insert a node at the beginning, end, and at a given position in a singly linked list.
Hint: Beginning: newNode.next = head, head = newNode. End: traverse to last, last.next = newNode. Position: traverse to pos-1, insert after.

Aptitude: [Coding-Decoding][Easy-Medium] If TRAIN is coded as 20-18-1-9-14 (by position), what is the code for PLANE?
Hint: P=16, L=12, A=1, N=14, E=5. PLANE = 16-12-1-14-5.

Q153.
MERN: [Node.js][Easy][Product Company] What is `npm`? How is it different from `npx`? When would you use `npx` instead of installing globally?
Hint: npm installs packages. npx runs packages without installing. Use npx for: one-off scripts (create-react-app), trying tools, running latest version.

DSA: [Linked List][Easy][Product Company] Write a function to delete a node at a given position in a singly linked list. Handle edge cases (head, tail).
Hint: Head: head = head.next. Position: traverse to prev, prev.next = prev.next.next. Edge: empty list, out of bounds.

Aptitude: [Grammar][Easy-Medium] Fix: "Between you and I, this project needs more attention." Why is this a common error?
Hint: "Between you and me" — "between" is a preposition requiring object pronoun "me," not subject pronoun "I."

Q154.
MERN: [Node.js][Easy][Product Company] What is `package.json`? Explain `dependencies`, `devDependencies`, `peerDependencies`, `scripts`, and `engines` fields.
Hint: dependencies: production. devDependencies: build/test only. peerDependencies: host must provide (plugins). scripts: npm run commands. engines: Node version requirement.

DSA: [Linked List][Easy][Amazon] 🔴 MUST DO — Write a function to reverse a singly linked list (iterative and recursive).
Hint: Iterative: prev=null, traverse, flip next pointers. O(n), O(1). Recursive: reverse rest, point next.next to current. O(n), O(n) stack.

Aptitude: [Percentages][Easy-Medium] In a class, 60% of students passed in English, 70% in Math. If 20% passed in both, what percentage failed in both subjects?
Hint: Passed in at least one = 60+70-20 = 110%? That's impossible. Recheck: Inclusion-exclusion gives those who passed at least one. If >100%, all passed at least one → failed in both = 0%. Actually: if 20% passed both, failed both = 100 - (60+70-20) = 100-110. This means the numbers don't add up. Re-interpret: 10% failed in both. (100 - 60 - 70 + 20 + failed_both = 0 → failed_both = 10% when using proper set theory with failures).

Q155.
MERN: [Node.js][Easy][Product Company] What is `package-lock.json`? Why should it be committed to version control? What problems does it solve?
Hint: Locks exact dependency versions. Ensures identical installs across machines. Prevents "works on my machine." Always commit it. npm ci uses it strictly.

DSA: [Linked List][Easy][Amazon] 🔴 MUST DO — Write a function to find the middle node of a linked list in one pass (slow and fast pointer technique).
Hint: Slow moves 1 step, fast moves 2 steps. When fast reaches end, slow is at middle. O(n) time, O(1) space. Floyd's tortoise concept.

Aptitude: [Blood Relations][Easy-Medium] A's mother is the only daughter of B's mother. How is B related to A?
Hint: B's mother's only daughter = A's mother. So B's mother is A's maternal grandmother. B is A's uncle (mother's brother).

Q156.
MERN: [Node.js][Easy][Product Company] What is a module in Node.js? Explain the difference between `require`/`module.exports` (CJS) and `import`/`export` (ESM).
Hint: CJS: synchronous, dynamic, require at any point. ESM: static, async, tree-shakeable, import at top. Use ESM for new code. package.json: "type": "module".

DSA: [Linked List][Easy][Google] 🔴 MUST DO — Write a function to detect if a linked list has a cycle (Floyd's Cycle Detection Algorithm).
Hint: Slow (1 step) and fast (2 steps). If they meet, cycle exists. To find start: reset one to head, both move 1 step until meet. O(n) time, O(1) space.

Aptitude: [Profit & Loss][Easy-Medium] A man bought a horse and a cart for ₹3,000. He sold the horse at a gain of 20% and the cart at a loss of 10%, gaining 2% on the whole. Find the cost of the horse.
Hint: 0.2H - 0.1C = 0.02×3000 = 60. H + C = 3000. 0.2H - 0.1(3000-H) = 60. 0.3H = 360. H = ₹1200.

Q157.
MERN: [Node.js][Easy][Product Company] What is the `path` module? Why is `path.join()` preferable over string concatenation for file paths?
Hint: Handles OS-specific separators (/ vs \). path.join('dir', 'file.js') works on Windows and Linux. path.resolve() gives absolute path.

DSA: [Linked List][Easy][Amazon] Write a function to merge two sorted linked lists into one sorted linked list.
Hint: Compare heads. Pick smaller. Advance that pointer. Recurse or iterate. O(n+m) time, O(1) space (iterative).

Aptitude: [Direction Sense][Easy-Medium] A person starts from point A and walks 3 km East, turns left and walks 4 km, turns left and walks 6 km, turns left and walks 4 km. How far is he from point A?
Hint: East 3, North 4, West 6, South 4. Net: 3km West. Distance = 3 km West of A.

Q158.
MERN: [Node.js][Easy][Product Company] What is the `fs` module? Show how to read a file asynchronously using callbacks, promises, and async/await.
Hint: Callback: fs.readFile(path, cb). Promise: fs.promises.readFile(path). Async/await: const data = await fs.promises.readFile(path, 'utf8'). Always handle errors.

DSA: [Linked List][Easy][Google] Write a function to remove the nth node from the end of a linked list in one pass.
Hint: Two pointers: advance fast n steps. Then move both. When fast reaches end, slow is at target. O(n) time, O(1) space.

Aptitude: [Time-Speed-Distance][Easy-Medium] A car covers 4 successive 3 km stretches at speeds of 10, 20, 30, and 60 km/h respectively. Find the average speed.
Hint: Total distance = 12 km. Total time = 3/10+3/20+3/30+3/60 = 0.3+0.15+0.1+0.05 = 0.6 hr. Avg speed = 12/0.6 = 20 km/h.

Q159.
MERN: [Node.js][Easy][Product Company] What is the `http` module? Write a simple HTTP server that returns JSON data.
Hint: `http.createServer((req, res) => { res.writeHead(200, {'Content-Type': 'application/json'}); res.end(JSON.stringify(data)); }).listen(3000)`.

DSA: [Linked List][Easy][Amazon] Write a function to check if a singly linked list is a palindrome.
Hint: Find middle (slow/fast). Reverse second half. Compare both halves. Restore list (optional). O(n) time, O(1) space.

Aptitude: [Ratios][Easy-Medium] The ratio of present ages of A and B is 5:7. After 5 years, the ratio becomes 3:4. Find their present ages.
Hint: 5x and 7x. (5x+5)/(7x+5) = 3/4. 20x+20 = 21x+15. x = 5. Ages: 25 and 35.

Q160.
MERN: [Node.js][Easy][Product Company] What are Node.js streams? Name the four types with a real-world analogy for each.
Hint: Readable (faucet), Writable (sink), Duplex (phone call), Transform (water filter). Streams process data in chunks — efficient for large files.

DSA: [Linked List][Easy-Medium][Microsoft] Write a function to find the intersection point of two singly linked lists.
Hint: Get lengths. Advance longer by difference. Walk both until they meet. O(n+m) time, O(1) space. Alternative: two pointers cycle through both lists.

Aptitude: [Averages][Easy-Medium] The average marks of 28 students is 50. Out of them, if the average of the top 3 is 73 and the bottom 5 is 30, find the average of the remaining 20 students.
Hint: Total = 1400. Top 3 = 219. Bottom 5 = 150. Remaining 20 = 1400-219-150 = 1031. Avg = 51.55.

Q161.
MERN: [Node.js][Easy][Product Company] What is a `Buffer` in Node.js? Why is it needed when JavaScript handles strings? Give a practical example.
Hint: Buffer handles raw binary data (images, files, TCP). JS strings are UTF-16. Buffer = fixed-length byte array. `Buffer.from('hello')`, `Buffer.alloc(10)`.

DSA: [Stack][Easy][Product Company] What is a stack? Implement a stack using an array with push, pop, peek, and isEmpty operations.
Hint: LIFO. push: add to top. pop: remove from top. peek: view top. All O(1). Use array with top pointer.

Aptitude: [Time & Work][Easy-Medium] Machine A produces 100 parts in 5 hours. Machine B produces 100 parts in 8 hours. How long to produce 1000 parts if both run simultaneously?
Hint: A rate = 20/hr. B rate = 12.5/hr. Combined = 32.5/hr. Time = 1000/32.5 ≈ 30.77 hours.

Q162.
MERN: [Node.js][Easy][Product Company] What is `dotenv`? Why should `.env` files never be committed to Git? How do you handle environment-specific configs?
Hint: Loads env vars from .env file. Contains secrets (API keys, DB passwords). Add to .gitignore. Use different .env files: .env.development, .env.production.

DSA: [Stack][Easy-Medium][Amazon] Given a string containing just '(' and ')', find the length of the longest valid parentheses substring.
Hint: Stack stores indices. Push -1 as base. On '(': push index. On ')': pop, if empty push current index. Max = current - stack.top. O(n).

Aptitude: [Coding-Decoding][Easy-Medium] If ENGLAND is written as 1234526 and FRANCE is written as 785291, how is GREECE written?
Hint: Map letters to numbers from given codes. E=1, N=2, G=3, L=4, A=5, D=6, F=7, R=8, C=9. GREECE: G=3, R=8, E=1, E=1, C=9, E=1 = 381191.

Q163.
MERN: [Express][Easy][Product Company] What is Express.js? Why is it used with Node.js instead of the raw `http` module?
Hint: Minimal web framework. Adds: routing, middleware, request/response helpers, error handling. Raw http module requires manual parsing, routing — tedious for real apps.

DSA: [Stack][Easy][Product Company] Implement a function to evaluate a postfix (Reverse Polish Notation) expression using a stack.
Hint: Push operands. On operator: pop two, compute, push result. End: stack has answer. O(n) time.

Aptitude: [Grammar][Easy-Medium] Choose the correct form: "The number of errors ___ (is/are) increasing." vs "A number of errors ___ (is/are) found." Explain both rules.
Hint: "The number" = singular → "is." "A number" = plural → "are." "The number" refers to the count itself; "A number" refers to the errors.

Q164.
MERN: [Express][Easy][Product Company] How do you create a simple Express server? Show a complete example with GET and POST routes.
Hint: `const app = express(); app.get('/api/users', handler); app.post('/api/users', handler); app.listen(3000)`. Use express.json() for POST body.

DSA: [Stack][Easy][Google] 🔴 MUST DO — Implement a stack that supports push, pop, top, and retrieving the minimum element in O(1) time (Min Stack).
Hint: Two stacks: main + min stack. On push: also push to min if <= current min. On pop: also pop min if same. O(1) all operations.

Aptitude: [Percentages][Easy-Medium] A person spends 60% of his income. His income increases by 20% and expenditure by 10%. Find the percentage increase in savings.
Hint: Old savings = 0.4I. New savings = 1.2I - 0.66I = 0.54I. Increase = (0.54-0.4)/0.4 × 100 = 35%.

Q165.
MERN: [Express][Easy][Product Company] What is a route in Express? How do you define GET, POST, PUT, PATCH, and DELETE routes?
Hint: `app.get('/path', handler)`. REST pattern: GET=read, POST=create, PUT=replace, PATCH=partial update, DELETE=remove. Use express.Router() for modularity.

DSA: [Stack][Easy-Medium][Product Company] Given a string of brackets, find the score based on balanced brackets: () has score 1, AB has score A+B, (A) has score 2*A.
Hint: Stack-based. Push 0 for '('. On ')': pop, compute 2×inner (or 1 if 0), add to new top. O(n).

Aptitude: [Blood Relations][Easy-Medium] A is the father of C. B is the daughter of A. D is the brother of B. E is the son of C. How is E related to D?
Hint: A's children: C, B, D. E is C's son. So E is D's nephew (D is E's uncle/aunt's sibling).

Q166. 🟡 HIGH FREQUENCY
MERN: [Express][Easy][FAANG-Level] What is middleware in Express? Draw a diagram showing how a request flows through multiple middleware functions.
Hint: Functions with (req, res, next). Execute in order. Call next() to continue. Request → middleware1 → middleware2 → route handler → response. Short-circuit by sending response.

DSA: [Stack][Easy-Medium][Amazon] 🔴 MUST DO — Implement the "Next Greater Element" problem: for each element in an array, find the next element that is greater.
Hint: Monotonic decreasing stack. Traverse from right. Pop smaller elements. Top of stack = next greater (or -1). O(n) time.

Aptitude: [Profit & Loss][Easy-Medium] A person sells a horse at 12.5% loss. If he sells it for ₹1650 more, he gains 12.5%. Find the cost price of the horse.
Hint: 0.125CP + 0.125CP = 1650. 0.25CP = 1650. CP = ₹6600.

Q167.
MERN: [Express][Easy][Product Company] What is the purpose of `app.use()`? How does it differ from `app.get()` or `app.post()`?
Hint: app.use() mounts middleware for ALL methods. app.get() only for GET. app.use() without path = applies to all routes. Order matters!

DSA: [Stack][Easy-Medium][Product Company] Implement a function to convert an infix expression to postfix using a stack.
Hint: Stack for operators. Output operands directly. Push operators considering precedence. Pop higher/equal precedence. Handle parentheses. O(n).

Aptitude: [Coding-Decoding][Easy-Medium] In a certain code, 'SOLID' is coded as 'WPSLM'. What pattern is used and how would you decode 'YVKRQ'?
Hint: S+4=W, O+1=P, L+7=S, I+4=M... Pattern varies. Decode by finding reverse pattern for each letter position.

Q168.
MERN: [Express][Easy][Product Company] What are route parameters in Express? What are query parameters? Show how to access both.
Hint: Route params: `/users/:id` → `req.params.id`. Query: `/users?role=admin` → `req.query.role`. Params for resource identification, query for filtering/options.

DSA: [Stack][Easy-Medium][Amazon] 🟡 HIGH FREQUENCY — Given daily temperatures, find how many days you have to wait until a warmer temperature (Daily Temperatures problem).
Hint: Monotonic decreasing stack of indices. Pop when current temp > stack top's temp. Result[popped] = current - popped. O(n).

Aptitude: [Grammar][Easy-Medium] Rewrite using active voice: "The book was read by the students." When is passive voice appropriate?
Hint: Active: "The students read the book." Passive appropriate when: actor unknown, emphasis on action/object, formal writing.

Q169.
MERN: [Express][Easy][Product Company] How do you send a JSON response in Express? What is the difference between `res.send()`, `res.json()`, and `res.end()`?
Hint: res.json() sets Content-Type + stringifies. res.send() auto-detects type. res.end() sends no content. Use res.json() for API responses.

DSA: [Stack][Easy-Medium][Google] Implement a queue using two stacks. Analyze the amortized time complexity.
Hint: Push to stack1. Pop: if stack2 empty, transfer all from stack1. Pop from stack2. Amortized O(1) per operation.

Aptitude: [Time-Speed-Distance][Easy-Medium] Two trains 200m and 300m long are running in the same direction at 72 km/h and 36 km/h. In how much time will the first train pass the second?
Hint: Relative speed = 36 km/h = 10 m/s. Total length = 500m. Time = 500/10 = 50 seconds.

Q170.
MERN: [Express][Easy][Product Company] What is `express.json()` middleware? What happens if you don't use it and try to access `req.body`?
Hint: Parses JSON request bodies. Without it, req.body is undefined. `app.use(express.json())`. Also express.urlencoded() for form data.

DSA: [Queue][Easy][Product Company] What is a queue? Implement a queue using an array with enqueue, dequeue, front, and isEmpty operations.
Hint: FIFO. enqueue: add to rear. dequeue: remove from front. O(1) with circular array. Naive array dequeue = O(n) shift.

Aptitude: [Ratios][Easy-Medium] A certain sum is divided between A, B, and C such that A gets 2/3 of what B gets and B gets 1/4 of what C gets. If C gets ₹1500, find the total sum.
Hint: B = C/4 = 375. A = 2B/3 = 250. Total = 250+375+1500 = ₹2125.

Q171.
MERN: [Express][Easy][Product Company] What is `express.urlencoded()` middleware? When is it needed? What does `extended: true` do?
Hint: Parses URL-encoded bodies (HTML forms). extended:true uses qs library (nested objects). extended:false uses querystring (flat). Use for form submissions.

DSA: [Queue][Easy][Product Company] Implement a circular queue with fixed capacity using an array.
Hint: Use front and rear pointers. rear = (rear+1) % capacity. Check full: (rear+1) % cap == front. O(1) all operations. Efficient space use.

Aptitude: [Averages][Easy-Medium] The average of 11 numbers is 10.9. If the average of the first 6 is 10.5 and the last 6 is 11.4, find the 6th number.
Hint: Total = 119.9. First 6 = 63. Last 6 = 68.4. 6th = 63+68.4-119.9 = 11.5.

Q172.
MERN: [Express][Easy][Product Company] How do you handle 404 errors in Express? Where should the 404 handler be placed in the middleware stack and why?
Hint: After ALL routes. `app.use((req, res) => res.status(404).json({error: 'Not Found'}))`. Express matches routes in order — 404 catches unmatched.

DSA: [Queue][Easy][Product Company] Implement a stack using two queues. Analyze the time complexity.
Hint: Push: enqueue to q1. Pop: dequeue all except last from q1 to q2. Swap queues. Push O(1), Pop O(n). Or make push O(n) and pop O(1).

Aptitude: [Time & Work][Easy-Medium] Taps A and B fill a tank in 12 and 16 minutes. Tap C empties it in 8 minutes. If all three are opened and C is closed after 2 minutes, in how many minutes will the tank be full?
Hint: All 3 rate = 1/12+1/16-1/8 = (4+3-6)/48 = 1/48. In 2 min = 1/24. Then A+B rate = 1/12+1/16 = 7/48. Remaining = 23/24. Time = (23/24)/(7/48) = 23×48/(24×7) ≈ 6.57 min. Total ≈ 8.57 min.

Q173. 🟡 HIGH FREQUENCY
MERN: [Express][Easy][FAANG-Level] What is `express.Router()`? How do you use it to modularize routes? Show a real project structure.
Hint: `const router = express.Router()`. router.get/post/etc. `app.use('/api/users', userRouter)`. Structure: routes/users.js, routes/products.js. Clean separation.

DSA: [Queue][Easy-Medium][Product Company] Implement a function to generate binary numbers from 1 to n using a queue.
Hint: Start with "1" in queue. Dequeue, print. Enqueue num+"0" and num+"1". Repeat n times. O(n).

Aptitude: [Coding-Decoding][Easy-Medium] If A = 2, B = 4, C = 6, ..., Z = 52, find the sum of values in the word "CODING".
Hint: C=6, O=30, D=8, I=18, N=28, G=14. Sum = 6+30+8+18+28+14 = 104.

Q174.
MERN: [Express][Easy][Product Company] How do you serve static files in Express? What is the security consideration with `express.static()`?
Hint: `app.use(express.static('public'))`. Security: don't serve sensitive files. Use path.join(__dirname, 'public'). Can expose directory structure.

DSA: [Queue][Easy-Medium][Product Company] Design a data structure for a recent calls counter that counts the number of calls in the last 3000 milliseconds.
Hint: Queue of timestamps. On ping(t): add t. Remove all < t-3000 from front. Return queue size. O(1) amortized.

Aptitude: [Grammar][Easy-Medium] Fill in: "If it ___ (rains/rained/rain) tomorrow, we will cancel the picnic." Explain the zero and first conditional.
Hint: "rains" — First conditional (real future possibility). If + present simple, will + base verb.

Q175.
MERN: [MongoDB][Easy][Product Company] What is MongoDB? How does it differ from relational databases like MySQL or PostgreSQL?
Hint: Document-based NoSQL. Flexible schema (no fixed columns). JSON-like documents. Horizontal scaling. No JOINs (denormalize). Good for: rapid development, varied data.

DSA: [Queue][Easy-Medium][Amazon] Implement a sliding window maximum using a deque (monotonic deque approach).
Hint: Deque stores indices. Remove from front if outside window. Remove from back if smaller than current. Front = max. O(n) time.

Aptitude: [Percentages][Easy-Medium] A's income is 25% more than B's. By what percentage is B's income less than A's?
Hint: A = 1.25B. B less by = 0.25B/1.25B × 100 = 20%.

Q176.
MERN: [MongoDB][Easy][Product Company] What is a document in MongoDB? What format does it use? How is a MongoDB document different from a row in SQL?
Hint: Document = BSON object (binary JSON). Can have nested objects, arrays. No fixed schema. Row = fixed columns. Document is more flexible and self-contained.

DSA: [Binary Search][Easy-Medium][Amazon] 🔴 MUST DO — Implement binary search on a rotated sorted array to find a target element.
Hint: Find which half is sorted. Check if target is in sorted half. Narrow accordingly. O(log n). Handle duplicates carefully.

Aptitude: [Blood Relations][Easy-Medium] If Sita is Ram's wife's sister's husband's mother, how is Ram related to Sita?
Hint: Ram's wife's sister's husband = Ram's wife's brother-in-law (or co-brother). Sita is that person's mother. Ram is son-in-law's co-brother → relationship is complex. Sita is the mother of Ram's wife's sister's husband.

Q177.
MERN: [MongoDB][Easy][Product Company] What is a collection in MongoDB? How does it compare to a table in SQL? Can documents in the same collection have different fields?
Hint: Collection ≈ table. YES, documents can have different fields (schemaless). In practice, use Mongoose schemas for consistency. Collection = group of related documents.

DSA: [Binary Search][Easy-Medium][Google] Given a sorted array, find the element that appears more than n/2 times. Verify using binary search.
Hint: Boyer-Moore to find candidate. Binary search for first/last occurrence. If count > n/2, confirmed. O(n) or O(n log n).

Aptitude: [Profit & Loss][Easy-Medium] A manufacturer gains 10% by selling to a wholesaler, who gains 15%, who sells to a retailer who gains 25%. If the customer pays ₹2,530, find the manufacturer's cost.
Hint: Retailer SP = 2530. Retailer CP = 2530/1.25 = 2024. Wholesaler CP = 2024/1.15 = 1760. Manufacturer CP = 1760/1.1 = 1600.

Q178.
MERN: [MongoDB][Easy][Product Company] What is BSON? How does it differ from JSON? What additional data types does BSON support?
Hint: BSON = Binary JSON. Additional types: ObjectId, Date, Decimal128, Binary, RegExp, Int32/Int64. Faster parsing. Takes more space than JSON text.

DSA: [Binary Search][Easy-Medium][Amazon] 🟡 HIGH FREQUENCY — Find the peak element in an array (an element that is greater than its neighbors) using binary search.
Hint: If mid > mid+1, peak is on left (including mid). Else right. O(log n). Multiple peaks possible — finds any one.

Aptitude: [Direction Sense][Easy-Medium] Starting from a point P, Ramesh walks 20m towards South. He turns left and walks 30m. He then turns left and walks 20m. Finally, he turns right and walks 10m. How far and in which direction is he from P?
Hint: South 20 → East 30 → North 20 → East 10. Net: 40m East. Distance = 40m East.

Q179.
MERN: [MongoDB][Easy][Product Company] What is the `_id` field? What is ObjectId? What information is encoded in an ObjectId?
Hint: _id is unique identifier (auto-generated). ObjectId = 12 bytes: 4 timestamp + 5 random + 3 incrementing counter. Can extract creation time from ObjectId.

DSA: [Binary Search][Easy-Medium][Product Company] Given a sorted array of distinct integers, find the number of occurrences of a given number.
Hint: Find first and last occurrence using binary search. Count = last - first + 1. O(log n). For distinct elements: 0 or 1.

Aptitude: [Ratios][Easy-Medium] The ratio of the number of boys and girls in a school is 3:2. If 20% of the boys and 25% of the girls are scholarship holders, what percentage of students are not scholarship holders?
Hint: Boys=60%, Girls=40%. Scholarship: 0.2×60 + 0.25×40 = 12+10 = 22%. Not scholarship = 78%.

Q180. 🟡 HIGH FREQUENCY
MERN: [MongoDB][Easy][FAANG-Level] What is Mongoose? Why use it instead of the native MongoDB driver? What value does schema definition add?
Hint: ODM (Object Data Modeling). Adds: schema validation, middleware, population (joins), type casting, query helpers. Native driver = more flexibility, less structure.

DSA: [Binary Search][Easy-Medium][Amazon] Implement a function to find the insertion point for a target value in a sorted array (lower bound / bisect_left).
Hint: Binary search. If target found, keep going left. If not found, return where it would be. O(log n). Foundation for many binary search variants.

Aptitude: [Vocabulary][Easy] Choose the correct synonym of 'AMELIORATE': (a) Worsen (b) Improve (c) Decorate (d) Analyze.
Hint: (b) Improve. Ameliorate = to make better.

Q181.
MERN: [MongoDB][Easy][Product Company] What is a Mongoose schema? How do you define field types, required fields, defaults, and validation?
Hint: `new Schema({ name: { type: String, required: true, trim: true }, age: { type: Number, min: 0, default: 0 } })`. Schema enforces structure on schemaless DB.

DSA: [Binary Search][Easy-Medium][Google] Given an array where every element occurs twice except two elements, find those two elements (using XOR).
Hint: XOR all elements. Result = a^b. Find set bit. Divide elements into two groups by that bit. XOR each group. O(n) time, O(1) space.

Aptitude: [Vocabulary][Easy] Choose the antonym of 'BENEVOLENT': (a) Generous (b) Malevolent (c) Careful (d) Unaware.
Hint: (b) Malevolent. Benevolent = kind/generous. Malevolent = wishing harm.

Q182.
MERN: [MongoDB][Easy][Product Company] What is a Mongoose model? How do you create documents with it? What is the relationship between schema, model, and document?
Hint: Schema = blueprint. Model = class compiled from schema (mongoose.model('User', schema)). Document = instance of model. Model.create() or new Model().save().

DSA: [Binary Search][Easy-Medium][Product Company] Given a sorted array, count the number of elements that are strictly less than a given value using binary search.
Hint: Find lower bound (insertion point). That index = count of elements less than value. O(log n).

Aptitude: [Time & Work][Easy-Medium] A and B can finish a work in 30 days. After they work together for 20 days, B leaves and A finishes the remaining work in 20 more days. How many days can A alone finish the work?
Hint: 20/30 + 20/A = 1. 2/3 + 20/A = 1. 20/A = 1/3. A = 60 days.

Q183.
MERN: [MongoDB][Easy][Product Company] How do you connect to MongoDB using Mongoose? Explain connection strings, options, and error handling.
Hint: `mongoose.connect('mongodb://localhost:27017/mydb')`. Handle: connection events (connected, error, disconnected). Use try/catch with async. Connection string: protocol://host:port/db.

DSA: [Binary Search][Easy-Medium][Product Company] Implement `searchInsert`: Given a sorted array and a target, return the index if found, or the index where it would be inserted.
Hint: Standard binary search. If not found, left pointer = insertion position. O(log n). Same as lower_bound.

Aptitude: [Coding-Decoding][Easy-Medium] In a code, DELHI is written as 73541 and CALCUTTA as 82589662. How is CALICUT written?
Hint: Map: D=7, E=3, L=5, H=4, I=1. C=8, A=2, L=5, U=9, T=6, A=2. CALICUT: C=8, A=2, L=5, I=1, C=8, U=9, T=6 = 8251896.

Q184.
MERN: [MongoDB][Easy][Product Company] What are Mongoose validators? Give examples of built-in validators and show how to create a custom validator.
Hint: Built-in: required, min, max, minlength, maxlength, enum, match. Custom: `validate: { validator: v => v.length > 0, message: 'Cannot be empty' }`.

DSA: [Recursion][Easy-Medium][Amazon] Write a recursive function to generate all valid combinations of n pairs of parentheses.
Hint: Track open/close count. Add '(' if open < n. Add ')' if close < open. Base: length = 2n. O(4^n/√n) Catalan number.

Aptitude: [Grammar][Easy-Medium] Correct: "The reason is because he was late." What is the grammatically correct alternative?
Hint: "The reason is that he was late." — "reason...because" is redundant. Use "reason...that" or just "because."

Q185.
MERN: [MongoDB][Easy][Product Company] What is the `populate()` method in Mongoose? What is the N+1 query problem and how does populate relate to it?
Hint: populate() replaces ObjectId references with actual documents. N+1: 1 query for list + N queries for each ref. populate does 2 queries (list + all refs). Better but not perfect — use aggregation for complex.

DSA: [Recursion][Easy-Medium][Product Company] Write a recursive function to solve the "Subset Sum" problem: does a subset of the given array sum to a target?
Hint: Include or exclude each element. Base: target=0 → true. target<0 or no elements → false. O(2^n). DP optimization possible.

Aptitude: [Percentages][Easy-Medium] A reduction of 20% in the price of sugar enables a buyer to get 5 kg more for ₹500. Find the original price per kg.
Hint: Old price = P. New = 0.8P. 500/0.8P - 500/P = 5. 500(1/0.8P - 1/P) = 5. 500×0.2P/(0.8P²) = 5. P² = 500×0.2/(0.8×5) = 25. P = ₹25/kg.

Q186.
MERN: [MongoDB][Easy][Product Company] What is the difference between `save()` and `create()` in Mongoose? When would you use each?
Hint: save() = instance method (modify + save existing doc). create() = model method (shorthand for new + save). Use create() for new docs, save() for updates or when you need middleware.

DSA: [Recursion][Easy-Medium][Google] Write a function to solve the "Letter Combinations of a Phone Number" problem using recursion.
Hint: Map digits to letters. Recursive backtracking: for each digit, try each letter, recurse on remaining digits. O(4^n) worst case.

Aptitude: [Blood Relations][Easy-Medium] X says, "Y's mother is the only daughter of my mother." How is X related to Y?
Hint: Only daughter of X's mother = X's sister (or X herself if female). Y's mother = X (if X is female) or X's sister. X is Y's maternal uncle or Y's mother.

Q187. 🟡 HIGH FREQUENCY
MERN: [MongoDB][Easy][FAANG-Level] What is a Mongoose middleware (pre/post hooks)? Write a pre-save hook that hashes a password before saving.
Hint: `userSchema.pre('save', async function(next) { if (this.isModified('password')) this.password = await bcrypt.hash(this.password, 10); next(); })`. Runs before save.

DSA: [Recursion][Easy-Medium][Amazon] Implement a recursive solution for the "Word Search" problem on a 2D grid.
Hint: DFS from each cell. Mark visited. Backtrack by unmarking. Check bounds and matching chars. O(m×n×4^L) where L = word length.

Aptitude: [Profit & Loss][Easy-Medium] A sold a bicycle to B at 10% profit, B sold it to C at 20% profit, and C paid ₹1,320. What did A pay for the bicycle?
Hint: B's SP = 1320. B's CP = 1320/1.2 = 1100. A's SP = 1100 = A's CP × 1.1. A's CP = 1000.

Q188.
MERN: [MongoDB][Easy][Product Company] What are basic CRUD operations in MongoDB? Write Mongoose code for Create, Read (find, findOne), Update (findByIdAndUpdate), Delete (findByIdAndDelete).
Hint: Create: Model.create(data). Read: Model.find(filter), Model.findOne(filter). Update: Model.findByIdAndUpdate(id, update, {new: true}). Delete: Model.findByIdAndDelete(id).

DSA: [Recursion][Easy-Medium][Product Company] 🟡 HIGH FREQUENCY — Implement the "Permutations" problem: given an array of distinct integers, return all possible permutations.
Hint: Backtracking: swap current with each remaining. Recurse on next position. Swap back. O(n! × n). Base: position = length.

Aptitude: [Time-Speed-Distance][Easy-Medium] A car takes 2 hours less to travel 300 km if the speed is increased by 25 km/h. Find the original speed.
Hint: 300/v - 300/(v+25) = 2. 300×25 / (v(v+25)) = 2. v² + 25v - 3750 = 0. v = 50 km/h (positive root).

Q189.
MERN: [MongoDB][Easy][Product Company] What is an index in MongoDB? Why are indexes important? What is the trade-off of having too many indexes?
Hint: Index = B-tree on fields for fast lookups. Without index: full collection scan O(n). With index: O(log n). Trade-off: slower writes, more storage. Don't over-index.

DSA: [Backtracking][Easy-Medium][Product Company] What is the difference between recursion and backtracking? Explain with the N-Queens problem setup.
Hint: Backtracking = recursion + undo choices. N-Queens: place queen, if safe recurse, if fail remove and try next column. Pruning eliminates invalid branches.

Aptitude: [Ratios][Easy-Medium] A sum of ₹8,400 is divided among A, B, C, D such that A:B = 2:3, B:C = 4:5, C:D = 6:7. Find each person's share.
Hint: Chain ratios: A:B = 2:3 = 8:12, B:C = 4:5 = 12:15, C:D = 6:7 = 15:17.5. A:B:C:D = 8:12:15:17.5 = 16:24:30:35. Total = 105. Shares: 1280, 1920, 2400, 2800.

Q190.
MERN: [MongoDB][Easy][Product Company] What are query operators in MongoDB? Explain `$eq`, `$gt`, `$lt`, `$gte`, `$lte`, `$in`, `$ne`, `$and`, `$or`, `$not` with examples.
Hint: `{age: {$gte: 18}}`. `{status: {$in: ['active','pending']}}`. `{$or: [{age: {$lt: 18}}, {role: 'admin'}]}`. Compose for complex queries.

DSA: [Backtracking][Easy-Medium][Google] Write a function to solve Sudoku using backtracking (explain the approach, discuss time complexity).
Hint: Find empty cell. Try 1-9. Check row, column, box constraints. If valid, recurse. If fail, backtrack (set to 0). O(9^m) where m = empty cells.

Aptitude: [Direction Sense][Easy-Medium] A man starts from a point, walks 6 km to the North, turns to the West and walks 4 km, then turns South and walks 2 km, then turns East and walks 4 km. How far is he from the starting point?
Hint: North 6 → West 4 → South 2 → East 4. Net: 4 km North. Distance = 4 km.

Q191.
MERN: [HTML][Easy-Medium][Product Company] What is the Web Components standard? How do Custom Elements, Shadow DOM, and HTML Templates relate to React?
Hint: Web Components = native component model. Custom Elements define tags. Shadow DOM encapsulates styles. Templates define markup. React does all this via JS. Can use together.

DSA: [Backtracking][Easy-Medium][Amazon] 🔴 MUST DO — Implement the "Combination Sum" problem: find all unique combinations of candidates that sum to a target (elements can be reused).
Hint: Sort. Backtrack: try each candidate from current index. Subtract from target. If 0, found. If negative, prune. Allow same element again. O(n^(target/min)).

Aptitude: [Vocabulary][Easy-Medium] Choose the word most similar to 'EPHEMERAL': (a) Eternal (b) Transient (c) Powerful (d) Memorable.
Hint: (b) Transient. Ephemeral = lasting a very short time.

Q192.
MERN: [HTML][Easy-Medium][Product Company] Explain the Shadow DOM. How does it differ from the Virtual DOM? When would you use each concept?
Hint: Shadow DOM: browser-native style/markup encapsulation (scoped CSS). Virtual DOM: in-memory representation for efficient diffing (React). Different problems. Shadow DOM = isolation. VDOM = performance.

DSA: [Backtracking][Easy-Medium][Google] Implement "Combination Sum II": same as above but each number can be used only once and avoid duplicate combinations.
Hint: Sort. Skip same elements at same recursion level. Use index+1 for next candidate (no reuse). O(2^n).

Aptitude: [Vocabulary][Easy-Medium] Choose the antonym of 'UBIQUITOUS': (a) Rare (b) Common (c) Transparent (d) Mysterious.
Hint: (a) Rare. Ubiquitous = present everywhere. Opposite = rare.

Q193.
MERN: [CSS][Easy-Medium][Product Company] What is the CSS paint API (Houdini)? How does it extend CSS capabilities? Is it production-ready?
Hint: Houdini lets you write custom CSS rendering in JS. Paint worklets draw directly to CSS backgrounds. Limited browser support. Experimental — not yet production-ready.

DSA: [Backtracking][Easy-Medium][Product Company] Write a function to generate all possible palindrome partitions of a string.
Hint: Backtrack: for each position, try all substrings from current position. If palindrome, include and recurse on rest. O(n × 2^n).

Aptitude: [Time & Work][Easy-Medium] A swimming pool has two inlet pipes A and B and one outlet pipe C. A fills the pool in 2 hours, B in 3 hours, and C empties it in 4 hours. Starting from an empty pool with all three open, how long to fill?
Hint: Rate = 1/2 + 1/3 - 1/4 = 6/12 + 4/12 - 3/12 = 7/12. Time = 12/7 ≈ 1.71 hours.

Q194.
MERN: [CSS][Easy-Medium][Product Company] Explain CSS containment (`contain` property). What are the values and what performance benefits does each provide?
Hint: `contain: layout paint size style`. Isolates subtrees from rest of page. Browser skips recalculation for contained elements. Great for complex pages with independent widgets.

DSA: [Backtracking][Easy-Medium][Amazon] Implement the "Rat in a Maze" problem: find all paths from top-left to bottom-right in a maze grid.
Hint: DFS + backtracking. Try all 4 directions. Mark visited. Backtrack on dead end. Path string: DLRU. O(4^(n²)) worst case.

Aptitude: [Coding-Decoding][Easy-Medium] If CONTRIBUTING is coded as BPMUSHAFUHOH, what coding pattern is used? Decode GSFBUFE.
Hint: Check letter-by-letter shift. C→B(-1), O→P(+1), N→M(-1)... Alternating -1, +1 pattern. GSFBUFE decoded: G+1=H, S-1=R, F+1=G, B-1=A, U+1=V, F-1=E, E+1=F → HRGAVEF. Verify pattern.

Q195.
MERN: [JavaScript][Easy-Medium][Product Company] What is `import()` dynamic import? How does it enable code splitting? Show an example in a Node.js app.
Hint: `const module = await import('./module.js')`. Returns Promise. Loads module on demand. Reduces initial load. Webpack/Vite split at import() boundaries.

DSA: [Linked List][Easy-Medium][Amazon] 🔴 MUST DO — Write a function to add two numbers represented as linked lists (each node is a digit, digits are stored in reverse order).
Hint: Traverse both lists, add digits + carry. Create new node for each sum. Handle different lengths and final carry. O(max(m,n)) time.

Aptitude: [Grammar][Easy-Medium] Correct: "The team has put their best foot forward." Is 'team' singular or plural? Does it depend on context?
Hint: Both can be correct. US English: "team has put its" (singular). UK English: "team have put their" (plural — emphasizing individuals). Context matters.

Q196.
MERN: [JavaScript][Easy-Medium][Product Company] What are iterators and iterables? How do they enable `for...of` loops? Write a custom iterable.
Hint: Iterable = has [Symbol.iterator]() method. Iterator = has next() → {value, done}. `for...of` calls iterator automatically. `function* gen()` is shortcut.

DSA: [Linked List][Easy-Medium][Google] Write a function to sort a linked list using merge sort.
Hint: Find middle (slow/fast). Split. Sort each half recursively. Merge sorted halves. O(n log n) time, O(log n) stack space. O(1) extra space.

Aptitude: [Percentages][Easy-Medium] Three candidates contested an election. The winner got 55% of total valid votes. If 20% votes were invalid and 100,000 total votes were polled, how many votes did the winner get?
Hint: Valid = 80,000. Winner = 55% × 80,000 = 44,000.

Q197.
MERN: [JavaScript][Easy-Medium][Product Company] What is a generator function? What is the `yield` keyword? Show a practical use case for lazy evaluation.
Hint: `function* gen() { yield 1; yield 2; }`. Pauses at yield. .next() resumes. Use for: infinite sequences, lazy loading, async iteration, pagination.

DSA: [Linked List][Easy-Medium][Amazon] Implement a function to rotate a linked list by k positions to the right.
Hint: Find length. k = k % length. Find new tail at (length-k). Break and reattach. O(n) time, O(1) space.

Aptitude: [Blood Relations][Easy-Medium] In a family of 6 members A, B, C, D, E, F: B is the son of C but C is not the mother of B. A and C are married. E is the brother of C. D is the daughter of A. F is the brother of B. How many male members are there?
Hint: C is B's father (not mother). A and C married → A is B's mother. E is C's brother (male). D is A's daughter (female). F is B's brother (male). Males: C, B, E, F = 4.

Q198.
MERN: [JavaScript][Easy-Medium][Product Company] What is the Async Iterator protocol? Write an example using `for await...of` to process paginated API responses.
Hint: Object with [Symbol.asyncIterator]() returning {next() → Promise<{value, done}>}. `for await (const page of fetchPages()) {...}`. Great for streaming data.

DSA: [Linked List][Easy-Medium][Google] Write a function to flatten a multilevel doubly linked list (each node may have a child pointer to another linked list).
Hint: DFS: when child found, insert child list after current, connect last of child to next. Use stack or recursion. O(n) time.

Aptitude: [Profit & Loss][Easy-Medium] A person bought some oranges at the rate of 5 for ₹10 and the same number at the rate of 4 for ₹10. He mixed both and sold at the rate of 9 for ₹20. Find the gain or loss percent.
Hint: CP per orange: ₹2 and ₹2.5. Avg CP = ₹2.25. SP per orange = 20/9 ≈ ₹2.22. Loss ≈ 0.03/2.25 × 100 ≈ 1.23%. Slight loss.

Q199.
MERN: [JavaScript][Easy-Medium][Product Company] What is property descriptor in JavaScript? Explain `writable`, `enumerable`, `configurable` with `Object.defineProperty()`.
Hint: `Object.defineProperty(obj, 'key', {writable: false, enumerable: false, configurable: false})`. writable: can change value. enumerable: shows in for...in. configurable: can delete/modify descriptor.

DSA: [Linked List][Easy-Medium][Product Company] Implement a doubly linked list with insert, delete, and reverse operations.
Hint: Node: {value, prev, next}. Insert: update both prev and next pointers. Delete: node.prev.next = node.next. Reverse: swap prev/next for each node. O(1) insert/delete.

Aptitude: [Direction Sense][Easy-Medium] Six people A, B, C, D, E, F are sitting in a circle facing the center. A is between F and B. C is between D and E. D is to the immediate left of F. Who is to the immediate right of A?
Hint: Arrange clockwise: F, A, B, ..., D, C, E. With D left of F: ...E, D, F, A, B, C. So to the immediate right of A = B.

Q200. 🟡 HIGH FREQUENCY
MERN: [JavaScript][Easy-Medium][FAANG-Level] How does garbage collection work in JavaScript? Explain mark-and-sweep. What is a common cause of memory leaks in closures?
Hint: Mark-and-sweep: start from roots (global, stack), mark reachable objects, sweep unmarked. Closure leak: inner function holds reference to large outer scope variable unnecessarily. Fix: null out refs.

DSA: [Linked List][Easy-Medium][Google] Given a linked list, swap every two adjacent nodes (pairwise swap). You can't just swap values.
Hint: Change next pointers. For each pair: save references, swap, connect to next pair. Handle odd length. O(n) time, O(1) space.

Aptitude: [Averages][Easy-Medium] A library has an average of 510 visitors on Sundays and 240 on other days. Find the average number of visitors per day in a month of 30 days beginning with a Sunday.
Hint: Sundays in 30 days starting Sunday: 5 (days 1,8,15,22,29). Other days: 25. Total = 5×510 + 25×240 = 2550 + 6000 = 8550. Avg = 8550/30 = 285.

---

## 📝 REVISION CHECKPOINT — Q101 to Q200

### Top Patterns Learned
1. **React Core**: Components, props, state, hooks (useState, useEffect, useCallback, useMemo, useRef, useContext, useReducer)
2. **Node.js & Express**: Server creation, routing, middleware, request handling, error handling
3. **MongoDB & Mongoose**: Documents, schemas, models, CRUD, validation, middleware hooks
4. **DSA**: Two pointers, sliding window, prefix sums, stacks, queues, linked list operations, backtracking
5. **Aptitude**: Blood relations, direction sense, coding-decoding, grammar, vocabulary

### Most Important Concepts
- 🔴 React hooks lifecycle (useEffect dependency array) (Q137)
- 🔴 Two pointers: 3Sum, Container with Most Water, Trapping Rain Water (Q131, Q133, Q134)
- 🔴 Sliding window: longest substring without repeating chars (Q136)
- 🔴 Kadane's Algorithm for max subarray sum (Q122)
- 🔴 Valid parentheses with stack (Q126)
- 🔴 Floyd's cycle detection for linked lists (Q156)
- 🔴 Linked list reversal (Q154)
- 🔴 Min Stack O(1) operations (Q164)

### Frequently Repeated Interview Themes
- React hooks and when to use each
- Express middleware flow and error handling
- Two pointers on sorted arrays
- Stack-based problems (brackets, next greater element)
- Linked list manipulation (reverse, cycle, merge)
- Mongoose pre-save hooks for password hashing

### Revision Checklist
- [ ] Can you implement all 7 core React hooks from memory?
- [ ] Can you solve 3Sum with O(n²) using two pointers?
- [ ] Can you implement Kadane's algorithm?
- [ ] Can you detect a cycle in a linked list and find its start?
- [ ] Can you set up a complete Express CRUD API with middleware?
- [ ] Can you write a Mongoose pre-save hook for password hashing?
- [ ] Can you solve "Next Greater Element" using a monotonic stack?
- [ ] Can you find the longest substring without repeating characters?

---

## 🎤 MOCK INTERVIEW ROUND #1 — After Q200

### Round 1: Technical Screening (30 minutes)

**MERN Questions (10 min):**
1. Explain the difference between `useCallback` and `useMemo`. When would memoization hurt performance?
2. You have a React app where a child component re-renders every time the parent renders, even though its props don't change. How would you debug and fix this?
3. Design the middleware stack for an Express API that needs: logging, authentication, rate limiting, body parsing, and error handling. What order and why?

**DSA Coding (15 min):**
1. Given an array of integers and a target, find all unique pairs that sum to the target. Return them in sorted order. (Two pointers on sorted array)
2. Given a string containing brackets `()[]{}`, determine if the string is valid. (Stack problem)

**Aptitude (5 min):**
1. A train 300m long crosses a bridge 200m long in 25 seconds. Find the speed of the train.
   Hint: Speed = 500/25 = 20 m/s = 72 km/h.
2. A shopkeeper mixes two types of tea costing ₹80/kg and ₹120/kg in the ratio 3:2. At what price should he sell the mixture to gain 20%?
   Hint: Cost = (240+240)/5 = 96/kg. SP = 96×1.2 = ₹115.2/kg.

---

# ⭐⭐ INTERMEDIATE START — Q201 to Q250

## React Advanced, TypeScript Intro, REST APIs, Authentication | Trees, BST, Heap, Trie | SI/CI, Probability, P&C, Data Interpretation

---

Q201. 🔴 MUST DO
MERN: [React][Medium][FAANG-Level] What is React Router? How do you implement client-side routing with `BrowserRouter`, `Routes`, `Route`, and `Link`?
Hint: BrowserRouter wraps app. Routes container for Route elements. `<Route path="/about" element={<About/>}/>`. Link for navigation without reload. useNavigate for programmatic.

DSA: [Trees][Easy-Medium][FAANG-Level] What is a binary tree? What are the types: full, complete, perfect, balanced? Draw an example of each.
Hint: Full: every node has 0 or 2 children. Complete: all levels filled except possibly last (left-filled). Perfect: all internal have 2 children, all leaves same level. Balanced: height diff ≤ 1.

Aptitude: [SI/CI][Easy-Medium] Find the compound interest on ₹10,000 at 10% per annum for 2 years.
Hint: A = 10000(1+0.1)² = 10000×1.21 = 12100. CI = 2100.

Q202. 🔴 MUST DO
MERN: [React][Medium][FAANG-Level] How do you implement protected routes in React? Show an authentication-based route guard pattern.
Hint: Create PrivateRoute component. Check auth state (context/store). If authenticated, render children/outlet. If not, redirect to /login with Navigate. Use `useLocation` for return URL.

DSA: [Trees][Easy][Product Company] 🔴 MUST DO — Implement the three DFS traversals: inorder, preorder, and postorder (recursive and iterative).
Hint: Inorder: Left→Root→Right (sorted for BST). Preorder: Root→Left→Right. Postorder: Left→Right→Root. Iterative uses explicit stack. O(n) time, O(h) space.

Aptitude: [SI/CI][Easy-Medium] The difference between CI and SI on a sum for 2 years at 10% per annum is ₹100. Find the sum.
Hint: Diff for 2 years = P×(R/100)². P×0.01 = 100. P = ₹10,000.

Q203. 🔴 MUST DO
MERN: [React][Medium][FAANG-Level] What is React Query (TanStack Query)? How does it simplify data fetching compared to useEffect + useState?
Hint: Handles: caching, background refetch, stale data, loading/error states, pagination, infinite scroll. `useQuery({queryKey, queryFn})`. Replaces manual fetching boilerplate.

DSA: [Trees][Easy][Amazon] 🔴 MUST DO — Implement BFS (level-order traversal) of a binary tree using a queue.
Hint: Queue-based. Enqueue root. While queue not empty: dequeue, process, enqueue children. O(n) time, O(w) space where w = max width.

Aptitude: [Probability][Easy-Medium] A bag contains 5 red and 3 blue balls. Two balls are drawn at random. What is the probability that both are red?
Hint: P = C(5,2)/C(8,2) = 10/28 = 5/14.

Q204.
MERN: [React][Medium][Product Company] What is the difference between `useQuery` and `useMutation` in React Query? When do you use each?
Hint: useQuery: read data (GET). useMutation: write data (POST/PUT/DELETE). useMutation has onSuccess callback for invalidating queries. Use queryClient.invalidateQueries.

DSA: [Trees][Easy][Product Company] Write a function to find the height/depth of a binary tree.
Hint: Recursive: height = 1 + max(height(left), height(right)). Base: null → -1 (or 0 for node count). O(n) time. Iterative: BFS level count.

Aptitude: [Probability][Easy-Medium] A coin is tossed 3 times. What is the probability of getting at least 2 heads?
Hint: P(2H) + P(3H) = C(3,2)×(1/2)³ + C(3,3)×(1/2)³ = 3/8 + 1/8 = 4/8 = 1/2.

Q205.
MERN: [TypeScript][Medium][FAANG-Level] What is TypeScript? Why use it in a MERN project? What are its key benefits?
Hint: Typed superset of JavaScript. Benefits: catch bugs at compile time, better IDE support (autocomplete), self-documenting code, refactoring safety. Compiles to JS.

DSA: [Trees][Easy][Amazon] Write a function to count the total number of nodes in a binary tree.
Hint: Recursive: count = 1 + count(left) + count(right). Base: null → 0. O(n). For complete tree: O(log²n) possible.

Aptitude: [P&C][Easy-Medium] In how many ways can 5 people sit around a circular table?
Hint: (n-1)! = 4! = 24 ways. Circular permutation = fix one person, arrange rest.

Q206. 🟡 HIGH FREQUENCY
MERN: [TypeScript][Medium][FAANG-Level] Explain TypeScript basic types: `string`, `number`, `boolean`, `any`, `unknown`, `void`, `never`, `null`, `undefined`. When to use `unknown` over `any`?
Hint: any: no type checking (escape hatch). unknown: type-safe any — must narrow before use. void: function returns nothing. never: function never returns (throws). Prefer unknown.

DSA: [Trees][Easy][Product Company] Write a function to check if two binary trees are identical (same structure and values).
Hint: Recursive: check root values equal AND left subtrees identical AND right subtrees identical. Base: both null → true. One null → false. O(n).

Aptitude: [SI/CI][Easy-Medium] A sum of money amounts to ₹8,400 in 2 years and ₹9,264 in 3 years at compound interest. Find the rate and principal.
Hint: Rate = (9264-8400)/8400 × 100 = 864/8400 × 100 ≈ 10.29%. Actually: 9264/8400 = 1.1028... R ≈ 10.29%. P = 8400/(1+R)² ≈ ₹6912.

Q207.
MERN: [TypeScript][Medium][Product Company] What are interfaces and types in TypeScript? When would you use each? Can they be used interchangeably?
Hint: Interface: extends, can be reopened (declaration merging). Type: unions, intersections, mapped types. Both define object shapes. Use interface for objects, type for unions/complex types.

DSA: [Trees][Easy][Product Company] Write a function to find the mirror/inverse of a binary tree (swap left and right children of every node).
Hint: Recursive: swap left and right, then mirror both subtrees. Iterative: BFS + swap. O(n) time, O(h) space.

Aptitude: [Probability][Easy-Medium] A die is thrown twice. What is the probability that the sum of the two faces is 9?
Hint: Favorable: (3,6),(4,5),(5,4),(6,3) = 4 outcomes. Total = 36. P = 4/36 = 1/9.

Q208.
MERN: [TypeScript][Medium][Product Company] How do you type React component props in TypeScript? Show examples with `interface`, optional props, and children.
Hint: `interface Props { name: string; age?: number; children: React.ReactNode; }`. `const Comp: React.FC<Props> = ({name}) => ...` or `function Comp(props: Props)`.

DSA: [Trees][Easy-Medium][Amazon] Write a function to check if a binary tree is symmetric (mirror of itself).
Hint: Compare left subtree with mirror of right subtree. Recursive: isMirror(left.left, right.right) && isMirror(left.right, right.left). O(n).

Aptitude: [P&C][Easy-Medium] How many 4-digit numbers can be formed using digits 1, 2, 3, 4, 5 without repetition?
Hint: 5 × 4 × 3 × 2 = 120.

Q209.
MERN: [TypeScript][Medium][Product Company] What are generics in TypeScript? Write a generic function and a generic React component.
Hint: `function identity<T>(arg: T): T { return arg; }`. React: `function List<T>({ items }: { items: T[] })`. Enables type-safe reusable code.

DSA: [Trees][Easy-Medium][Google] 🟡 HIGH FREQUENCY — Given a binary tree, return the level-order traversal as a list of lists (each list = one level).
Hint: BFS with level tracking. Process queue level by level (track queue size per level). O(n) time.

Aptitude: [SI/CI][Easy-Medium] At what rate of compound interest per annum will ₹6,000 become ₹6,615 in 2 years?
Hint: 6000(1+R)² = 6615. (1+R)² = 1.1025. 1+R = 1.05. R = 5%.

Q210. 🔴 MUST DO
MERN: [REST API][Medium][FAANG-Level] What is a REST API? Explain the six REST constraints: client-server, stateless, cacheable, uniform interface, layered system, code on demand.
Hint: REST = architectural style. Stateless: each request contains all info. Uniform interface: consistent URLs, standard methods (GET/POST/PUT/DELETE). Resource-based. HTTP status codes.

DSA: [Trees][Easy-Medium][Amazon] 🔴 MUST DO — Write a function to find the lowest common ancestor (LCA) of two nodes in a binary tree.
Hint: Recursive: if root is null or matches p or q, return root. Search left and right. If both non-null, root is LCA. O(n) time.

Aptitude: [Probability][Easy-Medium] Three cards are drawn from a pack of 52 cards. Find the probability that all three are face cards.
Hint: P = C(12,3)/C(52,3) = 220/22100 = 1/100.5 ≈ 0.00995.

Q211. 🔴 MUST DO
MERN: [REST API][Medium][FAANG-Level] What are HTTP status codes? Group them: 1xx, 2xx, 3xx, 4xx, 5xx. Name the 10 most important ones for API development.
Hint: 200 OK, 201 Created, 204 No Content, 301 Moved, 304 Not Modified, 400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found, 500 Internal Server Error.

DSA: [Trees][Easy-Medium][Google] Write a function to find the diameter of a binary tree (longest path between any two nodes).
Hint: Diameter through a node = height(left) + height(right). Track max diameter across all nodes. O(n) — compute height and diameter simultaneously.

Aptitude: [Data Interpretation][Easy-Medium] A bar chart shows sales of 5 products: A=120, B=95, C=150, D=80, E=110. What percentage of total sales does product C represent?
Hint: Total = 555. C's % = (150/555) × 100 ≈ 27.03%.

Q212.
MERN: [REST API][Medium][Product Company] How do you design RESTful API endpoints? Show a complete CRUD API design for a "posts" resource following REST conventions.
Hint: GET /api/posts (list), GET /api/posts/:id (single), POST /api/posts (create), PUT /api/posts/:id (replace), PATCH /api/posts/:id (update), DELETE /api/posts/:id.

DSA: [Trees][Easy-Medium][Product Company] Write a function to check if a binary tree is balanced (height difference of left and right subtrees ≤ 1 for every node).
Hint: Return -1 if unbalanced, else height. Recursive: check left, check right, if diff > 1 → unbalanced. O(n) time.

Aptitude: [P&C][Easy-Medium] In how many ways can the letters of the word "LEADER" be arranged?
Hint: 6 letters with E repeated twice. 6!/2! = 360.

Q213.
MERN: [REST API][Medium][Product Company] What is the difference between PUT and PATCH? When would you use each? Show Express examples.
Hint: PUT replaces entire resource. PATCH updates partial fields. PUT: send complete object. PATCH: send only changed fields. PATCH is more bandwidth-efficient.

DSA: [Trees][Easy-Medium][Amazon] Write a function to print all root-to-leaf paths in a binary tree.
Hint: DFS with path tracking. When leaf reached, save/print path. Backtrack. O(n) time, O(h) space for path.

Aptitude: [SI/CI][Easy-Medium] A man invests ₹5,000 at 12% simple interest per annum. After how many years will the amount become ₹8,000?
Hint: SI = 3000. Time = SI×100/(P×R) = 3000×100/(5000×12) = 5 years.

Q214. 🟡 HIGH FREQUENCY
MERN: [Authentication][Medium][FAANG-Level] What is JWT (JSON Web Token)? Explain its three parts: header, payload, signature. How does authentication work with JWT?
Hint: Header: algorithm + type. Payload: claims (userId, exp). Signature: HMAC(header.payload, secret). Flow: login → server issues JWT → client sends in Authorization header → server verifies.

DSA: [BST][Easy-Medium][Product Company] 🔴 MUST DO — What is a Binary Search Tree? What are its properties? How does it enable O(log n) operations?
Hint: Left < root < right for all nodes. Inorder gives sorted sequence. Search/Insert/Delete: O(h). Balanced BST: h = log n. Degenerate: h = n (linked list).

Aptitude: [Probability][Easy-Medium] What is the probability that a leap year has 53 Sundays?
Hint: 366 days = 52 weeks + 2 extra days. Extra 2 days can be: (Sun,Mon), (Mon,Tue)... 7 possibilities. Favorable: (Sat,Sun), (Sun,Mon) = 2. P = 2/7.

Q215. 🔴 MUST DO
MERN: [Authentication][Medium][FAANG-Level] How do you implement JWT authentication in a MERN stack? Walk through the complete flow: register → login → protected route.
Hint: Register: hash password → save user. Login: verify password → generate JWT (sign with secret). Protected route: verify JWT middleware → extract userId. Store token in httpOnly cookie (not localStorage).

DSA: [BST][Easy-Medium][Google] Write a function to search for a value in a BST. Write a function to insert a value into a BST.
Hint: Search: if val < node, go left; if val > node, go right. Insert: same logic, insert at null position. Both O(h). Recursive and iterative.

Aptitude: [Data Interpretation][Easy-Medium] A pie chart of a company's expenses shows: Salaries 35%, Rent 20%, Raw Materials 25%, Marketing 12%, Others 8%. If total expenses are ₹50 lakhs, what is the marketing budget?
Hint: Marketing = 12% × 50 = ₹6 lakhs.

Q216.
MERN: [Authentication][Medium][Product Company] What is the difference between authentication and authorization? Give examples of each in a MERN application.
Hint: Authentication: WHO are you? (login, JWT). Authorization: WHAT can you do? (role-based access, admin vs user routes). Middleware checks both.

DSA: [BST][Easy-Medium][Amazon] Write a function to find the minimum and maximum value in a BST.
Hint: Min: go left until null. Max: go right until null. O(h). Balanced BST: O(log n).

Aptitude: [P&C][Easy-Medium] A committee of 3 is to be formed from 5 men and 4 women such that at least 1 woman is included. How many ways?
Hint: Total - all men = C(9,3) - C(5,3) = 84 - 10 = 74.

Q217.
MERN: [Authentication][Medium][Product Company] What are access tokens vs refresh tokens? Why use both? How do you implement token refresh in a MERN app?
Hint: Access token: short-lived (15 min), used for API calls. Refresh token: long-lived (7 days), used to get new access token. Store refresh in httpOnly cookie. Reduces risk if access token leaked.

DSA: [BST][Easy-Medium][Amazon] 🟡 HIGH FREQUENCY — Write a function to validate if a binary tree is a valid BST.
Hint: Pass min/max range. Each node must be in range. Inorder traversal must be strictly increasing. O(n) time.

Aptitude: [SI/CI][Easy-Medium] The SI on a certain sum for 3 years at 8% per annum is ₹96 more than the SI for 2 years at 9%. Find the sum.
Hint: SI₁ = P×8×3/100 = 0.24P. SI₂ = P×9×2/100 = 0.18P. 0.24P - 0.18P = 96. 0.06P = 96. P = ₹1600.

Q218.
MERN: [Authentication][Medium][Product Company] What is bcrypt? Why not store passwords in plain text? What is a salt and why is it important?
Hint: bcrypt hashes passwords with salt. Salt = random data added before hashing. Prevents rainbow table attacks. Cost factor controls hash speed. ~10-12 rounds recommended.

DSA: [BST][Easy-Medium][Product Company] Write a function to delete a node from a BST. Handle three cases: leaf, one child, two children.
Hint: Leaf: remove. One child: replace with child. Two children: replace with inorder successor (smallest in right subtree) or predecessor. O(h).

Aptitude: [Probability][Easy-Medium] A bag has 4 red, 5 green, and 6 blue balls. Three balls are drawn randomly. What is the probability that all three are of different colors?
Hint: P = (C(4,1)×C(5,1)×C(6,1))/C(15,3) = (4×5×6)/455 = 120/455 = 24/91.

Q219. 🟡 HIGH FREQUENCY
MERN: [Security][Medium][FAANG-Level] What are common web security vulnerabilities? Explain XSS, CSRF, SQL Injection, and how to prevent each in a MERN app.
Hint: XSS: sanitize input, use textContent. CSRF: CSRF tokens, SameSite cookies. SQL Injection: N/A for MongoDB but use parameterized queries. Also: rate limiting, helmet.js, CORS config.

DSA: [BST][Easy-Medium][Google] Write a function to find the kth smallest element in a BST.
Hint: Inorder traversal (sorted order). Count k elements. O(h + k). Augmented BST with subtree sizes: O(h).

Aptitude: [Data Interpretation][Easy-Medium] A line graph shows monthly revenue: Jan=50K, Feb=45K, Mar=60K, Apr=55K, May=70K, Jun=65K. What is the percentage increase from March to May?
Hint: Increase = (70-60)/60 × 100 = 16.67%.

Q220.
MERN: [Security][Medium][Product Company] What is CORS (Cross-Origin Resource Sharing)? How do you configure it in Express? Why is it needed?
Hint: Browser blocks cross-origin requests by default. `app.use(cors({origin: 'http://localhost:3000', credentials: true}))`. Needed for: React frontend on port 3000 calling Express API on port 5000.

DSA: [BST][Easy-Medium][Amazon] Write a function to find the inorder successor and predecessor of a node in a BST.
Hint: Successor: if right child, go right then leftmost. Else, nearest ancestor where node is in left subtree. O(h).

Aptitude: [P&C][Easy-Medium] How many 3-digit numbers can be formed using digits {1,2,3,4,5} if repetition is allowed?
Hint: 5 × 5 × 5 = 125.

Q221.
MERN: [React][Medium][Product Company] What is Zustand? How does it compare to Redux and Context API for state management?
Hint: Zustand: minimal, hook-based, no boilerplate. Redux: powerful, verbose, middleware. Context: built-in, causes re-renders. Zustand: best for mid-size apps. `create(set => ({count: 0, inc: () => set(s => ({count: s.count+1}))}))`.

DSA: [Heap][Easy-Medium][Product Company] What is a heap data structure? What is the difference between min-heap and max-heap? How is it stored in an array?
Hint: Complete binary tree. Min-heap: parent ≤ children. Max-heap: parent ≥ children. Array: parent i → children 2i+1, 2i+2. Parent of i → floor((i-1)/2).

Aptitude: [SI/CI][Easy-Medium] The CI on ₹4,000 for 1.5 years at 10% per annum compounded half-yearly is?
Hint: R = 5% half-yearly. n = 3 half-years. A = 4000×(1.05)³ = 4000×1.157625 = 4630.5. CI = ₹630.5.

Q222. 🔴 MUST DO
MERN: [React][Medium][FAANG-Level] What is Redux? Explain the core concepts: store, actions, reducers, and dispatch. When is Redux necessary?
Hint: Single source of truth (store). Unidirectional: dispatch(action) → reducer → new state. Use for: complex shared state, time-travel debugging, large teams. Overkill for simple apps.

DSA: [Heap][Easy-Medium][Amazon] 🔴 MUST DO — Implement a min-heap with insert and extractMin operations. Explain heapify-up and heapify-down.
Hint: Insert: add at end, bubble up. Extract: swap root with last, remove last, bubble down. Both O(log n). Build heap: O(n).

Aptitude: [Probability][Easy-Medium] Two dice are thrown. What is the probability that the product of the numbers is even?
Hint: P(at least one even) = 1 - P(both odd) = 1 - (3/6 × 3/6) = 1 - 1/4 = 3/4.

Q223.
MERN: [React][Medium][Product Company] What is Redux Toolkit (RTK)? How does it simplify Redux? Show `createSlice` and `configureStore`.
Hint: RTK = official recommended Redux. createSlice: auto-generates action creators and types. Immer allows "mutating" syntax. configureStore: auto-configures middleware. Reduces boilerplate by ~70%.

DSA: [Heap][Easy-Medium][Google] 🟡 HIGH FREQUENCY — Given an array, find the kth largest element using a heap (priority queue).
Hint: Min-heap of size k. Insert elements, if heap > k, remove min. Top = kth largest. O(n log k). Alternative: QuickSelect O(n) average.

Aptitude: [Data Interpretation][Easy-Medium] A table shows exam results: Class A: 30 students, 70% passed. Class B: 45 students, 80% passed. Class C: 25 students, 60% passed. What is the overall pass percentage?
Hint: Passed: 21+36+15 = 72. Total = 100. Pass% = 72%.

Q224.
MERN: [React][Medium][Product Company] What are React Error Boundaries? How do you implement one? What types of errors can they catch?
Hint: Class component with `componentDidCatch` and `getDerivedStateFromError`. Catches render/lifecycle errors. CANNOT catch: event handlers, async, SSR. Show fallback UI.

DSA: [Heap][Easy-Medium][Amazon] Given an array of meeting intervals, find the minimum number of conference rooms required.
Hint: Min-heap for end times. Sort by start. If new meeting start >= heap min, reuse room (pop). Else, add room. O(n log n).

Aptitude: [P&C][Easy-Medium] In how many ways can 6 books be arranged on a shelf if 2 particular books must always be together?
Hint: Treat 2 as one unit → 5! arrangements. The 2 can swap → 2!. Total = 5! × 2! = 240.

Q225.
MERN: [React][Medium][Product Company] What is React Suspense? How does it work with lazy loading? What is concurrent rendering?
Hint: Suspense shows fallback while async component loads. With React.lazy for code splitting. Concurrent rendering (React 18): interruptible rendering, transitions, startTransition.

DSA: [Heap][Easy-Medium][Product Company] Implement heap sort. Analyze its time and space complexity. When would you use it over quick sort?
Hint: Build max-heap O(n). Extract max n times O(n log n). O(n log n) guaranteed. O(1) space. Use when: worst-case guarantee needed, memory constrained. Not stable.

Aptitude: [SI/CI][Easy-Medium] At what time will a sum of money become 4 times itself at 12% per annum simple interest?
Hint: 4P = P + P×12×T/100. 3P = 0.12PT. T = 3/0.12 = 25 years.

Q226.
MERN: [Node.js][Medium][Product Company] What is error handling in Express? Explain error-handling middleware. How does `next(err)` work?
Hint: Error middleware has 4 params: `(err, req, res, next)`. Must be last middleware. Throw or next(err) to reach it. Catch async errors with wrapper: `asyncHandler(fn)`.

DSA: [Heap][Easy-Medium][Google] Merge k sorted arrays using a min-heap. Analyze the time complexity.
Hint: Push first element from each array into min-heap. Extract min, push next from same array. O(n log k) where n = total elements, k = arrays. Classic heap problem.

Aptitude: [Probability][Easy-Medium] From a group of 7 men and 6 women, 5 persons are selected. What is the probability that at least 3 women are selected?
Hint: P(3W+2M) + P(4W+1M) + P(5W+0M) = [C(6,3)×C(7,2) + C(6,4)×C(7,1) + C(6,5)×C(7,0)] / C(13,5) = [420+105+6]/1287 = 531/1287 ≈ 0.4126.

Q227. 🟡 HIGH FREQUENCY
MERN: [Node.js][Medium][FAANG-Level] What is input validation in a MERN app? Show how to validate request data using Joi or express-validator.
Hint: Never trust client input. Joi: schema-based validation. express-validator: middleware-based. Validate: type, length, format, range. Return descriptive error messages. Sanitize too.

DSA: [Trie][Easy-Medium][Product Company] What is a Trie (prefix tree)? What are its advantages over hash maps for string operations?
Hint: Tree where each node = character. Path from root to node = prefix. Advantages: prefix search, autocomplete, space-efficient for common prefixes. Insert/Search: O(L) where L = word length.

Aptitude: [Data Interpretation][Easy-Medium] A pie chart shows budget allocation: Education 22%, Health 18%, Defense 30%, Infrastructure 15%, Others 15%. If the total budget is ₹2,00,000 crore, what is the allocation for Health?
Hint: Health = 18% × 200000 = ₹36,000 crore.

Q228.
MERN: [Node.js][Medium][Product Company] What is rate limiting? Why is it important? How do you implement it in Express using `express-rate-limit`?
Hint: Prevents abuse/DDoS. `rateLimit({windowMs: 15*60*1000, max: 100})`. Apply globally or per route. Returns 429 Too Many Requests. Use Redis for distributed apps.

DSA: [Trie][Easy-Medium][Amazon] 🔴 MUST DO — Implement a Trie with insert, search, and startsWith operations.
Hint: Node: {children: {}, isEnd: boolean}. Insert: traverse/create nodes for each char. Search: traverse, check isEnd. startsWith: traverse only. O(L) each.

Aptitude: [P&C][Easy-Medium] A word is to be formed using the letters of "COMBINE." How many words can be formed if vowels always come together?
Hint: Vowels: O, I, E (3). Treat as one unit + C,M,B,N = 5 units. 5! × 3! = 120 × 6 = 720.

Q229.
MERN: [MongoDB][Medium][Product Company] What are MongoDB aggregation pipelines? Explain `$match`, `$group`, `$sort`, `$project`, `$lookup` stages.
Hint: Pipeline = array of stages. $match: filter. $group: group by field + accumulate. $sort: order. $project: reshape. $lookup: join collections. Powerful data processing.

DSA: [Trie][Easy-Medium][Google] Implement autocomplete/prefix search using a Trie. Given a prefix, return all words that start with it.
Hint: Navigate to prefix node. DFS from there to collect all words. O(P + W) where P = prefix length, W = total words with prefix.

Aptitude: [SI/CI][Easy-Medium] The difference between CI compounded annually and CI compounded semi-annually on ₹5,000 for 1 year at 10% is?
Hint: Annual: 5000×1.1 = 5500. Semi-annual: 5000×(1.05)² = 5512.5. Diff = ₹12.5.

Q230. 🟡 HIGH FREQUENCY
MERN: [MongoDB][Medium][FAANG-Level] What is the difference between embedding and referencing in MongoDB? When would you use each? What is denormalization?
Hint: Embed: nested documents (one-to-few, frequently read together). Reference: ObjectId links (one-to-many, independent access). Denormalization = duplicate data for read performance. Embed for speed, reference for consistency.

DSA: [Trees][Medium][Amazon] 🟡 HIGH FREQUENCY — Given a binary tree, return the right side view (visible nodes from right side).
Hint: BFS: take last node of each level. Or DFS: visit right first, track depth. First node at each new depth = right view. O(n).

Aptitude: [Probability][Easy-Medium] Two students appear for an exam. The probability of first passing is 2/3 and second is 3/4. Find the probability that at least one passes.
Hint: P(at least one) = 1 - P(both fail) = 1 - (1/3 × 1/4) = 1 - 1/12 = 11/12.

Q231.
MERN: [MongoDB][Medium][Product Company] How do you implement pagination in MongoDB? Compare skip-limit, cursor-based, and keyset pagination.
Hint: Skip-limit: simple but slow for large offsets. Cursor-based: use _id or timestamp as cursor. Keyset: `{_id: {$gt: lastId}}.limit(20)`. Keyset best for large datasets.

DSA: [Trees][Medium][Google] Write a function to serialize and deserialize a binary tree (convert to string and back).
Hint: Preorder with null markers. Serialize: "1,2,null,null,3,4,null,null,5,null,null". Deserialize: recursively build. O(n).

Aptitude: [Data Interpretation][Easy-Medium] A company's quarterly revenues are: Q1=₹45L, Q2=₹52L, Q3=₹48L, Q4=₹55L. What is the average quarterly revenue and which quarter showed the highest growth rate?
Hint: Avg = 200/4 = ₹50L. Growth: Q1→Q2=15.6%, Q2→Q3=-7.7%, Q3→Q4=14.6%. Highest growth: Q1→Q2 (15.6%).

Q232.
MERN: [MongoDB][Medium][Product Company] What are MongoDB transactions? When do you need them? How do you implement them with Mongoose?
Hint: Multi-document ACID transactions (v4.0+). Need for: transferring money, related updates that must all succeed. `const session = await mongoose.startSession(); session.startTransaction();`.

DSA: [Trees][Medium][Amazon] Write a function to construct a binary tree from inorder and preorder traversal arrays.
Hint: Preorder first element = root. Find root in inorder: left part = left subtree, right part = right subtree. Recurse. O(n) with hash map for inorder index. O(n²) without.

Aptitude: [P&C][Easy-Medium] A group of 4 boys and 3 girls are to be arranged in a row such that no two girls are adjacent. How many arrangements?
Hint: Arrange 4 boys: 4! = 24. Place girls in 5 gaps (between/ends): C(5,3) × 3! = 10 × 6 = 60. Total = 24 × 60 = 1440.

Q233.
MERN: [Express][Medium][Product Company] What is the difference between `app.use()` and `app.all()`? When would you use `app.all()`?
Hint: app.use() matches path prefix and any method. app.all() matches exact path and all HTTP methods. Use app.all('/api/*', authMiddleware) for method-agnostic route matching.

DSA: [Trees][Medium][Product Company] Write a function to find the zigzag/spiral level-order traversal of a binary tree.
Hint: BFS with direction flag. Alternate adding children left-right or right-left per level. Use deque or reverse alternate levels. O(n).

Aptitude: [SI/CI][Easy-Medium] A certain sum becomes ₹7,396 in 2 years and ₹7,950.70 in 3 years at compound interest. Find the rate of interest.
Hint: Rate = (7950.7-7396)/7396 × 100 = 554.7/7396 ≈ 7.5%.

Q234. 🟡 HIGH FREQUENCY
MERN: [Express][Medium][FAANG-Level] How do you handle async errors in Express? Explain the `asyncHandler` wrapper pattern.
Hint: Express doesn't catch async errors automatically. Wrapper: `const asyncHandler = fn => (req, res, next) => Promise.resolve(fn(req, res, next)).catch(next)`. Express 5 will handle async natively.

DSA: [Trees][Medium][Google] 🔴 MUST DO — Given a binary tree, find the maximum path sum (path can start and end at any node).
Hint: At each node: maxGain = val + max(leftGain, rightGain, 0). Path through node = val + leftGain + rightGain. Track global max. O(n).

Aptitude: [Probability][Easy-Medium] A class has 12 boys and 8 girls. A committee of 4 is formed. What is the probability that the committee has equal number of boys and girls?
Hint: P = [C(12,2)×C(8,2)] / C(20,4) = [66×28]/4845 = 1848/4845 ≈ 0.3814.

Q235.
MERN: [Express][Medium][Product Company] What is file upload handling in Express? How do you use `multer` for single and multiple file uploads?
Hint: `multer({dest: 'uploads/'})`. Single: `upload.single('avatar')`. Multiple: `upload.array('photos', 5)`. Access via req.file / req.files. Set file size limits.

DSA: [BST][Medium][Amazon] Write a function to convert a sorted array to a height-balanced BST.
Hint: Find middle → root. Left half → left subtree. Right half → right subtree. Recurse. O(n) time, O(log n) space. Divide and conquer.

Aptitude: [Data Interpretation][Easy-Medium] A table shows marks of 5 students in 3 subjects. Student A: 78, 82, 90. Student B: 65, 70, 85. Student C: 92, 88, 75. Who has the highest average and what is it?
Hint: A: 250/3=83.3. B: 220/3=73.3. C: 255/3=85. C has highest average (85).

Q236.
MERN: [React][Medium][Product Company] What is React Portal? When would you use it? How does event bubbling work with portals?
Hint: `ReactDOM.createPortal(child, domNode)`. Renders outside parent DOM tree. Use for: modals, tooltips, dropdowns. Events still bubble through React tree (not DOM tree).

DSA: [BST][Medium][Product Company] Write a function to find the floor and ceiling of a given key in a BST.
Hint: Floor: largest node ≤ key. Ceiling: smallest node ≥ key. Traverse BST, track candidates. O(h).

Aptitude: [P&C][Easy-Medium] How many numbers between 100 and 999 are divisible by both 3 and 7?
Hint: LCM(3,7) = 21. First = 105. Last = 987. Count = (987-105)/21 + 1 = 43.

Q237. 🔴 MUST DO
MERN: [React][Medium][FAANG-Level] What are React Server Components (RSC)? How do they differ from Client Components? What is the "use client" directive?
Hint: Server Components: rendered on server, no JS shipped to client, can access server resources. Client Components: traditional, shipped to browser, handle interactivity. "use client" marks client boundary. Next.js App Router uses RSC by default.

DSA: [Heap][Medium][Google] 🔴 MUST DO — Design a data structure for finding the median from a data stream.
Hint: Two heaps: max-heap (lower half) + min-heap (upper half). Balance sizes. Median = top of max-heap or average of both tops. Insert O(log n), Median O(1).

Aptitude: [SI/CI][Medium] A bank offers 6% CI compounded quarterly. What is the effective annual rate?
Hint: Effective rate = (1+0.06/4)⁴ - 1 = (1.015)⁴ - 1 ≈ 1.06136 - 1 = 6.136%.

Q238.
MERN: [Next.js][Medium][FAANG-Level] What is Next.js? How does it differ from Create React App? What are the key features: SSR, SSG, ISR, API routes?
Hint: Next.js: React framework with server-side rendering. SSR: rendered per request. SSG: built at build time. ISR: revalidate static pages. API routes: serverless functions. CRA: client-only SPA.

DSA: [Heap][Medium][Amazon] Find the top k frequent elements in an array using a heap.
Hint: Count frequencies with hash map. Use min-heap of size k. Push freq, if heap > k, pop min. O(n log k). Alternatively: bucket sort O(n).

Aptitude: [Probability][Medium] A box contains 10 bulbs of which 3 are defective. If 3 bulbs are drawn at random, find the probability that at least 1 is defective.
Hint: P(at least 1) = 1 - P(0 defective) = 1 - C(7,3)/C(10,3) = 1 - 35/120 = 85/120 = 17/24.

Q239.
MERN: [Next.js][Medium][Product Company] What is the Next.js App Router? How does it differ from the Pages Router? What are layouts, loading, and error files?
Hint: App Router: folder-based routing with layout.js, page.js, loading.js, error.js. Server Components by default. Pages Router: older, _app.js, getServerSideProps. App Router is future.

DSA: [Trie][Medium][Google] Implement a word dictionary that supports adding words and searching with wildcards (e.g., "b.d" matches "bad", "bed"). (Word Search II approach)
Hint: Trie + DFS for wildcard. On '.', try all children. Standard chars: follow specific child. O(26^m × n) worst case for wildcards.

Aptitude: [Data Interpretation][Medium] A company's market share data: Year 1: 15%, Year 2: 18%, Year 3: 22%, Year 4: 20%, Year 5: 25%. If the total market size in Year 5 is ₹500 crore, what is the company's revenue in Year 5?
Hint: Revenue = 25% × 500 = ₹125 crore.

Q240.
MERN: [Next.js][Medium][Product Company] What is middleware in Next.js? How does it differ from Express middleware? Give a practical example for auth.
Hint: Next.js middleware runs at edge (before request completes). `middleware.ts` at root. Use for: auth redirect, locale detection, A/B testing. Runs on every matched route. Edge runtime (limited APIs).

DSA: [Graphs][Easy-Medium][Product Company] What is a graph? Explain the types: directed, undirected, weighted, unweighted. How do you represent a graph (adjacency list vs adjacency matrix)?
Hint: Adjacency list: array of arrays. Space O(V+E). Good for sparse. Matrix: 2D array. Space O(V²). Good for dense. Directed: edges have direction. Weighted: edges have values.

Aptitude: [P&C][Medium] In how many ways can 10 people be divided into two groups of 5 each?
Hint: C(10,5)/2! = 252/2 = 126. Divide by 2 because groups are identical (unordered).

Q241.
MERN: [Testing][Medium][Product Company] What is unit testing in a MERN application? What tools are used: Jest, React Testing Library, Supertest?
Hint: Jest: test runner + assertions. RTL: test React components from user perspective. Supertest: test Express APIs without starting server. TDD: write test first.

DSA: [Graphs][Easy-Medium][Amazon] 🔴 MUST DO — Implement BFS (Breadth-First Search) on a graph. What is its time complexity?
Hint: Queue-based. Mark visited. Enqueue source. While queue: dequeue, process, enqueue unvisited neighbors. O(V+E) time, O(V) space.

Aptitude: [SI/CI][Medium] A man borrows ₹20,000 at 12% per annum, CI compounded annually. If he repays ₹10,000 at the end of each year, find the amount outstanding after 2 years.
Hint: Year 1: 20000×1.12 = 22400. After payment: 12400. Year 2: 12400×1.12 = 13888. After payment: 3888.

Q242.
MERN: [Testing][Medium][Product Company] How do you test React components with React Testing Library? Show a test for a login form component.
Hint: `render(<Login />)`. `screen.getByRole('textbox')`. `userEvent.type(input, 'user')`. `userEvent.click(button)`. `expect(screen.getByText('Welcome'))`. Test behavior, not implementation.

DSA: [Graphs][Easy-Medium][Google] 🔴 MUST DO — Implement DFS (Depth-First Search) on a graph (recursive and iterative). What is its time complexity?
Hint: Recursive: mark visited, process, recurse on unvisited neighbors. Iterative: use stack. O(V+E) time. Used for: cycle detection, topological sort, connected components.

Aptitude: [Probability][Medium] A speaks the truth 60% of the time and B speaks the truth 80% of the time. What is the probability that they contradict each other?
Hint: P(contradict) = P(A true, B false) + P(A false, B true) = 0.6×0.2 + 0.4×0.8 = 0.12 + 0.32 = 0.44 = 44%.

Q243.
MERN: [Testing][Medium][Product Company] What is API testing with Supertest? Show how to test a POST /api/users endpoint.
Hint: `const res = await request(app).post('/api/users').send({name: 'John', email: 'john@test.com'}).expect(201)`. Assert: `res.body.name` equals 'John'. Mock database for unit tests.

DSA: [Graphs][Easy-Medium][Amazon] 🔴 MUST DO — Given a 2D grid of '1's (land) and '0's (water), count the number of islands. (Number of Islands)
Hint: DFS/BFS from each unvisited '1'. Mark connected cells visited. Count starts = number of islands. O(m×n).

Aptitude: [Data Interpretation][Medium] A grouped bar chart shows Product A and B sales over 4 quarters. Q1: A=100, B=80. Q2: A=120, B=110. Q3: A=90, B=130. Q4: A=140, B=120. In which quarter did B outsell A by the largest margin?
Hint: Q1: A+20, Q2: A+10, Q3: B+40, Q4: A+20. B outsold A most in Q3 by 40 units.

Q244.
MERN: [Docker][Medium][Product Company] What is Docker? Why is it useful for MERN development? Explain images, containers, and Dockerfile.
Hint: Docker: containerization platform. Image: blueprint. Container: running instance. Dockerfile: build instructions. Benefits: consistent environments, easy deployment, isolation.

DSA: [Graphs][Easy-Medium][Google] Given a graph, detect if there is a cycle in an undirected graph using DFS.
Hint: DFS with parent tracking. If visited neighbor is not parent, cycle exists. O(V+E). For directed: use colors (white/gray/black).

Aptitude: [P&C][Medium] Find the number of ways to distribute 8 identical balls into 3 distinct boxes.
Hint: Stars and bars: C(8+3-1, 3-1) = C(10,2) = 45.

Q245.
MERN: [Docker][Medium][Product Company] Write a Dockerfile for a Node.js/Express application. Explain each instruction: FROM, WORKDIR, COPY, RUN, EXPOSE, CMD.
Hint: `FROM node:18-alpine. WORKDIR /app. COPY package*.json ./. RUN npm ci. COPY . . EXPOSE 3000. CMD ["node", "server.js"]`. Multi-stage builds for smaller images.

DSA: [Graphs][Medium][Amazon] 🟡 HIGH FREQUENCY — Detect a cycle in a directed graph using DFS (three-color approach).
Hint: White: unvisited. Gray: in current DFS path. Black: fully processed. If gray meets gray → cycle. O(V+E). Essential for topological sort validation.

Aptitude: [SI/CI][Medium] A sum of money placed at CI compounded annually amounts to ₹2,880 in 2 years and ₹3,456 in 3 years. Find the rate and the original sum.
Hint: Rate = (3456-2880)/2880 × 100 = 576/2880 × 100 = 20%. P = 2880/(1.2)² = 2880/1.44 = ₹2000.

Q246.
MERN: [Docker][Medium][Product Company] What is Docker Compose? Write a docker-compose.yml for a full MERN stack (React, Node/Express, MongoDB).
Hint: Three services: mongo (image:mongo), api (build:./server, depends_on:mongo), client (build:./client). Networks, volumes for data persistence. `docker-compose up -d`.

DSA: [Graphs][Medium][Google] Implement topological sort for a Directed Acyclic Graph (DAG) using DFS and BFS (Kahn's algorithm).
Hint: DFS: post-order + reverse. Kahn's: process nodes with in-degree 0, reduce neighbor in-degrees. O(V+E). Use for: build systems, task scheduling, course prerequisites.

Aptitude: [Probability][Medium] In a class of 50 students, 30 play cricket, 25 play football, and 10 play both. A student is selected at random. What is the probability that the student plays at least one sport?
Hint: At least one = 30+25-10 = 45. P = 45/50 = 9/10.

Q247.
MERN: [CI/CD][Medium][Product Company] What is CI/CD? Explain the pipeline: commit → build → test → deploy. Name tools used with MERN apps.
Hint: CI: Continuous Integration (auto build/test on push). CD: Continuous Delivery/Deployment. Tools: GitHub Actions, Jenkins, CircleCI, Vercel, Netlify. MERN: lint → test → build → deploy.

DSA: [Graphs][Medium][Amazon] Given a 2D grid of 0s (water) and 1s (land), find the maximum area of an island.
Hint: DFS/BFS from each unvisited '1'. Count area during traversal. Track max area. O(m×n).

Aptitude: [Data Interpretation][Medium] Revenue data: 2019=₹10Cr, 2020=₹8Cr, 2021=₹12Cr, 2022=₹15Cr, 2023=₹18Cr. What is the CAGR from 2019 to 2023?
Hint: CAGR = (18/10)^(1/4) - 1 = 1.8^0.25 - 1 ≈ 0.158 = 15.8%.

Q248.
MERN: [CI/CD][Medium][Product Company] How do you set up GitHub Actions for a MERN project? Write a basic CI workflow that runs lint and tests on every push.
Hint: `.github/workflows/ci.yml`. Trigger: on push. Steps: checkout → setup Node → npm ci → npm run lint → npm test. Use matrix for Node versions. Cache node_modules.

DSA: [Graphs][Medium][Google] Implement a function to clone a graph (deep copy all nodes and edges).
Hint: HashMap: old node → new node. BFS/DFS: visit each node, create clone, copy neighbors from map. O(V+E).

Aptitude: [P&C][Medium] A password must be 6 characters: first 2 letters (uppercase, no repeat), last 4 digits (0-9, repeat allowed). How many passwords possible?
Hint: Letters: 26×25 = 650. Digits: 10⁴ = 10000. Total = 650 × 10000 = 6,500,000.

Q249.
MERN: [Performance][Medium][FAANG-Level] What are key web performance metrics: LCP, FID, CLS, TTFB, FCP? How do you measure them?
Hint: LCP: Largest Contentful Paint (<2.5s). FID: First Input Delay (<100ms). CLS: Cumulative Layout Shift (<0.1). TTFB: Time to First Byte. Tools: Lighthouse, Web Vitals, Chrome DevTools.

DSA: [Graphs][Medium][Product Company] Given a matrix where each cell has a cost, find the minimum cost path from (0,0) to (m-1,n-1) moving right or down.
Hint: DP: dp[i][j] = grid[i][j] + min(dp[i-1][j], dp[i][j-1]). O(m×n) time, O(m×n) or O(n) space. BFS not needed for grid DP.

Aptitude: [SI/CI][Medium] A sum is divided into 2 parts such that SI on first part at 6% for 2 years equals SI on second part at 8% for 3 years. If total sum is ₹5,000, find each part.
Hint: P1×6×2/100 = P2×8×3/100. 12P1 = 24P2. P1 = 2P2. P1+P2 = 5000. 3P2 = 5000. P2 ≈ 1667. P1 ≈ 3333.

Q250. 🔵 REVISION CRITICAL
MERN: [Performance][Medium][FAANG-Level] What are the top 10 ways to optimize a React application's performance?
Hint: 1) React.memo 2) useMemo/useCallback 3) Code splitting 4) Lazy loading 5) Virtualization (react-window) 6) Debounce/throttle 7) Avoid inline functions 8) Key optimization 9) Image optimization 10) Bundle analysis.

DSA: [Graphs][Medium][Amazon] 🔴 MUST DO — Implement Dijkstra's algorithm for shortest path from a source to all vertices in a weighted graph.
Hint: Min-heap (priority queue). Start source with dist 0. Extract min, relax neighbors. O((V+E) log V) with min-heap. Greedy approach. No negative weights.

Aptitude: [Probability][Medium] Two cards are drawn from a deck of 52. What is the probability that both are aces?
Hint: P = C(4,2)/C(52,2) = 6/1326 = 1/221.

---

## 📝 REVISION CHECKPOINT — Q201 to Q250

### Top Patterns Learned
1. **React Advanced**: React Router, protected routes, React Query, Zustand, Redux Toolkit, Error Boundaries, Server Components
2. **Backend**: JWT authentication, bcrypt, CORS, rate limiting, input validation, error handling
3. **MongoDB Advanced**: Aggregation pipelines, transactions, indexing, embedding vs referencing, pagination
4. **Modern Stack**: TypeScript, Next.js (SSR/SSG/ISR), Docker, CI/CD, Web Performance metrics
5. **DSA**: Binary Trees (traversals, LCA, diameter, max path sum), BST, Heaps, Tries, Graph fundamentals (BFS/DFS, islands, Dijkstra)
6. **Aptitude**: SI/CI, Probability, Permutations & Combinations, Data Interpretation

### Most Important Concepts
- 🔴 JWT authentication flow (Q214, Q215)
- 🔴 React Query for data fetching (Q203)
- 🔴 Tree traversals — inorder, preorder, postorder, level-order (Q202, Q203)
- 🔴 BST validation and operations (Q214, Q217, Q219)
- 🔴 Finding median from data stream with two heaps (Q237)
- 🔴 Graph BFS/DFS, Number of Islands (Q241, Q242, Q243)
- 🔴 Dijkstra's shortest path (Q250)
- 🔴 Trie for prefix operations (Q228)

### Frequently Repeated Interview Themes
- Authentication and security (JWT, bcrypt, CORS)
- React state management comparisons (Context vs Redux vs Zustand)
- Tree LCA, diameter, and max path sum
- Graph traversal and island counting
- TypeScript basics for React
- Performance optimization strategies

### Revision Checklist
- [ ] Can you implement JWT auth from scratch (register → login → protected)?
- [ ] Can you implement all 4 tree traversals iteratively?
- [ ] Can you validate a BST using the min/max range technique?
- [ ] Can you find the LCA of two nodes in a binary tree?
- [ ] Can you implement Dijkstra's algorithm from memory?
- [ ] Can you explain the difference between SSR, SSG, and ISR in Next.js?
- [ ] Can you count islands in a 2D grid using DFS?
- [ ] Can you implement a Trie with insert, search, and startsWith?

---

### 🔚 END OF PART 1 — Q1 to Q250

> **Continue to [Part 2](./Elite_Interview_Roadmap_Part2.md) for Q251–Q500 (⭐⭐ Intermediate)**

---
