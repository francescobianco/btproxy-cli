.class Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;
.super Ljava/lang/Object;
.source "ImagePickerFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/ImagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final IMAGE_PROJECTION:[Ljava/lang/String;

.field final synthetic this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)V
    .registers 5

    .line 368
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    .line 369
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v2, "_display_name"

    aput-object v2, p1, v0

    const/4 v0, 0x2

    const-string v2, "date_added"

    aput-object v2, p1, v0

    const/4 v0, 0x3

    const-string v2, "_id"

    aput-object v2, p1, v0

    const/4 v0, 0x4

    const-string v2, "mini_thumb_magic"

    aput-object v2, p1, v0

    const/4 v0, 0x5

    const-string v2, "bucket_display_name"

    aput-object v2, p1, v0

    const/4 v0, 0x6

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Lcom/keephealth/android/views/gallery/ImagePickerFragment$1;)V
    .registers 3

    .line 368
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;-><init>(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_2d

    .line 382
    new-instance p1, Landroidx/loader/content/CursorLoader;

    iget-object p2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " DESC"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1f9

    .line 392
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    new-instance v1, Lcom/keephealth/android/views/gallery/bean/Folder;

    invoke-direct {v1}, Lcom/keephealth/android/views/gallery/bean/Folder;-><init>()V

    .line 395
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    invoke-virtual {v2}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/gallery/bean/Folder;->setName(Ljava/lang/String;)V

    .line 396
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/gallery/bean/Folder;->setPath(Ljava/lang/String;)V

    .line 397
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_11d

    .line 400
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 402
    :cond_34
    iget-object v2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->IMAGE_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 404
    iget-object v6, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    iget-object v7, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 406
    new-instance v8, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-direct {v8}, Lcom/keephealth/android/views/gallery/bean/Image;-><init>()V

    .line 407
    invoke-virtual {v8, v2}, Lcom/keephealth/android/views/gallery/bean/Image;->setPath(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v8, v5}, Lcom/keephealth/android/views/gallery/bean/Image;->setName(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v8, v7}, Lcom/keephealth/android/views/gallery/bean/Image;->setId(I)V

    .line 411
    invoke-virtual {v8, v6}, Lcom/keephealth/android/views/gallery/bean/Image;->setThumbPath(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$200(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9e

    iget-object v5, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$200(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/keephealth/android/views/gallery/bean/Image;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 416
    invoke-virtual {v8, v4}, Lcom/keephealth/android/views/gallery/bean/Image;->setSelect(Z)V

    .line 417
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_9e
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d2

    .line 421
    iget-object v5, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;
    invoke-static {v5}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b4
    :goto_b4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/views/gallery/bean/Image;

    .line 422
    invoke-virtual {v6}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 423
    invoke-virtual {v8, v4}, Lcom/keephealth/android/views/gallery/bean/Image;->setSelect(Z)V

    goto :goto_b4

    .line 428
    :cond_d2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 430
    new-instance v5, Lcom/keephealth/android/views/gallery/bean/Folder;

    invoke-direct {v5}, Lcom/keephealth/android/views/gallery/bean/Folder;-><init>()V

    .line 431
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/views/gallery/bean/Folder;->setName(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/keephealth/android/views/gallery/bean/Folder;->setPath(Ljava/lang/String;)V

    .line 433
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    .line 434
    invoke-virtual {v5}, Lcom/keephealth/android/views/gallery/bean/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v8}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/keephealth/android/views/gallery/bean/Folder;->setAlbumPath(Ljava/lang/String;)V

    .line 436
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_117

    .line 439
    :cond_106
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/gallery/bean/Folder;

    .line 440
    invoke-virtual {v2}, Lcom/keephealth/android/views/gallery/bean/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :goto_117
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_34

    .line 444
    :cond_11d
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # invokes: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->addImagesToAdapter(Ljava/util/ArrayList;)V
    invoke-static {p2, p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$100(Lcom/keephealth/android/views/gallery/ImagePickerFragment;Ljava/util/ArrayList;)V

    .line 445
    invoke-virtual {v1}, Lcom/keephealth/android/views/gallery/bean/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 446
    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;
    invoke-static {}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$400()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object p2

    if-eqz p2, :cond_161

    .line 447
    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;
    invoke-static {}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$400()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/SelectOptions;->isHasCam()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_14e

    .line 448
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v4, :cond_14a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_14a
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/gallery/bean/Folder;->setAlbumPath(Ljava/lang/String;)V

    goto :goto_161

    .line 450
    :cond_14e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_15e

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_15e
    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/gallery/bean/Folder;->setAlbumPath(Ljava/lang/String;)V

    .line 453
    :cond_161
    :goto_161
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mImageFolderAdapter:Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$500(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;->resetItem(Ljava/util/List;)V

    .line 456
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1cf

    .line 457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_185
    :goto_185
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/gallery/bean/Image;

    .line 459
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1aa

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-gtz v2, :cond_185

    .line 461
    :cond_1aa
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onLoadFinished: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6d4b\u8bd5\u9009\u62e9\u56fe\u7247\u662f\u5426\u4f1a\u4e3a\u7a7a"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_185

    .line 465
    :cond_1c6
    iget-object p2, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 467
    :cond_1cf
    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;
    invoke-static {}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$400()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object p1

    if-eqz p1, :cond_1ec

    .line 468
    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mOption:Lcom/keephealth/android/views/gallery/SelectOptions;
    invoke-static {}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$400()Lcom/keephealth/android/views/gallery/SelectOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/SelectOptions;->getSelectCount()I

    move-result p1

    if-ne p1, v4, :cond_1ec

    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mCamImageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$200(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1ec

    .line 469
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # invokes: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleResult()V
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$600(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)V

    .line 473
    :cond_1ec
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->this$0:Lcom/keephealth/android/views/gallery/ImagePickerFragment;

    # getter for: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->mSelectedImage:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$300(Lcom/keephealth/android/views/gallery/ImagePickerFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    # invokes: Lcom/keephealth/android/views/gallery/ImagePickerFragment;->handleSelectSizeChange(I)V
    invoke-static {p1, p2}, Lcom/keephealth/android/views/gallery/ImagePickerFragment;->access$700(Lcom/keephealth/android/views/gallery/ImagePickerFragment;I)V

    :cond_1f9
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .registers 3

    .line 368
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/gallery/ImagePickerFragment$LoaderListener;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
