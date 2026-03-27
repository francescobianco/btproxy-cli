.class public Lcom/keephealth/android/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetworkConnect(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 2

    if-eqz p0, :cond_19

    .line 20
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 23
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    .line 27
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getAPNType(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 42
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 43
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_11

    .line 45
    const-string p0, "NO"

    return-object p0

    .line 48
    :cond_11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 50
    const-string p0, "WIFI"

    return-object p0

    .line 51
    :cond_1b
    const-string v3, "Unknown"

    if-nez v1, :cond_7d

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 53
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/16 v1, 0xd

    if-ne v0, v1, :cond_38

    .line 55
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_38

    .line 56
    const-string p0, "4G"

    return-object p0

    :cond_38
    const/4 v1, 0x3

    if-eq v0, v1, :cond_7a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7a

    const/16 v1, 0xe

    if-eq v0, v1, :cond_7a

    const/16 v1, 0xf

    if-ne v0, v1, :cond_60

    .line 66
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_7a

    :cond_60
    if-eq v0, v2, :cond_77

    const/4 v1, 0x2

    if-eq v0, v1, :cond_77

    const/4 v1, 0x4

    if-eq v0, v1, :cond_77

    const/4 v1, 0x7

    if-eq v0, v1, :cond_77

    const/16 v1, 0xb

    if-ne v0, v1, :cond_76

    .line 73
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-nez p0, :cond_76

    goto :goto_77

    :cond_76
    return-object v3

    .line 74
    :cond_77
    :goto_77
    const-string p0, "2G"

    return-object p0

    .line 67
    :cond_7a
    :goto_7a
    const-string p0, "3G"

    return-object p0

    :cond_7d
    return-object v3
.end method
