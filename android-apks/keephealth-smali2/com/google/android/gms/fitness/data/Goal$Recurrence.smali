.class public Lcom/google/android/gms/fitness/data/Goal$Recurrence;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Goal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recurrence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/data/Goal$Recurrence$RecurrenceUnit;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/data/Goal$Recurrence;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIT_DAY:I = 0x1

.field public static final UNIT_MONTH:I = 0x3

.field public static final UNIT_WEEK:I = 0x2


# instance fields
.field private final zza:I

.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza:I

    const/4 p1, 0x0

    if-lez p2, :cond_c

    const/4 v0, 0x3

    if-gt p2, v0, :cond_c

    const/4 p1, 0x1

    .line 2
    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iput p2, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzb:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/fitness/data/Goal$Recurrence;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzb:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;

    iget v1, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza:I

    .line 3
    iget v3, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza:I

    if-ne v1, v3, :cond_19

    iget v1, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzb:I

    iget p1, p1, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzb:I

    if-ne v1, p1, :cond_19

    return v0

    :cond_19
    return v2
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza:I

    return v0
.end method

.method public getUnit()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzb:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzb:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zza:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->zzb:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    .line 4
    const-string v1, "month"

    goto :goto_2b

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid unit value"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const-string v1, "week"

    goto :goto_2b

    .line 2
    :cond_29
    const-string v1, "day"

    :goto_2b
    const-string v2, "unit"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->getCount()I

    move-result v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Goal$Recurrence;->getUnit()I

    move-result v1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
