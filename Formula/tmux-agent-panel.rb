class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.0/tap-0.1.0-darwin-amd64.tar.gz"
      sha256 "6277b28a45ac148de9e1fccf1f37795dd981d1ae87b9601161d6cb09a4635790"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.0/tap-0.1.0-darwin-arm64.tar.gz"
      sha256 "47c8a3cd4a97ffac1f53dd0a186f7a7f286ffd9c25bfdcd3cbe2b91847095790"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.0/tap-0.1.0-linux-amd64.tar.gz"
      sha256 "0da5a2ccde1d19058fa91cd6580c3579e8d8e15aabc64109306d795e8119ee95"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.0/tap-0.1.0-linux-arm64.tar.gz"
      sha256 "d396d32b694b70742b46f965074c3f63a4cd491680019a890703c797a7175b67"
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
