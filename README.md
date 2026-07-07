# RaptorDB

RaptorDB is a relational SQL database engine written entirely in Go from first principles. This repository is part of Patel Labs.

## Project Status

**Project Status: Under Development**

RaptorDB is currently in its bootstrapping and active early development phase. It is not yet ready for production use.

## Repository Structure

The project structure is organized as follows:

```text
RaptorDB/
├── cmd/                  # Command-line tools and entrypoints
│   ├── server/           # RaptorDB database server
│   └── cli/              # RaptorDB CLI client
├── internal/             # Private application and library code
│   ├── storage/          # Storage engine implementation
│   │   ├── page/         # Page layout and management
│   │   ├── record/       # Record layout and serialization
│   │   ├── file/         # Disk space/file manager
│   │   └── wal/          # Write-Ahead Logging (WAL)
│   ├── sql/              # SQL processing engine
│   │   ├── lexer/        # Lexical analyzer
│   │   ├── parser/       # SQL parser
│   │   ├── ast/          # Abstract Syntax Tree (AST) definitions
│   │   └── planner/      # Query optimizer and planner
│   ├── executor/         # Query execution engine
│   ├── btree/            # B+ Tree index structures
│   ├── catalog/          # Database catalog/schema metadata
│   ├── transaction/      # Concurrency control & ACID transactions
│   ├── network/          # TCP/IP server connection handling
│   ├── protocol/         # Wire protocol implementation
│   └── util/             # Common helper utilities
├── api/                  # OpenAPI/gRPC contract definitions
├── configs/              # Default configuration files
├── docs/                 # Project documentation
│   ├── architecture/     # Architectural design documents
│   ├── diagrams/         # System diagrams and visual flows
│   └── benchmarks/       # Benchmark reports and methodology
├── examples/             # Code examples and tutorials
├── benchmarks/           # Performance benchmark suites
├── scripts/              # Development and utility scripts
├── test/                 # Integration and system tests
├── .github/              # GitHub Actions configurations and workflows
└── .vscode/              # Editor settings and configurations
```

## High-Level Roadmap

- [ ] **Phase 1: Storage Engine & Disk Management**
  - Disk space manager (file structures, page allocations)
  - Buffer pool manager & page replacement policy (LRU-K/2Q)
  - Slotted-page record layout and tuple management
  - Write-Ahead Logging (WAL) and recovery (ARIES)
- [ ] **Phase 2: Indexing & Concurrency Control**
  - B+ Tree indexing supporting variable-length keys
  - Lock manager with strict 2-Phase Locking (2PL)
  - Transaction manager with support for isolation levels
- [ ] **Phase 3: SQL Engine & Parsing**
  - Lexical analyzer and parser for standard SQL dialect
  - Abstract Syntax Tree (AST) generator
  - Logical & physical query planner and cost-based optimizer (CBO)
- [ ] **Phase 4: Execution Engine**
  - Volcano-style (Iterator) execution model
  - Selection, Projection, Joins (Hash/Merge), and Aggregations
- [ ] **Phase 5: Networking & Protocol**
  - Custom client/server wire protocol
  - Interactive CLI shell and drivers

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
