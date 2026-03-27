.class public Lcom/google/android/gms/fitness/data/Bucket;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/data/Bucket;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_SEGMENT:I = 0x4

.field public static final TYPE_ACTIVITY_TYPE:I = 0x3

.field public static final TYPE_SESSION:I = 0x2

.field public static final TYPE_TIME:I = 0x1


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/fitness/data/Session;

.field private final zzd:I

.field private final zze:Ljava/util/List;

.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zze;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Bucket;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;I)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzc:Lcom/google/android/gms/fitness/data/Session;

    iput p6, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Bucket;->zze:Ljava/util/List;

    iput p8, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/RawBucket;Ljava/util/List;)V
    .registers 13

    .line 2
    iget-wide v1, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zza:J

    iget-wide v3, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzb:J

    iget-object v5, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzc:Lcom/google/android/gms/fitness/data/Session;

    iget v6, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzd:I

    iget-object v0, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zze:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/fitness/data/RawDataSet;

    .line 5
    new-instance v9, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {v9, v8, p2}, Lcom/google/android/gms/fitness/data/DataSet;-><init>(Lcom/google/android/gms/fitness/data/RawDataSet;Ljava/util/List;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 6
    :cond_2c
    iget v8, p1, Lcom/google/android/gms/fitness/data/RawBucket;->zzf:I

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(JJLcom/google/android/gms/fitness/data/Session;ILjava/util/List;I)V

    return-void
.end method

.method public static zzb(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_23

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    const-string p0, "bug"

    return-object p0

    :cond_14
    const-string p0, "intervals"

    return-object p0

    :cond_17
    const-string p0, "segment"

    return-object p0

    :cond_1a
    const-string p0, "type"

    return-object p0

    :cond_1d
    const-string p0, "session"

    return-object p0

    :cond_20
    const-string p0, "time"

    return-object p0

    :cond_23
    const-string p0, "none"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/Bucket;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/fitness/data/Bucket;

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    .line 3
    iget-wide v5, p1, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_33

    iget-wide v3, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_33

    iget v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    if-ne v1, v3, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zze:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Bucket;->zze:Ljava/util/List;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    iget p1, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    if-ne v1, p1, :cond_33

    return v0

    :cond_33
    return v2
.end method

.method public getActivity()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/fitness/zzfv;->zzb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    return v0
.end method

.method public getDataSet(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSet;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSet;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSet;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataSets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzc:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startTime"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endTime"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zze:Ljava/util/List;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Bucket;->zzb(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    const-string v2, "bucketType"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

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

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    .line 3
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Bucket;->getSession()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget v1, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    .line 6
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 p2, 0x5

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Bucket;->getDataSets()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x6

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Bucket;->getBucketType()I

    move-result v1

    .line 10
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/fitness/data/Bucket;)Z
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->zza:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzb:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    iget v1, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzd:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    iget p1, p1, Lcom/google/android/gms/fitness/data/Bucket;->zzf:I

    if-ne v0, p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method
