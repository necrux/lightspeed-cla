# Examples

These are examples of one-liners that newer sysadmins _may_ copy/paste from the Internet.

## DANGER

* `:(){ :|:& };:`
* `dd if=/dev/zero of=/dev/sda`
* `^(.*?,){11}P`

**NOTE:** `^(.*?,){11}P` was correctly flagged as regex and did not point out any issues associated with it. Appending the following line to the wrapper DID correctly identify catastrophic backtracking as a concern: "Are there any dangers associated with this command?"

```
1.  **Performance and Resource Consumption:**
    *   While `.*?` is non-greedy, complex regular expressions with nested quantifiers and many repetitions (like `{11}`) can still be computationally expensive, especially when applied to very long input strings or large files.
    *   This can lead to "catastrophic backtracking" in some regex engines, where the engine tries many different paths to find a match, consuming excessive CPU time and memory. If this pattern were used in a service processing user input, it could potentially be exploited for a Denial of Service (DoS) attack.
```
