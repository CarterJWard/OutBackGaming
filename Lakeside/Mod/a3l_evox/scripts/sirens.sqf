private["_vcl"];

_vcl = _this;

while {alive _vcl} do
{
    while {_vcl animationPhase "code3" == 1} do
    {
        _vcl say3D "Siren2";
        sleep 5;
    };
};
