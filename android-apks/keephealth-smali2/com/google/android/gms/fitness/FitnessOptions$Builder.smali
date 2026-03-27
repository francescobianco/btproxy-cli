.class public final Lcom/google/android/gms/fitness/FitnessOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/FitnessOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Ljava/util/Set;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/zzg;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/fitness/FitnessOptions$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public accessActivitySessions(I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .registers 4

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 2
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "valid access types are FitnessOptions.ACCESS_READ or FitnessOptions.ACCESS_WRITE"

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.activity.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_26
    return-object p0
.end method

.method public accessSleepSessions(I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    if-ne p1, v0, :cond_8

    move p1, v0

    move v1, p1

    goto :goto_b

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    move v1, v0

    .line 1
    :goto_b
    const-string v2, "valid access types are FitnessOptions.ACCESS_READ or FitnessOptions.ACCESS_WRITE"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.sleep.read"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_1f
    if-ne p1, v0, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/fitness.sleep.write"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public addDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;

    return-object p0
.end method

.method public addDataType(Lcom/google/android/gms/fitness/data/DataType;I)Lcom/google/android/gms/fitness/FitnessOptions$Builder;
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    if-ne p2, v0, :cond_8

    move p2, v0

    move v1, p2

    goto :goto_b

    :cond_8
    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    move v1, v0

    .line 2
    :goto_b
    const-string v2, "valid access types are FitnessOptions.ACCESS_READ or FitnessOptions.ACCESS_WRITE"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->zza()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->zzb()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_27

    if-eqz v1, :cond_35

    iget-object p1, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    .line 6
    new-instance p2, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {p2, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_27
    if-ne p2, v0, :cond_35

    if-eqz p1, :cond_35

    iget-object p2, p0, Lcom/google/android/gms/fitness/FitnessOptions$Builder;->zza:Ljava/util/Set;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_35
    :goto_35
    return-object p0
.end method

.method public build()Lcom/google/android/gms/fitness/FitnessOptions;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/FitnessOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/FitnessOptions;-><init>(Lcom/google/android/gms/fitness/FitnessOptions$Builder;Lcom/google/android/gms/fitness/zzh;)V

    return-object v0
.end method
