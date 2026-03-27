.class public Lcom/keephealth/android/util/telinkota/OtaSettingService;
.super Ljava/lang/Object;
.source "OtaSettingService.java"


# static fields
.field public static final CACHE_NAME:Ljava/lang/String; = "com.telink.ota.settings"

.field private static instance:Lcom/keephealth/android/util/telinkota/OtaSettingService;


# instance fields
.field public otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/keephealth/android/util/telinkota/OtaSettingService;

    invoke-direct {v0}, Lcom/keephealth/android/util/telinkota/OtaSettingService;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/telinkota/OtaSettingService;->instance:Lcom/keephealth/android/util/telinkota/OtaSettingService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/util/telinkota/OtaSettingService;
    .registers 1

    .line 37
    sget-object v0, Lcom/keephealth/android/util/telinkota/OtaSettingService;->instance:Lcom/keephealth/android/util/telinkota/OtaSettingService;

    return-object v0
.end method


# virtual methods
.method public createDefault()Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    .registers 2

    .line 57
    new-instance v0, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    invoke-direct {v0}, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;-><init>()V

    return-object v0
.end method

.method public get()Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/OtaSettingService;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    return-object v0
.end method

.method public load(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/telinkota/OtaSettingService;->readInCache(Landroid/content/Context;)Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaSettingService;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    if-nez p1, :cond_e

    .line 52
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/OtaSettingService;->createDefault()Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/OtaSettingService;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    :cond_e
    return-void
.end method

.method public readInCache(Landroid/content/Context;)Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;
    .registers 3

    .line 66
    const-string v0, "com.telink.ota.settings"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/telinkota/util/FileSystem;->readAsObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 68
    check-cast p1, Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateSettings(Landroid/content/Context;Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;)V
    .registers 4

    .line 61
    iput-object p2, p0, Lcom/keephealth/android/util/telinkota/OtaSettingService;->otaSetting:Lcom/keephealth/android/util/telinkota/foundation/OtaSetting;

    .line 62
    const-string v0, "com.telink.ota.settings"

    invoke-static {p1, v0, p2}, Lcom/keephealth/android/util/telinkota/util/FileSystem;->writeAsObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
