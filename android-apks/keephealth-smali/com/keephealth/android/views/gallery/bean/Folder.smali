.class public Lcom/keephealth/android/views/gallery/bean/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# instance fields
.field private albumPath:Ljava/lang/String;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/views/gallery/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->images:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 45
    instance-of v1, p1, Lcom/keephealth/android/views/gallery/bean/Folder;

    if-eqz v1, :cond_27

    .line 46
    check-cast p1, Lcom/keephealth/android/views/gallery/bean/Folder;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/bean/Folder;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->path:Ljava/lang/String;

    if-eqz v1, :cond_14

    return v0

    .line 48
    :cond_14
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/bean/Folder;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_27
    return v0
.end method

.method public getAlbumPath()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->albumPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/views/gallery/bean/Image;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->images:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumPath(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->albumPath:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/bean/Folder;->path:Ljava/lang/String;

    return-void
.end method
