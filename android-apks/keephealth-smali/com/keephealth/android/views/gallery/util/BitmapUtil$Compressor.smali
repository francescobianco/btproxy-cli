.class public final Lcom/keephealth/android/views/gallery/util/BitmapUtil$Compressor;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/util/BitmapUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Compressor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressImage(Ljava/io/File;JIII)Ljava/io/File;
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 246
    invoke-static/range {v0 .. v6}, Lcom/keephealth/android/views/gallery/util/BitmapUtil$Compressor;->compressImage(Ljava/io/File;JIIIZ)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static compressImage(Ljava/io/File;JIIIZ)Ljava/io/File;
    .registers 16

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    .line 252
    invoke-static/range {v0 .. v8}, Lcom/keephealth/android/views/gallery/util/BitmapUtil$Compressor;->compressImage(Ljava/io/File;JIII[BLandroid/graphics/BitmapFactory$Options;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static compressImage(Ljava/io/File;JIII[BLandroid/graphics/BitmapFactory$Options;Z)Ljava/io/File;
    .registers 20

    const/4 v1, 0x0

    if-eqz p0, :cond_c3

    .line 278
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_c3

    .line 282
    :cond_11
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "compress_%s.temp"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_41

    .line 287
    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_3b

    if-nez v2, :cond_41

    return-object v1

    :catch_3b
    move-exception v0

    move-object v2, v0

    .line 290
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :cond_41
    move-object v2, p0

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    .line 296
    invoke-static/range {v2 .. v7}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->decodeBitmap(Ljava/io/File;II[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_52

    return-object v1

    .line 301
    :cond_52
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 302
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_5d

    :cond_5b
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_5d
    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v4

    move v6, v5

    :goto_61
    const/16 v8, 0xa

    if-gt v6, v8, :cond_bc

    const/16 v8, 0x5c

    .line 312
    :goto_67
    :try_start_67
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_71} :catch_a2
    .catchall {:try_start_67 .. :try_end_71} :catchall_a0

    .line 313
    :try_start_71
    invoke-virtual {v2, v3, v8, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_9e
    .catchall {:try_start_71 .. :try_end_74} :catchall_b2

    .line 320
    new-array v10, v5, [Ljava/io/Closeable;

    aput-object v9, v10, v4

    invoke-static {v10}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v9, v9, p1

    if-gtz v9, :cond_86

    move v10, p3

    move v7, v5

    goto :goto_89

    :cond_86
    move v10, p3

    if-ge v8, v10, :cond_9b

    :goto_89
    if-eqz v7, :cond_8c

    goto :goto_bc

    :cond_8c
    const v8, 0x3e4ccccd    # 0.2f

    int-to-float v9, v6

    mul-float/2addr v9, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    .line 338
    invoke-static {v2, v8, v5}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :cond_9b
    add-int/lit8 v8, v8, -0x1

    goto :goto_67

    :catch_9e
    move-exception v0

    goto :goto_a4

    :catchall_a0
    move-exception v0

    goto :goto_b4

    :catch_a2
    move-exception v0

    move-object v9, v1

    .line 315
    :goto_a4
    :try_start_a4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 317
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_b2

    .line 320
    new-array v0, v5, [Ljava/io/Closeable;

    aput-object v9, v0, v4

    invoke-static {v0}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    return-object v1

    :catchall_b2
    move-exception v0

    move-object v1, v9

    :goto_b4
    new-array v2, v5, [Ljava/io/Closeable;

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 321
    throw v0

    .line 342
    :cond_bc
    :goto_bc
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v7, :cond_c2

    return-object v1

    :cond_c2
    return-object v0

    :cond_c3
    :goto_c3
    return-object v1
.end method
