model DCMotore
  Modelica.Blocks.Sources.Step step annotation(Placement(visible = true, transformation(origin = {-90, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(Placement(visible = true, transformation(origin = {-63.467, 25}, extent = {{13.467, -13.467}, {-13.467, 13.467}}, rotation = 810)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(Placement(visible = true, transformation(origin = {-27.126, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor annotation(Placement(visible = true, transformation(origin = {-42.282, 38.319}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor annotation(Placement(visible = true, transformation(origin = {-23.163, 55}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf annotation(Placement(visible = true, transformation(origin = {-27.027, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = .3) annotation(Placement(visible = true, transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(emf.flange, inertia.flange_a) annotation(Line(visible = true, origin = {-13.513, 30}, points = {{-3.513, -0}, {3.513, 0}}));
  connect(step.y, signalVoltage.v) annotation(Line(visible = true, origin = {-75.947, 25}, points = {{-3.053, 0}, {3.053, 0}}, color = {0, 0, 127}));
  connect(signalVoltage.n, ground.p) annotation(Line(visible = true, origin = {-45.864, 10.766}, points = {{-17.603, 0.767}, {-17.603, -2.234}, {-1.136, -2.234}, {-1.136, 2.234}, {18.738, 2.234}, {18.738, -0.766}}, color = {0, 0, 255}));
  connect(emf.n, ground.p) annotation(Line(visible = true, origin = {-27.076, 14}, points = {{0.05, 6}, {0.05, -1}, {-0.05, -1}, {-0.05, -4}}, color = {0, 0, 255}));
  connect(inductor.n, emf.p) annotation(Line(visible = true, origin = {-18.308, 46.4}, points = {{5.145, 8.6}, {6.145, 8.6}, {6.145, -5.4}, {-8.718, -5.4}, {-8.718, -6.4}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(Line(visible = true, origin = {-32.576, 49.44}, points = {{0.294, -11.121}, {0.294, 5.56}, {-0.587, 5.56}}, color = {0, 0, 255}));
  connect(resistor.p, signalVoltage.p) annotation(Line(visible = true, origin = {-56.01, 38.418}, points = {{3.728, -0.099}, {3.728, 0.049}, {-7.457, 0.049}}, color = {0, 0, 255}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end DCMotore;