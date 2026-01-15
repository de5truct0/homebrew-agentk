# Homebrew Formula for AGENT-K
# Multi-LLM Council Terminal Suite

class Agentk8 < Formula
  desc "Multi-LLM Council Terminal Suite - Three-stage consensus"
  homepage "https://github.com/de5truct0/agentk"
  url "https://registry.npmjs.org/agentk8/-/agentk8-2.3.4.tgz"
  sha256 "fb27e3d01d4bcb058ce65a92fa8bd984be5498d6be8ce179dbe3288114d59049"
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
    assert_match "2.3.4", shell_output("#{bin}/agentk8 --version")
  end
end
