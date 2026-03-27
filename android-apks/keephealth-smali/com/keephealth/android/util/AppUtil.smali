.class public Lcom/keephealth/android/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# static fields
.field static manager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appIsRunning(Landroid/content/Context;)Z
    .registers 5

    .line 280
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 281
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 284
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 285
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-eq p0, v0, :cond_45

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u5904\u4e8e\u540e\u53f0"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 289
    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u5904\u4e8e\u524d\u53f0"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    :cond_59
    return v2
.end method

.method public static checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1d

    .line 356
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_18

    :catch_13
    move-exception p0

    .line 359
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_18
    if-nez p0, :cond_1b

    return v0

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static exitApp()V
    .registers 3

    .line 266
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getActivityList()Ljava/util/LinkedList;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_18

    .line 268
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 270
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_18
    const/4 v0, 0x0

    .line 272
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static getAppIconByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 306
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 309
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 311
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppMaxMemory()I
    .registers 4

    .line 47
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    .line 51
    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getAppSignature()[Landroid/content/pm/Signature;
    .registers 1

    .line 164
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/AppUtil;->getAppSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 4

    .line 247
    invoke-static {p0}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 249
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    .line 251
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_1b

    .line 252
    :cond_19
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v1

    :catch_1c
    move-exception p0

    .line 254
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method private static getAppSignatureHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 213
    invoke-static {p0}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 214
    :cond_9
    invoke-static {p0}, Lcom/keephealth/android/util/AppUtil;->getAppSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 215
    array-length v0, p0

    if-gtz v0, :cond_13

    goto :goto_2b

    :cond_13
    const/4 v0, 0x0

    .line 216
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/AppUtil;->hashTemplate([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(?<=[0-9A-F]{2})[0-9A-F]{2}"

    const-string v0, ":$0"

    .line 217
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public static getAppSignatureMD5()Ljava/lang/String;
    .registers 1

    .line 237
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/AppUtil;->getAppSignatureMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSignatureMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 209
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->getAppSignatureHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppSignatureSHA1()Ljava/lang/String;
    .registers 1

    .line 172
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/AppUtil;->getAppSignatureSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSignatureSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 182
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->getAppSignatureHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppSignatureSHA256()Ljava/lang/String;
    .registers 1

    .line 190
    invoke-static {}, Lcom/keephealth/android/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/AppUtil;->getAppSignatureSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppSignatureSHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 200
    const-string v0, "SHA256"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->getAppSignatureHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 1

    .line 259
    invoke-static {}, Lcom/keephealth/android/app/LibContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 260
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageCode(Landroid/content/Context;)I
    .registers 22

    .line 463
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x11

    const/16 v4, 0x10

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, -0x1

    sparse-switch v2, :sswitch_data_170

    goto/16 :goto_132

    :sswitch_46
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_132

    :cond_50
    move/from16 v20, v3

    goto/16 :goto_132

    :sswitch_54
    const-string v2, "uk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_132

    :cond_5e
    move/from16 v20, v4

    goto/16 :goto_132

    :sswitch_62
    const-string v2, "tr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_132

    :cond_6c
    move/from16 v20, v5

    goto/16 :goto_132

    :sswitch_70
    const-string v2, "th"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_132

    :cond_7a
    move/from16 v20, v6

    goto/16 :goto_132

    :sswitch_7e
    const-string v2, "ru"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_132

    :cond_88
    move/from16 v20, v7

    goto/16 :goto_132

    :sswitch_8c
    const-string v2, "ro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_132

    :cond_96
    move/from16 v20, v8

    goto/16 :goto_132

    :sswitch_9a
    const-string v2, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_132

    :cond_a4
    move/from16 v20, v9

    goto/16 :goto_132

    :sswitch_a8
    const-string v2, "pl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto/16 :goto_132

    :cond_b2
    move/from16 v20, v10

    goto/16 :goto_132

    :sswitch_b6
    const-string v2, "nl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_132

    :cond_c0
    move/from16 v20, v11

    goto/16 :goto_132

    :sswitch_c4
    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto/16 :goto_132

    :cond_ce
    move/from16 v20, v12

    goto/16 :goto_132

    :sswitch_d2
    const-string v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_132

    :cond_dc
    move/from16 v20, v13

    goto :goto_132

    :sswitch_df
    const-string v2, "it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto :goto_132

    :cond_e8
    move/from16 v20, v14

    goto :goto_132

    :sswitch_eb
    const-string v2, "fr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    goto :goto_132

    :cond_f4
    move/from16 v20, v15

    goto :goto_132

    :sswitch_f7
    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto :goto_132

    :cond_100
    move/from16 v20, v16

    goto :goto_132

    :sswitch_103
    const-string v2, "de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10c

    goto :goto_132

    :cond_10c
    move/from16 v20, v17

    goto :goto_132

    :sswitch_10f
    const-string v2, "ca"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_118

    goto :goto_132

    :cond_118
    move/from16 v20, v18

    goto :goto_132

    :sswitch_11b
    const-string v2, "be"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124

    goto :goto_132

    :cond_124
    move/from16 v20, v19

    goto :goto_132

    :sswitch_127
    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_130

    goto :goto_132

    :cond_130
    move/from16 v20, v1

    :goto_132
    packed-switch v20, :pswitch_data_1ba

    goto :goto_16e

    .line 470
    :pswitch_136
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7576\u524d\u9336\u76e4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    move v1, v8

    goto :goto_16e

    :cond_14b
    move/from16 v1, v19

    goto :goto_16e

    :pswitch_14e
    move/from16 v1, v17

    goto :goto_16e

    :pswitch_151
    move v1, v4

    goto :goto_16e

    :pswitch_153
    move v1, v6

    goto :goto_16e

    :pswitch_155
    move v1, v9

    goto :goto_16e

    :pswitch_157
    move v1, v14

    goto :goto_16e

    :pswitch_159
    move v1, v11

    goto :goto_16e

    :pswitch_15b
    move v1, v5

    goto :goto_16e

    :pswitch_15d
    move v1, v7

    goto :goto_16e

    :pswitch_15f
    move v1, v12

    goto :goto_16e

    :pswitch_161
    move v1, v10

    goto :goto_16e

    :pswitch_163
    move/from16 v1, v16

    goto :goto_16e

    :pswitch_166
    move v1, v13

    goto :goto_16e

    :pswitch_168
    move v1, v15

    goto :goto_16e

    :pswitch_16a
    move/from16 v1, v18

    goto :goto_16e

    :pswitch_16d
    move v1, v3

    :goto_16e
    return v1

    nop

    :sswitch_data_170
    .sparse-switch
        0xc31 -> :sswitch_127
        0xc43 -> :sswitch_11b
        0xc5e -> :sswitch_10f
        0xc81 -> :sswitch_103
        0xcae -> :sswitch_f7
        0xccc -> :sswitch_eb
        0xd2b -> :sswitch_df
        0xd37 -> :sswitch_d2
        0xd64 -> :sswitch_c4
        0xdbe -> :sswitch_b6
        0xdfc -> :sswitch_a8
        0xe04 -> :sswitch_9a
        0xe3d -> :sswitch_8c
        0xe43 -> :sswitch_7e
        0xe74 -> :sswitch_70
        0xe7e -> :sswitch_62
        0xe96 -> :sswitch_54
        0xf2e -> :sswitch_46
    .end sparse-switch

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_16a
        :pswitch_168
        :pswitch_166
        :pswitch_168
        :pswitch_163
        :pswitch_161
        :pswitch_15f
        :pswitch_15d
        :pswitch_15b
        :pswitch_159
        :pswitch_157
        :pswitch_155
        :pswitch_16a
        :pswitch_153
        :pswitch_151
        :pswitch_14e
        :pswitch_136
    .end packed-switch
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 125
    const-string v0, ""

    .line 127
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 128
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_17

    goto :goto_24

    .line 131
    :cond_17
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    :cond_24
    :goto_24
    return-object v0
.end method

.method public static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .line 375
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 376
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return-object v0

    .line 380
    :cond_10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 381
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_14

    .line 382
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_27
    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .registers 3

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 152
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 323
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    const-string p0, ""

    return-object p0
.end method

.method private static hashTemplate([BLjava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 221
    array-length v1, p0

    if-gtz v1, :cond_7

    goto :goto_17

    .line 223
    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 224
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 225
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_17
    :goto_17
    return-object v0
.end method

.method public static ignoreBatteryOptimization(Landroid/content/Context;)V
    .registers 5

    .line 62
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 68
    const-string v0, "Huawei"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.com.settings.Settings@HighPowerApplicationsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_61

    .line 76
    :cond_38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    :try_start_59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p0

    .line 81
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 84
    :goto_61
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " getModel "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " getBrand "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method public static isInstall91ReadBook(Landroid/content/Context;)Z
    .registers 2

    .line 425
    const-string v0, "com.nd.android.pandareader"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 340
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_2c

    :cond_12
    move v1, v0

    .line 342
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 343
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2c
    :goto_2c
    return v0
.end method

.method public static isInstallChrome(Landroid/content/Context;)Z
    .registers 2

    .line 445
    const-string v0, "com.Android.chrome"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstallFackbook(Landroid/content/Context;)Z
    .registers 2

    .line 395
    const-string v0, "com.facebook.katana"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstallQQ(Landroid/content/Context;)Z
    .registers 2

    .line 405
    const-string v0, "com.tencent.mqq"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstallQQ2012(Landroid/content/Context;)Z
    .registers 2

    .line 415
    const-string v0, "com.tencent.mobileqq"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstallVeryFit(Landroid/content/Context;)Z
    .registers 2

    .line 455
    const-string v0, "com.veryfit2hr.second"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInstallWeChat(Landroid/content/Context;)Z
    .registers 2

    .line 435
    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/AppUtil;->isInstallAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMainThread()Z
    .registers 2

    .line 531
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .line 95
    :try_start_0
    const-string v0, "activity"

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/keephealth/android/util/AppUtil;->manager:Landroid/app/ActivityManager;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_a

    .line 100
    :catch_a
    sget-object p0, Lcom/keephealth/android/util/AppUtil;->manager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_10

    return v0

    :cond_10
    const/16 v1, 0x12c

    .line 104
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_19

    return v0

    :cond_19
    move v1, v0

    .line 108
    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 109
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_37
    return v0
.end method
