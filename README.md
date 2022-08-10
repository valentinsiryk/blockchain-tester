# Blockchain Tester

CLI tool for benchmarking blockchain network.


## Overview

This tool connects to the blockchain network and simulates transactions in asynchronous mode from multiple clients. During the test it calculates how many transactions are being processed, average latency and other stats (more details in example sections).


## Features

- Simulation of multiple concurrent clients
- Reports are available in JSON format
- Possibility of setting timeout for test
- Programmatic access (CLI) 


## Installation and Usage

### Docker

```
$ docker build -t tester:latest .

$ docker run --rm -v $(pwd)/reports:/app/reports tester:latest -h 127.0.0.1 -p 68555 -t 10000 -c 5
```

### Installation

```
$ make build
$ make install

$ blockchain-tester -h 127.0.0.1 -p 68100
```


## Available Options

```
-h, --host          Target host
-p, --port          Target port
-c, --clients       Number of concurrent clients (default: 2)
-t, --transactios   Number of simulated transactions by each client (default: 1000)
-v, --log-level     Log level (default: 1)
-o, --out           Relative path to generated report (default: reports/report.json)
-l, --timeout       Timeout in seconds (default: 60)
--version           Show version
--help              Show help
```


## Example Result

```
Test has been successfully finished.
Report was saved: reports/report.json

# <-- Here can be human-view representation of results

```



## Example Report

```
{
    "avg_latency": <value>
    "tps": <value>
    "processed_transactions": <value>
    "successful_transactions: <value>
    "failed_transactions: <value>
    "test_duration": <value>
    "timed_out": <true/false>
    "success_rate": <value>
    "generated_blocks_number": <value>
}
```