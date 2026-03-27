.class public Lcom/keephealth/android/util/ConvertUtil;
.super Ljava/lang/Object;
.source "ConvertUtil.java"


# static fields
.field public static final BYTE:I = 0x1

.field public static final GB:I = 0x40000000

.field public static final KB:I = 0x400

.field public static final MB:I = 0x100000

.field static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 52
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/keephealth/android/util/ConvertUtil;->hexDigits:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

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

.method public static RGB888ToRGB565(I)I
    .registers 3

    shr-int/lit8 v0, p0, 0x13

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0xb

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 11

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v9, v0, [I

    .line 384
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 385
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array p0, v1, [B

    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_42

    .line 387
    aget v2, v9, v1

    invoke-static {v2}, Lcom/keephealth/android/util/ConvertUtil;->RGB888ToRGB565(I)I

    move-result v2

    int-to-short v2, v2

    mul-int/lit8 v3, v1, 0x2

    .line 388
    invoke-static {v2, p0, v3}, Lcom/keephealth/android/util/ConvertUtil;->shortToByteArray1(S[BI)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_42
    return-object p0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 374
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 375
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 376
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmap2Drawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 429
    :cond_4
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static byte2FitSize(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 191
    const-string p0, "shouldn\'t be less than zero!"

    return-object p0

    :cond_9
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_21

    .line 193
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.3fB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_3d

    .line 195
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.3fKB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_59

    .line 197
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.3fMB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :cond_59
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.3fGB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byte2Size(JLcom/keephealth/android/app/Constant$MemoryUnit;)D
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-wide/high16 p0, -0x4010000000000000L    # -1.0

    return-wide p0

    .line 146
    :cond_9
    sget-object v0, Lcom/keephealth/android/util/ConvertUtil$1;->$SwitchMap$com$keephealth$android$app$Constant$MemoryUnit:[I

    invoke-virtual {p2}, Lcom/keephealth/android/app/Constant$MemoryUnit;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_27

    const/4 v0, 0x3

    if-eq p2, v0, :cond_23

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1f

    long-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1d
    div-double/2addr p0, v0

    return-wide p0

    :cond_1f
    long-to-double p0, p0

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    goto :goto_1d

    :cond_23
    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    goto :goto_1d

    :cond_27
    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    goto :goto_1d
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p0, :cond_d

    .line 408
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static bytes2Chars([B)[C
    .registers 5

    .line 128
    array-length v0, p0

    .line 129
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    .line 131
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public static bytes2Drawable(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 451
    invoke-static {p1}, Lcom/keephealth/android/util/ConvertUtil;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ConvertUtil;->bitmap2Drawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .registers 8

    .line 63
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    .line 64
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_23

    add-int/lit8 v3, v2, 0x1

    .line 65
    sget-object v4, Lcom/keephealth/android/util/ConvertUtil;->hexDigits:[C

    aget-byte v5, p0, v1

    ushr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v4, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v5, v5, 0xf

    .line 66
    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 68
    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static bytes2InputStream([B)Ljava/io/InputStream;
    .registers 2

    .line 263
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static bytes2OutputStream([B)Ljava/io/OutputStream;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 287
    :try_start_8
    invoke-virtual {v3, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_13
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 293
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v3

    :catch_13
    move-exception p0

    goto :goto_19

    :catchall_15
    move-exception p0

    goto :goto_26

    :catch_17
    move-exception p0

    move-object v3, v2

    .line 290
    :goto_19
    :try_start_19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_24

    .line 293
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v2

    :catchall_24
    move-exception p0

    move-object v2, v3

    :goto_26
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 294
    throw p0
.end method

.method public static chars2Bytes([C)[B
    .registers 5

    .line 113
    array-length v0, p0

    .line 114
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_e

    .line 116
    aget-char v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object v1
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 2

    .line 482
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 418
    :cond_4
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;)[B
    .registers 2

    .line 440
    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/ConvertUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object p0

    return-object p0
.end method

.method private static hex2Dec(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_15

    const/16 v0, 0x46

    if-gt p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x37

    return p0

    .line 102
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .registers 7

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 81
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_b

    goto :goto_1a

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    shr-int/lit8 v1, v0, 0x1

    .line 83
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v0, :cond_42

    shr-int/lit8 v3, v2, 0x1

    .line 85
    aget-char v4, p0, v2

    invoke-static {v4}, Lcom/keephealth/android/util/ConvertUtil;->hex2Dec(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ConvertUtil;->hex2Dec(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_27

    :cond_42
    return-object v1
.end method

.method public static input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    .line 213
    new-array v5, v4, [B

    .line 215
    :goto_f
    invoke-virtual {p0, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1a

    .line 216
    invoke-virtual {v3, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_19} :catch_33
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_19} :catch_2b
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    goto :goto_f

    .line 224
    :cond_1a
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v3

    :catchall_22
    move-exception v0

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 225
    throw v0

    .line 224
    :catch_2b
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v0

    :catch_33
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static inputStream2Bytes(Ljava/io/InputStream;)[B
    .registers 2

    const/4 v0, 0x0

    .line 247
    :try_start_1
    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    return-object v0
.end method

.method public static inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 305
    invoke-static {p1}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_18

    .line 307
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->inputStream2Bytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_18
    :goto_18
    return-object v0
.end method

.method public static outputStream2Bytes(Ljava/io/OutputStream;)[B
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 274
    :cond_4
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static outputStream2String(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 341
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->outputStream2Bytes(Ljava/io/OutputStream;)[B

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    :catch_e
    move-exception p0

    .line 343
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .registers 2

    .line 494
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .registers 2

    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static shortToByteArray1(S[BI)I
    .registers 4

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 393
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 394
    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method public static size2Byte(JLcom/keephealth/android/app/Constant$MemoryUnit;)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-wide/16 p0, -0x1

    return-wide p0

    .line 169
    :cond_9
    sget-object v0, Lcom/keephealth/android/util/ConvertUtil$1;->$SwitchMap$com$keephealth$android$app$Constant$MemoryUnit:[I

    invoke-virtual {p2}, Lcom/keephealth/android/app/Constant$MemoryUnit;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_24

    const/4 v0, 0x3

    if-eq p2, v0, :cond_20

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1b

    return-wide p0

    :cond_1b
    const-wide/32 v0, 0x40000000

    :goto_1e
    mul-long/2addr p0, v0

    return-wide p0

    :cond_20
    const-wide/32 v0, 0x100000

    goto :goto_1e

    :cond_24
    const-wide/16 v0, 0x400

    goto :goto_1e
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .registers 2

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static string2InputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 322
    invoke-static {p1}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_18

    .line 324
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_18
    :goto_18
    return-object v0
.end method

.method public static string2OutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 356
    invoke-static {p1}, Lcom/keephealth/android/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_17

    .line 358
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/ConvertUtil;->bytes2OutputStream([B)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_17
    :goto_17
    return-object v0
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 462
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 463
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 466
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_25

    :cond_21
    const/4 v2, -0x1

    .line 468
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 470
    :goto_25
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method


# virtual methods
.method public output2InputStream(Ljava/io/OutputStream;)Ljava/io/ByteArrayInputStream;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 236
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
