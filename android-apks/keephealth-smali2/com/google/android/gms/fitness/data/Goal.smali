.class public Lcom/google/android/gms/fitness/data/Goal;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/Goal$MismatchedGoalException;,
        Lcom/google/android/gms/fitness/data/Goal$ObjectiveType;,
        Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;,
        Lcom/google/android/gms/fitness/data/Goal$DurationObjective;,
        Lcom/google/android/gms/fitness/data/Goal$MetricObjective;,
        Lcom/google/android/gms/fitness/data/Goal$Recurrence;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/data/Goal;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECTIVE_TYPE_DURATION:I = 0x2

.field public static final OBJECTIVE_TYPE_FREQUENCY:I = 0x3

.field public static final OBJECTIVE_TYPE_METRIC:I = 0x1


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:Ljava/util/List;

.field private final zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

.field private final zze:I

.field private final zzf:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

.field private final zzg:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

.field private final zzh:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJLjava/util/List;Lcom/google/android/gms/fitness/data/Goal$Recurrence;ILcom/google/android/gms/fitness/data/Goal$MetricObjective;Lcom/google/android/gms/fitness/data/Goal$DurationObjective;Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Goal;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/Goal;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Goal;->zzc:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    iput p7, p0, Lcom/google/android/gms/fitness/data/Goal;->zze:I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Goal;->zzf:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    iput-object p9, p0, Lcom/google/android/gms/fitness/data/Goal;->zzg:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    iput-object p10, p0, Lcom/google/android/gms/fitness/data/Goal;->zzh:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    return-void
.end method

.method private static zza(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    .line 1
    const-string p0, "frequency"

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid objective type value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    const-string p0, "duration"

    return-object p0

    :cond_19
    const-string p0, "metric"

    return-object p0

    :cond_1c
    const-string p0, "unknown"

    return-object p0
.end method

.method private final zzb(I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zze:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/google/android/gms/fitness/data/Goal$MismatchedGoalException;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/Goal;->zza(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Goal;->zza(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s goal does not have %s objective"

    .line 2
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/fitness/data/Goal$MismatchedGoalException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/Goal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/fitness/data/Goal;

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/Goal;->zza:J

    .line 3
    iget-wide v5, p1, Lcom/google/android/gms/fitness/data/Goal;->zza:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_55

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/Goal;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/data/Goal;->zzb:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzc:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzc:Ljava/util/List;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zze:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zze:I

    if-ne v1, v3, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzf:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzf:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzg:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Goal;->zzg:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzh:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    iget-object p1, p1, Lcom/google/android/gms/fitness/data/Goal;->zzh:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    return v0

    :cond_55
    return v2
.end method

.method public getActivityName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    goto :goto_24

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzc:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fitness/zzfv;->zzb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreateTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zza:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationObjective()Lcom/google/android/gms/fitness/data/Goal$DurationObjective;
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/Goal;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzg:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    return-object v0
.end method

.method public getEndTime(Ljava/util/Calendar;Ljava/util/concurrent/TimeUnit;)J
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    if-eqz v0, :cond_77

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object p1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eq p1, v4, :cond_66

    const/4 v5, 0x2

    if-eq p1, v5, :cond_50

    const/4 v6, 0x3

    if-ne p1, v6, :cond_36

    .line 4
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 5
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid unit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    const/4 p1, 0x4

    .line 8
    invoke-virtual {v0, p1, v4}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x7

    .line 9
    invoke-virtual {v0, p1, v5}, Ljava/util/Calendar;->set(II)V

    .line 10
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1

    .line 12
    :cond_66
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 13
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 14
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_77
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzb:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getFrequencyObjective()Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/Goal;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzh:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    return-object v0
.end method

.method public getMetricObjective()Lcom/google/android/gms/fitness/data/Goal$MetricObjective;
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/data/Goal;->zzb(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzf:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    return-object v0
.end method

.method public getObjectiveType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zze:I

    return v0
.end method

.method public getRecurrence()Lcom/google/android/gms/fitness/data/Goal$Recurrence;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    return-object v0
.end method

.method public getStartTime(Ljava/util/Calendar;Ljava/util/concurrent/TimeUnit;)J
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    if-eqz v0, :cond_6d

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object p1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-eq p1, v1, :cond_5f

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4d

    const/4 v4, 0x3

    if-ne p1, v4, :cond_33

    const/4 p1, 0x5

    .line 4
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid unit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    const/4 p1, 0x7

    .line 7
    invoke-virtual {v0, p1, v4}, Ljava/util/Calendar;->set(II)V

    .line 8
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 9
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1

    .line 10
    :cond_5f
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1

    :cond_6d
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zza:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-virtual {p2, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal;->zze:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->getActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "recurrence"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzd:Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "metricObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzf:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "durationObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzg:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "frequencyObjective"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzh:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zza:J

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzb:J

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Goal;->zzc:Ljava/util/List;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->getRecurrence()Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    move-result-object v2

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal;->getObjectiveType()I

    move-result v2

    .line 8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzf:Lcom/google/android/gms/fitness/data/Goal$MetricObjective;

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzg:Lcom/google/android/gms/fitness/data/Goal$DurationObjective;

    .line 10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Goal;->zzh:Lcom/google/android/gms/fitness/data/Goal$FrequencyObjective;

    .line 11
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
