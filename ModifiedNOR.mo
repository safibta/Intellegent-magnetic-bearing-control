model ModifiedNOR
  extends Modelica.Blocks.Interfaces.partialBooleanSI2SO;
protected
  discrete Modelica.SIunits.Time entryTime "Time instant when NOR became true";
initial equation
  pre(entryTime) = 0;
equation
  when not (u1 or u2) then
    entryTime = time;
  end when;
  y = if time - entryTime < 50 then true else false;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {-2.072, 0}, extent = {{-57.928, -55.856}, {57.928, 55.856}}, textString = "mNOR")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end ModifiedNOR;