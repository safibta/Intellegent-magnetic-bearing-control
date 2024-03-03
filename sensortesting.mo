model sensortesting
  ModelPlug.Boards.Arduino arduino(Port = "COM5") annotation(Placement(visible = true, transformation(origin = {-31.97, 23.151}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.AnalogInput analogInput(Pin = 14) annotation(Placement(visible = true, transformation(origin = {-106.936, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(analogInput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {-97.201, 31.576}, points = {{-19.735, 8.424}, {-22.748, 8.424}, {-22.748, -8.424}, {65.23, -8.424}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end sensortesting;