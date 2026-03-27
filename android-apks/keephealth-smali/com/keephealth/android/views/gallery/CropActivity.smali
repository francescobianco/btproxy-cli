.class public Lcom/keephealth/android/views/gallery/CropActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mOption:Lcom/keephealth/android/views/gallery/SelectOptions;


# instance fields
.field private mCancel:Landroid/view/View;

.field private mCrop:Landroid/view/View;

.field private mCropLayout:Lcom/keephealth/android/views/gallery/view/CropLayout;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .registers 3

    .line 68
    sget-object v0, Lcom/keephealth/android/views/gallery/CropActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCropLayout:Lcom/keephealth/android/views/gallery/view/CropLayout;

    .line 70
    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/view/CropLayout;->getImageView()Lcom/keephealth/android/views/gallery/view/ZoomImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 72
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCropLayout:Lcom/keephealth/android/views/gallery/view/CropLayout;

    sget-object v1, Lcom/keephealth/android/views/gallery/CropActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getCropWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/CropLayout;->setCropWidth(I)V

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCropLayout:Lcom/keephealth/android/views/gallery/view/CropLayout;

    sget-object v1, Lcom/keephealth/android/views/gallery/CropActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getCropHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/gallery/view/CropLayout;->setCropHeight(I)V

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCropLayout:Lcom/keephealth/android/views/gallery/view/CropLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/view/CropLayout;->start()V

    return-void
.end method

.method private initWidget()V
    .registers 3

    .line 56
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/CropActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x7f0900ff

    .line 58
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/gallery/view/CropLayout;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCropLayout:Lcom/keephealth/android/views/gallery/view/CropLayout;

    const v0, 0x7f090731

    .line 60
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCrop:Landroid/view/View;

    const v0, 0x7f090726

    .line 61
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/gallery/CropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCancel:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCrop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCancel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/keephealth/android/views/gallery/SelectOptions;)V
    .registers 5

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/views/gallery/CropActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    sput-object p1, Lcom/keephealth/android/views/gallery/CropActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    const/4 p1, 0x4

    .line 39
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCrop:Landroid/view/View;

    if-ne p1, v0, :cond_85

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 84
    :try_start_7
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCropLayout:Lcom/keephealth/android/views/gallery/view/CropLayout;

    invoke-virtual {v2}, Lcom/keephealth/android/views/gallery/view/CropLayout;->cropBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_63
    .catchall {:try_start_7 .. :try_end_d} :catchall_5e

    .line 85
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/CropActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/crop.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_5a
    .catchall {:try_start_d .. :try_end_29} :catchall_56

    .line 87
    :try_start_29
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, p1, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 88
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 89
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 91
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 92
    const-string v5, "crop_path"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x1

    .line 93
    invoke-virtual {p0, v3, p1}, Lcom/keephealth/android/views/gallery/CropActivity;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/CropActivity;->finish()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_47} :catch_54
    .catchall {:try_start_29 .. :try_end_47} :catchall_77

    if-eqz v2, :cond_4c

    .line 98
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_4c
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v0

    invoke-static {p1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    goto :goto_8c

    :catch_54
    move-exception p1

    goto :goto_67

    :catchall_56
    move-exception v3

    move-object v4, p1

    move-object p1, v3

    goto :goto_78

    :catch_5a
    move-exception v3

    move-object v4, p1

    move-object p1, v3

    goto :goto_67

    :catchall_5e
    move-exception v2

    move-object v4, p1

    move-object p1, v2

    move-object v2, v4

    goto :goto_78

    :catch_63
    move-exception v2

    move-object v4, p1

    move-object p1, v2

    move-object v2, v4

    .line 96
    :goto_67
    :try_start_67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_77

    if-eqz v2, :cond_6f

    .line 98
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_6f
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v4, p1, v0

    invoke-static {p1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    goto :goto_8c

    :catchall_77
    move-exception p1

    :goto_78
    if-eqz v2, :cond_7d

    .line 98
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_7d
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v0

    invoke-static {v1}, Lcom/keephealth/android/views/gallery/util/StreamUtil;->close([Ljava/io/Closeable;)V

    .line 100
    throw p1

    .line 101
    :cond_85
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/CropActivity;->mCancel:Landroid/view/View;

    if-ne p1, v0, :cond_8c

    .line 102
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/CropActivity;->finish()V

    :cond_8c
    :goto_8c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1101ff

    .line 45
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/CropActivity;->setTheme(I)V

    const p1, 0x7f0c00ac

    .line 46
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/CropActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/CropActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 48
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 49
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 50
    :cond_1e
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/CropActivity;->initWidget()V

    .line 51
    invoke-direct {p0}, Lcom/keephealth/android/views/gallery/CropActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    sput-object v0, Lcom/keephealth/android/views/gallery/CropActivity;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;

    .line 109
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
