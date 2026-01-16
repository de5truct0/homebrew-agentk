# Homebrew Formula for AGENT-K
# Multi-LLM Council Terminal Suite

class Agentk8 < Formula
  desc "Multi-LLM Council Terminal Suite - Three-stage consensus"
  homepage "https://github.com/de5truct0/agentk"
  url "https://registry.npmjs.org/agentk8/-/agentk8-2.3.7.tgz"
  sha256 "f360104efe800646bf6dafa7d0ba1cdd99a1e1f13dd3cb4eea3df43fa8eece94"
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
    assert_match "2.3.7", shell_output("#{bin}/agentk8 --version")
  end
end
