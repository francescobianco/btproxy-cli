.class public Lcom/keephealth/android/persenter/mine/FeedBackPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "FeedBackPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/mine/FeedBackContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/mine/FeedBackContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/mine/FeedBackContract$Presenter;"
    }
.end annotation


# instance fields
.field requestBody:Lokhttp3/RequestBody;

.field saveFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method private compressImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/io/File;
    .registers 8

    .line 172
    const-string v0, "compressImage"

    const-string v1, "ggee23"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 174
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 175
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "baos\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   bitmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_b9

    .line 182
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 184
    :goto_4b
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    const/16 v4, 0x200

    if-le v2, v4, :cond_6b

    .line 185
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v3, v3, -0xa

    .line 187
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v2, v3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    .line 189
    const-string v2, "\u6bcf\u6b21\u90fd\u51cf\u5c1110"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 192
    :cond_6b
    :try_start_6b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_70} :catch_99

    .line 194
    :try_start_70
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 195
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7d} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_7d} :catch_99

    goto :goto_af

    :catch_7e
    move-exception p1

    .line 198
    :try_start_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException_e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_98
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_98} :catch_99

    goto :goto_af

    :catch_99
    move-exception p1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileNotFoundException_e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_af
    const/4 p1, 0x1

    .line 205
    new-array p1, p1, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-direct {p0, p1}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->recycleBitmap([Landroid/graphics/Bitmap;)V

    goto :goto_be

    .line 207
    :cond_b9
    const-string p1, "bitmap == null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    return-object v0
.end method

.method private getImage(Ljava/lang/String;)Ljava/io/File;
    .registers 8

    .line 144
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 146
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 148
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 150
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_21

    int-to-float v4, v2

    const/high16 v5, 0x44340000    # 720.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_21

    .line 157
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_1f
    float-to-int v2, v2

    goto :goto_30

    :cond_21
    if-ge v2, v3, :cond_2f

    int-to-float v2, v3

    const/high16 v3, 0x44b40000    # 1440.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2f

    .line 159
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    goto :goto_1f

    :cond_2f
    move v2, v1

    :goto_30
    if-gtz v2, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    .line 163
    :goto_34
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 165
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "srcPath\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ggee23"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u91cd\u65b0\u8bfb\u5165\u56fe\u7247\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v0, p1}, Lcom/keephealth/android/util/OrientationAngle;->getOrientationAngle(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->compressImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private varargs recycleBitmap([Landroid/graphics/Bitmap;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 216
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p1, v1

    if-eqz v2, :cond_14

    .line 217
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_14

    .line 218
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method


# virtual methods
.method public uploadFeedbackInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public uploadFeedbackInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    if-eqz v0, :cond_b

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/FeedBackContract$View;->showLoadingFalse()V

    .line 51
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"feedbackContent\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/Base64Encode;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"contactWay\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\",\"picFile\":\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\",\"encodeType\":\"base64\",\"attachFile\":\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\"}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "jsonStr:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "trtr5t"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u5185\u5bb9\u89e3\u7801:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/Base64Encode;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/Base64Encode;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u5185\u5bb9\u89e3\u7801\u53bb\u7a7a\u683c:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/Base64Encode;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/Base64Encode;->base64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$1;-><init>(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/UserHttp;->uploadFeedbackInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public uploadFile(Ljava/io/File;I)V
    .registers 8

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  file.getName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trtr5t"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 91
    const-string v2, "file"

    if-ne p2, v0, :cond_59

    .line 92
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/*"

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->requestBody:Lokhttp3/RequestBody;

    goto :goto_7c

    .line 96
    :cond_59
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "*/*"

    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->requestBody:Lokhttp3/RequestBody;

    .line 100
    :goto_7c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "requestBody:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/FeedBackPresenter;->requestBody:Lokhttp3/RequestBody;

    new-instance v1, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/keephealth/android/persenter/mine/FeedBackPresenter$2;-><init>(Lcom/keephealth/android/persenter/mine/FeedBackPresenter;Ljava/io/File;I)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/FileHttp;->uploadFileImage(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
