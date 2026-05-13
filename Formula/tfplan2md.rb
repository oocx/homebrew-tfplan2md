class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.43.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.1/tfplan2md_1.43.1_macos-arm64.tar.gz"
      sha256 "3fddf1e70aa14c991da702dddaefcf6e7bd5a882ba93cd61720a57db6890bc3c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.1/tfplan2md_1.43.1_linux-x64.tar.gz"
      sha256 "911f2c98a652de12ac4194d0cc32c06e9b978788b0f93f776a5fc8417d08f954"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.43.1/tfplan2md_1.43.1_linux-arm64.tar.gz"
      sha256 "9ce4ed10858692b6e27d0cb09d0af2a2aeca777cdf9d1bce7e5cb57358834ef8"
    end
  end

  def install
    bin.install "tfplan2md"
  end

  test do
    system "#{bin}/tfplan2md", "--version"
    system "#{bin}/tfplan2md", "--help"
  end
end
