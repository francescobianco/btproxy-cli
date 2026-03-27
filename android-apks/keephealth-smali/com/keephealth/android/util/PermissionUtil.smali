.class public Lcom/keephealth/android/util/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/PermissionUtil$RequsetResult;
    }
.end annotation


# instance fields
.field private requsetResult:Lcom/keephealth/android/util/PermissionUtil$RequsetResult;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs checkSelfPermission([Ljava/lang/String;)Z
    .registers 1

    .line 96
    invoke-static {p0}, Lcom/keephealth/android/util/PermissionUtil;->findDeniedPermissions([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs findDeniedPermissions([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    .line 65
    invoke-static {}, Lcom/keephealth/android/app/LibContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_18

    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    return-object v0
.end method

.method public static hasCameraPermissions(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    .line 111
    :try_start_1
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isVivo()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isFlyme()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isEmui()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isMiui()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 112
    :cond_19
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->isCameraCanUse()Z

    move-result v1

    if-nez v1, :cond_20

    return v0

    .line 116
    :cond_20
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->isHasCameraPermission()Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_54

    if-nez v1, :cond_27

    return v0

    .line 125
    :cond_27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "android.permission.CAMERA"

    const/4 v6, 0x3

    if-ge v1, v2, :cond_43

    .line 126
    new-array v1, v6, [Ljava/lang/String;

    aput-object v5, v1, v0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v0, v1, v4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 129
    :cond_43
    new-array v1, v6, [Ljava/lang/String;

    aput-object v5, v1, v0

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    aput-object v0, v1, v4

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_54
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static hasStoragePermissions(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 140
    :try_start_1
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isVivo()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isFlyme()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isEmui()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isMiui()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 141
    :cond_19
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->isCameraCanUse()Z

    move-result v1

    if-nez v1, :cond_20

    return v0

    .line 145
    :cond_20
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->isHasCameraPermission()Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_4d

    if-nez v1, :cond_27

    return v0

    .line 154
    :cond_27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v1, v2, :cond_3e

    .line 155
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 158
    :cond_3e
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    aput-object v2, v1, v0

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_4d
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static hasWritePermissions(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    .line 168
    :try_start_1
    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isVivo()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isFlyme()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isEmui()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/keephealth/android/util/RomUtils;->isMiui()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 169
    :cond_19
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->isCameraCanUse()Z

    move-result v1

    if-nez v1, :cond_20

    return v0

    .line 173
    :cond_20
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->isHasCameraPermission()Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_54

    if-nez v1, :cond_27

    return v0

    .line 182
    :cond_27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "android.permission.CAMERA"

    const/4 v6, 0x3

    if-ge v1, v2, :cond_43

    .line 183
    new-array v1, v6, [Ljava/lang/String;

    aput-object v5, v1, v0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v0, v1, v4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 186
    :cond_43
    new-array v1, v6, [Ljava/lang/String;

    aput-object v5, v1, v0

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    aput-object v0, v1, v4

    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_54
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isCameraCanUse()Z
    .registers 2

    .line 214
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_d

    .line 217
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_e

    const/4 v1, 0x1

    goto :goto_f

    :catch_d
    const/4 v0, 0x0

    :catch_e
    const/4 v1, 0x0

    :goto_f
    if-eqz v0, :cond_14

    .line 223
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_14
    return v1
.end method

.method public static isGrantedDrawOverlays()Z
    .registers 5

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2f

    .line 79
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return v1

    .line 83
    :cond_16
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 84
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v4, "android:system_alert_window"

    invoke-virtual {v0, v4, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    if-ne v0, v2, :cond_2e

    :cond_2d
    move v1, v2

    :cond_2e
    return v1

    .line 88
    :cond_2f
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isHasCameraPermission()Z
    .registers 4

    const/4 v0, 0x1

    .line 193
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mHasPermission"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1d

    .line 199
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 202
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    return v0

    :catch_22
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static isIntentAvailable(Landroid/content/Intent;)Z
    .registers 3

    .line 252
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 254
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 255
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static isOverMarshmallow()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static launchAppDetailsSettings()V
    .registers 3

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2c

    return-void

    .line 249
    :cond_2c
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static varargs requestPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V
    .registers 6

    .line 265
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->isOverMarshmallow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 269
    :cond_7
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 270
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    goto :goto_19

    .line 271
    :cond_f
    instance-of v1, p0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_19

    .line 272
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 274
    :cond_19
    :goto_19
    invoke-static {p2}, Lcom/keephealth/android/util/PermissionUtil;->findDeniedPermissions([Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deniedPermissions.size():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ghfgr54"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_99

    if-eqz v0, :cond_58

    .line 278
    check-cast p0, Landroid/app/Activity;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p0, 0x1

    .line 279
    invoke-static {p0}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    .line 280
    const-string p0, "\u53d1\u9001\u6743\u9650\u5df2\u7ecf\u7533\u8bf7Activity"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 281
    :cond_58
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_73

    .line 282
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 283
    const-string p0, "\u53d1\u9001\u6743\u9650\u5df2\u7ecf\u7533\u8bf7Fragment"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 285
    :cond_73
    const-string p1, "\u53d1\u9001\u6743\u9650\u5df2\u7ecf\u7533\u8bf7is not supported"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " is not supported"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_99
    :goto_99
    return-void
.end method

.method private static startWriteSettingsActivity(Landroid/app/Activity;I)V
    .registers 5

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 235
    invoke-static {v0}, Lcom/keephealth/android/util/PermissionUtil;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 236
    invoke-static {}, Lcom/keephealth/android/util/PermissionUtil;->launchAppDetailsSettings()V

    return-void

    .line 239
    :cond_2f
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 12

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 321
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move v3, v1

    .line 292
    :goto_b
    array-length v4, p3

    const-string v5, "fr33e"

    if-ge v3, v4, :cond_30

    .line 293
    aget v4, p3, v3

    if-eqz v4, :cond_19

    .line 294
    aget-object v4, p2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "grantResults[i]:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, p3, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 300
    :cond_30
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "deniedPermissions.size():"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const-string v0, "ghfgr54"

    const/4 v3, 0x1

    if-lez p2, :cond_8e

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "\u7533\u8bf7\u5931\u8d25:"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, " AppApplication.reFrushNumber:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v4, Lcom/keephealth/android/app/AppApplication;->reFrushNumber:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p2, p0, Lcom/keephealth/android/util/PermissionUtil;->requsetResult:Lcom/keephealth/android/util/PermissionUtil$RequsetResult;

    invoke-interface {p2, p1}, Lcom/keephealth/android/util/PermissionUtil$RequsetResult;->requestPermissionsFail(I)V

    const/16 p2, 0x3bf

    if-ne p1, p2, :cond_a5

    .line 305
    sget p2, Lcom/keephealth/android/app/AppApplication;->reFrushNumber:I

    add-int/2addr p2, v3

    sput p2, Lcom/keephealth/android/app/AppApplication;->reFrushNumber:I

    .line 306
    sget p2, Lcom/keephealth/android/app/AppApplication;->reFrushNumber:I

    const/4 v4, 0x3

    if-ne p2, v4, :cond_a5

    .line 307
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v4, "reFrushNumber"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_a5

    .line 311
    :cond_8e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "\u7533\u8bf7\u6210\u529f:"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p2, p0, Lcom/keephealth/android/util/PermissionUtil;->requsetResult:Lcom/keephealth/android/util/PermissionUtil$RequsetResult;

    invoke-interface {p2, p1}, Lcom/keephealth/android/util/PermissionUtil$RequsetResult;->requestPermissionsSuccess(I)V

    .line 315
    :cond_a5
    :goto_a5
    array-length p2, p3

    const-string v4, "imagePermission"

    const-string v5, "isRefuPermisstion"

    const/16 v6, 0x64

    const/16 v7, 0x5b0

    if-lez p2, :cond_db

    aget p2, p3, v1

    if-nez p2, :cond_db

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u7528\u6237\u540c\u610f\u4e86\u6743\u9650\u8bf7\u6c42"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_d1

    .line 320
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 321
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_d1
    if-ne p1, v6, :cond_109

    .line 324
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_109

    :cond_db
    if-ne p1, v7, :cond_ea

    .line 330
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRefuPermisstion:Z

    .line 331
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, v5, p3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_ea
    if-ne p1, v6, :cond_f7

    .line 334
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, v4, p3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 336
    :cond_f7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u7528\u6237\u62d2\u7edd\u4e86\u6743\u9650\u8bf7\u6c42"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    :goto_109
    return-void
.end method

.method public setRequsetResult(Lcom/keephealth/android/util/PermissionUtil$RequsetResult;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/util/PermissionUtil;->requsetResult:Lcom/keephealth/android/util/PermissionUtil$RequsetResult;

    return-void
.end method
