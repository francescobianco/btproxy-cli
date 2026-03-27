.class public final Lcom/keephealth/android/views/gallery/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/util/BitmapUtil$Compressor;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x10000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateScaling(Landroid/graphics/BitmapFactory$Options;IIZ)Landroid/graphics/BitmapFactory$Options;
    .registers 8

    .line 209
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 210
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p1, :cond_9

    if-gt v1, p2, :cond_9

    return-object p0

    :cond_9
    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    int-to-float p2, v0

    int-to-float p1, p1

    div-float p1, p2, p1

    .line 216
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double v0, p1

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 221
    iput v0, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz p3, :cond_48

    int-to-float p3, v0

    div-float p3, p2, p3

    div-float/2addr p2, p1

    const/16 p1, 0x3e8

    .line 228
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p3, p2

    mul-float/2addr p3, p1

    float-to-double p1, p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v2

    double-to-int p1, p1

    .line 229
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 232
    iget p1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq p1, p2, :cond_43

    .line 233
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_48

    :cond_43
    const/4 p1, 0x0

    .line 235
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_48
    :goto_48
    return-object p0
.end method

.method public static createOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 1

    .line 40
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method public static decodeBitmap(Ljava/io/File;II[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v0, 0x0

    .line 92
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 p0, 0x10000

    if-nez p3, :cond_e

    move v3, p0

    goto :goto_f

    .line 93
    :cond_e
    array-length v3, p3

    :goto_f
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_58

    if-nez p4, :cond_19

    .line 100
    invoke-static {}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->createOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object p4

    goto :goto_1c

    .line 102
    :cond_19
    invoke-static {p4}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    :goto_1c
    const/4 v2, 0x1

    .line 105
    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/high16 v3, 0x500000

    .line 109
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 110
    invoke-static {v1, v0, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 114
    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_49

    .line 123
    invoke-static {p4, p1, p2, p5}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->calculateScaling(Landroid/graphics/BitmapFactory$Options;IIZ)Landroid/graphics/BitmapFactory$Options;

    if-nez p3, :cond_32

    .line 127
    new-array p3, p0, [B

    .line 128
    :cond_32
    iput-object p3, p4, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 131
    iput-boolean v3, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 132
    invoke-static {v1, v0, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 135
    new-array p3, v2, [Ljava/io/Closeable;

    aput-object v1, p3, v3

    invoke-static {p3}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 137
    invoke-static {p4}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 140
    invoke-static {p0, p1, p2, v2}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_49
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v1, p0, v3

    invoke-static {p0}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 118
    invoke-static {p4}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    return-object v0

    :catch_58
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 76
    invoke-static {}, Lcom/keephealth/android/views/gallery/util/BitmapUtil;->createOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x1

    .line 77
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 78
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 79
    iget-object p0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 80
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 53
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 54
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 55
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 57
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 58
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 59
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 60
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 61
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 65
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_c

    goto :goto_2a

    .line 157
    :cond_c
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 159
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 160
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    .line 161
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p2, :cond_29

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_29
    return-object p1

    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 6

    .line 178
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 179
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, p1, :cond_c

    if-le v1, p2, :cond_25

    :cond_c
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 183
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr v0, p1

    float-to-int p2, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v0, 0x0

    .line 185
    invoke-static {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p3, :cond_24

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_24
    move-object p0, p1

    :cond_25
    return-object p0
.end method
