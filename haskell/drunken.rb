def rteasure_map(v)
  v = stagger(v)
  v = stagger(v)
  v = crawl(v)
  return v
end

def stagger(v)
  v + 2
end

def crawl(v)
  v + 1
end
