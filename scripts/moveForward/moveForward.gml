speed = lerp(speed, speedMax * 1.2, speedAcceleration);
speed = clamp(speed, 0, speedMax);