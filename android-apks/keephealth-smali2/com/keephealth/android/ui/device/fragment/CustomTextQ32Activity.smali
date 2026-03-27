.class public Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "CustomTextQ32Activity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field btReplace:Landroid/widget/Button;

.field btZip:Landroid/widget/Button;

.field bt_watch_bin_path:Ljava/lang/String;

.field bt_watch_res_path:Ljava/lang/String;

.field bt_watch_sty_path:Ljava/lang/String;

.field path:Ljava/lang/String;

.field private pathZip:Ljava/lang/String;

.field selectedFileIconPath:Ljava/lang/String;

.field selectedFilePath:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field tvZip:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->btZip:Landroid/widget/Button;

    .line 42
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->btReplace:Landroid/widget/Button;

    .line 43
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->tvZip:Landroid/widget/TextView;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->pathZip:Ljava/lang/String;

    .line 45
    const-string v1, "12325435"

    iput-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->text:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->path:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFileIconPath:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_bin_path:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_res_path:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_sty_path:Ljava/lang/String;

    return-void
.end method

.method private checkPermission()V
    .registers 4

    .line 148
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    .line 150
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x64

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_13
    return-void
.end method

.method private initListener()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->btZip:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$1;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->btReplace:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity$2;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private readFirmware(Ljava/lang/String;)[B
    .registers 4

    .line 133
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 136
    new-array p1, p1, [B

    .line 137
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    .line 138
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtrtu5"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private setIcon(Ljava/lang/String;)V
    .registers 12

    .line 202
    new-instance v0, Lcom/actions/actres/ResBuilder;

    invoke-direct {v0}, Lcom/actions/actres/ResBuilder;-><init>()V

    .line 206
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_sty_path:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_res_path:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "/bt_watch_save.res"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/bt_watch_save.sty"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 206
    const-string v3, "SCENE_CLOCK_OTA_PUSH_VIEW"

    const-string v4, "pic_background"

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/actions/actres/ResBuilder;->replacePicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIcon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_sty_path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u89e3\u538b"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_res_path:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "setIcon: SCENE_CLOCK_OTA_PUSH_VIEW"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v1, "setIcon: pic_background"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u66ff\u6362\u7ed3\u679c: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setZipFile(Ljava/lang/String;Ljava/io/File;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 224
    new-instance v2, Lcom/actions/actres/ResBuilder;

    invoke-direct {v2}, Lcom/actions/actres/ResBuilder;-><init>()V

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon_custom.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 228
    iget-object v3, v0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_sty_path:Ljava/lang/String;

    iget-object v4, v0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_res_path:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "/bt_watch_save.res"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/bt_watch_save.sty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    const-string v5, "SCENE_CLOCK_OTA_PUSH_VIEW"

    const-string v6, "pic_background"

    invoke-virtual/range {v2 .. v9}, Lcom/actions/actres/ResBuilder;->replacePicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u66ff\u6362\u7ed3\u679c: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u89e3\u538b"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, v0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_bin_path:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->readFirmware(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v4, 0x20

    .line 244
    new-array v5, v4, [B

    const/16 v6, 0x220

    const/4 v7, 0x0

    .line 246
    invoke-static {v2, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0x10

    .line 248
    aget-byte v9, v5, v8

    const/16 v11, 0x11

    aget-byte v12, v5, v11

    const/16 v13, 0x12

    aget-byte v14, v5, v13

    const/16 v15, 0x13

    aget-byte v11, v5, v15

    invoke-direct {v0, v9, v12, v14, v11}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->sumByte4(BBBB)I

    move-result v9

    const/16 v11, 0x14

    .line 250
    aget-byte v12, v5, v11

    const/16 v14, 0x15

    aget-byte v11, v5, v14

    const/16 v18, 0x16

    aget-byte v14, v5, v18

    const/16 v19, 0x17

    aget-byte v15, v5, v19

    invoke-direct {v0, v12, v11, v14, v15}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->sumByte4(BBBB)I

    move-result v11

    .line 252
    new-array v12, v11, [B

    .line 254
    invoke-static {v2, v9, v12, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v14, 0xc

    .line 256
    new-array v15, v14, [B

    const/16 v8, 0x8

    .line 257
    new-array v6, v8, [B

    move v4, v7

    move/from16 v23, v4

    move/from16 v24, v23

    :goto_c4
    if-ge v4, v13, :cond_108

    mul-int/lit8 v13, v4, 0x20

    .line 264
    invoke-static {v12, v13, v15, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    invoke-static {v12, v13, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    invoke-static {v15}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/keephealth/android/ui/device/fragment/DigitalTrans;->AsciiStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 267
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lcom/keephealth/android/ui/device/fragment/DigitalTrans;->AsciiStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 269
    const-string v7, "bt_watch.res"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f4

    move/from16 v23, v13

    .line 272
    :cond_f4
    const-string v7, "sdfs.bin"

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_fe

    move/from16 v24, v13

    :cond_fe
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v13, 0x12

    const/16 v14, 0xc

    goto :goto_c4

    :cond_108
    const/16 v4, 0x20

    .line 278
    new-array v6, v4, [B

    move/from16 v7, v23

    add-int v8, v7, v9

    const/4 v12, 0x0

    .line 279
    invoke-static {v2, v8, v6, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0xc

    .line 281
    aget-byte v4, v6, v4

    const/16 v12, 0xd

    aget-byte v12, v6, v12

    const/16 v13, 0xe

    aget-byte v13, v6, v13

    const/16 v14, 0xf

    aget-byte v6, v6, v14

    invoke-direct {v0, v4, v12, v13, v6}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->sumByte4(BBBB)I

    move-result v4

    add-int/2addr v4, v9

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 286
    invoke-direct {v0, v6}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->readFirmware(Ljava/lang/String;)[B

    move-result-object v6

    .line 291
    array-length v10, v6

    add-int/2addr v10, v4

    array-length v12, v2

    if-le v10, v12, :cond_159

    .line 292
    array-length v10, v6

    add-int/2addr v10, v4

    new-array v10, v10, [B

    .line 293
    array-length v12, v2

    const/4 v13, 0x0

    invoke-static {v2, v13, v10, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    array-length v12, v6

    invoke-static {v6, v13, v10, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_166

    :cond_159
    const/4 v13, 0x0

    .line 298
    array-length v10, v6

    add-int/2addr v10, v4

    new-array v10, v10, [B

    .line 300
    array-length v12, v2

    invoke-static {v2, v13, v10, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    array-length v12, v6

    invoke-static {v6, v13, v10, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_166
    const/16 v12, 0x20

    .line 307
    new-array v14, v12, [B

    const/16 v15, 0x220

    .line 309
    invoke-static {v10, v15, v14, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v12, 0x10

    .line 311
    aget-byte v13, v14, v12

    const/16 v12, 0x11

    aget-byte v15, v14, v12

    const/16 v12, 0x12

    aget-byte v1, v14, v12

    const/16 v12, 0x13

    aget-byte v14, v14, v12

    invoke-direct {v0, v13, v15, v1, v14}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->sumByte4(BBBB)I

    move-result v1

    .line 313
    array-length v12, v10

    sub-int/2addr v12, v1

    .line 315
    new-array v13, v12, [B

    .line 316
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "setZipFile\u8d77\u59cb\u4f4d\u7f6e: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    .line 318
    invoke-static {v10, v1, v13, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    array-length v1, v6

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v1

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "setZipFile: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "\u6570\u636e\u5bf9\u6bd4"

    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x10

    add-int/2addr v8, v6

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 324
    invoke-static {v1, v14, v10, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v24, v24, v9

    add-int/lit8 v8, v24, 0x10

    .line 327
    invoke-static {v1, v14, v10, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    .line 328
    new-array v8, v1, [B

    const/16 v13, 0x220

    .line 330
    invoke-static {v10, v13, v8, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    aget-byte v1, v8, v6

    const/16 v6, 0x11

    aget-byte v13, v8, v6

    const/16 v6, 0x12

    aget-byte v14, v8, v6

    const/16 v6, 0x13

    aget-byte v8, v8, v6

    invoke-direct {v0, v1, v13, v14, v8}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->sumByte4(BBBB)I

    move-result v1

    .line 334
    array-length v6, v10

    sub-int/2addr v6, v1

    .line 336
    new-array v8, v6, [B

    const/4 v13, 0x0

    .line 338
    invoke-static {v10, v1, v8, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    move-object/from16 v21, v5

    const/16 v14, 0x20

    .line 344
    new-array v5, v14, [B

    move/from16 v22, v7

    const/16 v7, 0x200

    .line 346
    invoke-static {v10, v7, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0x10

    .line 348
    aget-byte v7, v5, v7

    const/16 v13, 0x11

    aget-byte v13, v5, v13

    const/16 v14, 0x12

    aget-byte v14, v5, v14

    move/from16 v20, v11

    const/16 v16, 0x13

    aget-byte v11, v5, v16

    invoke-direct {v0, v7, v13, v14, v11}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->sumByte4(BBBB)I

    move-result v7

    const/16 v11, 0x14

    .line 350
    aget-byte v11, v5, v11

    const/16 v13, 0x15

    aget-byte v13, v5, v13

    aget-byte v14, v5, v18

    aget-byte v5, v5, v19

    invoke-direct {v0, v11, v13, v14, v5}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->sumByte4(BBBB)I

    move-result v5

    .line 352
    new-array v11, v5, [B

    const/4 v13, 0x0

    .line 354
    invoke-static {v10, v7, v11, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    invoke-static {v11}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/keephealth/android/ui/device/fragment/DigitalTrans;->AsciiStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 359
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    .line 361
    invoke-virtual {v1, v8}, Ljava/util/zip/CRC32;->update([B)V

    move v14, v9

    .line 363
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray2(I)[B

    move-result-object v8

    .line 364
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u68c0\u9a8c\u4f4d\u6570\u636ebin"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 367
    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString2([B)Ljava/lang/String;

    move-result-object v2

    .line 369
    const-string v3, "<file_size>"

    const-string v9, "</file_size>"

    invoke-static {v11, v3, v9, v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    const-string v9, "<orig_size>"

    move/from16 v18, v14

    const-string v14, "</orig_size>"

    invoke-static {v3, v9, v14, v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    const-string v9, "<checksum>"

    const-string v14, "</checksum>"

    invoke-static {v3, v9, v14, v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 375
    array-length v9, v3

    const/4 v14, 0x0

    invoke-static {v3, v14, v10, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "setZipFile:xml\u6570\u636e\u957f\u5ea6 "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v9, v3

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "\u68c0\u9a8c\u4f4d\u6570\u636e"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v5

    const/16 v6, 0x234

    .line 382
    array-length v9, v5

    const/4 v14, 0x0

    invoke-static {v5, v14, v10, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x23c

    .line 388
    array-length v6, v8

    invoke-static {v8, v14, v10, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v13

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u68c0\u9a8c\u4f4d\u6570\u636eres"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    array-length v5, v3

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v5

    .line 396
    iget-object v8, v0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "xml\u6587\u4ef6\u957f\u5ea6setZipFile: "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v3

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x214

    .line 398
    array-length v9, v5

    const/4 v13, 0x0

    invoke-static {v5, v13, v10, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    array-length v3, v3

    new-array v5, v3, [B

    .line 401
    invoke-static {v10, v7, v5, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    invoke-virtual {v1, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 405
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v3, v8

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v3

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "\u68c0\u9a8c\u4f4d\u6570\u636exml"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    const/16 v5, 0x21c

    .line 409
    array-length v8, v3

    const/4 v9, 0x0

    invoke-static {v3, v9, v10, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v7, -0x8

    .line 413
    new-array v5, v3, [B

    const/16 v8, 0x8

    .line 415
    invoke-static {v10, v8, v5, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "\u68c0\u9a8c\u4f4d\u6570\u636e\u5f00\u59cb\u5934\u6587\u4ef6"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v1, v5}, Ljava/util/zip/CRC32;->update([B)V

    .line 419
    invoke-static {v9, v5}, Lcom/keephealth/android/ui/device/fragment/CRC32Utils;->calculateCRC32(I[B)J

    move-result-wide v13

    move-object v3, v10

    .line 422
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    long-to-int v5, v9

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v5

    .line 424
    array-length v8, v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v5, v10, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "toHexString: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v16

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bt_watch_save.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v3, v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->saveByteArrayToFile([BLjava/lang/String;)V

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v17

    array-length v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " == "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v7, v22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u62f7\u8d1d\u5230\u6c99\u76d2\u8def\u5f84: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object/from16 v5, p1

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u89e3\u538b\u540e\u8def\u5f84:"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "selectedFilePath:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89e3\u538b\u540e\u8def\u5f84"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sumByte4(BBBB)I
    .registers 5

    .line 456
    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    invoke-static {p2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p2

    mul-int/lit16 p2, p2, 0x100

    add-int/2addr p1, p2

    invoke-static {p3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p2

    const/high16 p3, 0x10000

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    invoke-static {p4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p2

    const/high16 p3, 0x1000000

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    return p1
.end method

.method private static uriToFileApiQ(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

    .line 469
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 470
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_70

    .line 471
    :cond_16
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p1

    .line 474
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 475
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 476
    const-string v3, "_display_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    :try_start_41
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/FileInputStream;

    .line 479
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/keephealth/android/ui/device/fragment/FileUtils;->copyFile(Ljava/io/FileInputStream;Ljava/lang/String;)Z
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_60} :catch_6b

    .line 483
    :try_start_60
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 484
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_66} :catch_68

    move-object p0, v0

    goto :goto_70

    :catch_68
    move-exception p0

    move-object v1, v0

    goto :goto_6c

    :catch_6b
    move-exception p0

    .line 486
    :goto_6c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6f
    move-object p0, v1

    .line 490
    :goto_70
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c002f

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_97

    if-eqz p3, :cond_97

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 174
    invoke-static {p0, p2}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->uriToFileApiQ(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    .line 175
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->tvZip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->readFirmware(Ljava/lang/String;)[B

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/UnzipUtility;->unzipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/actions_watch_face/bt_watch.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_bin_path:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/actions_watch_face/bt_watch.res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_res_path:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/actions_watch_face/bt_watch.sty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->bt_watch_sty_path:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->setZipFile(Ljava/lang/String;Ljava/io/File;)V

    :cond_97
    const/16 p2, 0x66

    if-ne p1, p2, :cond_c2

    if-eqz p3, :cond_c2

    .line 193
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->uriToFileApiQ(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFileIconPath:Ljava/lang/String;

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onActivityResult: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFileIconPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u89e3\u538b"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->selectedFileIconPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->setIcon(Ljava/lang/String;)V

    :cond_c2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 61
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/\u5fae\u4fe1\u56fe\u7247_20240514143730.jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->pathZip:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->path:Ljava/lang/String;

    const p1, 0x7f090097

    .line 66
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->btZip:Landroid/widget/Button;

    const p1, 0x7f09071d

    .line 67
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->tvZip:Landroid/widget/TextView;

    const p1, 0x7f090096

    .line 68
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->btReplace:Landroid/widget/Button;

    .line 70
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->initListener()V

    .line 71
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->checkPermission()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_13

    const/4 p1, 0x0

    .line 159
    aget p1, p3, p1

    if-nez p1, :cond_13

    .line 160
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomTextQ32Activity;->TAG:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method
