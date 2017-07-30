private["_vcl"];

_vcl = _this;

while {alive _vcl} do
{
    while {_vcl animationPhase "code2" == 1} do
    {
        _vcl animate ["blue_1",1];
        _vcl animate ["blue_2",1];
        _vcl animate ["red_3",1];
        _vcl animate ["red_4",1];
        _vcl animate ["blue_4",1];
        _vcl animate ["blue_5",1];
        _vcl animate ["blue_6",1];
        _vcl animate ["blue_7",1];
        _vcl animate ["blue_8",1];
        _vcl animate ["blue_9",1];

        sleep 0.3;

        _vcl animate ["blue_1",0];
        _vcl animate ["blue_2",0];
        _vcl animate ["red_3",0];
        _vcl animate ["red_4",0];
        _vcl animate ["blue_4",0];
        _vcl animate ["blue_5",0];
        _vcl animate ["blue_6",0];
        _vcl animate ["blue_7",0];
        _vcl animate ["blue_8",0];
        _vcl animate ["blue_9",0];

        sleep 0.3;
        
        _vcl animate ["red_1",1];
        _vcl animate ["red_2",1];
        _vcl animate ["blue_3",1];
        _vcl animate ["blue_4",1];
        _vcl animate ["red_4",1];
        _vcl animate ["red_5",1];
        _vcl animate ["red_6",1];
        _vcl animate ["red_7",1];
        _vcl animate ["red_8",1];
        _vcl animate ["red_9",1];

        sleep 0.3;

        _vcl animate ["red_1",0];
        _vcl animate ["red_2",0];
        _vcl animate ["blue_3",0];
        _vcl animate ["blue_4",0];
        _vcl animate ["red_4",0];
        _vcl animate ["red_5",0];
        _vcl animate ["red_6",0];
        _vcl animate ["red_7",0];
        _vcl animate ["red_8",0];
        _vcl animate ["red_9",0];

        sleep 0.3;
    };
};