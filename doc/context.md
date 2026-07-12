

\# CONTEXT.md — Jeevithalakshyam Project



\*\*Last updated:\*\* 2026-06-28

\*\*Owner:\*\* Insaf Chennamkulam

\*\*Domain:\*\* jeevithalakshyam.info



\---



\## 🎯 PROJECT IDENTITY



\- \*\*Brand name:\*\* Jeevithalakshyam · ജീവിതലക്ഷ്യം (singular — "Purpose of Life")

\- \*\*Domain:\*\* `jeevithalakshyam.info`

\- \*\*Type:\*\* Static da'wah blog (Phase 1)

\- \*\*Future vision:\*\* Evolve into a full Muslim daily app (Phase 5+)

\- \*\*Methodology:\*\* Salafi/Athari (kept internal, not advertised on the surface)

\- \*\*Tone:\*\* Reflective, invitational, philosophical — NOT explicitly Muslim-branded upfront

\- \*\*Primary audience:\*\* General Kerala/Malayali public, especially \*\*non-Muslims\*\* (entry-funnel strategy)

\- \*\*Secondary audience:\*\* Young Malayali Muslims drowning in scroll-numbness

\- \*\*Tertiary audience:\*\* Diaspora Malayalis (Gulf, Bengaluru, abroad)



\---



\## 🌐 LANGUAGE STRATEGY



\- \*\*Tri-language toggle\*\* on all pages except homepage (home is artistically multilingual by design):

&#x20; - \*\*മലയാളം\*\* (default) — Universal Kerala literary Malayalam (Mathrubhumi/Madhyamam style, no regional dialect)

&#x20; - \*\*Manglish\*\* — Malayalam written in English letters (for diaspora \& young urban Kerala)

&#x20; - \*\*English\*\* — Pure English translation

\- \*\*Arabic ayaat / hadith text:\*\* Always remain in Arabic regardless of toggle

\- \*\*Tone in Malayalam:\*\* Direct ("Nee" not "Ningal" — finger-pointing personal address)

\- \*\*Language preference:\*\* Saved in `localStorage` as `jl-lang`



\---



\## 🏗️ INFRASTRUCTURE STACK (All ✅ Live)



| Layer | Service | Notes |

|---|---|---|

| 🔐 Master/recovery email | `insafck@protonmail.ch` | 2FA on, vault key — never shared publicly |

| 🌐 Domain registrar | \*\*Porkbun\*\* | \~$3 Yr1 / \~$22 renewal · WHOIS privacy ON · 2FA ON · auto-renew OFF |

| ☁️ DNS / SSL / CDN | \*\*Cloudflare (Free)\*\* | Nameservers: `clark.ns.cloudflare.com`, `laylah.ns.cloudflare.com` · 2FA ON · DNSSEC OFF |

| 📬 Email routing | \*\*Cloudflare Email Routing\*\* | `admin@jeevithalakshyam.info` → forwards to Zoho |

| 📥 Mailbox destination | \*\*Zoho Mail Free Personal\*\* | `jeevithalakshyam@zohomail.ae` · 2FA ON · check spam folder regularly |

| 💻 Code repository | \*\*GitHub\*\* | User: `jeevithalakshyam` · Repo: `jeevithalakshyam.github.io` · public · 2FA ON · recovery codes saved |

| 🌐 Hosting | \*\*GitHub Pages\*\* | Source: `main` branch root · custom domain configured · HTTPS enforced |

| ✍️ Content drafting | \*\*Claude (Pro)\*\* | Mandatory human Salafi scholar review before publish |

| 🎨 Design assets | \*\*Canva\*\* (free → Pro later) | Thumbnails, share cards |

| 📊 Analytics (future) | TBD — Plausible or Umami planned |



\*\*Total recurring cost:\*\* \~$3-22/year (domain only). Everything else is $0.



\---



\## 🔗 DNS RECORDS (Cloudflare)



\*\*A records (GitHub Pages IPs — root domain `@`):\*\*

\- `185.199.108.153`

\- `185.199.109.153`

\- `185.199.110.153`

\- `185.199.111.153`

\- All set to \*\*"DNS only"\*\* (gray cloud) — NOT proxied (would conflict with GitHub SSL)



\*\*CNAME (www subdomain):\*\*

\- `www` → `jeevithalakshyam.github.io` (DNS only)



\*\*Email records:\*\*

\- 3 × MX → `route1/2/3.mx.cloudflare.net` (Cloudflare Email Routing)

\- TXT `@` → `v=spf1 include:\_spf.mx.cloudflare.net \~all`

\- TXT `\_dmarc` → `v=DMARC1; p=quarantine; rua=mailto:admin@jeevithalakshyam.info`

\- TXT (DKIM) → Cloudflare-provided selector



\---



\## 🪔 VISUAL IDENTITY (LOCKED)



\### Palette

```



Canvas:        #0F1419  (warm-dark, slight green undertone)

Surface:       #1A1F26  (raised card)

Elevated:     #232A33  (modal/hero)

Primary:       #00A86B  (Kerala emerald)

Primary bright: #00C77C  (hover/emphasis)

Gold accent:   #D4A24C  (brand mark only — sacred reservation)

Gold bright:   #F5C572  (hover gold)

Emerald tint:  #1A3A2E  (background glow)

Heading text:  #FFFFFF

Body text:     #D1D5DB  (warm gray)

Muted text:    #8B95A1  (dates, metadata)

Border:        #2D3640

Highlight red: #E63946  (use 2% — only for "this matters")



```



\### Typography

\- \*\*Display/Hero:\*\* `Fraunces` (modern serif drama)

\- \*\*Headings:\*\* `Inter` 700 (clean modern)

\- \*\*Body English:\*\* `Inter` 400/500

\- \*\*Body Malayalam:\*\* `Noto Serif Malayalam` 400/700

\- \*\*Body Manglish:\*\* `Inter` 400 italic

\- \*\*Arabic ayaat (future):\*\* `Amiri` or `Scheherazade New`



\### Visual Personality

\- Dark mode primary (Quran.com + Linear.app inspired)

\- Soft radial emerald glow from top-left of canvas

\- Brand glyph = circular gold disc with "ജ" character

\- Gold reserved for brand mark + occasional accents (never overused)

\- Generous padding, 8px base grid

\- Subtle fade-up animations on scroll

\- Pulsing scroll indicator

\- Premium hover micro-interactions



\---



\## 🎬 HOMEPAGE STRUCTURE (Hero — Mirror Direction)



\*\*Tone:\*\* Sharp, confronting, self-aware — pierces scroll-numbness



```



\\\[Nav: brand glyph + Jeevithalakshyam | Language toggle right]

↓

ജീവിതലക്ഷ്യം (large, white, emerald glow)

Jeevithalakshyam (subtitle)

\\\[Reflective tagline — v2 only: "Reflections on the deepest question of life..."]

"What is your life for?" (gold italic)

↓

\\\[Subtle divider]

↓

Mirror sequence (animates in line by line):

നീ ഉണരുന്നു.

പണിയെടുക്കുന്നു.

സ്ക്രോൾ ചെയ്യുന്നു.

ഉറങ്ങുന്നു.

വീണ്ടും ഉണരുന്നു.

പക്ഷേ ഒരിക്കലെങ്കിലും ചോദിച്ചിട്ടുണ്ടോ —

↓

എന്തിന് ? (huge, white, massive emerald glow)

↓

"This question deserves an answer ↓"

↓

Footer



```



\*\*Language variants:\*\*



| Mode | Mirror text |

|---|---|

| മലയാളം | "നീ ഉണരുന്നു... എന്തിന് ?" |

| Manglish | "Nee unarunnu... enthin ?" |

| English | "You wake up... why ?" |



\*\*Note:\*\* NO green word-highlight on any version (removed — broke the joke in Malayalam where "scroll" is a borrowed word).



\---



\## 📁 REPO STRUCTURE



```



github.com/jeevithalakshyam/jeevithalakshyam.github.io/

├── README.md

├── index.html      ← Current live homepage (Hero v1 — Mirror)

└── v2.html         ← A/B preview (Hero v2 — with reflective tagline + green highlight removed)



```



\*\*Live URLs:\*\*

\- 🌐 `https://jeevithalakshyam.info` → current `index.html`

\- 🌐 `https://jeevithalakshyam.info/v2.html` → v2 preview for comparison



\---



\## 🛣️ PLANNED FUTURE STRUCTURE (Not yet built)



```



jeevithalakshyam.info/

├── /                       ← Homepage (artistic, multilingual)

├── /reflections/           ← Universal life-purpose entry (non-Muslim safe)

├── /belief/                ← ദൈവവിശ്വാസം (Tawheed gentle intro)

├── /quran/                 ← ഖുർആൻ പാഠങ്ങൾ

├── /seerah/                ← നബി ജീവിതം

├── /hadith/                ← ഹദീസ് ചിന്തകൾ

├── /manhaj/                ← മൻഹജ് (way of the Salaf)

├── /article/{slug}         ← Article template

├── /about

└── /privacy



```



\*\*Each article page will have:\*\*

\- Tri-language toggle (ML / Manglish / EN)

\- Author/source citation

\- Estimated read time

\- Arabic ayaat with Malayalam translation

\- WhatsApp share button (Kerala distribution channel)

\- Related articles footer



\---



\## 🧭 PHASED ROADMAP



| Phase | Status | Description |

|---|---|---|

| \*\*Phase 0 — Identity \& Infrastructure\*\* | ✅ DONE | Domain, DNS, email, hosting, SSL — all live |

| \*\*Phase 1 — Homepage Hero (Static + JS)\*\* | ✅ DONE | Live at jeevithalakshyam.info |

| \*\*Phase 1.5 — A/B Preview Iteration\*\* | 🔄 IN PROGRESS | v2.html created for comparison |

| \*\*Phase 2 — Journey Beyond Hero\*\* | ⏳ PARKED | "Who should tell you?" level + categories |

| \*\*Phase 3 — First 5 Articles\*\* | ⏳ PENDING | Content series TBD (universal purpose / Tawheed / Seerah) |

| \*\*Phase 4 — Launch \& Soft Promotion\*\* | ⏳ PENDING | WhatsApp share with trusted scholars first |

| \*\*Phase 5 — Social Expansion\*\* | ⏳ FUTURE | Instagram, Facebook, X, YouTube repurposing |

| \*\*Phase 6 — Full Muslim PWA App\*\* | ⏳ FUTURE | Prayer times, Qibla, Hijri, daily Qur'an — Capacitor/Flutter shell |



\---



\## 🔄 CONTENT WORKFLOW (Mandatory)



```



1\. Claude drafts article (ML + Manglish + EN versions)

&#x20;  ↓

2\. Human Salafi scholar review ← NON-NEGOTIABLE before publish

&#x20;  ↓

3\. Canva visuals (thumbnail, share card)

&#x20;  ↓

4\. Commit to GitHub

&#x20;  ↓

5\. Auto-deploy via GitHub Pages

&#x20;  ↓

6\. WhatsApp share (Kerala distribution)



```



\---



\## 🛡️ SECURITY HYGIENE STATUS



| Service | 2FA | Recovery |

|---|---|---|

| ProtonMail | ✅ | Recovery phone + codes |

| Porkbun | ✅ | Authenticator app |

| Cloudflare | ✅ | Authenticator app |

| Zoho Mail | ✅ | Authenticator app |

| GitHub | ✅ | 16 recovery codes saved (password manager + file) |



\*\*Password storage:\*\* All credentials in password manager (Bitwarden recommended).

\*\*WHOIS Privacy:\*\* ON at Porkbun (personal info hidden).

\*\*HTTPS:\*\* Enforced on jeevithalakshyam.info via GitHub Pages + Let's Encrypt.



\---



\## 📌 KEY DECISIONS LOG



| Date | Decision | Reasoning |

|---|---|---|

| 2026-06-20 | Brand name = `Jeevithalakshyam` (singular) | Universal Malayali resonance, all ages |

| 2026-06-20 | Domain = `.info` | Cheapest TLD ($3 Yr1), signals knowledge site |

| 2026-06-28 | Master email = ProtonMail | Privacy alignment with da'wah ethos |

| 2026-06-28 | Skip Zoho custom domain (UAE region issues) | Switched to Cloudflare Email Routing → Zoho personal forwarding |

| 2026-06-28 | Static site over dynamic | Free forever, fast, secure, no backend complexity |

| 2026-06-28 | Dark theme primary (Quran.com + Linear.app vibe) | Modern, premium, sacred-feeling |

| 2026-06-28 | Hero copy = "Mirror" direction | Pierce scroll-numbness, recognize self, universal hook |

| 2026-06-28 | Malayalam tone = "Nee" (direct) over "Ningal" (polite) | Finger-pointing personal address — pierces reader |

| 2026-06-28 | "എന്തിന്" (sharp) over "എന്തിനു" (soft) | Staccato rhythm matches English mirror |

| 2026-06-28 | Removed green word-highlight | Joke didn't land in Malayalam ("ചെയ്യുന്നു" ≠ scroll) |

| 2026-06-28 | Tri-language toggle (ML / Manglish / EN) | Captures missing diaspora + young Kerala audience |

| 2026-06-28 | Malayalam as default language | Authentic Kerala-first stance |



\---



\## 🚨 PARKED IDEAS / FUTURE WORK



\- \*\*Journey Level 2:\*\* "Who is qualified to tell you your purpose?" — designed but not yet built

\- \*\*Article template:\*\* HTML structure with WhatsApp share + related articles

\- \*\*Newsletter:\*\* Postpone until 50+ articles published

\- \*\*Comments:\*\* Not planned for Phase 1 (pure reading site)

\- \*\*PWA conversion:\*\* Phase 5+ (when content is mature)

\- \*\*Migration to Jekyll/Astro:\*\* If content grows >50 articles

\- \*\*Analytics:\*\* Plausible or Umami (privacy-first) when traffic warrants



\---



\## 🔁 RESUME-WORK INSTRUCTIONS (For Next Session)



When returning to work on this project, the assistant should:



1\. \*\*Read this CONTEXT.md\*\* first

2\. \*\*Respect locked decisions\*\* (palette, tone, language strategy, brand voice)

3\. \*\*Act as expert\*\* in whatever domain the question touches (sysadmin, da'wah strategy, frontend, design, content writing)

4\. \*\*Honor the non-Muslim-first funnel strategy\*\* — never preach upfront, lead with universal questions

5\. \*\*Default language = Malayalam\*\* in all examples and code samples

6\. \*\*Use "Nee" not "Ningal"\*\* in Malayalam content

7\. \*\*Maintain Static + JavaScript architecture\*\* — no backend additions without explicit approval

8\. \*\*Mandatory:\*\* No content goes live without human Salafi scholar review



\---



\## 📧 CONTACT



\- \*\*Project email:\*\* `admin@jeevithalakshyam.info` (forwards to Zoho)

\- \*\*GitHub:\*\* `github.com/jeevithalakshyam`

\- \*\*Live site:\*\* `https://jeevithalakshyam.info`
- **2026-07-12:** Added browser favicon support with a Malayalam `ജ` brand glyph, created `assets/favicon.svg` with embedded `Noto Serif Malayalam`, and generated PNG/ICO fallbacks (`favicon-16.png`, `favicon-32.png`, `favicon-192.png`, `favicon.ico`, `apple-touch-icon.png`) using scripts.
```



