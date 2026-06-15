# SEVENT-MS UI/UX Audit and Fix Plan

Audit date: 2026-06-13  
Local app tested at: `http://localhost:8081`  
Screenshots captured in: `audit-screenshots/`

## Executive Summary

SEVENT-MS is visually more polished than a raw CRUD prototype, but it does not yet meet modern 2026 SaaS standards. The strongest screen is the event browsing page: it has a clear dark visual direction, real imagery, readable hierarchy, and a useful booking-focused hero. The weakest areas are production reliability, accessibility, responsive behavior, design-system maturity, and information architecture.

The product currently classifies as **MVP quality**, not production-ready startup quality. The most serious issue is that the authenticated admin route rendered an **Internal Server Error** during the local H2 run (`audit-screenshots/admin-1440.png`). A senior product designer would not approve this as production UI because the core admin workflow fails, mobile content clips horizontally, forms miss accessible labels in important flows, and the interface is built from repeated page-level CSS rather than a mature component system.

## Scores

Overall UI score: **58/100**  
Overall UX score: **52/100**  
Accessibility score: **45/100**  
Design system maturity score: **32/100**  
Performance perception score: **48/100**

Category scores:

- Visual design: **6.5/10**
- Typography: **6/10**
- Color system: **6/10**
- Accessibility: **4.5/10**
- Responsive design: **5/10**
- Forms: **5/10**
- Component library: **3/10**
- Interaction design: **5/10**
- Performance perception: **4.8/10**

## Screens Reviewed

- User/events at `/`: `audit-screenshots/user-375.png`, `user-768.png`, `user-1440.png`, `user-1920.png`
- My Events at `/myEvents`: `audit-screenshots/myEvents-1440.png`
- Login at `/login`: `audit-screenshots/login-1440.png`
- Documentation at `/documentation.jsp`: `audit-screenshots/docs-1440.png`
- Admin at `/admin`: `audit-screenshots/admin-1440.png` showed an error state

Routes identified:

- `/` and `/user`: event discovery and booking
- `/myEvents`: booking lookup by email
- `/login`, `/signin`, `/signup`, `/logout`: auth
- `/admin`: admin event and booking management
- `/documentation.jsp`: documentation/about page
- `/health`: health check

## Top 20 Issues

1. **Critical: Admin dashboard fails locally**
   - Evidence: `audit-screenshots/admin-1440.png` shows "Oops! Something went wrong" and "Internal Server Error".
   - Impact: The core organizer/admin workflow is unusable.
   - Fix: Reproduce `/admin` with H2 and PostgreSQL, inspect server logs, and fix SQL dialect/runtime errors in `AdminController.java`. Add an integration test for authenticated `/admin`.

2. **Critical: Admin password is hard-coded**
   - Evidence: `src/main/java/com/eventms/controller/AuthController.java:24-25`.
   - Impact: Security and product trust failure; not acceptable for a professional SaaS review.
   - Fix: Move admin identity to environment variables, rotate the credential, and use the same hashed-user path as normal accounts.

3. **Critical: Mobile event hero clips content horizontally**
   - Evidence: `audit-screenshots/user-375.png`; CTA and hero copy extend past the viewport.
   - Impact: Mobile users cannot comfortably read or act.
   - Fix: Add `overflow-x: hidden`, constrain hero children with `max-width: 100%`, reduce mobile hero typography, and avoid fixed-width/flex children that exceed 375px.

4. **Major: Public booking forms use placeholders instead of visible labels**
   - Evidence: booking inputs in `src/main/webapp/WEB-INF/views/user_events.jsp:897` and `:906`; My Events email input at `my_events.jsp:754`.
   - Impact: Screen reader and cognitive accessibility issues; placeholders disappear while typing.
   - Fix: Add visible `<label for>` text for every input and keep placeholder text only as examples.

5. **Major: Several pages lack viewport metadata**
   - Evidence: `index.jsp` and `documentation.jsp` have no `<meta name="viewport">`; `auth.jsp:7` and `user_events.jsp:8` do.
   - Impact: Mobile scaling can be inconsistent and browser-default layout assumptions leak into design.
   - Fix: Add `<meta name="viewport" content="width=device-width, initial-scale=1.0">` to all JSP pages.

6. **Major: Navigation IA is inconsistent**
   - Evidence: "User Portal" on landing/docs links back to `/`, while event browsing is also `/`; admin page top actions also route "User Portal" to `/`.
   - Impact: Users cannot distinguish Home, event catalog, and portal concepts.
   - Fix: Define primary nav as Events, My Bookings, Docs, Admin, Sign In. Keep labels and destinations identical across pages.

7. **Major: Documentation claims features that do not exist or are inaccurate**
   - Evidence: `documentation.jsp` references cancellation, downloads, QR code, CSRF tokens, Java Servlets/MySQL, while this app uses Spring Boot/JSP/PostgreSQL/H2 and no visible cancellation/download flow.
   - Impact: Product credibility suffers.
   - Fix: Rewrite documentation to match real features and remove unsupported claims.

8. **Major: Error state is generic and low-utility**
   - Evidence: `src/main/webapp/WEB-INF/views/error.jsp:11-16`.
   - Impact: Users receive no recovery path beyond "Back to Home"; admins cannot troubleshoot.
   - Fix: Add route-aware error copy, request ID, support path, and safe technical detail in dev mode.

9. **Major: Design system is duplicated across JSPs**
   - Evidence: tokens and nav styles are repeated in `index.jsp`, `documentation.jsp`, `user_events.jsp`, `my_events.jsp`, and `admin_dashboard.jsp`; base CSS also exists in `css/style.css`, `css/user.css`, `css/admin.css`, and `css/styles.css`.
   - Impact: Consistency is fragile and changes require editing many files.
   - Fix: Create shared `tokens.css`, `components.css`, and `layout.css`; remove page-level duplicate nav/button/input/card definitions.

10. **Major: Keyboard focus is incomplete**
    - Evidence: some inputs replace outlines (`user_events.jsp:254-256`, `my_events.jsp:473-475`, `auth.jsp:108-110`), but nav links and buttons lack consistent visible focus treatment.
    - Impact: Keyboard users can lose location.
    - Fix: Add global `:focus-visible` styles for links, buttons, inputs, select, textarea, and icon-only controls.

11. **Major: Admin tables are not mobile-first**
    - Evidence: `admin_dashboard.jsp` tables use `min-width: 920px` and horizontal scroll.
    - Impact: Mobile admin work becomes difficult and error-prone.
    - Fix: Use responsive row cards under 768px, sticky table controls on desktop, and column visibility priorities.

12. **Major: Forms lack modern validation UX**
    - Evidence: user booking and My Events forms rely mostly on HTML `required` and server flash messages.
    - Impact: Users get late, generic feedback.
    - Fix: Add inline validation, field-level error text, disabled/loading submit states, and success confirmation details.

13. **Major: Empty states are generic**
    - Evidence: "No events available at the moment" and "No events found for this email address."
    - Impact: Dead ends.
    - Fix: Add next actions: check another email, browse events, create event as admin, or contact organizer.

14. **Major: No loading/skeleton states**
    - Evidence: no skeleton components or loading affordances in source; only a legacy `.btn.loading` exists in `css/style.css`.
    - Impact: Perceived performance feels static and brittle.
    - Fix: Add loading states for booking submit, auth submit, My Events lookup, and admin create/update/delete.

15. **Major: Mobile nav interaction is duplicated and fragile**
    - Evidence: `documentation.jsp:737-746` wires two click handlers to the same nav toggle.
    - Impact: Menu state can desync or double-toggle.
    - Fix: Extract one shared nav script and one class name (`active`) across all pages.

16. **Minor: Typography is too display-heavy for operational screens**
    - Evidence: large hero type works on desktop but crowds mobile; My Events uses uppercase/letter-spaced card titles.
    - Impact: Reduces scanability.
    - Fix: Define a type scale: display only for landing hero, `h1 32-40`, section `24-28`, card `18-20`, body `15-16`.

17. **Minor: Color tokens are not semantic enough**
    - Evidence: repeated raw accent variables and metallic color names, but no clear `--color-bg`, `--color-surface`, `--color-danger-bg`, etc.
    - Impact: Hard to guarantee contrast and state consistency.
    - Fix: Create semantic tokens for background, surface, text, border, success, warning, error, info, focus.

18. **Minor: Buttons overuse uppercase and letter spacing**
    - Evidence: `user_events.jsp:272-273`, `my_events.jsp:495-496`, `user.css:202`.
    - Impact: Feels less like Linear/Stripe and more like a themed template.
    - Fix: Use sentence case button labels with 600-700 font weight and no letter spacing.

19. **Minor: Home/back controls are duplicated**
    - Evidence: My Events has both fixed nav and a separate `home-btn` in the header (`my_events.jsp:714`, `:745`).
    - Impact: Redundant navigation increases clutter.
    - Fix: Remove header Home pill and rely on primary nav plus a contextual "Back to Events" action.

20. **Minor: External icon/font dependencies can delay first paint**
    - Evidence: Font Awesome and Google Fonts are pulled from CDNs in JSP heads.
    - Impact: Icons/fonts may block or flash, especially offline.
    - Fix: Self-host assets or use a local icon subset and preconnect/preload fonts.

## Accessibility Audit

Critical findings:

- Admin route fails to render usable UI.
- Hard-coded admin credential undermines trust and access control.
- Mobile clipping at 375px creates unreachable content.

Major findings:

- Missing visible labels on booking and email lookup forms.
- Inconsistent focus visibility.
- Icon-only hamburger has no accessible name or `aria-expanded`.
- Flash alerts do not use `role="alert"` or `aria-live`.
- Documentation and public pages are missing viewport metadata.
- Tables need captions and better responsive semantics.

Minor findings:

- Button/link text is sometimes vague or duplicated.
- Hover states are stronger than focus states.
- Some color combinations depend on transparency over images and should be checked with automated contrast tests.

Exact accessibility fixes:

- Add `aria-label="Open navigation"` and `aria-expanded` to mobile nav toggles.
- Add `aria-live="polite"` or `role="alert"` to success/error message containers.
- Add labels to every input; use `autocomplete="name"`, `autocomplete="email"`, `autocomplete="current-password"`, and `autocomplete="new-password"`.
- Add `:focus-visible { outline: 3px solid var(--color-focus); outline-offset: 3px; }`.
- Add table captions and scope attributes, then convert mobile table views to cards.
- Respect `prefers-reduced-motion` for hover lift and animated icons.

## Responsive Review

375px:

- Hero content on `/` clips horizontally.
- Nav reduces to hamburger, but the hamburger is icon-only and lacks accessible state.
- Primary CTA becomes too wide for its container.

768px:

- Layout is better, but hero remains visually heavy and pushes event content below the fold.

1440px:

- `/` is visually compelling and reasonably aligned.
- `/documentation.jsp` has too much vertical spacing in the doc nav and reads like internal docs rather than product help.
- `/login` is clean and centered.

1920px:

- The event hero scales acceptably but relies on a very large background image and heavy overlays.

## UX Heuristics Scores

- Visibility of system status: **4/10**. Flash messages exist, but no loading or progress states.
- Match between system and real world: **6/10**. Event booking language is clear; documentation claims are inaccurate.
- User control and freedom: **5/10**. Back links exist, but cancellation/edit booking flows are absent.
- Consistency and standards: **4/10**. Navigation and styling differ across pages.
- Error prevention: **5/10**. Some validation exists; destructive admin delete uses confirm.
- Recognition over recall: **6/10**. Cards are understandable, but admin workflows are dense.
- Flexibility and efficiency: **5/10**. Admin table is powerful but not optimized for repeated action.
- Aesthetic and minimalist design: **6/10**. Polished dark look, but too much glow, repeated cards, and heavy effects.
- Help users recover from errors: **3/10**. Generic error page.
- Help and documentation: **4/10**. Documentation exists but is inaccurate.

## Forms Review

Booking form:

- Issues: no labels, no inline validation, no loading state, no confirmation detail on the form itself.
- Severity: Major.
- Redesign: show event summary, labeled Name/Email fields, inline errors, loading submit, and a success card with digital ID next step.

My Events lookup:

- Issues: single email field has placeholder-only labeling and generic empty state.
- Severity: Major.
- Redesign: visible Email label, helper copy, autocomplete email, "No bookings found" with Browse Events CTA.

Login/signup:

- Issues: best form in the app; still lacks password reveal, forgot password, success state, and externalized admin login messaging.
- Severity: Minor/Major because of credential handling.
- Redesign: standard auth form with environment-backed admin, password reveal, and field-level errors.

Admin event form:

- Issues: dense, no preview before upload, dynamic sub-event builder uses alert dialogs for validation, admin route failed locally.
- Severity: Critical/Major.
- Redesign: split into Create Event, Sub-events, Capacity, Media sections; use inline validation and preview cards.

Contact/newsletter forms:

- Issues: landing page forms post to routes not visible in controller scan; likely dead ends.
- Severity: Major.
- Redesign: remove until implemented or connect to working endpoints with success/error states.

## User Flow Review

Browse and book:

- Current flow: `/` -> choose event -> enter name/email -> submit -> flash success/error.
- Problems: labels missing, no loading state, duplicate unauthenticated/authenticated email concepts, success lacks persistent ticket surface.
- Improved flow: Events -> Event details -> Reserve -> Confirmation with digital ID -> My Bookings CTA.

Find my bookings:

- Current flow: `/myEvents` -> enter email -> results or empty state.
- Problems: weak empty state, no explanation of email matching, no way to resend confirmation.
- Improved flow: email lookup with helper text -> results grouped by upcoming/past -> resend/copy digital ID.

Admin management:

- Current flow: login -> `/admin`; locally this produced 500.
- Problems: unusable in tested environment, dense form/table combo, horizontal-scroll tables.
- Improved flow: dashboard summary -> event list -> create/edit drawer or page -> booking table with filters/export.

Docs/about:

- Current flow: static documentation page.
- Problems: inaccurate, too internal, not task-oriented.
- Improved flow: Help center with "For attendees", "For organizers", "Admin setup", and "Troubleshooting".

## Component Library Review

Mature design system exists: **No**.

Current reusable concepts:

- Buttons, nav links, cards, alerts, forms, tables, chips, hero panels.

Problems:

- Components are redefined per page.
- Tokens are duplicated and not semantic.
- States are incomplete: hover exists, focus/disabled/loading often absent.
- Page-specific inline styles make maintenance expensive.

Fix:

- Build shared JSP includes for nav, alerts, and footer.
- Build shared CSS layers: tokens, reset, layout, components, utilities.
- Define variants: button primary/secondary/danger/ghost, input default/error/disabled, alert success/error/info/warning, card default/interactive, table responsive.

## SaaS/Product Benchmarking

Linear:

- Matches: dark UI direction and compact dashboard intent.
- Falls behind: consistency, keyboard polish, density control, admin reliability.

Notion:

- Matches: simple event/content cards.
- Falls behind: calm typography, low-friction editing, empty states.

Stripe Dashboard:

- Matches: admin metrics/table ambition.
- Falls behind: table ergonomics, semantic color, validation, documentation accuracy.

Vercel:

- Matches: dark surface aesthetic.
- Falls behind: restraint, spacing system, loading states, production feel.

Airbnb:

- Matches: event discovery concept.
- Falls behind: rich detail pages, trust signals, booking flow clarity.

GitHub:

- Matches: basic admin table/action model.
- Falls behind: accessibility, predictable navigation, robust error handling.

## Design Debt Analysis

Low effort fixes:

- Add viewport meta tags.
- Add labels/autocomplete to forms.
- Add global focus-visible styles.
- Fix nav labels/destinations.
- Remove duplicate My Events home button.
- Add `role="alert"` to flash messages.

Medium effort fixes:

- Consolidate CSS tokens and components.
- Rewrite documentation to match real product behavior.
- Improve mobile hero and My Events layout.
- Add loading/disabled states to form submits.
- Add real empty states with CTAs.

High effort redesigns:

- Rebuild admin dashboard information architecture.
- Add event detail pages and confirmation/ticket surfaces.
- Create a full component library with reusable JSP includes.
- Add automated visual and accessibility regression tests.

## Final Verdict

Would a senior product designer approve this UI? **No, not for production.** The visual direction is promising, but the product fails core reliability/accessibility expectations.

Would this pass a professional design review? **No.** It would pass as a solid student/MVP direction but not as a polished SaaS release.

Is it comparable to modern SaaS products in 2026? **Partially in visual ambition, not in execution.**

What prevents top-tier quality:

- Broken admin route in tested environment.
- Duplicated CSS and weak design system.
- Missing accessibility fundamentals.
- Mobile clipping.
- Inaccurate documentation.
- Thin feedback/loading/error states.

Exact steps to reach 90+/100 UI:

1. Fix admin reliability and add route tests.
2. Create a shared design system with semantic tokens and reusable components.
3. Make all forms accessible with labels, field errors, autocomplete, and loading states.
4. Redesign mobile layouts from 375px upward.
5. Replace generic error/empty states with task-specific recovery.
6. Rewrite documentation and navigation around real user jobs.
7. Add automated screenshot and accessibility checks for all routes at 375, 768, 1440, and 1920 widths.
