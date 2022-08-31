domain = ngx.var.domain
subdomain = ngx.var.subdomain or ''
txt = subdomain..'.'..domain
txt = txt:gsub('-', '.'):gsub('%.%.', '-')
txt = txt:gsub('%.'..domain..'$', '')

ngx.say(txt)
ngx.say('\ndomain:')
ngx.say(domain)
ngx.say('\nsubdomain:')
ngx.say(subdomain)

