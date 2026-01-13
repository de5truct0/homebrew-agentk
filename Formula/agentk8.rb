# Homebrew Formula for AGENT-K
# Multi-Agent Claude Code Terminal Suite

class Agentk8 < Formula
  desc "Multi-Agent Claude Code Terminal Suite"
  homepage "https://github.com/de5truct0/agentk"
  url "https://registry.npmjs.org/agentk8/-/agentk8-2.2.4.tgz"
  sha256 "da5c9b492fe087b8f340545500cb9b52b99dd5665830db67d5a2bb92fea1ca52"
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
        agentk8 --version

      To get started:
        agentk8              # Start dev mode
        agentk8 --mode ml    # Start ML mode
        agentk8 --help       # Show all options
    EOS
  end

  test do
    assert_match "2.2.4", shell_output("#{bin}/agentk8 --version")
  end
end
