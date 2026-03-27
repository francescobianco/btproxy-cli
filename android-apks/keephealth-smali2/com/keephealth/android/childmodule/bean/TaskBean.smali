.class public Lcom/keephealth/android/childmodule/bean/TaskBean;
.super Ljava/lang/Object;
.source "TaskBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/childmodule/bean/TaskBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alarmEnable:I

.field private coin:I

.field private cycle:[I

.field private goalType:I

.field private goalValue:I

.field private name:Ljava/lang/String;

.field private taskType:I

.field private timeInterval:J

.field private workoutType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/keephealth/android/childmodule/bean/TaskBean$1;

    invoke-direct {v0}, Lcom/keephealth/android/childmodule/bean/TaskBean$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/childmodule/bean/TaskBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->coin:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->coin:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->name:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->taskType:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalType:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalValue:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->coin:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->workoutType:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->cycle:[I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->timeInterval:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->alarmEnable:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmEnable()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->alarmEnable:I

    return v0
.end method

.method public getCoin()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->coin:I

    return v0
.end method

.method public getCycle()[I
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->cycle:[I

    return-object v0
.end method

.method public getGoalType()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalType:I

    return v0
.end method

.method public getGoalValue()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalValue:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->taskType:I

    return v0
.end method

.method public getTimeInterval()J
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->timeInterval:J

    return-wide v0
.end method

.method public getWorkoutType()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->workoutType:I

    return v0
.end method

.method public setAlarmEnable(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->alarmEnable:I

    return-void
.end method

.method public setCoin(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->coin:I

    return-void
.end method

.method public setCycle([I)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->cycle:[I

    return-void
.end method

.method public setGoalType(I)V
    .registers 2

    .line 69
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalType:I

    return-void
.end method

.method public setGoalValue(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalValue:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setTaskType(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->taskType:I

    return-void
.end method

.method public setTimeInterval(J)V
    .registers 3

    .line 97
    iput-wide p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->timeInterval:J

    return-void
.end method

.method public setWorkoutType(I)V
    .registers 2

    .line 115
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->workoutType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskBean{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', taskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->taskType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", goalType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", goalValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->coin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", workoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->workoutType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->cycle:[I

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->timeInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alarmEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->alarmEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 125
    iget-object p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->taskType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->goalValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->coin:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->workoutType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->cycle:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 132
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->timeInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget p2, p0, Lcom/keephealth/android/childmodule/bean/TaskBean;->alarmEnable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
