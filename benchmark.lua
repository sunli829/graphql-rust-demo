wrk.method = "POST"
wrk.headers["Content-Type"] = "application/json"

local body = "{\"operationName\":null,\"variables\":{},\"query\":\"{\\n  getPlanets {\\n    id\\n    name\\n    type\\n    isRotatingAroundSun\\n    satellites {\\n      id\\n      name\\n      lifeExists\\n      firstSpacecraftLandingDate\\n    }\\n  }\\n}\\n\"}"

function request()
    return wrk.format('POST', nil, nil, body)
end