.class public Lcom/keephealth/android/views/gallery/bean/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private id:I

.field private isSelect:Z

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private thumbPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 59
    instance-of v0, p1, Lcom/keephealth/android/views/gallery/bean/Image;

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Image;->path:Ljava/lang/String;

    check-cast p1, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/keephealth/android/views/gallery/bean/Image;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Image;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Image;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/bean/Image;->thumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/keephealth/android/views/gallery/bean/Image;->isSelect:Z

    return v0
.end method

.method public setId(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/keephealth/android/views/gallery/bean/Image;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/bean/Image;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/bean/Image;->path:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/bean/Image;->isSelect:Z

    return-void
.end method

.method public setThumbPath(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/bean/Image;->thumbPath:Ljava/lang/String;

    return-void
.end method
