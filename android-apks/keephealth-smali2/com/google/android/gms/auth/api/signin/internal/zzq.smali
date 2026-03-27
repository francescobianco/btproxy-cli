.class public final Lcom/google/android/gms/auth/api/signin/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@19.0.0"


# static fields
.field private static zzcq:Lcom/google/android/gms/auth/api/signin/internal/zzq;


# instance fields
.field private zzcr:Lcom/google/android/gms/auth/api/signin/internal/Storage;

.field private zzcs:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private zzct:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/Storage;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcr:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcs:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcr:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->getSavedDefaultGoogleSignInOptions()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzct:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized zzd(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzq;
    .registers 2

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzq;

    monitor-enter v0

    .line 6
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zze(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzq;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized zze(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzq;
    .registers 3

    const-class v0, Lcom/google/android/gms/auth/api/signin/internal/zzq;

    monitor-enter v0

    .line 7
    :try_start_3
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcq:Lcom/google/android/gms/auth/api/signin/internal/zzq;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-eqz v1, :cond_9

    .line 8
    monitor-exit v0

    return-object v1

    .line 9
    :cond_9
    :try_start_9
    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/zzq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/api/signin/internal/zzq;-><init>(Landroid/content/Context;)V

    .line 10
    sput-object v1, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcq:Lcom/google/android/gms/auth/api/signin/internal/zzq;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    .line 11
    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcr:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->clear()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcs:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzct:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 15
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .registers 4

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcr:Lcom/google/android/gms/auth/api/signin/internal/Storage;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/auth/api/signin/internal/Storage;->saveDefaultGoogleSignInAccount(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcs:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzct:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 19
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzr()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .registers 2

    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzcs:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzs()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .registers 2

    monitor-enter p0

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzq;->zzct:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
