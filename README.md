<div align="center">

[![Platforms][platforms badge]][platforms]
[![Documentation][documentation badge]][documentation]
[![Discord][discord badge]][discord]

</div>

# LanguageServer

This is a Swift library for building language servers that implement the [Language Server Protocol](https://microsoft.github.io/language-server-protocol/). It is built on top of the [LanguageServerProtocol][languageserverprotocol] library.

## Integration

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/LanguageServer", branch: "main")
]
```

## Usage

First, you'll need a way to handle the JSON-RPC messaging. The `JSONRPCClientConnection` type handles this translation. To do this, it needs a raw communications channel. This is based on the `DataChannel` type from [JSONRPC](https://github.com/ChimeHQ/JSONRPC).

```swift
import JSONRPC
import LanguageServer 

let channel = DataChannel.stdioPipe()
let connection = JSONRPCClientConnection(channel)
```

## Contributing and Collaboration

I would love to hear from you! Issues or pull requests work great. A [Discord server][discord] is also available for live help, but I have a strong bias towards answering in the form of documenation.

I prefer collaboration, and would love to find ways to work together if you have a similar project.

I prefer indentation with tabs for improved accessibility. But, I'd rather you use the system you want and make a PR than hesitate because of whitespace.

By participating in this project you agree to abide by the [Contributor Code of Conduct](CODE_OF_CONDUCT.md).

[build status]: https://github.com/ChimeHQ/LanguageServer/actions
[build status badge]: https://github.com/ChimeHQ/LanguageServer/workflows/CI/badge.svg
[platforms]: https://swiftpackageindex.com/ChimeHQ/LanguageServer
[platforms badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FChimeHQ%2FLanguageServer%2Fbadge%3Ftype%3Dplatforms
[documentation]: https://swiftpackageindex.com/ChimeHQ/LanguageServer/main/documentation
[documentation badge]: https://img.shields.io/badge/Documentation-DocC-blue
[discord]: https://discord.gg/esFpX6sErJ
[discord badge]: https://img.shields.io/badge/Discord-purple?logo=Discord&label=Chat&color=%235A64EC
[languageserverprotocol]: https://github.com/ChimeHQ/LanguageServerProtocol
