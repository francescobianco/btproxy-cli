.class public Lcom/google/android/gms/fitness/request/SessionInsertRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/SessionInsertRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/SessionInsertRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final zza:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private final zzb:Lcom/google/android/gms/fitness/data/Session;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/util/List;

.field private final zze:Lcom/google/android/gms/internal/fitness/zzcp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zza:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lcom/google/android/gms/fitness/request/zzap;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzap;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/fitness/data/Session;Ljava/util/List;Ljava/util/List;Landroid/os/IBinder;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    .line 2
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    .line 3
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    if-nez p4, :cond_15

    const/4 p1, 0x0

    goto :goto_19

    .line 4
    :cond_15
    invoke-static {p4}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object p1

    .line 3
    :goto_19
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zze:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Session;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .registers 5

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    .line 6
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    .line 7
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zze:Lcom/google/android/gms/internal/fitness/zzcp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SessionInsertRequest;Lcom/google/android/gms/internal/fitness/zzcp;)V
    .registers 5

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/data/Session;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/fitness/zzcp;)V

    return-void
.end method

.method static bridge synthetic zza()Ljava/util/concurrent/TimeUnit;
    .registers 1

    sget-object v0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zza:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p1, p0, :cond_2b

    .line 1
    instance-of v1, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    check-cast p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    return v2

    :cond_2a
    move v0, v2

    :cond_2b
    :goto_2b
    return v0
.end method

.method public getAggregateDataPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fitness/data/DataPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

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

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzb:Lcom/google/android/gms/fitness/data/Session;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "dataSets"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzc:Ljava/util/List;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "aggregateDataPoints"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zzd:Ljava/util/List;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->getSession()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->getDataSets()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->getAggregateDataPoints()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/SessionInsertRequest;->zze:Lcom/google/android/gms/internal/fitness/zzcp;

    if-nez p2, :cond_23

    const/4 p2, 0x0

    goto :goto_27

    .line 9
    :cond_23
    invoke-interface {p2}, Lcom/google/android/gms/internal/fitness/zzcp;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_27
    const/4 v1, 0x4

    .line 8
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
