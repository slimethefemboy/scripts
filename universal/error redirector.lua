hookfunction(print,function(r) return rconsoleprint(tostring(r) .. '\n') end)
hookfunction(error,function(r) return rconsoleprint(tostring(r) .. '\n') end)
hookfunction(warn,function(r) return rconsoleprint(tostring(r) .. '\n')  end)

print('print')
error('error')
warn('warn')
