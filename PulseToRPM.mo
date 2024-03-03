block PulseToRPM
  extends Modelica.Blocks.Icons.PartialBooleanBlock;
  Modelica.Blocks.Interfaces.BooleanInput u "Connector of Boolean input signal" annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput rpm "Connector of Real output signal" annotation(Placement(transformation(extent = {{100, -10}, {120, 10}}, rotation = 0)));
protected
  discrete Modelica.SIunits.Time entryTime "Time instant when u became true";
initial equation
  pre(entryTime) = 0;
algorithm
  when u then
    rpm := 20 / (time - entryTime);
    entryTime := time;
  end when;
  annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, extent = {{-80, -100}, {80, 100}}, textString = "RPM")}), Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, initialScale = 0.1, grid = {10, 10})));
end PulseToRPM;