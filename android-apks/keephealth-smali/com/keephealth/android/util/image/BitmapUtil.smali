.class public Lcom/keephealth/android/util/image/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 1

    .line 175
    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 2

    .line 172
    invoke-static {p0, p1}, Lcom/keephealth/android/util/ConvertUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmap2Drawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 234
    invoke-static {p0, p1}, Lcom/keephealth/android/util/ConvertUtil;->bitmap2Drawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .registers 1

    .line 184
    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bytes2Drawable(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 256
    invoke-static {p0, p1}, Lcom/keephealth/android/util/ConvertUtil;->bytes2Drawable(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 1

    .line 194
    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 2

    .line 245
    invoke-static {p0, p1}, Lcom/keephealth/android/util/ConvertUtil;->drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .registers 1

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    div-int/lit16 p0, p0, 0x400

    div-int/lit16 p0, p0, 0x400

    return p0
.end method

.method public static getImageType(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 411
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1b
    .catchall {:try_start_6 .. :try_end_b} :catchall_19

    .line 412
    :try_start_b
    invoke-static {v3}, Lcom/keephealth/android/util/image/BitmapUtil;->getImageType(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_17
    .catchall {:try_start_b .. :try_end_f} :catchall_28

    .line 417
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object p0

    :catch_17
    move-exception p0

    goto :goto_1d

    :catchall_19
    move-exception p0

    goto :goto_2a

    :catch_1b
    move-exception p0

    move-object v3, v0

    .line 414
    :goto_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_28

    .line 417
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :catchall_28
    move-exception p0

    move-object v0, v3

    :goto_2a
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 418
    throw p0
.end method

.method public static getImageType(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x8

    .line 430
    :try_start_6
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 431
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_14

    invoke-static {v2}, Lcom/keephealth/android/util/image/BitmapUtil;->getImageType([B)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15

    :cond_14
    return-object v0

    :catch_15
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static getImageType(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 398
    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/image/BitmapUtil;->getImageType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImageType([B)Ljava/lang/String;
    .registers 2

    .line 445
    invoke-static {p0}, Lcom/keephealth/android/util/image/BitmapUtil;->isJPEG([B)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "JPEG"

    return-object p0

    .line 446
    :cond_9
    invoke-static {p0}, Lcom/keephealth/android/util/image/BitmapUtil;->isGIF([B)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "GIF"

    return-object p0

    .line 447
    :cond_12
    invoke-static {p0}, Lcom/keephealth/android/util/image/BitmapUtil;->isPNG([B)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "PNG"

    return-object p0

    .line 448
    :cond_1b
    invoke-static {p0}, Lcom/keephealth/android/util/image/BitmapUtil;->isBMP([B)Z

    move-result p0

    if-eqz p0, :cond_24

    const-string p0, "BMP"

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs getMapAndViewScreenShot(Landroid/graphics/Bitmap;Landroid/view/ViewGroup;Lcom/google/android/gms/maps/MapView;Z[Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 10

    .line 141
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 143
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2c

    move p3, v2

    move v1, p3

    .line 146
    :goto_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p3, v3, :cond_2c

    .line 147
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 148
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    .line 151
    :cond_2c
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 152
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {p2}, Lcom/google/android/gms/maps/MapView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(F)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p2}, Lcom/google/android/gms/maps/MapView;->getTop()I

    move-result p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    const/4 v1, 0x0

    invoke-virtual {p3, p0, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    array-length p0, p4

    :goto_56
    if-ge v2, p0, :cond_78

    aget-object p2, p4, v2

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_75

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p2, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 157
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3, v0, v3, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_78
    return-object p1
.end method

.method private static isBMP([B)Z
    .registers 4

    .line 473
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_13

    aget-byte v0, p0, v2

    const/16 v1, 0x42

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/16 v1, 0x4d

    if-ne p0, v1, :cond_13

    move v2, v0

    :cond_13
    return v2
.end method

.method public static isEmptyBitmap(Landroid/graphics/Bitmap;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 484
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private static isGIF([B)Z
    .registers 5

    .line 458
    array-length v0, p0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-lt v0, v1, :cond_33

    aget-byte v0, p0, v2

    const/16 v1, 0x47

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/16 v3, 0x49

    if-ne v1, v3, :cond_33

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v3, 0x46

    if-ne v1, v3, :cond_33

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v3, 0x38

    if-ne v1, v3, :cond_33

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v3, 0x37

    if-eq v1, v3, :cond_2b

    const/16 v3, 0x39

    if-ne v1, v3, :cond_33

    :cond_2b
    const/4 v1, 0x5

    aget-byte p0, p0, v1

    const/16 v1, 0x61

    if-ne p0, v1, :cond_33

    move v2, v0

    :cond_33
    return v2
.end method

.method public static isImage(Ljava/io/File;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 375
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/image/BitmapUtil;->isImage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isImage(Ljava/lang/String;)Z
    .registers 2

    .line 385
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 386
    const-string v0, ".PNG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, ".JPG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, ".JPEG"

    .line 387
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, ".BMP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, ".GIF"

    .line 388
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    :goto_30
    return p0
.end method

.method private static isJPEG([B)Z
    .registers 4

    .line 453
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_12

    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    const/16 v1, -0x28

    if-ne p0, v1, :cond_12

    move v2, v0

    :cond_12
    return v2
.end method

.method private static isPNG([B)Z
    .registers 6

    .line 465
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3c

    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_3c

    const/4 v0, 0x1

    aget-byte v1, p0, v0

    const/16 v3, 0x50

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v3, 0x4e

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v3, 0x47

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3c

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v4, 0x1a

    if-ne v1, v4, :cond_3c

    const/4 v1, 0x7

    aget-byte p0, p0, v1

    if-ne p0, v3, :cond_3c

    move v2, v0

    :cond_3c
    return v2
.end method

.method public static readBitmapFromByteArray([BII)Landroid/graphics/Bitmap;
    .registers 9

    .line 89
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 90
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    .line 93
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float p2, p2

    cmpl-float v5, v4, p2

    if-gtz v5, :cond_1d

    int-to-float v5, p1

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2d

    :cond_1d
    cmpl-float v1, v2, v4

    if-lez v1, :cond_27

    div-float/2addr v4, p2

    .line 98
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2d

    :cond_27
    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 100
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 103
    :cond_2d
    :goto_2d
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 104
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 105
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 106
    array-length p1, p0

    invoke-static {p0, v3, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static readBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 60
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 62
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 63
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    .line 64
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float p2, p2

    cmpl-float v4, v3, p2

    if-gtz v4, :cond_1b

    int-to-float v4, p1

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2b

    :cond_1b
    cmpl-float v1, v2, v3

    if-lez v1, :cond_25

    div-float/2addr v3, p2

    .line 69
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2b

    :cond_25
    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 71
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    .line 75
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 76
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 78
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 3

    const/16 v0, 0x64

    .line 282
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;I)V

    return-void
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;I)V
    .registers 4

    const/4 v0, 0x0

    .line 300
    invoke-static {p0, p1, v0, p2}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    return-void
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x64

    .line 274
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 291
    invoke-static {p0, p1, v0, p2}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    return-void
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 324
    invoke-static {p0, p1, p2, p3, v0}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result p0

    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .registers 10

    .line 350
    invoke-static {p0}, Lcom/keephealth/android/util/image/BitmapUtil;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_56

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_56

    :cond_e
    if-nez p2, :cond_12

    .line 352
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_12
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 357
    :try_start_14
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_41
    .catchall {:try_start_14 .. :try_end_1e} :catchall_3f

    .line 358
    :try_start_1e
    invoke-virtual {p0, p2, p3, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_3b
    .catchall {:try_start_1e .. :try_end_22} :catchall_38

    if-eqz p4, :cond_30

    .line 359
    :try_start_24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_30

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_2e
    .catchall {:try_start_24 .. :try_end_2d} :catchall_38

    goto :goto_30

    :catch_2e
    move-exception p0

    goto :goto_3d

    .line 363
    :cond_30
    :goto_30
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    goto :goto_4d

    :catchall_38
    move-exception p0

    move-object v2, v3

    goto :goto_4e

    :catch_3b
    move-exception p0

    move p1, v1

    :goto_3d
    move-object v2, v3

    goto :goto_43

    :catchall_3f
    move-exception p0

    goto :goto_4e

    :catch_41
    move-exception p0

    move p1, v1

    .line 361
    :goto_43
    :try_start_43
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3f

    .line 363
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    :goto_4d
    return p1

    :goto_4e
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 364
    throw p0

    :cond_56
    :goto_56
    return v1
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .registers 5

    .line 312
    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result p0

    return p0
.end method

.method public static save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;IZ)Z
    .registers 5

    .line 337
    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/image/BitmapUtil;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;IZ)Z

    move-result p0

    return p0
.end method

.method public static saveBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 4

    .line 204
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/keephealth/android/app/Constant;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 208
    :cond_10
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 210
    :try_start_16
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_2e
    .catchall {:try_start_16 .. :try_end_1b} :catchall_2c

    .line 211
    :try_start_1b
    invoke-static {p1}, Lcom/keephealth/android/util/image/BitmapUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    .line 212
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_29
    .catchall {:try_start_1b .. :try_end_22} :catchall_26

    .line 218
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_38

    goto :goto_3c

    :catchall_26
    move-exception p0

    move-object p2, v0

    goto :goto_3d

    :catch_29
    move-exception p0

    move-object p2, v0

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_3d

    :catch_2e
    move-exception p0

    .line 214
    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    if-eqz p2, :cond_3c

    .line 218
    :try_start_34
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-void

    :goto_3d
    if-eqz p2, :cond_47

    .line 218
    :try_start_3f
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    :cond_47
    :goto_47
    throw p0
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 1

    .line 266
    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
