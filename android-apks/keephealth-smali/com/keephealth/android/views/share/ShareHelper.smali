.class public Lcom/keephealth/android/views/share/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Lcom/keephealth/android/views/share/OnShareSelectListener;
.implements Lcom/keephealth/android/views/share/OnShareListener;


# static fields
.field public static final SHARE_TYEP_FACEBOOK:I = 0x2

.field public static final SHARE_TYEP_FIRENDS:I = 0x8

.field public static final SHARE_TYEP_INSTAGRAM:I = 0x4

.field public static final SHARE_TYEP_LINE:I = 0xb

.field public static final SHARE_TYEP_LINKEDIN:I = 0x5

.field public static final SHARE_TYEP_MESSENGER:I = 0xc

.field public static final SHARE_TYEP_QQ:I = 0x6

.field public static final SHARE_TYEP_SAVEDOWN:I = 0xd

.field public static final SHARE_TYEP_SKYPE:I = 0xa

.field public static final SHARE_TYEP_TWITTER:I = 0x1

.field public static final SHARE_TYEP_VK:I = 0x9

.field public static final SHARE_TYEP_WECHAT:I = 0x7

.field public static final SHARE_TYEP_WHATSAPP:I = 0x3


# instance fields
.field private activity:Landroid/app/Activity;

.field volatile isShotComplete:Z

.field private mType:I

.field private path:Ljava/lang/String;

.field private shareBirmap:Landroid/graphics/Bitmap;

.field shareDialog:Lcom/keephealth/android/views/share/ShareDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->isShotComplete:Z

    .line 314
    iput v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->mType:I

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/share/ShareHelper;)Landroid/app/Activity;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/share/ShareHelper;)Landroid/graphics/Bitmap;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/share/ShareHelper;)Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    return-object p0
.end method

.method private share(I)V
    .registers 6

    .line 316
    iput p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->mType:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_7

    goto :goto_4e

    .line 458
    :cond_7
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 461
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 462
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10050b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method private shotRefreshScrollView(Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 236
    :goto_2
    invoke-virtual {p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 237
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 238
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 240
    :cond_21
    invoke-virtual {p1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->getWidth()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private shotScrollView(Landroidx/core/widget/NestedScrollView;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 223
    :goto_2
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 224
    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 225
    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_21
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    invoke-virtual {p1, v1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method


# virtual methods
.method public varargs getViewScreenShot(Landroid/app/Activity;I[Landroid/view/View;)V
    .registers 13

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->isShotComplete:Z

    .line 276
    aget-object v1, p3, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v2, v0

    move v3, v2

    .line 280
    :goto_10
    array-length v4, p3

    if-ge v2, v4, :cond_1d

    .line 281
    aget-object v4, p3, v2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 283
    :cond_1d
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v3, v2

    .line 284
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move v3, v0

    .line 286
    :goto_2e
    array-length v4, p3

    const/4 v5, 0x1

    if-ge v3, v4, :cond_91

    .line 287
    aget-object v4, p3, v3

    .line 288
    instance-of v6, v4, Landroid/widget/ListView;

    const/4 v7, 0x0

    if-eqz v6, :cond_59

    .line 289
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 291
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 292
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v6

    sub-int v6, p2, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8e

    .line 295
    :cond_59
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-nez v3, :cond_78

    .line 298
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_8e

    .line 300
    :cond_78
    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getStatusHeight(Landroid/content/Context;)I

    move-result v8

    sub-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v2, v5, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_8e
    :goto_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 305
    :cond_91
    new-instance p2, Lcom/keephealth/android/util/AsyncTaskUtil;

    new-instance p3, Lcom/keephealth/android/views/share/ShareHelper$4;

    invoke-direct {p3, p0, p1, v1}, Lcom/keephealth/android/views/share/ShareHelper$4;-><init>(Lcom/keephealth/android/views/share/ShareHelper;Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    invoke-direct {p2, p3}, Lcom/keephealth/android/util/AsyncTaskUtil;-><init>(Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;)V

    new-array p1, v5, [Ljava/lang/String;

    const-string p3, ""

    aput-object p3, p1, v0

    .line 312
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/AsyncTaskUtil;->execute([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$shareToThirdPlateform$0$com-keephealth-android-views-share-ShareHelper(Landroid/content/DialogInterface;)V
    .registers 2

    .line 94
    iget p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->mType:I

    if-nez p1, :cond_9

    .line 95
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    :cond_9
    return-void
.end method

.method synthetic lambda$shareToThirdPlateform$1$com-keephealth-android-views-share-ShareHelper(Landroid/content/DialogInterface;)V
    .registers 3

    .line 120
    iget p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->mType:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_b

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    :cond_b
    return-void
.end method

.method synthetic lambda$shotWithMapView$2$com-keephealth-android-views-share-ShareHelper(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/MapView;Z[Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 257
    invoke-static {p5, p1, p2, p3, p4}, Lcom/keephealth/android/util/image/BitmapUtil;->getMapAndViewScreenShot(Landroid/graphics/Bitmap;Landroid/view/ViewGroup;Lcom/google/android/gms/maps/MapView;Z[Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 258
    new-instance p2, Lcom/keephealth/android/util/AsyncTaskUtil;

    new-instance p3, Lcom/keephealth/android/views/share/ShareHelper$3;

    invoke-direct {p3, p0, p1}, Lcom/keephealth/android/views/share/ShareHelper$3;-><init>(Lcom/keephealth/android/views/share/ShareHelper;Landroid/graphics/Bitmap;)V

    invoke-direct {p2, p3}, Lcom/keephealth/android/util/AsyncTaskUtil;-><init>(Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    const-string p4, ""

    aput-object p4, p1, p3

    .line 265
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/AsyncTaskUtil;->execute([Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public onCancel(I)V
    .registers 2

    .line 502
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public onComplete(I)V
    .registers 3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_9

    .line 493
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/16 v0, 0x9

    if-ne p1, v0, :cond_16

    :cond_10
    const p1, 0x7f100545

    .line 496
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :cond_16
    return-void
.end method

.method public onError(I)V
    .registers 2

    .line 487
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public onShareSelect(I)V
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/keephealth/android/util/NetUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 474
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/share/ShareHelper;->share(I)V

    goto :goto_12

    :cond_c
    const p1, 0x7f10033b

    .line 476
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(I)V

    :goto_12
    return-void
.end method

.method public shareToThirdPlateform(Landroid/view/View;)V
    .registers 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/keephealth/android/app/Constants;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zhihuiju_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 85
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10033b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 88
    :cond_3c
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/keephealth/android/views/share/ShareDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_47

    return-void

    .line 91
    :cond_47
    new-instance v0, Lcom/keephealth/android/views/share/ShareDialog;

    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/share/ShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    .line 92
    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/share/ShareDialog;->setListener(Lcom/keephealth/android/views/share/OnShareSelectListener;)V

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    new-instance v1, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/views/share/ShareHelper;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/share/ShareDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_68

    .line 99
    const-string v0, "1111111111111112"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/share/ShareHelper;->shot(Landroid/view/View;)Landroid/graphics/Bitmap;

    goto :goto_70

    .line 102
    :cond_68
    const-string p1, "1111111111111113"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/keephealth/android/views/share/ShareHelper;->shot()V

    .line 106
    :goto_70
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/share/ShareDialog;->show()V

    return-void
.end method

.method public varargs shareToThirdPlateform(Lcom/google/android/gms/maps/MapView;Lcom/google/android/gms/maps/GoogleMap;Landroid/view/ViewGroup;Z[Landroid/view/View;)V
    .registers 9

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/keephealth/android/app/Constants;->APP_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/zhihuiju_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/keephealth/android/util/NetUtils;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10033b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_3c
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/keephealth/android/views/share/ShareDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_47

    return-void

    .line 117
    :cond_47
    new-instance v0, Lcom/keephealth/android/views/share/ShareDialog;

    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/share/ShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    .line 118
    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/share/ShareDialog;->setListener(Lcom/keephealth/android/views/share/OnShareSelectListener;)V

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    new-instance v1, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/views/share/ShareHelper;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/share/ShareDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 124
    invoke-virtual/range {p0 .. p5}, Lcom/keephealth/android/views/share/ShareHelper;->shotWithMapView(Lcom/google/android/gms/maps/MapView;Lcom/google/android/gms/maps/GoogleMap;Landroid/view/ViewGroup;Z[Landroid/view/View;)V

    .line 126
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareDialog:Lcom/keephealth/android/views/share/ShareDialog;

    invoke-virtual {p1}, Lcom/keephealth/android/views/share/ShareDialog;->show()V

    return-void
.end method

.method public shot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->isShotComplete:Z

    .line 196
    const-string v1, "111111111111111222"

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 197
    instance-of v1, p1, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_1a

    .line 198
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/share/ShareHelper;->shotScrollView(Landroidx/core/widget/NestedScrollView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    goto :goto_2d

    .line 199
    :cond_1a
    instance-of v1, p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;

    if-eqz v1, :cond_27

    .line 200
    check-cast p1, Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/share/ShareHelper;->shotRefreshScrollView(Lcom/keephealth/android/views/pullscrollview/PullToRefreshScrollView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    goto :goto_2d

    .line 202
    :cond_27
    invoke-static {p1}, Lcom/keephealth/android/util/image/BitmapUtil;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    .line 204
    :goto_2d
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_37

    .line 205
    const-string p1, "shareBirmap is null"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_3c

    .line 207
    :cond_37
    const-string p1, "shareBirmap is not null"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 209
    :goto_3c
    new-instance p1, Lcom/keephealth/android/util/AsyncTaskUtil;

    new-instance v1, Lcom/keephealth/android/views/share/ShareHelper$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/share/ShareHelper$2;-><init>(Lcom/keephealth/android/views/share/ShareHelper;)V

    invoke-direct {p1, v1}, Lcom/keephealth/android/util/AsyncTaskUtil;-><init>(Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 216
    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/AsyncTaskUtil;->execute([Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public shot()V
    .registers 5

    .line 169
    const-string v0, "1111111111111113333"

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->isShotComplete:Z

    .line 172
    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/views/share/ShareHelper;->shareBirmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1d

    .line 174
    const-string v1, "shareBirmap is null"

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_22

    .line 176
    :cond_1d
    const-string v1, "shareBirmap is not null"

    invoke-static {v1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    :goto_22
    new-instance v1, Lcom/keephealth/android/util/AsyncTaskUtil;

    new-instance v2, Lcom/keephealth/android/views/share/ShareHelper$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/share/ShareHelper$1;-><init>(Lcom/keephealth/android/views/share/ShareHelper;)V

    invoke-direct {v1, v2}, Lcom/keephealth/android/util/AsyncTaskUtil;-><init>(Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 185
    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/AsyncTaskUtil;->execute([Ljava/lang/String;)V

    return-void
.end method

.method public varargs shotWithMapView(Lcom/google/android/gms/maps/MapView;Lcom/google/android/gms/maps/GoogleMap;Landroid/view/ViewGroup;Z[Landroid/view/View;)V
    .registers 13

    .line 254
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/keephealth/android/views/share/ShareHelper;->isShotComplete:Z

    .line 256
    new-instance v0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/share/ShareHelper;Landroid/view/ViewGroup;Lcom/google/android/gms/maps/MapView;Z[Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    return-void
.end method
