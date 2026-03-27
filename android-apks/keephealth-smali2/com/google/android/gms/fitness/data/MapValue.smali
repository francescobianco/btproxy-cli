.class public Lcom/google/android/gms/fitness/data/MapValue;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/MapValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/MapValue;->zza:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzb:F

    return-void
.end method

.method public static zzb(F)Lcom/google/android/gms/fitness/data/MapValue;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/fitness/data/MapValue;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/fitness/data/MapValue;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/MapValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/fitness/data/MapValue;

    iget v1, p0, Lcom/google/android/gms/fitness/data/MapValue;->zza:I

    .line 3
    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->zza:I

    if-ne v1, v3, :cond_2c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1f

    iget v1, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzb:F

    .line 5
    iget p1, p1, Lcom/google/android/gms/fitness/data/MapValue;->zzb:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1e

    return v0

    :cond_1e
    return v2

    .line 4
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->zza()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/MapValue;->zza()F

    move-result p1

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzb:F

    float-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zza:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const-string v0, "unknown"

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->zza()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/fitness/data/MapValue;->zza:I

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzb:F

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzb:F

    return v0
.end method
