class Dantalian < Formula
  desc "Nfo file generator for your anime, Source from Bangumi"
  homepage "https://github.com/nanozuki/dantalian"
  url "https://github.com/nanozuki/dantalian/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "b2f4d0ca2e57a94b7b96053a7e7751571621d21acc233f31ed8ea193f88be6c3"
  license "GPL-3.0-only"
  head "https://github.com/nanozuki/dantalian"

  depends_on "rust" => :build

  def install
    ENV["SHELL_COMPLETIONS_DIR"] = buildpath
    system "cargo", "install", *std_cargo_args
    bash_completion.install "dantalian.bash"
    fish_completion.install "dantalian.fish"
    zsh_completion.install "contrib/completion/_dantalian"
  end
end
