class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.42.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.42.0/tfplan2md_1.42.0_macos-arm64.tar.gz"
      sha256 "33a8fa8a5e17491f5e48e3ee18cd0a9b84369fb0c1ca8899219736b5975437cc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.42.0/tfplan2md_1.42.0_linux-x64.tar.gz"
      sha256 "c7c0102623384b9e0180c0f4d5e1e8dce3c691976b91b6df4d0cf21917eb767d"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.42.0/tfplan2md_1.42.0_linux-arm64.tar.gz"
      sha256 "c13d9013e2e6d2159f6d37cf0b5faa47178b28864deb2cb45f64aac36c36619c"
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
