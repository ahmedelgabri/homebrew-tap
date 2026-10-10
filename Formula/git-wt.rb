class GitWt < Formula
  desc "Git custom command that enhances Git's native worktree functionality"
  homepage "https://github.com/ahmedelgabri/git-wt"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.1.0/git-wt-3.1.0-darwin-amd64.tar.gz"
      sha256 "6ac69441cc743eeca6711e8eda4646d5f07bb350310c6da24de835b939092697"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.1.0/git-wt-3.1.0-darwin-arm64.tar.gz"
      sha256 "c9de1d1ec3545edc9860334f0574e38070ef0e0c98c3edd735e3c5fdc0a2f245"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.1.0/git-wt-3.1.0-linux-amd64.tar.gz"
      sha256 "71ab899c95d243254a4c762d2c778e8ef0daada2ef4531263e79b4ad00068188"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.1.0/git-wt-3.1.0-linux-arm64.tar.gz"
      sha256 "ccfc937f9d913ab72db49af1bc438cbf20ad9f0979ba787be5e762de91b74536"
    end
  end

  depends_on "git"

  def install
    bin.install "git-wt"
    bash_completion.install "completions/git-wt.bash" => "git-wt"
    zsh_completion.install "completions/_git-wt"
    zsh_completion.install "completions/_git_wt"
    fish_completion.install "completions/git-wt.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    system bin/"git-wt", "--help"
  end
end
