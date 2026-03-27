.class public Lcom/keephealth/android/notification/AppNotifedPersenter;
.super Ljava/lang/Object;
.source "AppNotifedPersenter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static appMode:Lcom/keephealth/android/notification/AppNotifedPersenter;


# instance fields
.field public packageInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/keephealth/android/notification/AppNotifedPersenter;

    invoke-direct {v0}, Lcom/keephealth/android/notification/AppNotifedPersenter;-><init>()V

    sput-object v0, Lcom/keephealth/android/notification/AppNotifedPersenter;->appMode:Lcom/keephealth/android/notification/AppNotifedPersenter;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/notification/AppNotifedPersenter;->packageInfoMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/notification/AppNotifedPersenter;
    .registers 1

    .line 29
    sget-object v0, Lcom/keephealth/android/notification/AppNotifedPersenter;->appMode:Lcom/keephealth/android/notification/AppNotifedPersenter;

    return-object v0
.end method


# virtual methods
.method public isOpenNotifed()Z
    .registers 4

    .line 41
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 45
    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    if-nez v2, :cond_e

    return v1

    .line 48
    :cond_e
    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 49
    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->line:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->vk:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->instagram:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->linked:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->whatsApp:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->twitter:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->facebook:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->qq:Z

    if-nez v2, :cond_38

    iget-boolean v2, v0, Lcom/keephealth/android/model/bean/AppNotice;->wechat:Z

    if-nez v2, :cond_38

    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/AppNotice;->skype:Z

    if-eqz v0, :cond_39

    :cond_38
    const/4 v1, 0x1

    :cond_39
    return v1
.end method
