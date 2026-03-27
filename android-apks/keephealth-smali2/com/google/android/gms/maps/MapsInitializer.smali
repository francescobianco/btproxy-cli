.class public final Lcom/google/android/gms/maps/MapsInitializer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-maps@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/MapsInitializer$Renderer;
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/String; = "MapsInitializer"

.field private static zzb:Z = false

.field private static zzc:Lcom/google/android/gms/maps/MapsInitializer$Renderer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/maps/MapsInitializer$Renderer;->LEGACY:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    sput-object v0, Lcom/google/android/gms/maps/MapsInitializer;->zzc:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .registers 3

    const-class v0, Lcom/google/android/gms/maps/MapsInitializer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_4
    invoke-static {p0, v1, v1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;Lcom/google/android/gms/maps/OnMapsSdkInitializedCallback;)I

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;Lcom/google/android/gms/maps/OnMapsSdkInitializedCallback;)I
    .registers 8

    const-class v0, Lcom/google/android/gms/maps/MapsInitializer;

    monitor-enter v0

    .line 2
    :try_start_3
    const-string v1, "Context is null"

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/maps/MapsInitializer;->zza:Ljava/lang/String;

    const-string v2, "preferredRenderer: "

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/google/android/gms/maps/MapsInitializer;->zzb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    if-eqz p2, :cond_27

    sget-object p0, Lcom/google/android/gms/maps/MapsInitializer;->zzc:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    .line 16
    invoke-interface {p2, p0}, Lcom/google/android/gms/maps/OnMapsSdkInitializedCallback;->onMapsSdkInitialized(Lcom/google/android/gms/maps/MapsInitializer$Renderer;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_91

    :cond_27
    monitor-exit v0

    return v2

    .line 4
    :cond_29
    :try_start_29
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/internal/zzcb;->zza(Landroid/content/Context;Lcom/google/android/gms/maps/MapsInitializer$Renderer;)Lcom/google/android/gms/maps/internal/zzf;

    move-result-object v1
    :try_end_2d
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_29 .. :try_end_2d} :catch_8c
    .catchall {:try_start_29 .. :try_end_2d} :catchall_91

    .line 6
    :try_start_2d
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/zzf;->zze()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zza(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/zzf;->zzj()Lcom/google/android/gms/internal/maps/zzi;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zza(Lcom/google/android/gms/internal/maps/zzi;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_85
    .catchall {:try_start_2d .. :try_end_3b} :catchall_91

    const/4 v3, 0x1

    :try_start_3c
    sput-boolean v3, Lcom/google/android/gms/maps/MapsInitializer;->zzb:Z

    const/4 v4, 0x2

    if-eqz p1, :cond_4c

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapsInitializer$Renderer;->ordinal()I

    move-result p1
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_91

    if-eqz p1, :cond_4d

    if-eq p1, v3, :cond_4a

    goto :goto_4c

    :cond_4a
    move v3, v4

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v3, v2

    .line 10
    :cond_4d
    :goto_4d
    :try_start_4d
    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/zzf;->zzd()I

    move-result p1

    if-ne p1, v4, :cond_57

    .line 11
    sget-object p1, Lcom/google/android/gms/maps/MapsInitializer$Renderer;->LATEST:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    sput-object p1, Lcom/google/android/gms/maps/MapsInitializer;->zzc:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    .line 12
    :cond_57
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {v1, p0, v3}, Lcom/google/android/gms/maps/internal/zzf;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5e} :catch_5f
    .catchall {:try_start_4d .. :try_end_5e} :catchall_91

    goto :goto_67

    :catch_5f
    move-exception p0

    .line 8
    :try_start_60
    sget-object p1, Lcom/google/android/gms/maps/MapsInitializer;->zza:Ljava/lang/String;

    const-string v1, "Failed to retrieve renderer type or log initialization."

    .line 13
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :goto_67
    sget-object p0, Lcom/google/android/gms/maps/MapsInitializer;->zza:Ljava/lang/String;

    const-string p1, "loadedRenderer: "

    sget-object v1, Lcom/google/android/gms/maps/MapsInitializer;->zzc:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_83

    sget-object p0, Lcom/google/android/gms/maps/MapsInitializer;->zzc:Lcom/google/android/gms/maps/MapsInitializer$Renderer;

    .line 15
    invoke-interface {p2, p0}, Lcom/google/android/gms/maps/OnMapsSdkInitializedCallback;->onMapsSdkInitialized(Lcom/google/android/gms/maps/MapsInitializer$Renderer;)V
    :try_end_83
    .catchall {:try_start_60 .. :try_end_83} :catchall_91

    :cond_83
    monitor-exit v0

    return v2

    :catch_85
    move-exception p0

    .line 5
    :try_start_86
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    .line 8
    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_8c
    move-exception p0

    .line 5
    iget p0, p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_91

    monitor-exit v0

    return p0

    :catchall_91
    move-exception p0

    monitor-exit v0

    throw p0
.end method
