---
layout: default
title: "Best Prompting Practices"
permalink: /prompting/
---

# Best Prompting Practices

Good prompting is not just about getting a clever answer. For business and technical workflows, good prompting means creating outputs that are useful, checkable, and easy for a human to review.

## 1. Start with the role and task

Weak prompt:

> Help me with this document.

Better prompt:

> Act as a business systems analyst. Review this SOP and identify missing steps, unclear ownership, stale references, and risks that would affect a new employee following the process.

## 2. Give the AI the decision context

Tell the model what the output will be used for. A summary for a manager, a checklist for a technician, and a public blog post should not sound the same.

Useful context includes:

- Audience
- Goal
- Constraints
- Required format
- Risk level
- What not to do

## 3. Ask for source-aware answers

For knowledge-base and documentation tools, the AI should explain where the answer came from. I prefer answers that cite file names, document sections, or retrieved snippets instead of pretending the system “just knows.”

## 4. Force uncertainty instead of bluffing

A good AI workflow should be allowed to say:

> I do not have enough source material to answer that confidently.

That is better than a polished answer that invents a policy or skips an edge case.

## 5. Separate drafting from approval

Use AI to draft, classify, summarize, or propose. Keep humans responsible for approving, publishing, sending, or making business decisions.

## 6. Use repeatable prompt templates

For portfolio projects, prompts should be saved like product assets. A prompt that lives only in chat is hard to test or improve.

A useful template:

```text
Role:
Task:
Context:
Inputs:
Constraints:
Output format:
Quality checks:
```

## 7. Review outputs against a checklist

Before trusting an AI output, check:

- Did it answer the actual question?
- Did it cite or reference the right source?
- Did it make unsupported claims?
- Did it ignore constraints?
- Would a non-technical stakeholder understand it?
- What human decision is still required?

## 8. Keep prompts short enough to maintain

Long prompts can become fragile. A better approach is to keep the core instruction clear, then add examples, guardrails, and evaluation rules only where they improve consistency.

## My current prompting rule

For practical AI workflow tools, I use this principle:

> The best AI output is not the fanciest one. It is the one a human can verify, edit, and trust.
