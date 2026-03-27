.class public Lcom/tamic/novate/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static NET_CNNT_BAIDU_OK:I = 0x1

.field public static NET_CNNT_BAIDU_TIMEOUT:I = 0x2

.field public static NET_ERROR:I = 0x4

.field public static NET_NOT_PREPARE:I = 0x3

.field private static TIMEOUT:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectionNetwork()Z
    .registers 4

    const/4 v0, 0x0

    .line 100
    :try_start_1
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://www.baidu.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_2b
    .catchall {:try_start_1 .. :try_end_e} :catchall_21

    .line 102
    :try_start_e
    sget v0, Lcom/tamic/novate/util/NetworkUtil;->TIMEOUT:I

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_1f
    .catchall {:try_start_e .. :try_end_16} :catchall_1d

    if-eqz v1, :cond_1b

    .line 108
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1b
    const/4 v0, 0x1

    goto :goto_31

    :catchall_1d
    move-exception v0

    goto :goto_25

    :catch_1f
    move-object v0, v1

    goto :goto_2b

    :catchall_21
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_25
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    :cond_2a
    throw v0

    :catch_2b
    :goto_2b
    if-eqz v0, :cond_30

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 5

    .line 46
    const-string v0, ""

    .line 48
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 49
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 50
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 51
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 52
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_16

    .line 53
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_30} :catch_31

    goto :goto_16

    :catch_31
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    :cond_35
    return-object v0
.end method

.method public static getNetState(Landroid/content/Context;)I
    .registers 2

    .line 71
    :try_start_0
    const-string v0, "connectivity"

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_2f

    .line 74
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 76
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 77
    invoke-static {}, Lcom/tamic/novate/util/NetworkUtil;->connectionNetwork()Z

    move-result p0

    if-nez p0, :cond_25

    .line 78
    sget p0, Lcom/tamic/novate/util/NetworkUtil;->NET_CNNT_BAIDU_TIMEOUT:I

    return p0

    .line 80
    :cond_25
    sget p0, Lcom/tamic/novate/util/NetworkUtil;->NET_CNNT_BAIDU_OK:I

    return p0

    .line 82
    :cond_28
    sget p0, Lcom/tamic/novate/util/NetworkUtil;->NET_NOT_PREPARE:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    return p0

    :catch_2b
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :cond_2f
    sget p0, Lcom/tamic/novate/util/NetworkUtil;->NET_ERROR:I

    return p0
.end method

.method public static is2G(Landroid/content/Context;)Z
    .registers 4

    .line 153
    const-string v0, "connectivity"

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 155
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 157
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_23

    .line 158
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-eq v0, v2, :cond_23

    .line 159
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_24

    :cond_23
    return v2

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static is3G(Landroid/content/Context;)Z
    .registers 2

    .line 121
    const-string v0, "connectivity"

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 123
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 125
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    .line 35
    :cond_10
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 36
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .registers 2

    .line 137
    const-string v0, "connectivity"

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 139
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 141
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 169
    const-string v0, "connectivity"

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    const-string v1, "phone"

    .line 172
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 173
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 174
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_29

    .line 175
    :cond_22
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2b

    :cond_29
    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method
