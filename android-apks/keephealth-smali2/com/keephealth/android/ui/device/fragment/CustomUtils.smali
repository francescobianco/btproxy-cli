.class public Lcom/keephealth/android/ui/device/fragment/CustomUtils;
.super Ljava/lang/Object;
.source "CustomUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFirmware(Ljava/lang/String;)[B
    .registers 2

    .line 264
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    .line 266
    new-array p0, p0, [B

    .line 267
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    .line 268
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setWatchBin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 28

    move-object/from16 v0, p0

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/UnzipUtility;->unzipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/actions_watch_face/bt_watch.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/actions_watch_face/bt_watch.res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/actions_watch_face/bt_watch.sty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setWatchBin:11 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, p1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v3, Lcom/actions/actres/ResBuilder;

    invoke-direct {v3}, Lcom/actions/actres/ResBuilder;-><init>()V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, "/bt_watch_save.res"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/bt_watch_save.sty"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 32
    const-string v6, "SCENE_CLOCK_OTA_PUSH_VIEW"

    const-string v7, "pic_background"

    invoke-virtual/range {v3 .. v10}, Lcom/actions/actres/ResBuilder;->replacePicture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u66ff\u6362\u7ed3\u679c: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u89e3\u538b"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v2, v3, :cond_dc

    const v0, 0x7f10022c

    move-object/from16 v2, p2

    .line 39
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_dc
    move-object/from16 v2, p2

    .line 44
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->readFirmware(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v3, 0x20

    .line 53
    new-array v5, v3, [B

    const/16 v6, 0x220

    const/4 v7, 0x0

    .line 55
    invoke-static {v1, v6, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v8, 0x10

    .line 57
    aget-byte v9, v5, v8

    const/16 v10, 0x11

    aget-byte v12, v5, v10

    const/16 v13, 0x12

    aget-byte v14, v5, v13

    const/16 v15, 0x13

    aget-byte v10, v5, v15

    invoke-static {v9, v12, v14, v10}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->sumByte4(BBBB)I

    move-result v9

    const/16 v10, 0x14

    .line 59
    aget-byte v12, v5, v10

    const/16 v14, 0x15

    aget-byte v10, v5, v14

    const/16 v17, 0x16

    aget-byte v14, v5, v17

    const/16 v19, 0x17

    aget-byte v15, v5, v19

    invoke-static {v12, v10, v14, v15}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->sumByte4(BBBB)I

    move-result v10

    .line 61
    new-array v12, v10, [B

    .line 63
    invoke-static {v1, v9, v12, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v14, 0xc

    .line 65
    new-array v15, v14, [B

    const/16 v8, 0x8

    .line 66
    new-array v6, v8, [B

    move v3, v7

    move/from16 v22, v3

    move/from16 v23, v22

    :goto_126
    if-ge v3, v13, :cond_16a

    mul-int/lit8 v13, v3, 0x20

    .line 73
    invoke-static {v12, v13, v15, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-static {v12, v13, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-static {v15}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/keephealth/android/ui/device/fragment/DigitalTrans;->AsciiStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 76
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/keephealth/android/ui/device/fragment/DigitalTrans;->AsciiStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 78
    const-string v7, "bt_watch.res"

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_156

    move/from16 v22, v13

    .line 81
    :cond_156
    const-string v7, "sdfs.bin"

    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_160

    move/from16 v23, v13

    :cond_160
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v13, 0x12

    const/16 v14, 0xc

    goto :goto_126

    :cond_16a
    const/16 v3, 0x20

    .line 87
    new-array v6, v3, [B

    move/from16 v7, v22

    add-int v8, v7, v9

    const/4 v12, 0x0

    .line 88
    invoke-static {v1, v8, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0xc

    .line 90
    aget-byte v3, v6, v3

    const/16 v12, 0xd

    aget-byte v12, v6, v12

    const/16 v13, 0xe

    aget-byte v13, v6, v13

    const/16 v14, 0xf

    aget-byte v6, v6, v14

    invoke-static {v3, v12, v13, v6}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->sumByte4(BBBB)I

    move-result v3

    add-int/2addr v3, v9

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v6}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->readFirmware(Ljava/lang/String;)[B

    move-result-object v6

    .line 100
    array-length v11, v6

    add-int/2addr v11, v3

    array-length v12, v1

    if-le v11, v12, :cond_1bb

    .line 101
    array-length v11, v6

    add-int/2addr v11, v3

    new-array v11, v11, [B

    .line 102
    array-length v12, v1

    const/4 v13, 0x0

    invoke-static {v1, v13, v11, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    array-length v12, v6

    invoke-static {v6, v13, v11, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c8

    :cond_1bb
    const/4 v13, 0x0

    .line 107
    array-length v11, v6

    add-int/2addr v11, v3

    new-array v12, v11, [B

    .line 109
    invoke-static {v1, v13, v12, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    array-length v11, v6

    invoke-static {v6, v13, v12, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v12

    :goto_1c8
    const/16 v12, 0x20

    .line 115
    new-array v14, v12, [B

    const/16 v15, 0x220

    .line 117
    invoke-static {v11, v15, v14, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v12, 0x10

    .line 119
    aget-byte v13, v14, v12

    const/16 v12, 0x11

    aget-byte v15, v14, v12

    const/16 v12, 0x12

    aget-byte v2, v14, v12

    const/16 v12, 0x13

    aget-byte v14, v14, v12

    invoke-static {v13, v15, v2, v14}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->sumByte4(BBBB)I

    move-result v2

    .line 121
    array-length v12, v11

    sub-int/2addr v12, v2

    .line 123
    new-array v13, v12, [B

    .line 124
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "setZipFile\u8d77\u59cb\u4f4d\u7f6e: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 126
    invoke-static {v11, v2, v13, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    array-length v2, v6

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v2

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "setZipFile: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "\u6570\u636e\u5bf9\u6bd4"

    invoke-static {v13, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x10

    add-int/2addr v8, v6

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 132
    invoke-static {v2, v14, v11, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v23, v23, v9

    add-int/lit8 v8, v23, 0x10

    .line 135
    invoke-static {v2, v14, v11, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    .line 136
    new-array v8, v2, [B

    const/16 v13, 0x220

    .line 138
    invoke-static {v11, v13, v8, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    aget-byte v2, v8, v6

    const/16 v6, 0x11

    aget-byte v13, v8, v6

    const/16 v6, 0x12

    aget-byte v14, v8, v6

    const/16 v6, 0x13

    aget-byte v8, v8, v6

    invoke-static {v2, v13, v14, v8}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->sumByte4(BBBB)I

    move-result v2

    .line 142
    array-length v6, v11

    sub-int/2addr v6, v2

    .line 144
    new-array v8, v6, [B

    const/4 v13, 0x0

    .line 146
    invoke-static {v11, v2, v8, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v14, 0x20

    .line 152
    new-array v0, v14, [B

    move-object/from16 v21, v5

    const/16 v5, 0x200

    .line 154
    invoke-static {v11, v5, v0, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x10

    .line 156
    aget-byte v5, v0, v5

    const/16 v13, 0x11

    aget-byte v13, v0, v13

    const/16 v14, 0x12

    aget-byte v14, v0, v14

    move/from16 p1, v7

    const/16 v20, 0x13

    aget-byte v7, v0, v20

    invoke-static {v5, v13, v14, v7}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->sumByte4(BBBB)I

    move-result v5

    const/16 v7, 0x14

    .line 158
    aget-byte v7, v0, v7

    const/16 v13, 0x15

    aget-byte v13, v0, v13

    aget-byte v14, v0, v17

    aget-byte v0, v0, v19

    invoke-static {v7, v13, v14, v0}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->sumByte4(BBBB)I

    move-result v0

    .line 160
    new-array v7, v0, [B

    const/4 v13, 0x0

    .line 162
    invoke-static {v11, v5, v7, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexStringNo([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/keephealth/android/ui/device/fragment/DigitalTrans;->AsciiStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    .line 169
    invoke-virtual {v2, v8}, Ljava/util/zip/CRC32;->update([B)V

    move v14, v9

    .line 171
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray2(I)[B

    move-result-object v8

    .line 172
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v17, v3

    move-object/from16 v16, v4

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u68c0\u9a8c\u4f4d\u6570\u636ebin"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 175
    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString2([B)Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string v4, "<file_size>"

    const-string v9, "</file_size>"

    invoke-static {v7, v4, v9, v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v9, "<orig_size>"

    move/from16 v18, v14

    const-string v14, "</orig_size>"

    invoke-static {v4, v9, v14, v13}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    const-string v9, "<checksum>"

    const-string v14, "</checksum>"

    invoke-static {v4, v9, v14, v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 183
    array-length v9, v4

    const/4 v14, 0x0

    invoke-static {v4, v14, v11, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "setZipFile:xml\u6570\u636e\u957f\u5ea6 "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v9, v4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "\u68c0\u9a8c\u4f4d\u6570\u636e"

    invoke-static {v9, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v0

    const/16 v6, 0x234

    .line 190
    array-length v9, v0

    const/4 v14, 0x0

    invoke-static {v0, v14, v11, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x23c

    .line 196
    array-length v9, v8

    invoke-static {v8, v14, v11, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v14, v10

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\u68c0\u9a8c\u4f4d\u6570\u636eres"

    invoke-static {v8, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "xmlDataNew.length:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ttr56"

    invoke-static {v8, v6}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    array-length v6, v4

    invoke-static {v6}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v6

    const/16 v8, 0x214

    .line 206
    array-length v0, v0

    const/4 v9, 0x0

    invoke-static {v6, v9, v11, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    array-length v0, v4

    new-array v4, v0, [B

    .line 209
    invoke-static {v11, v5, v4, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 213
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v0

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "\u68c0\u9a8c\u4f4d\u6570\u636exml"

    invoke-static {v6, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    const/16 v4, 0x21c

    .line 217
    array-length v6, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v11, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v5, -0x8

    .line 221
    new-array v4, v0, [B

    const/16 v6, 0x8

    .line 223
    invoke-static {v11, v6, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u68c0\u9a8c\u4f4d\u6570\u636e\u5f00\u59cb\u5934\u6587\u4ef6"

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 227
    invoke-static {v8, v4}, Lcom/keephealth/android/ui/device/fragment/CRC32Utils;->calculateCRC32(I[B)J

    move-result-wide v9

    move-wide/from16 v19, v9

    .line 230
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->intToByteArray(I)[B

    move-result-object v0

    .line 232
    array-length v4, v0

    const/4 v6, 0x4

    const/4 v8, 0x0

    invoke-static {v0, v8, v11, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v8, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "toHexString: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  setZipFile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   setZipFile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-static {v2, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/bt_watch_save.bin"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v11, v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->saveByteArrayToFile([BLjava/lang/String;)V

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v7, p1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectedFilePath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89e3\u538b\u540e\u8def\u5f84"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sumByte4(BBBB)I
    .registers 4

    .line 259
    invoke-static {p0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p0

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    mul-int/lit16 p1, p1, 0x100

    add-int/2addr p0, p1

    invoke-static {p2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    const/high16 p2, 0x10000

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    invoke-static {p3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result p1

    const/high16 p2, 0x1000000

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method
