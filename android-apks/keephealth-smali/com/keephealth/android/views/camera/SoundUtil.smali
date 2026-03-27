.class public Lcom/keephealth/android/views/camera/SoundUtil;
.super Ljava/lang/Object;
.source "SoundUtil.java"


# instance fields
.field private context:Landroid/content/Context;

.field private musicId:I

.field private spl:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/keephealth/android/views/camera/SoundUtil;->spl:Landroid/media/SoundPool;

    const v1, 0x7f0f0001

    .line 22
    invoke-virtual {v0, p1, v1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/camera/SoundUtil;->musicId:I

    .line 23
    iput-object p1, p0, Lcom/keephealth/android/views/camera/SoundUtil;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SoundUtil;->spl:Landroid/media/SoundPool;

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_7
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SoundUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method public play()V
    .registers 8

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/views/camera/SoundUtil;->spl:Landroid/media/SoundPool;

    if-eqz v0, :cond_13

    iget v1, p0, Lcom/keephealth/android/views/camera/SoundUtil;->musicId:I

    if-eqz v1, :cond_13

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_13
    return-void
.end method
