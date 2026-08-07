class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.6/tap-0.1.6-darwin-amd64.tar.gz"
      sha256 "748edeb76b273ea44d716d549ea7e4b4d5046495c686bf61506268ade6228948"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.6/tap-0.1.6-darwin-arm64.tar.gz"
      sha256 "d2ab3295a5c6946af7d13313561d4968c06e69046d8f4b173fdb5ab8593860b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.6/tap-0.1.6-linux-amd64.tar.gz"
      sha256 "473d0ba96b29a3e8688537b46b4f2325ea44124410ea0e68f96cb9120841b0de"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.6/tap-0.1.6-linux-arm64.tar.gz"
      sha256 "ec11676e37c55ed558c138e8fb5d1492263a5ae63950808e5dea258fbe7b9e36"
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
