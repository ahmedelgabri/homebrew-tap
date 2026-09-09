class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.0/tap-0.2.0-darwin-amd64.tar.gz"
      sha256 "cf099f42631c412b564c274791efbd5976a8647441e954be02fa2f9cc19d034b"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.0/tap-0.2.0-darwin-arm64.tar.gz"
      sha256 "00d225613ee69e4b8e1a561aebefe4dfa18bb917e50f9ffb4fc9595e380f67ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.0/tap-0.2.0-linux-amd64.tar.gz"
      sha256 "93301e41ae1a65bdbbeaae5cdf3ed74457773f6754e66b2ea569644c8d39dee0"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.2.0/tap-0.2.0-linux-arm64.tar.gz"
      sha256 "cf3c75ebb3befe52b75853f72bbd87afef876a8e51f694e15c7431af62bf4064"
    end
  end

  depends_on "tmux"

  def install
    bin.install "tap"
    bash_completion.install "completions/tap.bash" => "tap"
    zsh_completion.install "completions/_tap"
    fish_completion.install "completions/tap.fish"
  end

  test do
    system bin/"tap", "--version"
  end
end
