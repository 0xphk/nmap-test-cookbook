h2. nmap Cookbook

Installs nmap and creates html output of ping scan

**Requirements**

chef-client or chef-solo

**Attributes**

TODO

**Usage**

`nmap::default`

Just include `nmap` in your node's `run_list`:

*`knife node run list add $node "recipe[nmap]"`*

```json
{
  "name":"$node",
  "run_list": [
    "recipe[nmap]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: 0xphk
