.class public Lcom/keephealth/android/views/photo/Images;
.super Ljava/lang/Object;
.source "Images.java"


# static fields
.field public static mCameraImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mGalleryImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mImgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraImages(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 52
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    .line 55
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    .line 56
    invoke-static {p0}, Lcom/keephealth/android/views/photo/GalleryUtil;->queryGallery(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/photo/GalleryEntity;

    .line 58
    invoke-virtual {v0}, Lcom/keephealth/android/views/photo/GalleryEntity;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 61
    invoke-virtual {v0}, Lcom/keephealth/android/views/photo/GalleryEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/views/photo/GalleryUtil;->getFolderByFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/keephealth/android/views/photo/GalleryUtil;->getAllImagePathsByFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 63
    sget-object v1, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 68
    :cond_4b
    sget-object p0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    if-eqz p0, :cond_5e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5e

    .line 69
    sget-object p0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    :cond_5e
    sget-object p0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    return-object p0
.end method

.method public static getGalleryImages(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/keephealth/android/views/photo/Images;->mGalleryImgs:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 84
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 85
    sput-object v0, Lcom/keephealth/android/views/photo/Images;->mGalleryImgs:Ljava/util/List;

    .line 87
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/keephealth/android/views/photo/Images;->mGalleryImgs:Ljava/util/List;

    .line 90
    invoke-static {p0}, Lcom/keephealth/android/views/photo/GalleryUtil;->queryGallery(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/photo/GalleryEntity;

    .line 94
    invoke-virtual {v0}, Lcom/keephealth/android/views/photo/GalleryEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/views/photo/GalleryUtil;->getFolderByFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/keephealth/android/views/photo/GalleryUtil;->getAllImagePathsByFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 96
    sget-object v1, Lcom/keephealth/android/views/photo/Images;->mGalleryImgs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    .line 100
    :cond_3f
    sget-object p0, Lcom/keephealth/android/views/photo/Images;->mGalleryImgs:Ljava/util/List;

    if-eqz p0, :cond_52

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_52

    .line 101
    sget-object p0, Lcom/keephealth/android/views/photo/Images;->mGalleryImgs:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    :cond_52
    sget-object p0, Lcom/keephealth/android/views/photo/Images;->mGalleryImgs:Ljava/util/List;

    return-object p0
.end method

.method public static getImages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    .line 30
    :cond_7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/keephealth/android/app/Constants;->imageDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 34
    :cond_17
    sget-object v0, Lcom/keephealth/android/app/Constants;->imageDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/keephealth/android/views/photo/GalleryUtil;->getAllImagePathsByFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 37
    sget-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    :cond_30
    sget-object v0, Lcom/keephealth/android/views/photo/Images;->mCameraImgs:Ljava/util/List;

    return-object v0
.end method
