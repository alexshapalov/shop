def ftphash(params)
  h = {}
  h[:name] = params[:name] || "Misha"
  h
end

ftphash(params = {name: "Alex"})

p ftphash(params)