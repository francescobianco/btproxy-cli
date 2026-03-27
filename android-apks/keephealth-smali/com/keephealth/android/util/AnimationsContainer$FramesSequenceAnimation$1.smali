.class Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;
.super Ljava/lang/Object;
.source "AnimationsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mSoftReferenceImageView:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$000(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    iget-object v1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mShouldRun:Z
    invoke-static {v1}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$100(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Z

    move-result v1

    if-eqz v1, :cond_72

    if-nez v0, :cond_17

    goto :goto_72

    .line 125
    :cond_17
    iget-object v1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    const/4 v2, 0x1

    # setter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z
    invoke-static {v1, v2}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$202(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;Z)Z

    .line 127
    iget-object v1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$500(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mDelayMillis:I
    invoke-static {v2}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$400(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 130
    iget-object v1, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # invokes: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->getNext()I
    invoke-static {v1}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$600(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)I

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$700(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6e

    const/4 v2, 0x0

    .line 134
    :try_start_42
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v4}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$800(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_51

    goto :goto_56

    :catch_51
    move-exception v3

    .line 136
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    :goto_56
    if-eqz v3, :cond_5c

    .line 139
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_71

    .line 141
    :cond_5c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$700(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # setter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$702(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_71

    .line 146
    :cond_6e
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_71
    :goto_71
    return-void

    .line 118
    :cond_72
    :goto_72
    iget-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mIsRunning:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$202(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;Z)Z

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mOnAnimationStoppedListener:Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;
    invoke-static {v0}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$300(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation$1;->this$1:Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;

    # getter for: Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->mOnAnimationStoppedListener:Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;
    invoke-static {v0}, Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;->access$300(Lcom/keephealth/android/util/AnimationsContainer$FramesSequenceAnimation;)Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/util/AnimationsContainer$OnAnimationStoppedListener;->AnimationStopped()V

    :cond_89
    return-void
.end method
