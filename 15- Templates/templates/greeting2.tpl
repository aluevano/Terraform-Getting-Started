${hello} ${world}!
%{ for i in people ~}
Here's a value: ${i}
%{ endfor }