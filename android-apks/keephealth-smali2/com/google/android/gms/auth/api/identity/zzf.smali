.class public Lcom/google/android/gms/auth/api/identity/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/zzf$zzc;
    }
.end annotation


# instance fields
.field private final zzau:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/zzf;->zzau:Ljava/lang/String;

    return-void
.end method

.method public static zzg()Lcom/google/android/gms/auth/api/identity/zzf$zzc;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/zzf$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/identity/zzf$zzc;-><init>(Lcom/google/android/gms/auth/api/identity/zze;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 6
    instance-of p1, p1, Lcom/google/android/gms/auth/api/identity/zzf;

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 7
    const-class v0, Lcom/google/android/gms/auth/api/identity/zzf;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .registers 4

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/zzf;->zzau:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/zzf;->zzau:Ljava/lang/String;

    return-object v0
.end method
