# How to use

```bash
git clone https://github.com/m0rozov/ctf
cd ctf
bundle install

ruby converter -c -f 10
> 10°C => 50.0°F

ruby converter -c -f '10'
> 10°C => 50.0°F

ruby converter -c -f ten
>  Converted item not number

ruby converter -h
> Commands:
  converter -c [SUBCOMMAND]

ruby converter -c -h
> Commands:
  converter -c -f [CELSIUS]              # Convert Celsius to Fahrenheit
```