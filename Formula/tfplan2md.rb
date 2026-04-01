class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.41.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.41.0/tfplan2md_1.41.0_macos-arm64.tar.gz"
      sha256 "1e4595382bfa8dffdaa583360a3193f2c82b513aa9e8d26cbd485817eb290ce8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.41.0/tfplan2md_1.41.0_linux-x64.tar.gz"
      sha256 "682c0856bb2f19d40f2e777eecc689610e58a0696ebf11d6a5b6c9d10f9168f8"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.41.0/tfplan2md_1.41.0_linux-arm64.tar.gz"
      sha256 "3f1c226148dc03df1cb8471521bd41e092eb76bf96846b7f62a8acdcd2579f68"
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
