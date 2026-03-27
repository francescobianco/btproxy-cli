.class public Lcom/google/android/gms/fitness/request/DataReadRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/DataReadRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/DataReadRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIMIT:I


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;

.field private final zzc:J

.field private final zzd:J

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/List;

.field private final zzg:I

.field private final zzh:J

.field private final zzi:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzj:I

.field private final zzk:Z

.field private final zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/fitness/zzbn;

.field private final zzn:Ljava/util/List;

.field private final zzo:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/fitness/zzbn;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v17, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zza:Ljava/util/List;

    iget-object v3, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb:Ljava/util/List;

    iget-wide v4, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    iget-object v8, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zze:Ljava/util/List;

    iget-object v9, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzf:Ljava/util/List;

    iget v10, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    iget-wide v11, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    iget-object v13, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzi:Lcom/google/android/gms/fitness/data/DataSource;

    iget v14, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzj:I

    iget-boolean v15, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzk:Z

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzl:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzn:Ljava/util/List;

    move-object/from16 v18, v1

    iget-object v0, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzo:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/fitness/zzbn;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLandroid/os/IBinder;Ljava/util/List;Ljava/util/List;)V
    .registers 22

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zza:Ljava/util/List;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb:Ljava/util/List;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zze:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzf:Ljava/util/List;

    move v1, p9

    iput v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    move-wide v1, p10

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzi:Lcom/google/android/gms/fitness/data/DataSource;

    move/from16 v1, p13

    iput v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzj:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzk:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzl:Z

    if-nez p16, :cond_2f

    const/4 v1, 0x0

    goto :goto_33

    .line 3
    :cond_2f
    invoke-static/range {p16 .. p16}, Lcom/google/android/gms/internal/fitness/zzbm;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzbn;

    move-result-object v1

    .line 2
    :goto_33
    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzm:Lcom/google/android/gms/internal/fitness/zzbn;

    if-nez p17, :cond_3c

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3e

    :cond_3c
    move-object/from16 v1, p17

    :goto_3e
    iput-object v1, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzn:Ljava/util/List;

    if-nez p18, :cond_47

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_49

    :cond_47
    move-object/from16 v2, p18

    :goto_49
    iput-object v2, v0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzo:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_57

    const/4 v1, 0x1

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    const-string v2, "Unequal number of interval start and end times."

    .line 7
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLcom/google/android/gms/internal/fitness/zzbn;Ljava/util/List;Ljava/util/List;)V
    .registers 39

    if-nez p16, :cond_6

    const/4 v0, 0x0

    move-object/from16 v17, v0

    goto :goto_8

    :cond_6
    move-object/from16 v17, p16

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    .line 8
    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Ljava/util/List;Ljava/util/List;JJLjava/util/List;Ljava/util/List;IJLcom/google/android/gms/fitness/data/DataSource;IZZLandroid/os/IBinder;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_79

    .line 1
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_78

    check-cast p1, Lcom/google/android/gms/fitness/request/DataReadRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zza:Ljava/util/List;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zza:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb:Ljava/util/List;

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_77

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_77

    iget v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    iget v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    if-ne v1, v3, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzf:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzf:Ljava/util/List;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zze:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zze:Ljava/util/List;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzi:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzi:Lcom/google/android/gms/fitness/data/DataSource;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_77

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzl:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzl:Z

    if-ne v1, v3, :cond_77

    iget v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzj:I

    iget v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzj:I

    if-ne v1, v3, :cond_77

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzk:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzk:Z

    if-ne v1, v3, :cond_77

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzm:Lcom/google/android/gms/internal/fitness/zzbn;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzm:Lcom/google/android/gms/internal/fitness/zzbn;

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    goto :goto_79

    :cond_77
    return v2

    :cond_78
    move v0, v2

    :cond_79
    :goto_79
    return v0
.end method

.method public getActivityDataSource()Lcom/google/android/gms/fitness/data/DataSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzi:Lcom/google/android/gms/fitness/data/DataSource;

    return-object v0
.end method

.method public getAggregatedDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public getAggregatedDataTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getBucketDuration(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBucketType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    return v0
.end method

.method public getDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public getDataTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zza:Ljava/util/List;

    return-object v0
.end method

.method public getEndTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimit()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzj:I

    return v0
.end method

.method public getStartTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataReadRequest{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, " "

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zza:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataType;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataType;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzb:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataSource;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_53
    iget v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    if-eqz v1, :cond_81

    const-string v1, "bucket by "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzg:I

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/Bucket;->zzb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_7c

    const-string v1, " >"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7c
    const-string v1, ": "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zze:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a6

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zze:Ljava/util/List;

    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataType;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataType;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8f

    :cond_a6
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzf:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cb

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzf:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataSource;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b4

    :cond_cb
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(%tF %tT - %tF %tT)"

    .line 22
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzi:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v1, :cond_104

    const-string v1, "activities: "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzi:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_104
    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzl:Z

    if-eqz v1, :cond_10d

    const-string v1, " +server"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10d
    const-string v1, "}"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataTypes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataSources()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzc:J

    .line 6
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzd:J

    .line 7
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getAggregatedDataTypes()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getAggregatedDataSources()Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x7

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getBucketType()I

    move-result v2

    .line 13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzh:J

    .line 14
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x9

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getActivityDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    .line 16
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xa

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getLimit()I

    move-result v1

    .line 18
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzk:Z

    .line 19
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzl:Z

    .line 20
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzm:Lcom/google/android/gms/internal/fitness/zzbn;

    if-nez p2, :cond_66

    const/4 p2, 0x0

    goto :goto_6a

    .line 24
    :cond_66
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzbn;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_6a
    const/16 v1, 0xe

    .line 21
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x12

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzn:Ljava/util/List;

    .line 22
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0x13

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/DataReadRequest;->zzo:Ljava/util/List;

    .line 23
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
