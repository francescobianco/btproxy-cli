.class public Lcom/keephealth/android/util/image/SDCardImageLoader;
.super Ljava/lang/Object;
.source "SDCardImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;
    }
.end annotation


# static fields
.field private static imageLoader:Lcom/keephealth/android/util/image/SDCardImageLoader;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private imageCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private screenH:I

.field private screenW:I


# direct methods
.method private constructor <init>(II)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 24
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->handler:Landroid/os/Handler;

    .line 40
    iput p1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->screenW:I

    .line 41
    iput p2, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->screenH:I

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide p1

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 45
    div-int/lit8 p1, p1, 0x8

    .line 48
    new-instance p2, Lcom/keephealth/android/util/image/SDCardImageLoader$1;

    invoke-direct {p2, p0, p1}, Lcom/keephealth/android/util/image/SDCardImageLoader$1;-><init>(Lcom/keephealth/android/util/image/SDCardImageLoader;I)V

    iput-object p2, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/image/SDCardImageLoader;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->screenW:I

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/image/SDCardImageLoader;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->screenH:I

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/image/SDCardImageLoader;)Landroidx/collection/LruCache;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/image/SDCardImageLoader;)Landroid/os/Handler;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final caculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    .line 151
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 152
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-eqz p1, :cond_21

    if-nez p2, :cond_a

    goto :goto_21

    :cond_a
    if-gt v0, p2, :cond_e

    if-le p0, p1, :cond_21

    :cond_e
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 156
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 157
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_20

    move v1, p2

    goto :goto_21

    :cond_20
    move v1, p0

    :cond_21
    :goto_21
    return v1
.end method

.method public static final compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 169
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 171
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 172
    invoke-static {v0, p1, p2}, Lcom/keephealth/android/util/image/SDCardImageLoader;->caculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 174
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/keephealth/android/util/image/SDCardImageLoader;
    .registers 3

    .line 32
    sget-object v0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageLoader:Lcom/keephealth/android/util/image/SDCardImageLoader;

    if-nez v0, :cond_1b

    .line 33
    new-instance v0, Lcom/keephealth/android/util/image/SDCardImageLoader;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 34
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/util/image/SDCardImageLoader;-><init>(II)V

    sput-object v0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageLoader:Lcom/keephealth/android/util/image/SDCardImageLoader;

    .line 36
    :cond_1b
    sget-object v0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageLoader:Lcom/keephealth/android/util/image/SDCardImageLoader;

    return-object v0
.end method

.method private loadDrawable(ILjava/lang/String;Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;)Landroid/graphics/Bitmap;
    .registers 6

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 60
    iget-object p1, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;

    invoke-virtual {p1, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    .line 64
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/keephealth/android/util/image/SDCardImageLoader$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/keephealth/android/util/image/SDCardImageLoader$2;-><init>(Lcom/keephealth/android/util/image/SDCardImageLoader;Ljava/lang/String;ILcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 215
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/image/SDCardImageLoader;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public compressBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    .line 180
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 183
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 184
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 185
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 188
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    div-int/2addr v2, v4

    .line 189
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    div-int/2addr v3, v4

    const/4 v4, 0x0

    if-le v2, v3, :cond_26

    move v5, v1

    goto :goto_27

    :cond_26
    move v5, v4

    :goto_27
    if-lt v3, v1, :cond_2b

    move v6, v1

    goto :goto_2c

    :cond_2b
    move v6, v4

    :goto_2c
    and-int/2addr v5, v6

    if-eqz v5, :cond_31

    move v5, v2

    goto :goto_32

    :cond_31
    move v5, v1

    :goto_32
    if-le v3, v2, :cond_36

    move v6, v1

    goto :goto_37

    :cond_36
    move v6, v4

    :goto_37
    if-lt v2, v1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v4

    :goto_3b
    and-int/2addr v1, v6

    if-eqz v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v3, v5

    .line 199
    :goto_40
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 201
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 202
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public loadImage(ILjava/lang/String;Landroid/widget/ImageView;)V
    .registers 5

    .line 125
    new-instance v0, Lcom/keephealth/android/util/image/SDCardImageLoader$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/keephealth/android/util/image/SDCardImageLoader$3;-><init>(Lcom/keephealth/android/util/image/SDCardImageLoader;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/keephealth/android/util/image/SDCardImageLoader;->loadDrawable(ILjava/lang/String;Lcom/keephealth/android/util/image/SDCardImageLoader$ImageCallback;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 138
    invoke-virtual {p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 139
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1f

    :cond_19
    const p1, 0x7f0d0051

    .line 142
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public removeBitmapFromMemoryCache(Ljava/lang/String;)V
    .registers 3

    .line 227
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/image/SDCardImageLoader;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/util/image/SDCardImageLoader;->imageCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method
