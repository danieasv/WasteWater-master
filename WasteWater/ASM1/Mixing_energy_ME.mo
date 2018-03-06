within WasteWater.ASM1;
model Mixing_energy_ME "Mixing Energy sensor"

  extends WasteWater.Icons.sensor_O2;

  Modelica.Blocks.Interfaces.RealInput Kla3 annotation (Placement(transformation(
          extent={{-84,30},{-64,50}})));
  Modelica.Blocks.Interfaces.RealInput Kla4 annotation (Placement(transformation(
          extent={{-84,-10},{-64,10}})));
  Modelica.Blocks.Interfaces.RealInput Kla5 annotation (Placement(transformation(
          extent={{-84,-50},{-64,-30}})));
  Modelica.Blocks.Interfaces.RealOutput ME  annotation (Placement(transformation(extent={{88,-10},{108,10}})));


  Real T(start=1e-3);
  Real Sum = 0;
  Real output1(start = 0);
  Real output2(start = 0);
  Real output3(start = 0);
equation
  der(T) = 1.0;
  output1 = if (Kla3 < 20) then (0.005*1333) else (0);
  output2 = if (Kla4 < 20) then (0.005*1333) else (0);
  output3 = if (Kla5 < 20) then (0.005*1333) else (0);



  der(ME*T) = 24*(output1 + output2 + output3 + 2*(0.005*1000));

end Mixing_energy_ME;
