.class public Lcom/keephealth/android/util/DiscoverServiceUtils;
.super Ljava/lang/Object;
.source "DiscoverServiceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static discoverService()Z
    .registers 2

    .line 12
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "discoverService"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static discoverServiceClear()V
    .registers 3

    .line 20
    const-string v0, "rtrf9"

    const-string v1, "discoverServiceClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "discoverService"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_12
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_2e

    :catch_1a
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "discoverServiceClear-e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public static discoverServiceTrue()V
    .registers 3

    .line 30
    const-string v0, "rtft9"

    const-string v1, "discoverServiceTrue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1afd

    .line 31
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 32
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "discoverService"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
