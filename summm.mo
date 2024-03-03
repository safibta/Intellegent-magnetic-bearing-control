model summm
  Modelica.Electrical.MultiPhase.Interfaces.PositivePlug pc(final m = m) "Positive plug, current path" annotation(Placement(transformation(extent = {{-110, 10}, {-90, -10}}, rotation = 0, origin = {0, 0}), visible = true, iconTransformation(origin = {0, 0}, extent = {{-110, 10}, {-90, -10}}, rotation = 0)));
  Modelica.Electrical.MultiPhase.Interfaces.NegativePlug nc(final m = m) "Negative plug, current path" annotation(Placement(transformation(extent = {{90, 10}, {110, -10}}, rotation = 0, origin = {0, 0}), visible = true, iconTransformation(origin = {0, 0}, extent = {{90, 10}, {110, -10}}, rotation = 0)));
  Modelica.Electrical.MultiPhase.Interfaces.PositivePlug pv(final m = m) "Positive plug, voltage path" annotation(Placement(transformation(extent = {{-10, 90}, {10, 110}}, rotation = 0, origin = {0, 0}), visible = true, iconTransformation(origin = {0, 0}, extent = {{-10, 90}, {10, 110}}, rotation = 0)));
  Modelica.Electrical.MultiPhase.Interfaces.NegativePlug nv(final m = m) "Negative plug, voltage path" annotation(Placement(transformation(extent = {{-10, -90}, {10, -110}}, rotation = 0, origin = {0, 0}), visible = true, iconTransformation(origin = {0, 0}, extent = {{-10, -90}, {10, -110}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput power annotation(Placement(transformation(origin = {-80, -110}, extent = {{10, -10}, {-10, 10}}, rotation = 90), visible = true, iconTransformation(origin = {-80, -110}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Electrical.MultiPhase.Sensors.VoltageSensor voltageSensor(final m = m) annotation(Placement(transformation(origin = {0, -20}, extent = {{10, 10}, {-10, -10}}, rotation = 90), visible = true));
  Modelica.Electrical.MultiPhase.Sensors.CurrentSensor currentSensor(final m = m) annotation(Placement(transformation(extent = {{-50, -10}, {-30, 10}}, rotation = 0, origin = {0, 0}), visible = true));
  Modelica.Blocks.Math.Product product[m] annotation(Placement(transformation(origin = {-30, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 270), visible = true));
  Modelica.Blocks.Math.Sum sum(final nin = m, final k = ones(m)) annotation(Placement(transformation(origin = {-30, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 90), visible = true));
equation
  connect(sum.y, power) annotation(Line(points = {{-30, -81}, {-30, -90}, {-80, -90}, {-80, -110}}, color = {0, 0, 127}, visible = true));
  connect(product.y, sum.u) annotation(Line(points = {{0, 3.5}, {0, -3.5}}, color = {0, 0, 127}, visible = true, origin = {-30, -54.5}));
  connect(currentSensor.i, product.u2) annotation(Line(points = {{-40, -11}, {-40, -20}, {-36, -20}, {-36, -28}}, color = {0, 0, 127}, visible = true));
  connect(voltageSensor.v, product.u1) annotation(Line(points = {{8.667, 2.667}, {-4.333, 2.667}, {-4.333, -5.333}}, color = {0, 0, 127}, visible = true, origin = {-19.667, -22.667}));
  connect(voltageSensor.plug_n, nv) annotation(Line(points = {{0, -30}, {0, -30}, {0, -100}}, color = {0, 0, 255}, visible = true));
  connect(voltageSensor.plug_p, pv) annotation(Line(points = {{0, -10}, {0, -10}, {0, 100}}, color = {0, 0, 255}, visible = true));
  connect(currentSensor.plug_n, nc) annotation(Line(points = {{-30, 0}, {100, 0}}, color = {0, 0, 255}, visible = true));
  connect(pc, currentSensor.plug_p) annotation(Line(points = {{-100, 0}, {-50, 0}}, color = {0, 0, 255}, visible = true));
  annotation(Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end summm;