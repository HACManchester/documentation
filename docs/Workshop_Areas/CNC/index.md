# Ox CNC

Test

!!! attention
    attention text

!!! caution
    caution text

!!! danger
    danger text

!!! danger

no text above

!!! error
    error text

!!! hint
    hint text

!!! important
    important text

!!! note
    note text

!!! tip
    tip text

!!! warning
    warning text


``` python
@requires_authorization
def somefunc(param1='', param2=0):
    r'''A docstring'''
    if param1 > param2: # interesting
        print 'Gre\'ater'
    return (param2 - param1 + 1 + 0b10l) or None

class SomeClass:
    pass

>>> message = '''interpreter
... prompt'''
```


``` python
for page in pages:
    page.read()
```

``` csharp
using System;

namespace HelloWorld
{
  class Program
  {
    static void Main(string[] args)
    {
      Console.WriteLine("Hello World!");    
    }
  }
}
```
