model howItestedFlipFlop
  ModelPlug.Boards.Arduino arduino(Port = "COM5") annotation(Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.AnalogInput analogInput(Pin = 14) annotation(Placement(visible = true, transformation(origin = {-80, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = .6) annotation(Placement(visible = true, transformation(origin = {27.01, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.AnalogOutput analogOutput(Pin = 9) annotation(Placement(visible = true, transformation(origin = {-115, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch1 annotation(Placement(visible = true, transformation(origin = {82.166, -31.654}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation(Placement(visible = true, transformation(origin = {87.643, -72.76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant2 annotation(Placement(visible = true, transformation(origin = {-107.322, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant3(k = false) annotation(Placement(visible = true, transformation(origin = {-60, 17.088}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.DigitalOutput digitalOutput(Pin = 8) annotation(Placement(visible = true, transformation(origin = {-50, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModelPlug.Pins.DigitalOutput digitalOutput1(Pin = 7) annotation(Placement(visible = true, transformation(origin = {-82.131, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModifiedNORwalaFlippie modifiedNORwalaFlippie annotation(Placement(visible = true, transformation(origin = {-3.307, -25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const2(k = .6) annotation(Placement(visible = true, transformation(origin = {45, 5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const2.y, switch1.u1) annotation(Line(visible = true, origin = {65.124, -9.327}, points = {{-9.124, 14.327}, {2.041, 14.327}, {2.041, -14.327}, {5.041, -14.327}}, color = {0, 0, 127}));
  connect(modifiedNORwalaFlippie.y, switch1.u2) annotation(Line(visible = true, origin = {44.508, -28.239}, points = {{-36.643, 3.415}, {5.492, 3.415}, {5.492, -3.415}, {25.658, -3.415}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold.y, modifiedNORwalaFlippie.u1) annotation(Line(visible = true, origin = {9.112, 22.971}, points = {{28.898, 42.029}, {33.883, 42.029}, {33.883, 0.18}, {-36.122, 0.18}, {-36.122, -42.209}, {-24.419, -42.209}}, color = {255, 0, 255}));
  connect(digitalOutput1.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {-82.074, -29.2}, points = {{9.943, -30.8}, {12.955, -30.8}, {12.955, 16.2}, {-17.926, 16.2}, {-17.926, 29.2}}));
  connect(booleanConstant2.y, digitalOutput1.u) annotation(Line(visible = true, origin = {-93.685, -70}, points = {{-2.637, -10}, {0.541, -10}, {0.541, 10}, {1.554, 10}}, color = {255, 0, 255}));
  connect(digitalOutput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {-53.494, -10}, points = {{13.494, -10}, {16.506, -10}, {16.506, 10}, {-46.506, 10}}));
  connect(booleanConstant3.y, digitalOutput.u) annotation(Line(visible = true, origin = {-54.504, 0.308}, points = {{5.504, 16.779}, {8.504, 16.779}, {8.504, 3.529}, {-8.508, 3.529}, {-8.508, -20.308}, {-5.496, -20.308}}, color = {255, 0, 255}));
  connect(switch1.y, analogOutput.u) annotation(Line(visible = true, origin = {-13.941, 5.514}, points = {{107.107, -37.167}, {131.35, -37.167}, {131.35, 82.681}, {-129.375, 82.681}, {-129.375, -45.514}, {-111.059, -45.514}}, color = {0, 0, 127}));
  connect(const1.y, switch1.u3) annotation(Line(visible = true, origin = {91.364, -56.453}, points = {{7.279, -16.307}, {10.279, -16.307}, {10.279, 1.453}, {7.279, 1.453}, {7.279, 6.453}, {-21.198, 6.453}, {-21.198, 16.8}}, color = {0, 0, 127}));
  connect(analogOutput.pinConnector, arduino.boardConnector) annotation(Line(visible = true, origin = {-101.667, -26.667}, points = {{-3.333, -13.333}, {1.667, -13.333}, {1.667, 26.667}}));
  connect(arduino.boardConnector, analogInput.pinConnector) annotation(Line(visible = true, origin = {-96.667, 33.333}, points = {{-3.333, -33.333}, {-3.333, 16.667}, {6.667, 16.667}}));
  connect(analogInput.y, greaterEqualThreshold.u) annotation(Line(visible = true, origin = {-33.748, 57.5}, points = {{-36.252, -7.5}, {-6.252, -7.5}, {-6.252, 7.5}, {48.757, 7.5}}, color = {0, 0, 127}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end howItestedFlipFlop;