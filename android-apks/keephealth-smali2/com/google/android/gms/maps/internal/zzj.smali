.class public abstract Lcom/google/android/gms/maps/internal/zzj;
.super Lcom/google/android/gms/internal/maps/zzb;
.source "com.google.android.gms:play-services-maps@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.maps.internal.ILocationSourceDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/zzj;->deactivate()V

    goto :goto_2e

    .line 2
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x0

    goto :goto_28

    .line 8
    :cond_14
    const-string v0, "com.google.android.gms.maps.internal.IOnLocationChangeListener"

    .line 3
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/maps/internal/zzaj;

    if-eqz v1, :cond_22

    .line 5
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/maps/internal/zzaj;

    goto :goto_28

    :cond_22
    new-instance v0, Lcom/google/android/gms/maps/internal/zzai;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/internal/zzai;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    .line 6
    :goto_28
    invoke-static {p2}, Lcom/google/android/gms/internal/maps/zzc;->zzc(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/internal/zzj;->activate(Lcom/google/android/gms/maps/internal/zzaj;)V

    .line 8
    :goto_2e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
