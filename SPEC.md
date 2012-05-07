# SPEC

````
require 'smiling'

Smiling.config do
  email 'foo@example.com'
  password '...'
end

video = Smiling.video('sm9')
puts video.comments
```

