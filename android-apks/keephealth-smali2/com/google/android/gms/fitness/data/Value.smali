.class public final Lcom/google/android/gms/fitness/data/Value;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/data/Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private zzb:Z

.field private zzc:F

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/util/Map;

.field private zzf:[I

.field private zzg:[F

.field private zzh:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzak;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    iput-boolean p2, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    iput p3, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    iput-object p4, p0, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    if-nez p5, :cond_f

    const/4 p1, 0x0

    goto :goto_4b

    :cond_f
    const-class p1, Lcom/google/android/gms/fitness/data/MapValue;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-virtual {p5}, Landroid/os/Bundle;->size()I

    move-result p2

    invoke-direct {p1, p2}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 4
    invoke-virtual {p5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 5
    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1
    :cond_4b
    :goto_4b
    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Value;->zzf:[I

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Value;->zzg:[F

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Value;->zzh:[B

    return-void
.end method


# virtual methods
.method public asActivity()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fitness/zzfv;->zzb(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asFloat()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    return v0
.end method

.method public asInt()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v0, "Value is not in int format"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0
.end method

.method public asString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Value is not in string format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :cond_13
    return-object v0
.end method

.method public clearKey(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/fitness/data/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    .line 3
    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->zza:I

    if-ne v1, v3, :cond_6b

    iget-boolean v3, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    iget-boolean v4, p1, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    if-ne v3, v4, :cond_6b

    if-eq v1, v0, :cond_60

    const/4 v3, 0x3

    if-eq v1, v3, :cond_57

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4e

    const/4 v3, 0x5

    if-eq v1, v3, :cond_45

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3c

    const/4 v3, 0x7

    if-eq v1, v3, :cond_33

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    .line 10
    iget p1, p1, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_32

    return v0

    :cond_32
    return v2

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzh:[B

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/fitness/data/Value;->zzh:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzg:[F

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/fitness/data/Value;->zzg:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzf:[I

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/fitness/data/Value;->zzf:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_57
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :cond_60
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result p1

    if-ne v1, p1, :cond_6b

    return v0

    :cond_6b
    return v2
.end method

.method public getFormat()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    return v0
.end method

.method public getKeyValue(Ljava/lang/String;)Ljava/lang/Float;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Value is not in float map format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    if-eqz v0, :cond_28

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/MapValue;->zza()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/fitness/data/Value;->zzf:[I

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/Value;->zzg:[F

    iget-object v6, p0, Lcom/google/android/gms/fitness/data/Value;->zzh:[B

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSet()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/fitness/zzfv;->zza(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    return-void
.end method

.method public setFloat(F)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    return-void
.end method

.method public setInt(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v2, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    return-void
.end method

.method public setKeyValue(Ljava/lang/String;F)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/fitness/data/MapValue;->zzb(F)Lcom/google/android/gms/fitness/data/MapValue;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Attempting to set a string value to a field that is not in STRING format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    if-nez v0, :cond_7

    const-string v0, "unset"

    return-object v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const-string v1, ""

    packed-switch v0, :pswitch_data_54

    .line 4
    const-string v0, "unknown"

    return-object v0

    .line 0
    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzh:[B

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    array-length v2, v0

    const/4 v3, 0x0

    .line 1
    invoke-static {v0, v3, v2, v3}, Lcom/google/android/gms/common/util/HexDumpUtils;->dump([BIIZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    return-object v1

    :cond_1f
    return-object v0

    :pswitch_20
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzg:[F

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzf:[I

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    if-nez v0, :cond_33

    return-object v1

    :cond_33
    new-instance v1, Ljava/util/TreeMap;

    .line 4
    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 0
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    if-nez v0, :cond_42

    return-object v1

    :cond_42
    return-object v0

    .line 4
    :pswitch_43
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_4a
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_43
        :pswitch_3d
        :pswitch_2e
        :pswitch_27
        :pswitch_20
        :pswitch_11
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->getFormat()I

    move-result v1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->isSet()Z

    move-result v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzc:F

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzd:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    goto :goto_57

    .line 13
    :cond_27
    new-instance v1, Landroid/os/Bundle;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3a

    :cond_56
    move-object v0, v1

    :goto_57
    const/4 v1, 0x5

    .line 9
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzf:[I

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzg:[F

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatArray(Landroid/os/Parcel;I[FZ)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzh:[B

    .line 12
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza(Ljava/util/Map;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->zza:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Attempting to set a float map value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzb:Z

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/data/MapValue;->zzb(F)Lcom/google/android/gms/fitness/data/MapValue;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_41
    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zze:Ljava/util/Map;

    return-void
.end method
