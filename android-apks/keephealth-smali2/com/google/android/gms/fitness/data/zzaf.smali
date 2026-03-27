.class public final Lcom/google/android/gms/fitness/data/zzaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private zza:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzb:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/zzaf;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/zzaf;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/zzaf;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/zzaf;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/fitness/data/Subscription;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaf;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaf;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    :goto_e
    const-string v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaf;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_25

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/zzaf;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v3, :cond_25

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    move v1, v2

    :cond_26
    const-string v0, "Specified data type is incompatible with specified data source"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/zzaf;->zza:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/zzaf;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;JII)V

    return-object v0
.end method
