.class public Lcom/keephealth/android/views/photo/GalleryEntity;
.super Ljava/lang/Object;
.source "GalleryEntity.java"


# instance fields
.field private count:I

.field private gallery_id:I

.field private gallery_name:Ljava/lang/String;

.field private id:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 6

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->id:I

    .line 18
    iput-object p2, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->path:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_id:I

    .line 20
    iput-object p4, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_name:Ljava/lang/String;

    .line 21
    iput p5, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->count:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->count:I

    return v0
.end method

.method public getGallery_id()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_id:I

    return v0
.end method

.method public getGallery_name()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->id:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->count:I

    return-void
.end method

.method public setGallery_id(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_id:I

    return-void
.end method

.method public setGallery_name(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_name:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->id:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->path:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GalleryEntity [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gallery_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gallery_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->gallery_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/photo/GalleryEntity;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
