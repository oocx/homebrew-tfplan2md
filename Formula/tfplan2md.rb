class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.31.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.2/tfplan2md_1.31.2_macos-arm64.tar.gz"
      sha256 "dd412e43ee458d529163a076e53fae710a1321b002118633daabbcf816f6da43"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.2/tfplan2md_1.31.2_linux-x64.tar.gz"
      sha256 "04b0f1400a2392763e4e0798f81c574ae82d02aa456c8dae8410bf59ebf75cf7"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.31.2/tfplan2md_1.31.2_linux-arm64.tar.gz"
      sha256 "5caa867a3c95c5c3f16a60e65baced98b3e073325df96c425fc2de65243f1bc8"
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
