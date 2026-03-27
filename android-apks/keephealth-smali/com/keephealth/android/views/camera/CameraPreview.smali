.class public Lcom/keephealth/android/views/camera/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final MAX_ASPECT_DISTORTION:D = 0.15

.field private static final MIN_PREVIEW_PIXELS:I = 0x25800


# instance fields
.field private context:Landroid/content/Context;

.field private isPreview:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;I)V
    .registers 4

    .line 53
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 56
    invoke-virtual {p0}, Lcom/keephealth/android/views/camera/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 57
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 58
    iput p3, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCameraId:I

    .line 59
    iget-object p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method private findBestPictureResolution()Landroid/hardware/Camera$Size;
    .registers 10

    .line 202
    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 207
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    .line 208
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 211
    :cond_37
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    new-instance v1, Lcom/keephealth/android/views/camera/CameraPreview$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/camera/CameraPreview$2;-><init>(Lcom/keephealth/android/views/camera/CameraPreview;)V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    iget-object v1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v3, v1

    iget-object v1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->context:Landroid/content/Context;

    .line 233
    invoke-static {v1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-double v5, v1

    div-double/2addr v3, v5

    .line 234
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    :cond_5b
    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8d

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 237
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 238
    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    if-le v7, v5, :cond_6f

    const/4 v6, 0x1

    :cond_6f
    if-eqz v6, :cond_73

    move v8, v5

    goto :goto_74

    :cond_73
    move v8, v7

    :goto_74
    if-eqz v6, :cond_77

    goto :goto_78

    :cond_77
    move v7, v5

    :goto_78
    int-to-double v5, v8

    int-to-double v7, v7

    div-double/2addr v5, v7

    sub-double/2addr v5, v3

    .line 247
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3fc3333333333333L    # 0.15

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5b

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5b

    .line 255
    :cond_8d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_99

    .line 256
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    :cond_99
    return-object v0
.end method

.method private isLandscape(I)Z
    .registers 3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method


# virtual methods
.method public findBestPreviewResolution()Landroid/hardware/Camera$Size;
    .registers 15

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    return-object v1

    .line 132
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    new-instance v0, Lcom/keephealth/android/views/camera/CameraPreview$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/camera/CameraPreview$1;-><init>(Lcom/keephealth/android/views/camera/CameraPreview;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 150
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 156
    :cond_4b
    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraPreview;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-double v3, v0

    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraPreview;->context:Landroid/content/Context;

    .line 157
    invoke-static {v0}, Lcom/keephealth/android/util/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    :cond_5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_ac

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 161
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 162
    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int v9, v7, v8

    const v10, 0x25800

    if-ge v9, v10, :cond_7a

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5e

    :cond_7a
    if-le v7, v8, :cond_7d

    const/4 v6, 0x1

    :cond_7d
    if-eqz v6, :cond_81

    move v9, v8

    goto :goto_82

    :cond_81
    move v9, v7

    :goto_82
    if-eqz v6, :cond_85

    goto :goto_86

    :cond_85
    move v7, v8

    :goto_86
    int-to-double v10, v9

    int-to-double v12, v7

    div-double/2addr v10, v12

    sub-double/2addr v10, v3

    .line 177
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fc3333333333333L    # 0.15

    cmpl-double v6, v10, v12

    if-lez v6, :cond_9b

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5e

    .line 184
    :cond_9b
    iget-object v6, p0, Lcom/keephealth/android/views/camera/CameraPreview;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    if-ne v9, v6, :cond_5e

    iget-object v6, p0, Lcom/keephealth/android/views/camera/CameraPreview;->context:Landroid/content/Context;

    .line 185
    invoke-static {v6}, Lcom/keephealth/android/util/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    if-ne v7, v6, :cond_5e

    return-object v5

    .line 191
    :cond_ac
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 192
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0

    :cond_b9
    return-object v1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 265
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 269
    :cond_7
    iget-object p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 272
    :try_start_c
    iget-object p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 276
    :goto_18
    iget-object p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 6

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/keephealth/android/views/camera/CameraPreview;->findBestPreviewResolution()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 94
    invoke-direct {p0}, Lcom/keephealth/android/views/camera/CameraPreview;->findBestPictureResolution()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 96
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 97
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    const/16 v1, 0x100

    .line 99
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const/16 v1, 0x5a

    .line 100
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 103
    iget-object v1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/views/camera/CameraPreview;->isPreview:Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_52

    :catch_39
    move-exception p1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u76f8\u673a\u9884\u89c8\u9519\u8bef: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraPreview"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_52
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method
