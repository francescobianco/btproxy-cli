.class public Lcom/keephealth/android/childmodule/bean/FamilyTaskList;
.super Ljava/lang/Object;
.source "FamilyTaskList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alarmEnable:I

.field private coin:I

.field private cycle:[I

.field private goalType:I

.field private goalValue:I

.field private id:J

.field private name:Ljava/lang/String;

.field private status:I

.field private taskDate:Ljava/lang/String;

.field private taskId:J

.field private taskStatus:I

.field private taskType:I

.field private timeInterval:Ljava/lang/String;

.field private workoutType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->coin:I

    .line 11
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskType:I

    .line 12
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->goalType:I

    .line 13
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->goalValue:I

    return-void
.end method


# virtual methods
.method public getAlarmEnable()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->alarmEnable:I

    return v0
.end method

.method public getCoin()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->coin:I

    return v0
.end method

.method public getCycle()[I
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->cycle:[I

    return-object v0
.end method

.method public getGoalType()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->goalType:I

    return v0
.end method

.method public getGoalValue()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->goalValue:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->status:I

    return v0
.end method

.method public getTaskDate()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskId:J

    return-wide v0
.end method

.method public getTaskStatus()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskStatus:I

    return v0
.end method

.method public getTaskType()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskType:I

    return v0
.end method

.method public getTimeInterval()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->timeInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkoutType()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->workoutType:I

    return v0
.end method

.method public setAlarmEnable(I)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->alarmEnable:I

    return-void
.end method

.method public setCoin(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->coin:I

    return-void
.end method

.method public setCycle([I)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->cycle:[I

    return-void
.end method

.method public setGoalType(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->goalType:I

    return-void
.end method

.method public setGoalValue(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->goalValue:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 38
    iput-wide p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 114
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->status:I

    return-void
.end method

.method public setTaskDate(Ljava/lang/String;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskDate:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(J)V
    .registers 3

    .line 34
    iput-wide p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskId:J

    return-void
.end method

.method public setTaskStatus(I)V
    .registers 2

    .line 126
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskStatus:I

    return-void
.end method

.method public setTaskType(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->taskType:I

    return-void
.end method

.method public setTimeInterval(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->timeInterval:Ljava/lang/String;

    return-void
.end method

.method public setWorkoutType(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->workoutType:I

    return-void
.end method
