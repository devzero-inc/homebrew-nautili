# Nautili Homebrew tap

```bash
brew install devzero-inc/nautili/nautili                  # nt, the Nautili terminal client (macOS, Linux)
brew install --cask devzero-inc/nautili/nautili-desktop   # the Nautili desktop app (macOS)
```

`brew upgrade` updates `nt`. The desktop app updates itself.

The files in `Formula/` and `Casks/` are written by every stable Nautili release
(`[Harness] Release build` in devzero-inc/nautili). Changes made here by hand are
overwritten by the next release. The binaries themselves are served from
releases.nautili.ai; this repository holds only their URLs and checksums.

Docs: https://www.nautili.ai/docs/introduction/install
