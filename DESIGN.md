---
name: Jocelyn Sun Portfolio
description: Product design portfolio — curated case studies and work by Jocelyn Sun, product designer
colors:
  deep-still-water: "#284c4c"
  coastal-teal: "#427e7e"
  storm-haze: "#749eaf"
  dried-rose: "#a45e5f"
  warm-graphite: "#4a4849"
  dim-sage: "#666c6b"
  stone-mist: "#767676"
  quiet-faint: "#cdcdcd"
  warm-ash: "#f8f9f7"
  pale-divider: "#e5e5e5"
  pale-linen: "#efefec"
  canvas: "#ffffff"
typography:
  display:
    fontFamily: "'Instrument Serif', Georgia, serif"
    fontSize: "clamp(22px, 1rem + 1.4vw, 34px)"
    fontWeight: 400
    lineHeight: 1.35
  headline:
    fontFamily: "'Instrument Sans', Arial, sans-serif"
    fontSize: "clamp(22px, 1rem + 1.4vw, 34px)"
    fontWeight: 700
    lineHeight: 1.3
  title:
    fontFamily: "'Instrument Sans', Arial, sans-serif"
    fontSize: "clamp(18px, 1rem + 0.55vw, 23px)"
    fontWeight: 400
    lineHeight: 1.5
  body:
    fontFamily: "'Instrument Sans', Arial, sans-serif"
    fontSize: "clamp(15px, 0.875rem + 0.25vw, 17px)"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "'Instrument Sans', Arial, sans-serif"
    fontSize: "13px"
    fontWeight: 400
    letterSpacing: "1.5px"
  mono:
    fontFamily: "'Inconsolata', 'Courier New', monospace"
    fontSize: "clamp(11px, 0.5rem + 1.2vw, 17px)"
    fontWeight: 400
    lineHeight: 1.8
rounded:
  sm: "4px"
  md: "8px"
  lg: "12px"
  full: "20px"
spacing:
  xs: "4px"
  sm: "8px"
  md: "16px"
  lg: "24px"
  xl: "40px"
  2xl: "60px"
  3xl: "80px"
  4xl: "100px"
components:
  card:
    backgroundColor: "{colors.warm-ash}"
    rounded: "{rounded.lg}"
    padding: "clamp(24px, 3vw, 40px)"
  card-hover:
    backgroundColor: "{colors.warm-ash}"
  nav-link:
    textColor: "{colors.warm-graphite}"
    typography: "{typography.body}"
    padding: "4px 16px"
  nav-link-active:
    textColor: "{colors.deep-still-water}"
  pill:
    textColor: "{colors.dim-sage}"
    rounded: "{rounded.full}"
    padding: "3px 10px"
  tag-label:
    textColor: "{colors.dried-rose}"
    typography: "{typography.label}"
---

# Design System: Jocelyn Sun Portfolio

## 1. Overview

**Creative North Star: "The Quiet Archive"**

This is a designer's accumulated work — each piece chosen, never padded. The system does not compete with the case studies inside it; it creates the conditions for them to land. The aesthetic logic is restraint as confidence: generous whitespace, a near-invisible neutral ground, and two carefully rationed accents that appear precisely when they're needed and nowhere else.

The type hierarchy is built on a single sans family (Instrument Sans) for structural clarity, with Instrument Serif reserved for moments that need a human touch — italic hero statements on mobile, bylines, and the odd section heading that benefits from warmth. Inconsolata handles structured meta: the typed.js terminal hero on desktop, date ranges, skill labels in case studies. Three families, each with a clear lane.

This system explicitly rejects the visual language of the existing Webflow site, overproduced SaaS landing pages, and the default portfolio template — the one with gradient hero text, glassmorphism cards, and identical icon-title-description rows. Those surfaces perform design rather than practice it. This one doesn't perform.

**Key Characteristics:**
- Two-accent restrained palette; teal is voice, rose is categorization signal
- Fluid typography with a 15px–34px scale range; no flat steps
- Cards rest flat; elevation appears only in response to interaction
- Transitions are fast and directional (150ms–250ms, ease-out); no bounce
- Accessibility-first: skip nav, focus rings, aria labels, reduced-motion support built into base styles


## 2. Colors: The Still Water Palette

A muted naturals palette anchored by one deep accent and a warm, near-white ground. Two accents serve distinct roles; they never compete for the same space.

### Primary
- **Deep Still Water** (#284c4c): The dominant accent. Navigation active states, link hover colors, focus rings, hover indicators on project entries. Used sparingly — its rarity is what gives it weight. Teal-leaning dark with very low chroma; reads as serious without being cold.

- **Coastal Teal** (#427e7e): The mid-toned teal. Used for inline link hover states, icon tints on the about page, and scroll-bar thumbs. Never used as a background. A lighter expression of the same voice as Deep Still Water.

### Secondary
- **Dried Rose** (#a45e5f): The category signal. Uppercase tag labels on cards and project entries, case study category lines, and inline links within body copy (default state, hovering shifts to Deep Still Water). Dusty, not vibrant — it marks, it does not shout.

### Tertiary
- **Storm Haze** (#749eaf): Blue-gray. Used very sparingly as an atmospheric tertiary in tooltips and mid-toned link states. Present in the token vocabulary; largely restrained in practice. Do not introduce it as a background color.

### Neutral
- **Canvas** (#ffffff): Page background. Pure white — intentionally unpigmented to read as a clean surface rather than a brand color.
- **Warm Ash** (#f8f9f7): Card and content surface. A slightly warm off-white that gives cards just enough lift from the canvas to be distinguishable without relying on shadow alone.
- **Pale Linen** (#efefec): Tooltip background. Slightly warmer than Warm Ash — the tooltip feels like a small card placed on top.
- **Pale Divider** (#e5e5e5): Borders, horizontal rules, dividers. Neutral gray with no warmth bias.
- **Warm Graphite** (#4a4849): Primary text. A slightly warm dark gray with a nearly imperceptible purple undertone. Never pure black — the warmth keeps it from reading as harsh.
- **Dim Sage** (#666c6b): Secondary text. Section subheadings, card column headings, meta-descriptive lines that establish context before the main title.
- **Stone Mist** (#767676): Muted text. Captions, dates, label categories, code block text, meta information. Sits at the minimum accessible contrast ratio (4.5:1 on Canvas).
- **Quiet Faint** (#cdcdcd): Ghost text. Large decorative numbers on project entries (6% opacity), footer copyright. Not for any functional text.

### Named Rules
**The Still Water Rule.** Deep Still Water (#284c4c) appears on 10% or less of any given screen. It is an accent, not a theme color. Never use it as a background fill for content areas, section blocks, or card surfaces.

**The Two-Accent Rule.** Dried Rose is categorization; Deep Still Water is emphasis. They do not swap roles. A tag is never teal; an active nav link is never rose.


## 3. Typography

**Body Font:** Instrument Sans (Arial, sans-serif fallback)
**Serif Font:** Instrument Serif (Georgia, serif fallback)
**Mono Font:** Inconsolata (Courier New, monospace fallback)

**Character:** Instrument Sans and Instrument Serif share a structural kinship — same foundry, designed to coexist — which gives the pairing coherence without smoothness. Sans carries the system; serif marks the moments that need warmth. Inconsolata is the third voice: rigidly structured, used wherever precision matters over personality.

### Hierarchy

- **Display** (Instrument Serif italic, clamp(22px → 34px), weight 400, line-height 1.35): Mobile hero statement only. Italic, slightly generous line-height for reading comfort. The human accent at the top of the mobile page, replaced by the typed.js terminal on desktop.

- **Headline** (Instrument Sans 700, clamp(22px → 34px), line-height 1.3): Page titles on case study pages and project galleries. The structural top of each page's reading hierarchy. Tighter line-height than body — these are short, decisive labels, not prose.

- **Title** (Instrument Sans 400, clamp(18px → 23px), line-height 1.5, tracking -0.2px): Project entry titles, section headings, featured work section labels. Weight 400 keeps them from competing with Headline; the slightly negative tracking tightens large text at wider sizes.

- **Body** (Instrument Sans 400, clamp(15px → 17px), line-height 1.6–1.7): All prose — card descriptions, case study body copy, about page prose. Comfortable reading measure; case study body content is constrained to ~860px max-width which lands near the 70ch ceiling for comfortable prose width.

- **Label** (Instrument Sans 400, 13px, 1.5px letter-spacing, uppercase, line-height 1.5): Category labels, section headers like "FEATURED WORK," navigation labels, uppercase tag lines on cards. The uppercase + tracking combination gives these visual weight despite the small size — avoid applying this style to running text.

- **Mono** (Inconsolata 400, clamp(11px → 17px), line-height 1.8): The typed.js hero terminal on desktop. Also used for structured metadata: role labels on the about page, case study meta-lists, "prev/next" navigation direction labels. High line-height (1.8) is intentional — mono text at small sizes needs breathing room.

### Named Rules
**The Serif as Whisper Rule.** Instrument Serif appears when a surface needs to feel inhabited, not designed. It is never used for UI chrome (buttons, labels, nav). If adding serif feels like decoration rather than warmth, use sans instead.

**The Mono as Structure Rule.** Inconsolata signals precision and meta-information, not personality. Do not use it for headings, CTAs, or marketing language. It belongs on data, dates, and the terminal aesthetic of the hero.


## 4. Elevation

This system is flat by default. Surfaces are distinguished by background color difference (Canvas vs. Warm Ash) rather than shadow stacking. Shadows appear only when a surface needs to lift in response to state, or when a structural separation between page zones requires a low ambient signal.

### Shadow Vocabulary
- **card** (`0 2px 8px rgba(0, 0, 0, 0.08)`): Resting state for featured work cards. Whisper-level depth — present enough to separate card from page, absent enough to feel architectural rather than decorative.
- **card-hover** (`0 4px 16px rgba(0, 0, 0, 0.12)`): Revealed on hover. The card lifts 3px vertically in tandem with this shadow change. Transition is 200ms cubic-bezier(0.25, 0, 0.2, 1) — exits fast, enters gradually.
- **nav** (`0 1px 0 rgba(0, 0, 0, 0.06)`): Mobile nav drawer hairline. Structural, not decorative — marks the bottom edge of the overlay dropdown.
- **section** (`0 -10px 20px -10px rgba(0, 0, 0, 0.06)`): Inward top-edge shadow separating the featured work section from the hero above it on desktop. Used once; the negative spread collapses its reach. Not used elsewhere.

### Named Rules
**The Whisper Lift Rule.** Shadows appear only in response to state (hover, overlay) or to mark a structural boundary between page zones. A surface at rest is flat. Never add shadow to reinforce visual hierarchy that spacing and color difference already establish.


## 5. Components

### Navigation

Transparent background at rest on desktop. Logo image-based at 120px height (optically aligned left with -6px margin to correct for internal PNG whitespace). Nav links in Instrument Sans body size, Warm Graphite, with hover underline at 2px offset. Active state switches to Deep Still Water with weight 700.

Mobile: hamburger toggle (22px width, 2px bars). Dropdown animates in from above with opacity + translateY(-8px → 0). Individual menu items stagger in with 50ms delay increments. Focus ring on all interactive elements: 2px Deep Still Water, 3px offset, radius-sm.

### Cards (Featured Work)

- **Surface:** Warm Ash (#f8f9f7), radius-lg (12px), ambient shadow (--shadow-card)
- **Padding:** fluid, clamp(24px → 40px), adjusts with viewport
- **Hover:** lifts 3px (translateY(-3px)), shadow shifts to --shadow-card-hover; transition 200ms cubic-bezier(0.25, 0, 0.2, 1)
- **Title:** Instrument Sans 400 text-md, underlined, Warm Graphite; hover shifts to Deep Still Water
- **Tags:** Dried Rose, 12px, uppercase, 1px tracking (see label hierarchy)
- **Description:** body size, Warm Graphite, 1.6 line-height

Cards appear only in the featured work section (2-column on desktop, 1-column on tablet). Not used elsewhere — the projects page uses a flat list layout intentionally.

### Project Entries (Projects Page)

A flat list of numbered rows separated by 1px Pale Divider borders. Each entry holds a large ghost number (Inconsolata, clamp(48px → 72px), 6% opacity), project title at text-xl, and Dried Rose tag label.

On hover, the rest of the list dims to 20% opacity and the hovered entry restores to full. A 2px Deep Still Water bar animates in from the left edge of the row (scaleY(0 → 1), cubic-bezier with slight spring: (0.34, 1.56, 0.64, 1)). This is the only spring curve in the system; it is intentional and should not be generalized to other components.

Custom cursor replaces the default on the projects page — this is driven by JS and scoped to that page only.

### Case Study Pills

Compact round-cornered tags (radius-full: 20px) used in case study headers to label skills and methods. Inconsolata mono, 12px, Dim Sage text, 1px border (Pale Divider), 3px 10px padding. No background fill — they read as lightweight annotation, not status badges.

### Tooltip (Tippy.js "tipbox" theme)

- **Background:** Pale Linen (#efefec)
- **Text:** #4a4a4a (same value as Warm Graphite)
- **Font:** Instrument Sans, 13px
- **Radius:** radius-sm (4px)
- **Shadow:** --shadow-card (same as resting card)
- **Arrow:** filled Pale Linen

Used only on the homepage for external link hover previews. Not a general-purpose component for other pages.

### Footer Icon Links

Centered row with generous gaps (--space-3xl + --space-lg). Icon at 28px, label at text-sm-md (15px), both Stone Mist at rest. Hover triggers an icon-jiggle keyframe animation (rotate oscillation, 0.4s ease). Footer copyright line fades between two states on hover — default copyright text swaps to an alternate message.


## 6. Do's and Don'ts

### Do:
- **Do** use Deep Still Water (#284c4c) only for interactive emphasis: active nav, link hover, focus rings, the project entry hover indicator. Keep it off backgrounds and decorative surfaces.
- **Do** use Dried Rose (#a45e5f) exclusively as a category and tag signal — card tag lines, case study category labels, inline links in body copy (default state). It has one job.
- **Do** constrain case study body prose to the 860px content container (--container-content). Lines that run wider than ~70ch degrade reading comfort.
- **Do** use the 250ms ease transition (--transition-base) for state-change animations and 150ms (--transition-fast) for color-only transitions like link hover. Keep timing tight.
- **Do** apply the focus ring on every interactive element: 2px solid Deep Still Water, outline-offset 3px, border-radius radius-sm. Keyboard nav is a first-class experience.
- **Do** use Inconsolata for structured meta (dates, skill labels, case study credit lines, the hero terminal) and Instrument Serif for editorial warmth (mobile hero statement, bylines). Each family has a specific lane.
- **Do** let spacing carry hierarchy before reaching for type weight. The system uses an 8-step spacing scale precisely so that section separations can feel different from card separations from item separations.

### Don't:
- **Don't** replicate the current Webflow site at jzsun.me. The new system is a deliberate evolution beyond that visual language — not a migration of it.
- **Don't** introduce gradient text (background-clip + gradient background). Solid color only. Emphasis via weight or size.
- **Don't** use glassmorphism (backdrop-filter, blur) as decorative treatment on cards or overlays. The system is flat and matte.
- **Don't** add flashy or performative transitions. No bounce easing (cubic-bezier with overshoot > 1), no elastic springs outside the projects page entry indicator where it is intentional. Keep motion functional.
- **Don't** use border-left or border-right greater than 1px as a colored accent stripe on cards, callouts, or list items. The existing .case-study__callout uses this pattern (border-left: 2px rose) and it violates this rule — avoid extending this pattern to new components.
- **Don't** nest cards. The featured work grid uses cards; those cards do not contain sub-cards.
- **Don't** add images or photography to portfolio context pages (about, navigation, project list) without a strong reason. This system carries its voice through typography and whitespace, not imagery. Case study pages are the exception — they use images as primary evidence.
- **Don't** reach for Storm Haze (#749eaf) as a design choice for new components. It is in the token vocabulary but is underused intentionally. If a third accent is needed, revisit the palette strategy rather than defaulting to this.
- **Don't** use all-caps body copy. Uppercase is reserved for short labels and category tags at 12–13px. Running text in uppercase is prohibited.
