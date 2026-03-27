.class Lcom/keephealth/android/util/ble/bluetooth/BleLogger;
.super Ljava/lang/Object;
.source "BleLogger.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 43
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static e(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p0, :cond_5

    .line 65
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method

.method public static i(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 49
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static v(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 38
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static w(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 54
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static wtf(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static wtf(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p0, :cond_5

    .line 76
    invoke-static {p1, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void
.end method
