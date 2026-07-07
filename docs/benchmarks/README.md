# Performance Benchmarks

This directory tracks the performance metrics, benchmarks methodology, and historical reports for RaptorDB components.

## Benchmark Methodology

RaptorDB uses standard Go benchmarking tooling (`go test -bench`) supplemented by external workload simulators (e.g., TPC-C inspired tools).

### Storage Benchmarks
- **Disk Page Reads/Writes**: Evaluates throughput (MB/s) and latency for direct disk access.
- **Buffer Pool Manager**: Measures page hit rates, lock contention, and replacement policy speed under high parallel load.

### Index Benchmarks
- **B+ Tree Index Operations**: Tracks operations per second for point queries, range scans, insertions, and deletions under various thread counts.

### Query Engine Benchmarks
- **SQL Parser**: Measures raw parsing throughput (SQL strings parsed per second).
- **Executor**: Evaluates Volcano-style iteration efficiency (cycles per tuple processed).

### End-to-End Database Benchmarks
- **OLTP Workloads**: Simulates transactional workloads to evaluate transaction throughput (TPS) and system scaling under isolation levels.
