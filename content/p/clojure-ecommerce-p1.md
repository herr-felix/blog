---
title: Making an E-commerce website in Clojure (Part 1)
slug: clojure-e-commerce-p1
draft: true
---

Hi y'all. I've been tasked to make an e-commerce website for my employer. I have decided to go with Clojure. I'm still relatively new to the language (and the JVM). 
I'm mostly writing this post because `{:A "I want to write more blog posts" :B "It will be helpful for my successor and might help them to figure what mess they're about to get into :p"}`.

Let's start by creating a new project from the [Luminus](https://luminusweb.com/) template.

``` bash
lein new luminus rolef.store +h2 +auth +http-kit
```
