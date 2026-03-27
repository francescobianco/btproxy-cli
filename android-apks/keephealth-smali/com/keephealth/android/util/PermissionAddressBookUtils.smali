.class public Lcom/keephealth/android/util/PermissionAddressBookUtils;
.super Ljava/lang/Object;
.source "PermissionAddressBookUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/PermissionAddressBookUtils$OnNativeAddressBookListener;
    }
.end annotation


# static fields
.field private static final REQUEST_ADDRESS_BOOK:I = 0xb

.field private static final REQUEST_PERMISSION_ADDRESS_BOOK:I = 0xa

.field private static packageName:Ljava/lang/String; = "com.example.addressbook"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mDialog:Landroid/app/Dialog;

.field private onNativeAddressBookListener:Lcom/keephealth/android/util/PermissionAddressBookUtils$OnNativeAddressBookListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/PermissionAddressBookUtils;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->jumpPermissionPage()V

    return-void
.end method

.method private alertDialog()V
    .registers 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, v0, v1, v1}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->callbackNativeAddressBook(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    .line 176
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/keephealth/android/util/PermissionAddressBookUtils$1;

    invoke-direct {v6, p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils$1;-><init>(Lcom/keephealth/android/util/PermissionAddressBookUtils;)V

    new-instance v7, Lcom/keephealth/android/util/PermissionAddressBookUtils$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/PermissionAddressBookUtils;)V

    .line 175
    const-string v3, ""

    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/util/DialogHelperNew;->showRemindDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method private callbackNativeAddressBook(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string p2, "phone"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string p2, "errorCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "code:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ggr33e"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3c

    .line 142
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->onNativeAddressBookListener:Lcom/keephealth/android/util/PermissionAddressBookUtils$OnNativeAddressBookListener;

    if-eqz p1, :cond_3c

    .line 143
    const-string p1, "onNativeAddressBookListener.onNativeAddress"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->onNativeAddressBookListener:Lcom/keephealth/android/util/PermissionAddressBookUtils$OnNativeAddressBookListener;

    invoke-interface {p1, v0}, Lcom/keephealth/android/util/PermissionAddressBookUtils$OnNativeAddressBookListener;->onNativeAddress(Ljava/util/Map;)V

    :cond_3c
    return-void
.end method

.method private doStartApplicationWithPackageName(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 369
    :try_start_2
    iget-object v2, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p1

    .line 371
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v1

    :goto_12
    if-nez p1, :cond_15

    return-void

    .line 377
    :cond_15
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 378
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 382
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 383
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_61

    .line 386
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 388
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 390
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 396
    :try_start_54
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_61

    :catch_5a
    move-exception p1

    .line 398
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    .line 399
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    :goto_61
    return-void
.end method

.method private getAppDetailSettingIntent()Landroid/content/Intent;
    .registers 5

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private getMiUiVersion()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 270
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "getprop ro.miui.ui.version.name"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 271
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {v2, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_31
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2d

    .line 273
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_2b
    .catchall {:try_start_1b .. :try_end_22} :catchall_3f

    .line 280
    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2a
    return-object v1

    :catch_2b
    move-exception v1

    goto :goto_33

    :catchall_2d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_40

    :catch_31
    move-exception v1

    move-object v2, v0

    .line 276
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3f

    .line 280
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v1

    .line 282
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3e
    return-object v0

    :catchall_3f
    move-exception v0

    .line 280
    :goto_40
    :try_start_40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception v1

    .line 282
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    :goto_48
    throw v0
.end method

.method private goContacts()V
    .registers 4

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private goCoolpadManager()V
    .registers 2

    .line 339
    const-string v0, "com.yulong.android.security:remote"

    invoke-direct {p0, v0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->doStartApplicationWithPackageName(Ljava/lang/String;)V

    return-void
.end method

.method private goHuaWeiManager()V
    .registers 5

    .line 253
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/keephealth/android/util/PermissionAddressBookUtils;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.systemmanager"

    const-string v3, "com.huawei.permissionmanager.ui.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_31

    :catch_1e
    move-exception v0

    .line 259
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    const-string v2, "\u8df3\u8f6c\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    :goto_31
    return-void
.end method

.method private goIntentSetting()V
    .registers 5

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 327
    :try_start_17
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void
.end method

.method private goLGManager()V
    .registers 5

    .line 227
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/keephealth/android/util/PermissionAddressBookUtils;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$AccessLockSummaryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_2c

    :catch_19
    move-exception v0

    .line 232
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    const-string v2, "\u8df3\u8f6c\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    :goto_2c
    return-void
.end method

.method private goMeiZuManager()V
    .registers 4

    .line 307
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v1, "packageName"

    sget-object v2, Lcom/keephealth/android/util/PermissionAddressBookUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_20

    :catch_19
    move-exception v0

    .line 312
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 313
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    :goto_20
    return-void
.end method

.method private goOppoManager()V
    .registers 2

    .line 334
    const-string v0, "com.coloros.safecenter"

    invoke-direct {p0, v0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->doStartApplicationWithPackageName(Ljava/lang/String;)V

    return-void
.end method

.method private goSangXinManager()V
    .registers 1

    .line 319
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    return-void
.end method

.method private goSonyManager()V
    .registers 5

    .line 240
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/keephealth/android/util/PermissionAddressBookUtils;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sonymobile.cta"

    const-string v3, "com.sonymobile.cta.SomcCTAMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_2c

    :catch_19
    move-exception v0

    .line 245
    iget-object v1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    const-string v2, "\u8df3\u8f6c\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    :goto_2c
    return-void
.end method

.method private goVivoManager()V
    .registers 2

    .line 343
    const-string v0, "com.bairenkeji.icaller"

    invoke-direct {p0, v0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->doStartApplicationWithPackageName(Ljava/lang/String;)V

    return-void
.end method

.method private goXiaoMiManager()V
    .registers 7

    .line 289
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->getMiUiVersion()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 291
    const-string v2, "V6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "extra_pkgname"

    const-string v4, "com.miui.securitycenter"

    const-string v5, "miui.intent.action.APP_PERM_EDITOR"

    if-nez v2, :cond_43

    const-string v2, "V7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_43

    .line 295
    :cond_20
    const-string v2, "V8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "V9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_35

    .line 300
    :cond_31
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    goto :goto_50

    .line 296
    :cond_35
    :goto_35
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v0, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    sget-object v0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_50

    .line 292
    :cond_43
    :goto_43
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v0, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    sget-object v0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :goto_50
    iget-object v0, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private jumpPermissionPage()V
    .registers 4

    .line 190
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_a0

    goto/16 :goto_74

    :sswitch_f
    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_74

    :cond_19
    const/16 v2, 0x8

    goto/16 :goto_74

    :sswitch_1d
    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_74

    :cond_26
    const/4 v2, 0x7

    goto :goto_74

    :sswitch_28
    const-string v1, "Meizu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_74

    :cond_31
    const/4 v2, 0x6

    goto :goto_74

    :sswitch_33
    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_74

    :cond_3c
    const/4 v2, 0x5

    goto :goto_74

    :sswitch_3e
    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_74

    :cond_47
    const/4 v2, 0x4

    goto :goto_74

    :sswitch_49
    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_74

    :cond_52
    const/4 v2, 0x3

    goto :goto_74

    :sswitch_54
    const-string v1, "LG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_74

    :cond_5d
    const/4 v2, 0x2

    goto :goto_74

    :sswitch_5f
    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_74

    :cond_68
    const/4 v2, 0x1

    goto :goto_74

    :sswitch_6a
    const-string v1, "Coolpad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_74

    :cond_73
    const/4 v2, 0x0

    :goto_74
    packed-switch v2, :pswitch_data_c6

    .line 220
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goIntentSetting()V

    goto :goto_9e

    .line 193
    :pswitch_7b
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goHuaWeiManager()V

    goto :goto_9e

    .line 211
    :pswitch_7f
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goSangXinManager()V

    goto :goto_9e

    .line 205
    :pswitch_83
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goMeiZuManager()V

    goto :goto_9e

    .line 196
    :pswitch_87
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goVivoManager()V

    goto :goto_9e

    .line 214
    :pswitch_8b
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goSonyManager()V

    goto :goto_9e

    .line 199
    :pswitch_8f
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goOppoManager()V

    goto :goto_9e

    .line 217
    :pswitch_93
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goLGManager()V

    goto :goto_9e

    .line 208
    :pswitch_97
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goXiaoMiManager()V

    goto :goto_9e

    .line 202
    :pswitch_9b
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goCoolpadManager()V

    :goto_9e
    return-void

    nop

    :sswitch_data_a0
    .sparse-switch
        -0x64059776 -> :sswitch_6a
        -0x63e01f25 -> :sswitch_5f
        0x97b -> :sswitch_54
        0x251fa0 -> :sswitch_49
        0x276947 -> :sswitch_3e
        0x373cac -> :sswitch_33
        0x46c94ac -> :sswitch_28
        0x6f28bffa -> :sswitch_1d
        0x7fa995e7 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
    .end packed-switch
.end method


# virtual methods
.method public getNativeAddressBook(Lcom/keephealth/android/util/PermissionAddressBookUtils$OnNativeAddressBookListener;)V
    .registers 5

    .line 65
    iput-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->onNativeAddressBookListener:Lcom/keephealth/android/util/PermissionAddressBookUtils$OnNativeAddressBookListener;

    .line 66
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1a

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0xa

    invoke-static {p1, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1d

    .line 73
    :cond_1a
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goContacts()V

    :goto_1d
    return-void
.end method

.method synthetic lambda$alertDialog$0$com-keephealth-android-util-PermissionAddressBookUtils(Landroid/view/View;)V
    .registers 2

    .line 182
    iget-object p1, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .line 83
    const-string p2, " "

    const/16 v0, 0xb

    if-ne p1, v0, :cond_5c

    const/4 p1, 0x0

    if-eqz p3, :cond_53

    .line 86
    :try_start_9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 90
    iget-object p3, p0, Lcom/keephealth/android/util/PermissionAddressBookUtils;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v1, :cond_1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    move-object v0, p1

    goto :goto_21

    :cond_1f
    move-object p3, p1

    move-object v0, p3

    :goto_21
    move-object v1, v0

    .line 95
    :goto_22
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 96
    const-string v0, "display_name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v0, "data1"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 99
    :cond_3d
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_4e

    .line 101
    const-string p3, "-"

    invoke-virtual {v0, p3, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 102
    const-string v0, ""

    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4e
    const/4 p2, 0x0

    .line 105
    invoke-direct {p0, p2, v1, v0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->callbackNativeAddressBook(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_53
    const/4 p2, -0x2

    .line 107
    invoke-direct {p0, p2, p1, p1}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->callbackNativeAddressBook(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_57} :catch_58

    goto :goto_5c

    :catch_58
    const/4 p2, -0x3

    .line 110
    invoke-direct {p0, p2, p1, p1}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->callbackNativeAddressBook(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    const/16 p2, 0xa

    if-ne p1, p2, :cond_13

    .line 122
    array-length p1, p3

    if-lez p1, :cond_10

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_10

    .line 123
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->goContacts()V

    goto :goto_13

    .line 125
    :cond_10
    invoke-direct {p0}, Lcom/keephealth/android/util/PermissionAddressBookUtils;->alertDialog()V

    :cond_13
    :goto_13
    return-void
.end method
