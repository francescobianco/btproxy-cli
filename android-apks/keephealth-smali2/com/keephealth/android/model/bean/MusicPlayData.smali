.class public Lcom/keephealth/android/model/bean/MusicPlayData;
.super Ljava/lang/Object;
.source "MusicPlayData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public packageName:Ljava/lang/String;

.field public playIcon:Landroid/graphics/drawable/Drawable;

.field public playName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 43
    instance-of v0, p1, Lcom/keephealth/android/model/bean/MusicPlayData;

    if-eqz v0, :cond_13

    .line 44
    check-cast p1, Lcom/keephealth/android/model/bean/MusicPlayData;

    .line 45
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/MusicPlayData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 47
    :cond_13
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/model/bean/MusicPlayData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/model/bean/MusicPlayData;->playIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPlayName()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/keephealth/android/model/bean/MusicPlayData;->playName:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/model/bean/MusicPlayData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPlayIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/model/bean/MusicPlayData;->playIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPlayName(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/model/bean/MusicPlayData;->playName:Ljava/lang/String;

    return-void
.end method
