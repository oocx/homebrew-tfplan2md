class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.37.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.37.4/tfplan2md_1.37.4_macos-arm64.tar.gz"
      sha256 "d75ee7de92965bcef20a3efcdf78ba592361cb2c0e31b802232083c3a6b6a280"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.37.4/tfplan2md_1.37.4_linux-x64.tar.gz"
      sha256 "a0a6719e70456b3a43b73a66eca4257a01270b63bd745edecf8f901054e605ba"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.37.4/tfplan2md_1.37.4_linux-arm64.tar.gz"
      sha256 "1d182ddb0449cd1e2498422c19985b06aed46296d42c77cbe28278a14377725b"
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
