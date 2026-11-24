# BulutBelge Homebrew tap

[BulutBelge](https://bulutbelge.com/) — belgelerdeki kişisel verileri bilgisayarınızda bulan ve gerçekten silen masaüstü uygulaması (açık kaynak, AGPL-3.0). Offline PII redaction for PDF, Office and images.

```bash
brew tap bulutbelge/tap
brew trust bulutbelge/tap
brew install --cask bulutbelge/tap/bulutbelge
```

Homebrew 7 ve sonrası, dışarıdan eklenen depoları kullanmadan önce `brew trust` ile açık onay ister.

macOS, Apple Silicon. Uygulama Apple Developer ID ile imzalı ve notarize. Kurulum `bulutbelge` komutunu da PATH'e ekler; yapay zekâ ajanları için yerel MCP sunucusu:

```bash
claude mcp add bulutbelge -- bulutbelge mcp
```

Kaynak kodu ve sürümler: https://github.com/bulutbelge/bulutbelge
