# Contributing to dart_oop

Welcome! This repository is a learning space for Dart and Object-Oriented Programming (OOP) concepts.  
Beginners are highly encouraged to contribute. Every clear, well‑explained example helps others learn.

If anything here feels unclear, open an issue with the label `question`.

---

## Table of Contents
1. Goals of This Repository
2. What You Can Contribute
3. Quality Principles
4. Project Structure (Recommended)
5. Adding a New Example (Checklist)
6. Coding & Style Guidelines
7. Documentation & Comments
8. Commit Message Guidelines
9. Issues & Discussions
10. Pull Request Process
11. Example Topic Ideas
12. Learning Resources
13. FAQ
14. Quick Start Flow

---

## 1. Goals of This Repository
- Provide small, focused examples of Dart OOP & related concepts.
- Keep examples easy to read (avoid unnecessary complexity).
- Demonstrate best practices (naming, composition, error handling).
- Encourage experimentation and learning-by-doing.
- Track incremental improvement: better explanations, cleaner code, tests where helpful.

This is NOT (yet) a production library. Prioritize clarity over optimization.

---

## 2. What You Can Contribute
- New OOP concept examples (e.g., mixins, abstract classes, polymorphism).
- Refine or simplify existing examples.
- Add comments / diagrams / explanations.
- Add comparison examples (e.g., inheritance vs composition).
- Translate or clarify README sections.
- Add lightweight tests for important concepts.
- Improve folder organization.
- Add performance notes when relevant (optional).
- Add design pattern implementations (clearly labeled).
- Fix typos / formatting / naming improvements.

Avoid:
- Overly large PRs doing many unrelated things.
- Obfuscated or overly clever code.
- Adding heavy dependencies (discuss first).

---

## 3. Quality Principles
- One concept per file (or per small group).
- Short, purposeful variable & class names.
- Show intent: comment WHY if something is non-obvious.
- Prefer composition over inheritance when teaching design trade‑offs.
- Keep examples runnable (no dead code).
- Fail fast: throw meaningful errors in demonstrations.

---

## 4. Project Structure (Recommended Pattern)
(Adjust if the repo already diverges—feel free to propose improvements.)

```
/
├─ README.md
├─ CONTRIBUTING.md
├─ lib/
│  └─ (If building reusable helpers)
├─ examples/
│  ├─ basics/
│  │   ├─ classes/
│  │   │   └─ simple_class.dart
│  │   └─ constructors/
│  ├─ oop/
│  │   ├─ inheritance/
│  │   ├─ polymorphism/
│  │   ├─ abstraction/
│  │   ├─ encapsulation/
│  │   └─ mixins/
│  ├─ patterns/
│  │   ├─ singleton/
│  │   ├─ factory/
│  │   ├─ strategy/
│  │   └─ observer/
│  ├─ advanced/
│  │   ├─ generics/
│  │   ├─ extensions/
│  │   ├─ async_await/
│  │   ├─ streams/
│  │   └─ isolates/
│  └─ error_handling/
├─ test/
│  └─ (Optional tests that reinforce concepts)
└─ scripts/ (Optional utilities)
```

File naming: `topic_concept.dart` (e.g., `inheritance_vehicle.dart`, `strategy_payment.dart`)

---

## 5. Adding a New Example (Checklist)

1. Choose a clear filename: `examples/<category>/<subtopic>/<name>.dart`
2. Top of file: brief description comment.
3. Include a `main()` showcasing usage (print outputs).
4. Avoid unnecessary I/O (keep self-contained).
5. If pattern-based, explain:
   - Intent
   - When to use
   - Pros / cons
6. Run:
   ```
   dart format .
   dart analyze
   ```
7. (Optional) Add a simple test in `test/` verifying core behavior.
8. Update README or create an `examples/INDEX.md` entry.
9. Add a Conventional Commit message (see Section 8).
10. Open PR with short explanation.

Example header template:
```dart
/// Example: Strategy Pattern for payment processing.
/// Intent: Demonstrates selecting behavior at runtime via composition.
/// Pros: Flexible, avoids large conditional blocks.
/// Cons: Slightly more boilerplate than a single method with if/else.
```

---

## 6. Coding & Style Guidelines

Formatting & Lints:
- Always run: `dart format .`
- Fix analyzer warnings: `dart analyze`

Language Use:
- Prefer `final` where mutation not needed.
- Avoid `var` for top-level constants (use `const` when possible).
- Limit `dynamic` unless teaching a dynamic feature.
- Use `late` sparingly (add a comment explaining its need).
- Use null-safety features thoughtfully; avoid unnecessary `!`.
- Keep imports minimal & sorted.

Design:
- Demonstrate good encapsulation (private fields with getters/setters when needed).
- Favor pure functions in utilities.
- For teaching patterns, keep the example minimal but complete.

Error Handling:
- Use domain-specific exceptions for pattern examples (e.g., `PaymentException`).
- Show both correct usage and (optionally) a guarded failure scenario.

---

## 7. Documentation & Comments

Use `///` for public API or conceptual explanations; `//` for inline reasoning.

Include:
- Purpose of the example.
- Key concept names (Inheritance / Polymorphism / Composition / Mixin, etc.)
- When to choose this approach.
- Short output demonstration if helpful.

Avoid:
- Explaining trivial statements (e.g., `// declare integer`).

---

## 8. Commit Message Guidelines (Conventional Commits)

Format:
```
<type>(<scope>): <summary>
```

Types (common here):
- feat: New example or concept
- docs: Documentation / comments / README
- refactor: Internal reorganization without behavior change
- test: Add or improve tests
- chore: Tooling or maintenance
- fix: Correct an error in an example
- perf: Performance-related (rare here)

Examples:
```
feat(oop/inheritance): add vehicle inheritance example
docs(readme): add section on generics
refactor(patterns): simplify singleton implementation
test(patterns): add test for strategy selection
```

Breaking conceptual change (rare):
```
feat(patterns)!: rename strategy folder to behaviors
```

---

## 9. Issues & Discussions

When opening an issue:
- Use a concise title.
- Provide context: What concept is missing or unclear?
- For a bug: show minimal code and expected vs actual output.

Labels you can suggest (if enabled):
- `concept-idea`
- `example-request`
- `enhancement`
- `bug`
- `question`
- `documentation`
- `good first issue`
- `needs discussion`

If labels don’t exist yet, just write them in the issue body.

---

## 10. Pull Request Process

Before opening:
- Code formatted & analyzed cleanly.
- Example runs without runtime errors.
- PR title = concise summary (use same style as commit if single change).
- Describe:
  - What concept?
  - Why valuable?
  - Sample output (optional snippet).

Checklist (copy into PR description if helpful):
- [ ] Added example / update is focused
- [ ] Added explanation comment at top
- [ ] Code formatted & passes `dart analyze`
- [ ] README / index updated (if needed)
- [ ] Commit messages follow convention

Reviews:
- Be open to suggestions: clarity > personal style.
- Keep iteration lightweight; squash on merge if multiple fix-up commits.

---

## 11. Example Topic Ideas

Core OOP:
- Classes vs Objects
- Encapsulation (private fields + getter/setter)
- Inheritance vs Composition comparison
- Polymorphism (method overriding)
- Abstract classes
- Interfaces via abstract classes
- Mixins (reusability)
- Constructors (default, named, factory, redirecting)
- Operator overloading

Advanced / Language:
- Generics (List<T>, generic constraints, type inference)
- Extension methods
- Enum enhancements (with members, methods)
- Late initialization patterns
- Immutable value objects (copy patterns)

Async:
- Futures (sequential vs parallel)
- async/await with error handling
- Streams (broadcast vs single subscription)
- Stream transformations
- Isolates (simple compute example)

Patterns:
- Singleton (lazy vs eager)
- Factory Method vs factory constructor
- Builder
- Strategy
- Observer (stream-based)
- Adapter
- Decorator (wrapping behavior)
- Repository (abstract data access)
- Dependency Injection basics

Other:
- Error handling patterns
- Logging vs debugging
- Code organization best practices
- Value equality (== and hashCode)
- Sealed classes / pattern matching (when available)

---

## 12. Learning Resources (External References)
- Official Dart Docs: https://dart.dev/guides
- Effective Dart: https://dart.dev/guides/language/effective-dart
- Asynchrony: https://dart.dev/codelabs/async-await
- Language Tour: https://dart.dev/guides/language/language-tour

(Feel free to add high-quality new links in a docs PR.)

---

## 13. FAQ

Q: I’m a beginner. Is my contribution welcome?  
A: Absolutely. Start with a small, well-explained example.

Q: Do I have to write tests?  
A: Optional, but encouraged if demonstrating logic (e.g., pattern behavior).

Q: Can I reorganize folders?  
A: Open an issue first with a proposed structure.

Q: How big should an example be?  
A: Preferably under ~60–80 lines unless teaching a multi-class pattern.

Q: What if I want to add multiple concepts at once?  
A: Separate them into multiple PRs for easier review.

---

## 14. Quick Start Flow

```bash
# 1. Fork
git clone https://github.com/junayedahamed/dart_oop.git
cd dart_oop

# 2. Create a branch
git checkout -b feat/polymorphism-animal-example

# 3. Add example
nano examples/oop/polymorphism/animal_polymorphism.dart

# 4. Run tools
dart format .
dart analyze
dart run examples/oop/polymorphism/animal_polymorphism.dart

# 5. Commit
git add .
git commit -m "feat(oop/polymorphism): add animal polymorphism example"

# 6. Push & PR
git push origin feat/polymorphism-animal-example
# Open PR on GitHub
```

---

Thank you for helping build a clearer Dart OOP learning resource!  
Every improvement—no matter how small—adds value for the next learner.

Happy coding & teaching!
