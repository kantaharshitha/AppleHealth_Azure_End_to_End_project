CREATE TABLE Apple_Health (
[Type]                                  NVARCHAR (150)            ,
[sourceName]                    NVARCHAR (50)              ,
[unit]                                    NVARCHAR (20)              ,
[creationDate]                    DATETIMEOFFSET           ,
[startDate]                          DATETIMEOFFSET           ,
[endDate]                            DATETIMEOFFSET          ,
[value  ]                                NVARCHAR (150)            )



CREATE TABLE Workout (
[workoutActivityType]                         NVARCHAR (100)                 ,
[duration]                                               DECIMAL (10,5)                     ,
[durationUnit]                                        CHAR (5)                                ,
[sourceName]                                       NVARCHAR (30)                   ,
[creationDate]                                       DATETIMEOFFSET               ,
[startDate]                                             DATETIMEOFFSET               ,
[endDate]                                               DATETIMEOFFSET               
 )





CREATE TABLE Activity (
[dateComponents]                              DATE                    ,
[activeEnergyBurned]                         DECIMAL(10,3)  ,
[activeEnergyBurnedGoal]                 INT                       ,
[activeEnergyBurnedUnit]                  CHAR (10)          ,
[appleMoveTime]                                INT                      ,
[appleMoveTimeGoal]                        INT                      ,
[appleExerciseTime]                           INT                      ,
[appleExerciseTimeGoal]                   INT                      ,
[appleStandHours]                              INT                      ,
[appleStandHoursGoal]                      INT                      )