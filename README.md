# rebun

Like bun run but with delayed restart after crash or completion

## Install with homebrew

```bash
brew install joelzanden/tap/rebun
```

## Usage

```bash
rebun 60 error-prone-script.ts
```

This will run the script and restart it after 60 seconds if it crashes or completes.
