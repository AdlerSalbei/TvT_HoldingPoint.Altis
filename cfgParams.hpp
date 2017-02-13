class Params
{
    class WeatherSetting
        {
        title = "Weather";
        values[] = {-1,0,25,50,75,100};
        texts[] = {"Random","Clear","Cloudy","Overcast","Rainy","Stormy"};
        default = -1;
        };

    class TimeOfDay
    {
        title = "Time of Day";
        values[] = {7,8,9,10,11,12,13,14,15,16,17,1000};
        texts[] = {"07:00", "08:00", "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "Random"};
        default = 1000;
    };

    class BluforFaction
    {
        title = "Blufor Faction";
        values[] = {0,1,2};
        texts[] = {"USA", "Germany", "Russia"};
        default = 2;
    };

    class OpforFaction
    {
        title = "Opfor Faction";
        values[] = {0,1,2};
        texts[] = {"USA", "Germany", "Russia"};
        default = 1;
    };

    class Preset
    {
        title = "Preset";
        values[] = {0,1};
        texts[] = {"Custom", "Debug (Parameters below will be ignored.)"};
        default = 0;
    };
    
    /*
     class CaptureZirkle
    {
        title = "Size of Capuring Zone (Meters)";
        values[] = {5, 10, 15, 20, 25, 50, 75, 100, 1000};
        texts[] = {"5","10","15","20","25","50","75","100","Random"};
        default = 15;
    };
    
     class MinSpawnDistanceBlufor
    {
        title = "Minimum Spawn Distance for Blufor (Meters)";
        values[] = {100,500,1000,1500,2000,2500,3000,3500,4000,4500,5000};
        texts[] = {"100","500","1000","1500","2000","2500","3000","3500","4000","4500","5000"};
        default = 1500;
    };
    
    */

    class DefenseTime
    {
        title = "Time to Defend the Point (Minutes)";
        values[] = {120,900,1200,1500,1800,2100,2400,2700,3000,3300,3600};
        texts[] = {"2","15","20","25","30","35","40","45","50","55","60"};
        default = 3600;
    };

    class CaptureTime
    {
        title = "Time in Control to Capture Point (Minutes:Seconds)";
        values[] = {150,300,450,600,750,900};
        texts[] = {"2:30", "05:00", "07:30", "10:00", "12:30", "15:00"};
        default = 600;
    };

    class SetupTime
    {
        title = "Opfor Setup Time (Minutes)";
        values[] = {1,60,120,180,240,300,360,420,480,540,600};
        texts[] = {"0","1", "2", "3","4","5","6","8","9","10"};
        default = 60;
    };

    class ControlRatio
    {
        title = "Ratio to Control the Point - Blufor:Opfor";
        values[] = {1,1.5,2,2.5,3,3.5,4,4.5,5};
        texts[] = {"1:1","1.5:1","2:1","2.5:1","3:1","3.5:1","4:1","4.5:1","5:1"};
        default = 2;
    };

    class MoneyFactor
    {
        title = "Money";
        values[] = {0.75,1,1.5};
        texts[] = {"Less", "Normal", "More"};
        default = 1;
    };
};
