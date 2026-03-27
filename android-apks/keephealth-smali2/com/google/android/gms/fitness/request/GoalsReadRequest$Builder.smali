.class public Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/GoalsReadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Ljava/util/List;

.field private final zzc:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zza:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzb:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzc:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzc:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zza:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzb:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public addActivity(Ljava/lang/String;)Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzfv;->zza(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "Attempting to add an unknown activity"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzc:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fitness/zzd;->zza(Ljava/lang/Object;Ljava/util/List;)I

    return-object p0
.end method

.method public addDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
    .registers 3

    .line 1
    const-string v0, "Attempting to use a null data type"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object p0
.end method

.method public addObjectiveType(I)Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    move p1, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1
    :cond_c
    :goto_c
    const-string v1, "Attempting to add an invalid objective type"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzb:Ljava/util/List;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object p0
.end method

.method public build()Lcom/google/android/gms/fitness/request/GoalsReadRequest;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "At least one data type should be specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest$Builder;Lcom/google/android/gms/fitness/request/zzx;)V

    return-object v0
.end method
