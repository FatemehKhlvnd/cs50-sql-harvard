Random Partitioning

Random partitioning is easy to implement and can spread data across boats without needing coordination, which makes it suitable for high-throughput data ingestion. However, it ignores data locality, so related observations (such as those close in time) end up scattered across all nodes. As a result, most queries require scanning every boat, which can be inefficient.

Partitioning by Hour

Partitioning by hour improves performance for time-based queries because only a subset of boats needs to be accessed for a given time range. This makes range queries faster and more predictable. However, it can lead to uneven distribution of data if certain hours contain more observations, creating potential hotspots.

Partitioning by Hash Value

Hash partitioning distributes data evenly across all boats, helping to avoid load imbalance and hotspots. It works well for point lookups since each value maps to a specific partition. On the downside, range queries (like retrieving data from a specific time interval) are inefficient because they usually require querying all boats and combining the results.
