nmap Cookbook
=============
Installs nmap and creates html output of ping scan


**Requirements**

chef-client or chef-solo

**Attributes**

TODO: List your cookbook attributes here.

e.g.
#### nmap::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['nmap']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

**Usage**

# nmap::default

Just include `nmap` in your node's `run_list`:

`knife node run list add $node "recipe[nmap]"

```json
{
  "name":"my_node",
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
