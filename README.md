# Echo

This is a very simple container image used to test the $flag$ generation and injection functions of CdsCTF.

## Usage

Make sure that the Object returned by the `generate()` function of checker has a field with the key `FLAG` (which is usually the default).

```rust
pub async fn generate(operator_id) {
    Ok(#{
        FLAG: Flag::new().with_prefix("flag").with_content("4_1nj3ct3d_fl4g").format(),
    })
}
```

Then use `ghcr.io/cdsctf/echo:latest` as the image for your challenge, and remember to expose port `9999/tcp`.

After starting the challenge environment, connect to the container via _Netcat_ or _Telnet_ to obtain the $flag$.