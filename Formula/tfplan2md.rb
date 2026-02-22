class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.26.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.1/tfplan2md_1.26.1_macos-arm64.tar.gz"
      sha256 "d75c32d4a229073ac886df7cab9238fb056060ed5210d2c370e3f772b61406e8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.26.1/tfplan2md_1.26.1_linux-x64.tar.gz"
      sha256 "cd1f16c335f64f55caa9cd2181979684cdcacad148d87aa6d1ce0848886c3aad"
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
