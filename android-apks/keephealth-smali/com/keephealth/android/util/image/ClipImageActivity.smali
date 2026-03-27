.class public Lcom/keephealth/android/util/image/ClipImageActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "ClipImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    }
.end annotation


# static fields
.field private static final TARGET_HEIGHT:I = 0x182

.field private static final TARGET_WIDTH:I = 0x140

.field private static bitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

.field private mDegree:I

.field private mInput:Ljava/lang/String;

.field private mMaxWidth:I

.field private mOutput:Ljava/lang/String;

.field private mSampleSize:I

.field private mSourceHeight:I

.field private mSourceWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/image/ClipImageActivity;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/util/image/ClipImageActivity;)Landroid/graphics/Bitmap;
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageActivity;->createClippedBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/image/ClipImageActivity;)Lcom/keephealth/android/util/image/ClipImageView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I

    return p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/util/image/ClipImageActivity;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I

    return p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/util/image/ClipImageActivity;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/keephealth/android/util/image/ClipImageActivity;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/image/ClipImageActivity;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I

    return p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/util/image/ClipImageActivity;I)I
    .registers 2

    .line 49
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I

    return p1
.end method

.method static synthetic access$800(II)I
    .registers 2

    .line 49
    invoke-static {p0, p1}, Lcom/keephealth/android/util/image/ClipImageActivity;->findBestSample(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mOutput:Ljava/lang/String;

    return-object p0
.end method

.method private clipImage()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mOutput:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 326
    new-instance v0, Lcom/keephealth/android/util/image/ClipImageActivity$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/image/ClipImageActivity$3;-><init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V

    const/4 v1, 0x0

    .line 351
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_13

    .line 353
    :cond_10
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageActivity;->finish()V

    :goto_13
    return-void
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5e

    .line 218
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5e

    :cond_a
    const/16 v1, 0x438

    .line 224
    invoke-static {p0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 226
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    :try_start_15
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v2, 0x5a

    .line 231
    :goto_1e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    if-le v4, v3, :cond_36

    const/16 v4, 0x32

    if-le v2, v4, :cond_36

    .line 232
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 233
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    add-int/lit8 v2, v2, -0x5

    goto :goto_1e

    .line 237
    :cond_36
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 240
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 243
    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 244
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 245
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_52} :catch_53

    return-object v2

    :catch_53
    move-exception p0

    .line 252
    const-string v1, "\u56fe\u7247\u538b\u7f29\u5f02\u5e38"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 219
    :cond_5e
    :goto_5e
    const-string p0, "\u56fe\u7247\u538b\u7f29"

    const-string v1, "\u4f20\u5165\u56fe\u7247\u65e0\u6548\uff0c\u8df3\u8fc7\u538b\u7f29"

    invoke-static {p0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createClippedBitmap()Landroid/graphics/Bitmap;
    .registers 14

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageView;->getClipMatrixValues()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 364
    aget v2, v0, v1

    const/4 v3, 0x2

    .line 365
    aget v3, v0, v3

    const/4 v4, 0x5

    .line 366
    aget v0, v0, v4

    .line 369
    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v4}, Lcom/keephealth/android/util/image/ClipImageView;->getClipBorder()Landroid/graphics/Rect;

    move-result-object v4

    neg-float v3, v3

    .line 370
    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    iget v5, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    neg-float v0, v0

    .line 371
    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v2

    iget v5, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    .line 372
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 373
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I

    int-to-float v2, v2

    mul-float/2addr v4, v2

    .line 376
    new-instance v2, Landroid/graphics/RectF;

    add-float v6, v3, v5

    add-float/2addr v4, v0

    invoke-direct {v2, v3, v0, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 377
    invoke-direct {p0, v2}, Lcom/keephealth/android/util/image/ClipImageActivity;->getRealRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v0

    .line 379
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 380
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 382
    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 384
    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mMaxWidth:I

    if-lez v3, :cond_74

    int-to-float v4, v3

    cmpl-float v4, v5, v4

    if-lez v4, :cond_74

    float-to-int v4, v5

    .line 385
    invoke-static {v4, v3}, Lcom/keephealth/android/util/image/ClipImageActivity;->findBestSample(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 387
    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mMaxWidth:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    div-float/2addr v3, v5

    .line 388
    invoke-virtual {v11, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_74
    const/4 v3, 0x0

    .line 394
    :try_start_75
    iget-object v4, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    .line 395
    invoke-virtual {v3, v0, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 396
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageActivity;->recycleImageViewBitmap()V

    .line 397
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_91} :catch_9f
    .catchall {:try_start_75 .. :try_end_91} :catchall_9d

    if-eqz v3, :cond_9c

    .line 401
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 402
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_9c
    return-object v0

    :catchall_9d
    move-exception v0

    goto :goto_b1

    .line 399
    :catch_9f
    :try_start_9f
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageView;->clip()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_9d

    if-eqz v3, :cond_b0

    .line 401
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_b0

    .line 402
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_b0
    return-object v0

    :goto_b1
    if-eqz v3, :cond_bc

    .line 401
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_bc

    .line 402
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 404
    :cond_bc
    throw v0
.end method

.method private static findBestSample(II)I
    .registers 3

    .line 288
    div-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    :goto_3
    if-le p0, p1, :cond_a

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 p0, p0, 0x2

    goto :goto_3

    :cond_a
    return v0
.end method

.method private getRealRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .registers 7

    .line 408
    iget v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_20

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int p1, p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 416
    :cond_20
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceWidth:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceWidth:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 413
    :cond_3a
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceWidth:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceHeight:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceWidth:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceHeight:I

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, p1

    float-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 410
    :cond_5c
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceHeight:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget v4, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceHeight:I

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, p1

    float-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static prepare()Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 439
    new-instance v0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;-><init>(Lcom/keephealth/android/util/image/ClipImageActivity$1;)V

    return-object v0
.end method

.method public static readPictureDegree(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 303
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 304
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 305
    const-string p0, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_28

    const/4 v1, 0x3

    if-eq p0, v1, :cond_24

    const/4 v1, 0x6

    if-eq p0, v1, :cond_21

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1e

    goto :goto_2c

    :cond_1e
    const/16 p0, 0x10e

    goto :goto_26

    :cond_21
    const/16 p0, 0x5a

    goto :goto_26

    :cond_24
    const/16 p0, 0xb4

    :goto_26
    move v0, p0

    goto :goto_2c

    :catch_28
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return v0
.end method

.method private recycleImageViewBitmap()V
    .registers 3

    .line 424
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    new-instance v1, Lcom/keephealth/android/util/image/ClipImageActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/image/ClipImageActivity$4;-><init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    if-eqz p0, :cond_30

    .line 258
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_30

    .line 260
    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 261
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, p1, :cond_16

    if-gt v1, p1, :cond_16

    return-object p0

    :cond_16
    int-to-float p1, p1

    int-to-float v0, v0

    div-float v2, p1, v0

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 268
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr v0, p1

    .line 270
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr v1, p1

    .line 271
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v1, 0x1

    .line 273
    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method private setImageAndClipParams()V
    .registers 3

    .line 102
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    new-instance v1, Lcom/keephealth/android/util/image/ClipImageActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/image/ClipImageActivity$1;-><init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 164
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    new-instance v1, Lcom/keephealth/android/util/image/ClipImageActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/image/ClipImageActivity$2;-><init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->post(Ljava/lang/Runnable;)Z

    :goto_1b
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c002a

    return v0
.end method

.method protected initView()V
    .registers 5

    .line 71
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 72
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keephealth/android/app/Constant;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 76
    :cond_13
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keephealth/android/app/Constants;->PIC_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_23
    const v0, 0x7f0900ed

    .line 80
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/image/ClipImageView;

    iput-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    .line 81
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->createFromBundle(Landroid/content/Intent;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getOutputPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mOutput:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getInputPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mMaxWidth:I

    .line 85
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getAspectX()I

    move-result v2

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getAspectY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/image/ClipImageView;->setAspect(II)V

    .line 86
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    invoke-virtual {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->getTip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/image/ClipImageView;->setTip(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mMaxWidth:I

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/image/ClipImageView;->setMaxOutputWidth(I)V

    .line 88
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle:Z
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->access$000(Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/image/ClipImageView;->setmDrawCircleFlag(Z)V

    .line 89
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageActivity;->setImageAndClipParams()V

    .line 92
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->titleBack:Landroid/widget/ImageView;

    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/util/image/ClipImageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/image/ClipImageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-keephealth-android-util-image-ClipImageActivity(Landroid/view/View;)V
    .registers 2

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick(I)Z

    move-result p1

    if-nez p1, :cond_d

    .line 96
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageActivity;->clipImage()V

    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/keephealth/android/util/image/ClipImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 435
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onBackPressed()V

    return-void
.end method
