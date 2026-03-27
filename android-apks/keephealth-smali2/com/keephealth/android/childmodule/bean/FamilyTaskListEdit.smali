.class public Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;
.super Ljava/lang/Object;
.source "FamilyTaskListEdit.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alarmEnable:Ljava/lang/String;

.field private coin:I

.field private cycle:[Ljava/lang/String;

.field private goalType:I

.field private goalValue:I

.field private id:J

.field private name:Ljava/lang/String;

.field private taskType:I

.field private timeInterval:Ljava/lang/String;

.field private workoutType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->coin:I

    const/4 v1, 0x2

    .line 10
    iput v1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->taskType:I

    .line 11
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->goalType:I

    const/16 v0, 0x1f40

    .line 12
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->goalValue:I

    return-void
.end method


# virtual methods
.method public getAlarmEnable()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->alarmEnable:Ljava/lang/String;

    return-object v0
.end method

.method public getCoin()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->coin:I

    return v0
.end method

.method public getCycle()[Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->cycle:[Ljava/lang/String;

    return-object v0
.end method

.method public getGoalType()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->goalType:I

    return v0
.end method

.method public getGoalValue()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->goalValue:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->taskType:I

    return v0
.end method

.method public getTimeInterval()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->timeInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkoutType()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->workoutType:Ljava/lang/String;

    return-object v0
.end method

.method public setAlarmEnable(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->alarmEnable:Ljava/lang/String;

    return-void
.end method

.method public setCoin(I)V
    .registers 2

    .line 36
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->coin:I

    return-void
.end method

.method public setCycle([Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->cycle:[Ljava/lang/String;

    return-void
.end method

.method public setGoalType(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->goalType:I

    return-void
.end method

.method public setGoalValue(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->goalValue:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 25
    iput-wide p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->id:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->name:Ljava/lang/String;

    return-void
.end method

.method public setTaskType(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->taskType:I

    return-void
.end method

.method public setTimeInterval(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->timeInterval:Ljava/lang/String;

    return-void
.end method

.method public setWorkoutType(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/FamilyTaskListEdit;->workoutType:Ljava/lang/String;

    return-void
.end method
