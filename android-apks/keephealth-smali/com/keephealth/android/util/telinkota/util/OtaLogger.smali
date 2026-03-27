.class public Lcom/keephealth/android/util/telinkota/util/OtaLogger;
.super Ljava/lang/Object;
.source "OtaLogger.java"


# static fields
.field public static ENABLE:Z = true

.field public static TAG:Ljava/lang/String; = "Telink-OTA"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .registers 2

    .line 64
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 65
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 70
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 71
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .registers 2

    .line 106
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 107
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 112
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 113
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    .line 40
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_9

    .line 41
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 42
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)I
    .registers 2

    .line 76
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 77
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 82
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 83
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isLoggable(I)Z
    .registers 2

    .line 34
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 35
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static println(ILjava/lang/String;)I
    .registers 3

    .line 46
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 47
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;)I
    .registers 2

    .line 52
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 53
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 58
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 59
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .registers 2

    .line 88
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 89
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 94
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 95
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .registers 2

    .line 100
    sget-boolean v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->ENABLE:Z

    if-eqz v0, :cond_b

    .line 101
    sget-object v0, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
