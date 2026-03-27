.class public Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
.super Ljava/lang/Object;
.source "SelectOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/SelectOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callback:Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

.field private cropHeight:I

.field private cropWidth:I

.field private glideHeader:Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

.field private hasCam:Z

.field private isCrop:Z

.field private savePath:Ljava/lang/String;

.field private selectCount:I

.field private selectedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectCount:I

    .line 77
    iput-boolean v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->hasCam:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectedImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/keephealth/android/views/gallery/SelectOptions;
    .registers 3

    .line 130
    new-instance v0, Lcom/keephealth/android/views/gallery/SelectOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;-><init>(Lcom/keephealth/android/views/gallery/SelectOptions$1;)V

    .line 131
    iget-boolean v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->hasCam:Z

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->hasCam:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$102(Lcom/keephealth/android/views/gallery/SelectOptions;Z)Z

    .line 132
    iget-boolean v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->isCrop:Z

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->isCrop:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$202(Lcom/keephealth/android/views/gallery/SelectOptions;Z)Z

    .line 133
    iget v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->cropHeight:I

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mCropHeight:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$302(Lcom/keephealth/android/views/gallery/SelectOptions;I)I

    .line 134
    iget v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->cropWidth:I

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mCropWidth:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$402(Lcom/keephealth/android/views/gallery/SelectOptions;I)I

    .line 135
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->callback:Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mCallback:Lcom/keephealth/android/views/gallery/SelectOptions$Callback;
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$502(Lcom/keephealth/android/views/gallery/SelectOptions;Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    .line 136
    iget v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectCount:I

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mSelectCount:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$602(Lcom/keephealth/android/views/gallery/SelectOptions;I)I

    .line 137
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectedImages:Ljava/util/List;

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mSelectedImages:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$702(Lcom/keephealth/android/views/gallery/SelectOptions;Ljava/util/List;)Ljava/util/List;

    .line 138
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->savePath:Ljava/lang/String;

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mSavePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$802(Lcom/keephealth/android/views/gallery/SelectOptions;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-boolean v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->isCrop:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mSelectCount:I
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$602(Lcom/keephealth/android/views/gallery/SelectOptions;I)I

    .line 140
    :cond_36
    iget-object v1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->glideHeader:Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v1

    # setter for: Lcom/keephealth/android/views/gallery/SelectOptions;->mHeaders:Lcom/bumptech/glide/load/model/LazyHeaders;
    invoke-static {v0, v1}, Lcom/keephealth/android/views/gallery/SelectOptions;->access$902(Lcom/keephealth/android/views/gallery/SelectOptions;Lcom/bumptech/glide/load/model/LazyHeaders;)Lcom/bumptech/glide/load/model/LazyHeaders;

    :cond_41
    return-object v0
.end method

.method public setCallback(Lcom/keephealth/android/views/gallery/SelectOptions$Callback;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->callback:Lcom/keephealth/android/views/gallery/SelectOptions$Callback;

    return-object p0
.end method

.method public setCrop(II)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 4

    if-lez p1, :cond_c

    if-lez p2, :cond_c

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->isCrop:Z

    .line 85
    iput p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->cropWidth:I

    .line 86
    iput p2, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->cropHeight:I

    return-object p0

    .line 83
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cropWidth or cropHeight mast be greater than 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGlideHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->glideHeader:Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->glideHeader:Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    .line 120
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->glideHeader:Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    return-object p0
.end method

.method public setHasCam(Z)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->hasCam:Z

    return-object p0
.end method

.method public setSavaPath(Ljava/lang/String;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->savePath:Ljava/lang/String;

    return-object p0
.end method

.method public setSelectCount(I)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 2

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    .line 101
    :cond_3
    iput p1, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectCount:I

    return-object p0
.end method

.method public setSelectedImages(Ljava/util/List;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/keephealth/android/views/gallery/SelectOptions$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    :goto_e
    return-object p0
.end method

.method public setSelectedImages([Ljava/lang/String;)Lcom/keephealth/android/views/gallery/SelectOptions$Builder;
    .registers 3

    if-eqz p1, :cond_1a

    .line 112
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1a

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectedImages:Ljava/util/List;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectedImages:Ljava/util/List;

    .line 114
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/SelectOptions$Builder;->selectedImages:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    :goto_1a
    return-object p0
.end method
