.class public Lcom/keephealth/android/util/OrientationAngle;
.super Ljava/lang/Object;
.source "OrientationAngle.java"


# static fields
.field static bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .registers 3

    .line 36
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_26

    .line 40
    const-string p0, "Orientation"

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x6

    if-eq p0, v0, :cond_20

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1d

    goto :goto_26

    :cond_1d
    const/16 p0, 0x10e

    goto :goto_27

    :cond_20
    const/16 p0, 0x5a

    goto :goto_27

    :cond_23
    const/16 p0, 0xb4

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static getOrientationAngle(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    .line 15
    invoke-static {p1}, Lcom/keephealth/android/util/OrientationAngle;->getExifOrientation(Ljava/lang/String;)I

    move-result p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggee23"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_36

    .line 21
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float p1, p1

    .line 24
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    .line 25
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    sput-object p0, Lcom/keephealth/android/util/OrientationAngle;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_38

    .line 28
    :cond_36
    sput-object p0, Lcom/keephealth/android/util/OrientationAngle;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    :goto_38
    sget-object p0, Lcom/keephealth/android/util/OrientationAngle;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method
