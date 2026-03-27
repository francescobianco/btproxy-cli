.class public final Lcom/google/android/gms/fitness/data/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field private static zza:Ljava/lang/String; = null

.field private static zzb:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static zza(Landroid/content/Context;)I
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/fitness/data/zzo;->zzb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4b

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    sput v0, Lcom/google/android/gms/fitness/data/zzo;->zzb:I

    goto :goto_4b

    .line 2
    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_48

    .line 3
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTablet(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Lcom/google/android/gms/fitness/data/zzo;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_30

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/fitness/data/zzo;->zzb:I

    goto :goto_4b

    :cond_30
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_44

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v0, "glass_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 v0, 0x6

    goto :goto_45

    :cond_44
    const/4 v0, 0x1

    :goto_45
    sput v0, Lcom/google/android/gms/fitness/data/zzo;->zzb:I

    goto :goto_4b

    :cond_48
    :goto_48
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/google/android/gms/fitness/data/zzo;->zzb:I

    :cond_4b
    :goto_4b
    return v0
.end method

.method public static zzb(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/fitness/data/zzo;->zza:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/fitness/data/zzo;->zza:Ljava/lang/String;

    return-object p0
.end method

.method private static zzc(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    .line 1
    :try_start_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_13} :catch_18

    if-eqz p0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0

    :catch_18
    move-exception p0

    const-string v1, "Fitness"

    const-string v2, "Unable to determine type of device, assuming phone."

    .line 3
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
