# Homebrew Tap for AGENT-K

This is the official Homebrew tap for [AGENT-K](https://github.com/de5truct0/agentk), the Multi-Agent Claude Code Terminal Suite.

## Installation

```bash
brew tap de5truct0/agentk
brew install agentk
```

## What is AGENT-K?

AGENT-K orchestrates multiple specialized Claude agents for software development and ML research. It provides:

- **Multi-Agent Orchestration**: Coordinate specialized agents working in parallel
- **Two Modes**: Software Development and ML Research
- **Interactive Chat**: Works like `claude` but with a team of specialists
- **Visual Mode**: tmux-based multi-pane view of all agents
- **Scout Agent**: Real-time web/GitHub/paper search

## Requirements

- **Claude Code CLI** - [Install here](https://claude.ai/code)
- **bash** 4.0+ (installed by Homebrew)
- **jq** (installed by Homebrew)
- **tmux** (optional, for visual mode)

## Usage

```bash
agentk                    # Start dev mode
agentk --mode ml          # Start ML mode
agentk --visual           # With tmux panels
agentk --help             # Show all options
```

## Updating

```bash
brew update
brew upgrade agentk
```

## Uninstalling

```bash
brew uninstall agentk
brew untap de5truct0/agentk
```

## More Information

- [Main Repository](https://github.com/de5truct0/agentk)
- [Documentation](https://github.com/de5truct0/agentk#readme)
- [Issues](https://github.com/de5truct0/agentk/issues)

## License

MIT License - see [LICENSE](https://github.com/de5truct0/agentk/blob/main/LICENSE)
