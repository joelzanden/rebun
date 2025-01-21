# rebun

Like bun run but with delayed restart after crash

## Install with homebrew

```bash
brew install joelzanden/tap/rebun
```

## Usage

```bash
rebun 30 error-prone-script.ts
```

This will run the script and restart it after 30 seconds if it crashes.
