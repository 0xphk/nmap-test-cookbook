nmap Cookbook
-------------
Installs nmap and creates html output of ping scan

**Requirements**

chef-client or chef-solo, 
running webserver with root in /var/www/ [optional]

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

**Contributing**

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

**License and Authors**

Authors: 0xphk
