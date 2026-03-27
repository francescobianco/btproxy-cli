.class public Lcom/keephealth/android/util/FcfrtAppBhUtils;
.super Ljava/lang/Object;
.source "FcfrtAppBhUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goHuaweiSetting(Landroid/content/Context;)V
    .registers 3

    .line 123
    const-string v0, "com.huawei.systemmanager"

    :try_start_2
    const-string v1, "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_d

    .line 126
    :catch_8
    const-string v1, "com.huawei.systemmanager.optimize.bootstart.BootStartActivity"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static goLetvSetting(Landroid/content/Context;)V
    .registers 3

    .line 199
    const-string v0, "com.letv.android.letvsafe"

    const-string v1, "com.letv.android.letvsafe.AutobootManageActivity"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static goMeizuSetting(Landroid/content/Context;)V
    .registers 2

    .line 177
    const-string v0, "com.meizu.safe"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goOPPOSetting(Landroid/content/Context;)V
    .registers 2

    .line 148
    :try_start_0
    const-string v0, "com.coloros.phonemanager"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_17

    .line 151
    :catch_6
    :try_start_6
    const-string v0, "com.oppo.safe"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_17

    .line 154
    :catch_c
    :try_start_c
    const-string v0, "com.coloros.oppoguardelf"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_17

    .line 156
    :catch_12
    const-string v0, "com.coloros.safecenter"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public static goSamsungSetting(Landroid/content/Context;)V
    .registers 2

    .line 187
    :try_start_0
    const-string v0, "com.samsung.android.sm_cn"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_b

    .line 189
    :catch_6
    const-string v0, "com.samsung.android.sm"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V

    :goto_b
    return-void
.end method

.method public static goSmartisanSetting(Landroid/content/Context;)V
    .registers 2

    .line 204
    const-string v0, "com.smartisanos.security"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goVIVOSetting(Landroid/content/Context;)V
    .registers 2

    .line 168
    const-string v0, "com.iqoo.secure"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static goXiaomiSetting(Landroid/content/Context;)V
    .registers 3

    .line 137
    const-string v0, "com.miui.securitycenter"

    const-string v1, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isIgnoringBatteryOptimizations(Landroid/content/Context;)Z
    .registers 2

    .line 27
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_17

    .line 29
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static isLeTV()Z
    .registers 2

    .line 110
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "letv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isMeizu()Z
    .registers 2

    .line 104
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isOPPO()Z
    .registers 2

    .line 93
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isSamsung()Z
    .registers 2

    .line 107
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isSmartisan()Z
    .registers 2

    .line 113
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smartisan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isVIVO()Z
    .registers 2

    .line 100
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static isXiaomi()Z
    .registers 2

    .line 86
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_14

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static requestIgnoreBatteryOptimizations(Landroid/content/Context;)V
    .registers 6

    .line 41
    const-string v0, "gg4d3"

    .line 0
    const-string v1, "\u7533\u8bf7\u52a0\u5165\u767d\u540d\u5355:"

    const-string v2, "package:"

    .line 41
    :try_start_6
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_44} :catch_45

    goto :goto_5b

    :catch_45
    move-exception p0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u5728\u767d\u540d\u5355\u4e2d_e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5b
    return-void
.end method

.method private static showActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static showActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 65
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkPhoneFirm()Ljava/lang/String;
    .registers 3

    .line 275
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    const-string v1, "honor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_83

    .line 278
    :cond_17
    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 279
    const-string v0, "isXiaomi"

    return-object v0

    .line 280
    :cond_26
    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 281
    const-string v0, "isOppo"

    return-object v0

    .line 282
    :cond_35
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 283
    const-string v0, "isVivo"

    return-object v0

    .line 284
    :cond_44
    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_53

    .line 285
    const-string v0, "isMeizu"

    return-object v0

    .line 286
    :cond_53
    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 287
    const-string v0, "isSamsung"

    return-object v0

    .line 288
    :cond_62
    const-string v1, "letv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 289
    const-string v0, "isLetv"

    return-object v0

    .line 290
    :cond_71
    const-string v1, "smartisan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 291
    const-string v0, "isSmartisan"

    return-object v0

    .line 293
    :cond_80
    const-string v0, ""

    return-object v0

    .line 277
    :cond_83
    :goto_83
    const-string v0, "isHuawei"

    return-object v0
.end method

.method public gotoWhiteListSetting(Landroid/content/Context;)V
    .registers 5

    .line 226
    const-string v0, "com.huawei.systemmanager"

    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isHuawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 228
    :try_start_e
    const-string v1, "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    invoke-virtual {p0, v0, v1, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    goto/16 :goto_b8

    .line 230
    :catch_15
    const-string v1, "com.huawei.systemmanager.optimize.bootstart.BootStartActivity"

    invoke-virtual {p0, v0, v1, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_b8

    .line 233
    :cond_1c
    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isXiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 234
    const-string v0, "com.miui.securitycenter"

    const-string v1, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    invoke-virtual {p0, v0, v1, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_b8

    .line 236
    :cond_31
    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isOppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 239
    :try_start_3d
    const-string v0, "com.coloros.phonemanager"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_44

    goto/16 :goto_b8

    .line 242
    :catch_44
    :try_start_44
    const-string v0, "com.oppo.safe"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_4b

    goto/16 :goto_b8

    .line 245
    :catch_4b
    :try_start_4b
    const-string v0, "com.coloros.oppoguardelf"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_b8

    .line 247
    :catch_51
    const-string v0, "com.coloros.safecenter"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_b8

    .line 251
    :cond_57
    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 253
    const-string v0, "com.iqoo.secure"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_b8

    .line 254
    :cond_69
    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isMeizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 256
    const-string v0, "com.meizu.safe"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_b8

    .line 257
    :cond_7b
    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSamsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 260
    :try_start_87
    const-string v0, "com.samsung.android.sm_cn"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8c} :catch_8d

    goto :goto_b8

    .line 262
    :catch_8d
    const-string v0, "com.samsung.android.sm"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_b8

    .line 264
    :cond_93
    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isLetv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 266
    const-string v0, "com.letv.android.letvsafe"

    const-string v1, "com.letv.android.letvsafe.AutobootManageActivity"

    invoke-virtual {p0, v0, v1, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_b8

    .line 267
    :cond_a7
    invoke-virtual {p0}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->checkPhoneFirm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSmartisan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 269
    const-string v0, "com.smartisanos.security"

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/FcfrtAppBhUtils;->showActivity(Ljava/lang/String;Landroid/content/Context;)V

    :cond_b8
    :goto_b8
    return-void
.end method

.method public isHuawei()Z
    .registers 4

    .line 74
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 77
    :cond_6
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "honor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public showActivity(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 212
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 213
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 221
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
