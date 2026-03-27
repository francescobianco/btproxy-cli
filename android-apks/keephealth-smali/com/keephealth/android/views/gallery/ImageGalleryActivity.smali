.class public Lcom/keephealth/android/views/gallery/ImageGalleryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ImageGalleryActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;,
        Lcom/keephealth/android/views/gallery/ImageGalleryActivity$DoOverrideSizeCallback;
    }
.end annotation


# static fields
.field private static final PERMISSION_ID:I = 0x1

.field public static mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;


# instance fields
.field private mCurPosition:I

.field private mDisplayDimens:Landroid/graphics/Point;

.field private mImageDownloadStatus:[Z

.field private mImagePager:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

.field private mImageSave:Landroid/widget/ImageView;

.field private mImageSources:[Ljava/lang/String;

.field private mIndexText:Landroid/widget/TextView;

.field private mLoader:Lcom/bumptech/glide/RequestManager;

.field private mNeedSaveLocal:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)[Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)Lcom/bumptech/glide/RequestManager;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mLoader:Lcom/bumptech/glide/RequestManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getGlideUrlByUser(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImagePager:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;IZ)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->updateDownloadStatus(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)Landroid/graphics/Point;
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getDisplayDimens()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private callSaveStatus(ZLjava/io/File;)V
    .registers 4

    .line 225
    new-instance v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$2;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;ZLjava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeSaveButtonStatus(Z)V
    .registers 4

    .line 138
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mNeedSaveLocal:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_f

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSave:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    :cond_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14

    .line 141
    :cond_f
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSave:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_14
    return-void
.end method

.method private declared-synchronized getDisplayDimens()Landroid/graphics/Point;
    .registers 4

    monitor-enter p0

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mDisplayDimens:Landroid/graphics/Point;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_33

    if-eqz v0, :cond_7

    .line 264
    monitor-exit p0

    return-object v0

    .line 267
    :cond_7
    :try_start_7
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 268
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 271
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 277
    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 278
    iget v0, v1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 280
    iput-object v1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mDisplayDimens:Landroid/graphics/Point;
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_33

    .line 281
    monitor-exit p0

    return-object v1

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getGlideUrlByUser(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;
    .registers 4

    .line 490
    sget-object v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getHeaders()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_17

    .line 491
    :cond_b
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    sget-object v1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getHeaders()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    return-object v0

    .line 490
    :cond_17
    :goto_17
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private initData()V
    .registers 4

    .line 122
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mLoader:Lcom/bumptech/glide/RequestManager;

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;

    array-length v0, v0

    .line 124
    iget v1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mCurPosition:I

    if-ltz v1, :cond_f

    if-lt v1, v0, :cond_12

    :cond_f
    const/4 v1, 0x0

    .line 125
    iput v1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mCurPosition:I

    :cond_12
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mIndexText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :cond_1c
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImagePager:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    new-instance v1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$ViewPagerAdapter;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;Lcom/keephealth/android/views/gallery/ImageGalleryActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 132
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImagePager:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    iget v1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mCurPosition:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->setCurrentItem(I)V

    .line 134
    iget v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mCurPosition:I

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->onPageSelected(I)V

    return-void
.end method

.method private initWidget()V
    .registers 3

    .line 107
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 108
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902ef

    .line 109
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSave:Landroid/widget/ImageView;

    .line 110
    new-instance v1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity$1;-><init>(Lcom/keephealth/android/views/gallery/ImageGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0907d1

    .line 116
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImagePager:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    const v0, 0x7f09074b

    .line 117
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mIndexText:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImagePager:Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;

    invoke-virtual {v0, p0}, Lcom/keephealth/android/views/gallery/view/PreviewerViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private saveToFile()V
    .registers 11

    .line 177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 178
    const-string v0, "\u6ca1\u6709\u5916\u90e8\u5b58\u50a8"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 181
    :cond_17
    sget-object v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSavePath()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_32

    .line 184
    const-string v0, "\u6ca1\u6709\u6307\u5b9a\u5b58\u50a8\u8def\u5f84"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 188
    :cond_32
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;

    iget v3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mCurPosition:I

    aget-object v2, v2, v3

    .line 192
    sget-object v3, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v3}, Lcom/keephealth/android/views/gallery/SelectOptions;->getHeaders()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 193
    invoke-direct {p0, v2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getGlideUrlByUser(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    move-result-object v2

    .line 198
    :cond_44
    iget-object v3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mLoader:Lcom/bumptech/glide/RequestManager;

    .line 199
    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    const/high16 v3, -0x80000000

    .line 200
    invoke-virtual {v2, v3, v3}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v2

    const/4 v3, 0x0

    .line 203
    :try_start_51
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    if-eqz v2, :cond_9e

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_60

    goto :goto_9e

    .line 206
    :cond_60
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/views/gallery/util/Util;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 209
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 211
    invoke-direct {p0, v1, v3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->callSaveStatus(ZLjava/io/File;)V

    return-void

    .line 215
    :cond_7d
    new-instance v0, Ljava/io/File;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "IMG_%s.%s"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    invoke-static {v2, v0}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 217
    invoke-direct {p0, v2, v0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->callSaveStatus(ZLjava/io/File;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_9d} :catch_9f

    goto :goto_a6

    :cond_9e
    :goto_9e
    return-void

    :catch_9f
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    invoke-direct {p0, v1, v3}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->callSaveStatus(ZLjava/io/File;)V

    :goto_a6
    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/keephealth/android/views/gallery/SelectOptions;I)V
    .registers 4

    if-eqz p1, :cond_24

    .line 74
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_24

    .line 76
    :cond_13
    sput-object p1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const-string v0, "position"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private updateDownloadStatus(IZ)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageDownloadStatus:[Z

    aput-boolean p2, v0, p1

    .line 146
    iget v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mCurPosition:I

    if-ne v0, p1, :cond_b

    .line 147
    invoke-direct {p0, p2}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->changeSaveButtonStatus(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected initBundle(Landroid/os/Bundle;)Z
    .registers 3

    .line 94
    sget-object p1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    if-eqz p1, :cond_26

    .line 96
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectedImages()Ljava/util/List;

    move-result-object p1

    const-class v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/keephealth/android/views/gallery/util/CollectionUtil;->toArray(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;

    .line 97
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageDownloadStatus:[Z

    .line 98
    sget-object p1, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSavePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mNeedSaveLocal:Z

    return v0

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1101ff

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->setTheme(I)V

    const p1, 0x7f0c00ad

    .line 86
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->initBundle(Landroid/os/Bundle;)Z

    .line 88
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->initWidget()V

    .line 89
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 485
    sput-object v0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mOptions:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 486
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    .line 247
    iput p1, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mCurPosition:I

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mIndexText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageSources:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s/%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->mImageDownloadStatus:[Z

    aget-boolean p1, v0, p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->changeSaveButtonStatus(Z)V

    return-void
.end method

.method public onPermissionsDenied(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-static {p0, p2}, Lpub/devrel/easypermissions/EasyPermissions;->somePermissionPermanentlyDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 172
    new-instance p1, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    invoke-direct {p1, p0}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->build()Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object p1

    invoke-virtual {p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->show()V

    :cond_12
    return-void
.end method

.method public onPermissionsGranted(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 473
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 476
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public saveToFileByPermission()V
    .registers 5
    .annotation runtime Lpub/devrel/easypermissions/AfterPermissionGranted;
        value = 0x1
    .end annotation

    const/4 v0, 0x1

    .line 156
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 157
    invoke-static {p0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 158
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/ImageGalleryActivity;->saveToFile()V

    goto :goto_17

    .line 160
    :cond_12
    const-string v2, "\u8bf7\u6388\u4e88\u4fdd\u5b58\u56fe\u7247\u6743\u9650"

    invoke-static {p0, v2, v0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_17
    return-void
.end method
