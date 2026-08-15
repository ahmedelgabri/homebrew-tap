class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.11/tap-0.1.11-darwin-amd64.tar.gz"
      sha256 "6f054402db9e99b15f5db4cd1d6a7993440fca527f526e1b5a327818016ac3e2"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.11/tap-0.1.11-darwin-arm64.tar.gz"
      sha256 "c4db79810c99dfccc05ec06009859a796af4ed83a42b423b6bdbd0f06ece88e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.11/tap-0.1.11-linux-amd64.tar.gz"
      sha256 "6a5ad047325531c48b50c3e8b9101ab0e65fb9501606ac21164536809ec3d71a"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.11/tap-0.1.11-linux-arm64.tar.gz"
      sha256 "2b865dfbd424e1fd6f013d1d79c3f0129e099a4b5cfde14069993cc9f71d2f43"
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
