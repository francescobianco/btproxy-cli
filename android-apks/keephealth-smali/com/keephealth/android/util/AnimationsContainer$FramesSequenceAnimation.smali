.class public Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;
.super Ljava/lang/Object;
.source "AnimationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/AnimationsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramesSequenceAnimation"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mDelayMillis:I

.field private mFrames:[I

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIsRunning:Z

.field private mOnAnimationStoppedListener:Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;

.field private mShouldRun:Z

.field private mSoftReferenceImageView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/keephealth/android/util/AnimationsContainer;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/AnimationsContainer;Landroid/widget/ImageView;[II)V
    .registers 5

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->this$0:Lcom/keephealth/android/util/AnimationsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mFrames:[I

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    .line 72
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z

    .line 74
    iput-boolean p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z

    const/16 p3, 0x3e8

    .line 75
    div-int/2addr p3, p4

    iput p3, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mDelayMillis:I

    .line 77
    iget-object p3, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mFrames:[I

    aget p1, p3, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 84
    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    .line 85
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 87
    iget-object p2, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 88
    iget-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 89
    iget-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Ljava/lang/ref/SoftReference;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mOnAnimationStoppedListener:Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mDelayMillis:I

    return p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)I
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->getNext()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/Bitmap;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/BitmapFactory$Options;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method private getNext()I
    .registers 4

    .line 93
    iget v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    .line 98
    iget-object v1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mFrames:[I

    array-length v2, v1

    if-lt v0, v2, :cond_e

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    .line 100
    :cond_e
    iget v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIndex:I

    aget v0, v1, v0

    return v0
.end method


# virtual methods
.method public setOnAnimStopListener(Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mOnAnimationStoppedListener:Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;

    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 107
    :try_start_2
    iput-boolean v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z

    .line 108
    iget-boolean v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_18

    if-eqz v0, :cond_a

    .line 109
    monitor-exit p0

    return-void

    .line 113
    :cond_a
    :try_start_a
    new-instance v0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;-><init>(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)V

    iput-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->runnable:Ljava/lang/Runnable;

    .line 152
    iget-object v1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_18

    .line 153
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 159
    :try_start_2
    iput-boolean v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 160
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
