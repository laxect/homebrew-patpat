class Dantalian < Formula
  desc "A nfo file generator for your anime. Source from Bangumi."
  homepage "https://github.com/nanozuki/dantalian"
  url "https://github.com/nanozuki/dantalian/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "e92b125e498ca2e72a705c23ada608be7f66ecfb334aa3715087516f411c049b"
  license "GPL3"
  head "https://github.com/nanozuki/dantalian"

  depends_on "rust" => :build

  def install
    ENV["SHELL_COMPLETIONS_DIR"] = buildpath
    system "cargo", "install", *std_cargo_args
  end
end
