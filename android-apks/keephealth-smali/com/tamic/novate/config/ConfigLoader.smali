.class public Lcom/tamic/novate/config/ConfigLoader;
.super Ljava/lang/Object;
.source "ConfigLoader.java"


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "novate-config.json"

.field private static appContext:Landroid/content/Context;

.field private static config:Lcom/tamic/novate/config/Config;

.field private static sInstance:Lcom/tamic/novate/config/ConfigLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSucess(Landroid/content/Context;I)Z
    .registers 4

    .line 42
    invoke-static {p0}, Lcom/tamic/novate/config/ConfigLoader;->loadConfig(Landroid/content/Context;)Lcom/tamic/novate/config/Config;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 45
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "web :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ">>>>>>>>>>>>isOk\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/tamic/novate/config/ConfigLoader;->config:Lcom/tamic/novate/config/Config;

    invoke-virtual {v0}, Lcom/tamic/novate/config/Config;->getSucessCode()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Novate"

    invoke-static {v0, p0}, Lcom/tamic/novate/util/LogWraper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p0, Lcom/tamic/novate/config/ConfigLoader;->config:Lcom/tamic/novate/config/Config;

    invoke-virtual {p0}, Lcom/tamic/novate/config/Config;->getSucessCode()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 30
    sget-object v0, Lcom/tamic/novate/config/ConfigLoader;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getErrorConfig()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/tamic/novate/config/ConfigLoader;->config:Lcom/tamic/novate/config/Config;

    invoke-virtual {v0}, Lcom/tamic/novate/config/Config;->getErrorInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 37
    sput-object p0, Lcom/tamic/novate/config/ConfigLoader;->appContext:Landroid/content/Context;

    return-void
.end method

.method public static isFormat(Landroid/content/Context;)Z
    .registers 2

    .line 70
    invoke-static {p0}, Lcom/tamic/novate/config/ConfigLoader;->loadConfig(Landroid/content/Context;)Lcom/tamic/novate/config/Config;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_8
    sget-object p0, Lcom/tamic/novate/config/ConfigLoader;->config:Lcom/tamic/novate/config/Config;

    invoke-virtual {p0}, Lcom/tamic/novate/config/Config;->getIsFormat()Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static loadConfig(Landroid/content/Context;)Lcom/tamic/novate/config/Config;
    .registers 5

    .line 51
    sget-object v0, Lcom/tamic/novate/config/ConfigLoader;->config:Lcom/tamic/novate/config/Config;

    if-eqz v0, :cond_5

    return-object v0

    .line 54
    :cond_5
    const-string v0, "novate-config.json"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/FileUtil;->loadFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Novate"

    if-eqz v0, :cond_1a

    .line 56
    const-string p0, "\u7f3a\u4e4f\u9ed8\u8ba4\u914d\u7f6e <novate-config.json>\u6587\u4ef6\uff0c\u8bf7\u52a0\u5165"

    invoke-static {v2, p0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 60
    :cond_1a
    :try_start_1a
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/tamic/novate/config/Config;

    invoke-virtual {v0, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tamic/novate/config/Config;

    sput-object v0, Lcom/tamic/novate/config/ConfigLoader;->config:Lcom/tamic/novate/config/Config;
    :try_end_29
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1a .. :try_end_29} :catch_39

    .line 66
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/tamic/novate/config/Config;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tamic/novate/config/Config;

    sput-object p0, Lcom/tamic/novate/config/ConfigLoader;->config:Lcom/tamic/novate/config/Config;

    return-object p0

    .line 62
    :catch_39
    const-string p0, "loaderConfig \u914d\u7f6e\u6570\u636e\u65e0\u6cd5\u89e3\u6790: \u8bf7\u6b63\u786e\u914d\u7f6e <novate-config.json>\u6587\u4ef6"

    invoke-static {v2, p0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
