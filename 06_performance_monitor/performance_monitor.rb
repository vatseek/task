require "time"

def measure(exec = 1, &block)
  start = Time.now
  exec.times &block

  return (Time.now - start).to_f / exec
end