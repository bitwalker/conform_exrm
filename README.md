# Conform Plugin for ExRM

This plugin enables use of Conform with your ExRM releases.

## Installation

To use with exrm, simply add this project as a dependency:

```elixir
def deps do
  [{:exrm, "~> x.x", override: true},
   {:conform, "~> x.x", override: true},
   {:conform_exrm, "~> x.x"}]
end
```

In case you are curious, the override of exrm and conform in your deps is to tell Mix that it
can use your deps to fulfill the requirements for exrm and conform that are declared in conform_exrm.
The requirements in conform_exrm are declared as optional, but are required in order to ensure conform
and exrm are compiled before conform_exrm is.
