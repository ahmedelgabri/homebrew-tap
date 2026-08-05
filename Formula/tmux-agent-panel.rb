class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.1/tap-0.1.1-darwin-amd64.tar.gz"
      sha256 "591ad485914836b862fc5b1b4b96f64d27f056d8b2c9be4725a2124589477aab"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.1/tap-0.1.1-darwin-arm64.tar.gz"
      sha256 "656f2983a84a956b5ae995dfa1e321f4c3c7dc3c32cd9e6dbd751ccc91b16d32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.1/tap-0.1.1-linux-amd64.tar.gz"
      sha256 "9417d07574192fa789e46a3a8f221778956427be620c0faf8232bc25a53f4fbb"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.1/tap-0.1.1-linux-arm64.tar.gz"
      sha256 "0325fb8b17c8e9087ec0cd5d62ae94cbfbba013f604e58917ec0cacf494c187b"
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
