class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.45.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.2/tfplan2md_1.45.2_macos-arm64.tar.gz"
      sha256 "a5fd4d99699f43da68f4f770e4ac49a1e7a484e56e51c481402d6393cb2d6747"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.2/tfplan2md_1.45.2_linux-x64.tar.gz"
      sha256 "595f393143d925dfdc3f5ac0a50eff801f70787af122c935ab5faf2cc183ae50"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.2/tfplan2md_1.45.2_linux-arm64.tar.gz"
      sha256 "a8db406e2ed9123777bcd397425a2bdbe37c68fdfc2de5a2663f528c7e8ee597"
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
