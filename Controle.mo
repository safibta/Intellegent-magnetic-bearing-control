model Controle
  Modelica.Blocks.Continuous.PI PI(T = 1) annotation(Placement(visible = true, transformation(origin = {-47.874, 58.295}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Feedback feedback annotation(Placement(visible = true, transformation(origin = {-82.405, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speedSensor annotation(Placement(visible = true, transformation(origin = {112.292, 1.771}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(Placement(visible = true, transformation(origin = {-8.467, 57.5}, extent = {{13.467, -13.467}, {-13.467, 13.467}}, rotation = 810)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(Placement(visible = true, transformation(origin = {27.874, 32.5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 1) annotation(Placement(visible = true, transformation(origin = {12.718, 70.819}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 1) annotation(Placement(visible = true, transformation(origin = {31.837, 87.5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf(k = 1) annotation(Placement(visible = true, transformation(origin = {27.244, 63.229}, extent = {{-10.729, -10.729}, {10.729, 10.729}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 1) annotation(Placement(visible = true, transformation(origin = {55, 62.5}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia2(J = 1) annotation(Placement(visible = true, transformation(origin = {82.058, 1.682}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.IdealGear idealGear(ratio = 3) annotation(Placement(visible = true, transformation(origin = {68.038, 26.682}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(Placement(visible = true, transformation(origin = {-125, 57.727}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step.y, feedback.u1) annotation(Line(visible = true, origin = {-98.804, 58.864}, points = {{-15.196, -1.136}, {3.399, -1.136}, {3.399, 1.136}, {8.399, 1.136}}, color = {0, 0, 127}));
  connect(PI.y, signalVoltage.v) annotation(Line(visible = true, origin = {-26.159, 57.898}, points = {{-10.715, 0.398}, {1.225, 0.398}, {1.225, -0.398}, {8.265, -0.398}}, color = {0, 0, 127}));
  connect(feedback.y, PI.u) annotation(Line(visible = true, origin = {-64.757, 59.148}, points = {{-8.648, 0.852}, {1.883, 0.852}, {1.883, -0.852}, {4.883, -0.852}}, color = {0, 0, 127}));
  connect(feedback.u2, speedSensor.w) annotation(Line(visible = true, origin = {37.453, -28.697}, points = {{-119.858, 80.697}, {-85.839, -54.286}, {85.839, -54.286}, {85.839, 30.468}}, color = {0, 0, 127}));
  connect(inertia2.flange_b, speedSensor.flange) annotation(Line(visible = true, origin = {98.233, 1.727}, points = {{-6.175, -0.044}, {1.058, -0.044}, {1.058, 0.044}, {4.058, 0.044}}));
  connect(inertia.flange_b, idealGear.flange_a) annotation(Line(visible = true, origin = {61.519, 46.227}, points = {{3.481, 16.273}, {6.494, 16.273}, {6.494, 3.273}, {-6.494, 3.273}, {-6.494, -19.545}, {-3.481, -19.545}}));
  connect(idealGear.flange_b, inertia2.flange_a) annotation(Line(visible = true, origin = {75.048, 13.941}, points = {{2.99, 12.742}, {4.002, 12.742}, {4.002, -0.483}, {-4.002, -0.483}, {-4.002, -12.258}, {-2.99, -12.258}}));
  connect(resistor.p, signalVoltage.p) annotation(Line(visible = true, origin = {-1.01, 70.918}, points = {{3.728, -0.099}, {3.728, 0.049}, {-7.457, 0.049}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(Line(visible = true, origin = {22.424, 81.94}, points = {{0.294, -11.121}, {0.294, 5.56}, {-0.587, 5.56}}, color = {0, 0, 255}));
  connect(inductor.n, emf.p) annotation(Line(visible = true, origin = {36.692, 78.9}, points = {{5.145, 8.6}, {6.145, 8.6}, {6.145, -5.4}, {-8.718, -5.4}, {-9.447, -4.942}}, color = {0, 0, 255}));
  connect(emf.n, ground.p) annotation(Line(visible = true, origin = {27.924, 46.5}, points = {{-0.679, 6}, {0.05, -1}, {-0.05, -1}, {-0.05, -4}}, color = {0, 0, 255}));
  connect(signalVoltage.n, ground.p) annotation(Line(visible = true, origin = {9.136, 43.266}, points = {{-17.603, 0.766}, {-17.603, -2.234}, {-1.136, -2.234}, {-1.136, 2.234}, {18.738, 2.234}, {18.738, -0.767}}, color = {0, 0, 255}));
  connect(emf.flange, inertia.flange_a) annotation(Line(visible = true, origin = {41.487, 62.5}, points = {{-3.513, 0.729}, {3.513, 0}}));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Controle;