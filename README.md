# cover-badge

A badge generator for coverage, based on https://badgen.net/https and https://github.com/florence/cover.

### Installation & Usage

```shell
raco pkg install --auto cover-badge
```

This `raco` plugin requires you run `raco cover` first, for example, in CI flow you can write

```racket
raco cover -b .
raco cover-badge
```

Deploy directory `<repo>/coverage/` to any place, e.g. GitHub pages. Then you can access the `badge.json`, for example, if you put the `coverage/` to GitHub pages. You might have an URL `https://<user name/org name>.github.io/<repo name>/coverage/badge.json`, all you need now is the following:

```markdown
![](https://badgen.net/https/<user/org name>.github.io/<repo name>/coverage/badge.json)
```

For instances

```markdown
[![](https://badgen.net/https/racket-tw.github.io/syntax-extension/coverage/badge.json)](https://racket-tw.github.io/syntax-extension/coverage)
[![](https://badgen.net/https/racket-tw.github.io/sauron/coverage/badge.json)](https://racket-tw.github.io/sauron/coverage)
```

Result:

[![](https://badgen.net/https/racket-tw.github.io/syntax-extension/coverage/badge.json)](https://racket-tw.github.io/syntax-extension/coverage)
[![](https://badgen.net/https/racket-tw.github.io/sauron/coverage/badge.json)](https://racket-tw.github.io/sauron/coverage)
