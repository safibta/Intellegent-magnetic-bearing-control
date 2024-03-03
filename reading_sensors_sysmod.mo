model my_hes
  ModelPlug.Pins.DigitalOutput digitalOutput(Pin = 2) annotation(Placement(visible = true, transformation(origin = {-65, 42.934}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Boards.Arduino arduino(Port = "COM5") annotation(Placement(visible = true, transformation(origin = {-5, 47.354}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.AnalogInput analogInput(Pin = 14, MaxValue = 5) annotation(Placement(visible = true, transformation(origin = {37.282, 46.669}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Greater greater annotation(Placement(visible = true, transformation(origin = {-12.171, 11.75}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 2.6) annotation(Placement(visible = true, transformation(origin = {42.5, -10}, extent = {{12.5, -12.5}, {-12.5, 12.5}}, rotation = 0)));
  PulseToRPM pulseToRPM annotation(Placement(visible = true, transformation(origin = {90, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(greater.y, pulseToRPM.u) annotation(Line(visible = true, origin = {-10.628, -30.505}, points = {{-12.543, 42.255}, {-15.543, 42.255}, {-15.543, -42.255}, {43.628, -42.255}}, color = {255, 0, 255}));
  connect(greater.u2, const.y) annotation(Line(visible = true, origin = {20.02, -3.125}, points = {{-20.191, 6.875}, {5.73, 6.875}, {5.73, -6.875}, {8.73, -6.875}}, color = {0, 0, 127}));
  connect(analogInput.y, greater.u1) annotation(Line(visible = true, origin = {36.925, 29.209}, points = {{10.357, 17.459}, {13.37, 17.459}, {13.37, -17.459}, {-37.096, -17.459}}, color = {0, 0, 127}));
  connect(digitalOutput.u, greater.y) annotation(Line(visible = true, origin = {-63.549, 27.342}, points = {{-11.451, 15.592}, {-14.464, 15.592}, {-14.464, -15.592}, {40.378, -15.592}}, color = {255, 0, 255}));
  connect(arduino.boardConnector, analogInput.pinConnector) annotation(Line(visible = true, origin = {17.705, 47.011}, points = {{-22.705, 0.343}, {6.564, 0.343}, {6.564, -0.343}, {9.577, -0.343}}));
  connect(digitalOutput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {-24.27, 45.144}, points = {{-30.73, -2.21}, {5.73, -2.21}, {5.73, 2.21}, {19.27, 2.21}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end my_hes;