.class public abstract Lcom/google/android/gms/maps/internal/zzc;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "com.google.android.gms:play-services-maps@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ICancelableCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p1, p2, :cond_c

    const/4 p4, 0x2

    if-eq p1, p4, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzc;->zzb()V

    goto :goto_f

    .line 2
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzc;->zzc()V

    .line 3
    :goto_f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p2
.end method
