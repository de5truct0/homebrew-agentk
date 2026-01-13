# Homebrew Formula for AGENT-K
# Multi-Agent Claude Code Terminal Suite

class Agentk8 < Formula
  desc "Multi-Agent Claude Code Terminal Suite"
  homepage "https://github.com/de5truct0/agentk"
  url "https://registry.npmjs.org/agentk8/-/agentk8-2.1.2.tgz"
  sha256 "7c7e241d47c5403f79105b9cc200daa23c03406e"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      AGENT-K requires Claude Code CLI to be installed.
      Install it from: https://claude.ai/code

      To verify installation:
        agentk --version

      To get started:
        agentk              # Start dev mode
        agentk --mode ml    # Start ML mode
        agentk --help       # Show all options
    EOS
  end

  test do
    assert_match "2.1.2", shell_output("#{bin}/agentk --version")
  end
end
