### Hive OS Custom Miner integration

### Current XMRig-AMD version
* v6.25.0.3 https://github.com/HashVault/vltrig/releases/tag/v6.25.0.3

Note: Prebuilt binaries are CPU-only

### Download

* Binary releases https://github.com/Kpaccyc/Vltrig-HiveOS/releases

### Usage
Fill the fields as follows:
* Miner name:
```vltrig```
* Installation URL:
```https://github.com/Kpaccyc/Vltrig-HiveOS/releases/download/Release/vltrig.tar.gz```
* Hash algorithm:
```Chose coin algo```
* Wallet and worker template:
```%WAL%```
* Pass:
```%WORKER_NAME```

<img width="681" height="700" alt="settings" src="https://github.com/user-attachments/assets/a2c7be2e-948b-4403-866f-43924fdcc24c" />

### Excta config arguments:

```json
--dns-pool-ns             Enable authoritative NS resolution (default: enabled)
--no-dns-pool-ns          Disable, use system DNS
--dns-doh-primary=HOST    Primary DoH server (default: dns.google)
--dns-doh-fallback=HOST   Fallback DoH server (default: dns.nextdns.io)
```
All configuration commands are entered sequentially as to start the miner from the command line
