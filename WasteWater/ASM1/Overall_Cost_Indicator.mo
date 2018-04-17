within WasteWater.ASM1;
model Overall_Cost_Indicator "OCI combined quality"

  extends WasteWater.Icons.sensor_O2;

  Modelica.Blocks.Interfaces.RealInput AE annotation (Placement(transformation(
          extent={{-84,48},{-64,68}})));
  Modelica.Blocks.Interfaces.RealInput PE annotation (Placement(transformation(
          extent={{-84,20},{-64,40}})));
  Modelica.Blocks.Interfaces.RealInput SP annotation (Placement(transformation(
          extent={{-84,-10},{-64,10}})));
  Modelica.Blocks.Interfaces.RealInput EC annotation (Placement(transformation(
          extent={{-84,-18},{-64,-38}})));
  Modelica.Blocks.Interfaces.RealInput ME annotation (Placement(transformation(
          extent={{-84,-46},{-64,-66}})));


  Real OCI(start=0);
  Real T(start=1e-3);

equation
  der(T) = 1.0;
  der(OCI*T) = AE + PE + (5*SP) + (3*(400000/1000)*EC) + ME;

end Overall_Cost_Indicator;
