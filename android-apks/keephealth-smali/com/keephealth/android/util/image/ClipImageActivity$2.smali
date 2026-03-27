.class Lcom/keephealth/android/util/image/ClipImageActivity$2;
.super Ljava/lang/Object;
.source "ClipImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/image/ClipImageActivity;->setImageAndClipParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/image/ClipImageActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/image/ClipImageActivity;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$200(Lcom/keephealth/android/util/image/ClipImageActivity;)Lcom/keephealth/android/util/image/ClipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mMaxWidth:I
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$100(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->setMaxOutputWidth(I)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$400(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$302(Lcom/keephealth/android/util/image/ClipImageActivity;I)I

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_33

    goto :goto_35

    :cond_33
    move v0, v2

    goto :goto_36

    :cond_35
    :goto_35
    move v0, v3

    .line 173
    :goto_36
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$400(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    # setter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceWidth:I
    invoke-static {v3, v4}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$502(Lcom/keephealth/android/util/image/ClipImageActivity;I)I

    .line 178
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    # setter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceHeight:I
    invoke-static {v3, v4}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$602(Lcom/keephealth/android/util/image/ClipImageActivity;I)I

    if-eqz v0, :cond_59

    .line 181
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_5b

    :cond_59
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 184
    :goto_5b
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;
    invoke-static {v3}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$200(Lcom/keephealth/android/util/image/ClipImageActivity;)Lcom/keephealth/android/util/image/ClipImageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/util/image/ClipImageView;->getClipBorder()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    # invokes: Lcom/keephealth/android/util/image/ClipImageActivity;->findBestSample(II)I
    invoke-static {v0, v4}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$800(II)I

    move-result v0

    # setter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I
    invoke-static {v3, v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$702(Lcom/keephealth/android/util/image/ClipImageActivity;I)I

    .line 186
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$700(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 188
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$400(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v1

    if-nez v1, :cond_91

    goto :goto_bc

    .line 196
    :cond_91
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_bb

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_bb

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_bb
    move-object v0, v1

    .line 205
    :goto_bc
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$2;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$200(Lcom/keephealth/android/util/image/ClipImageActivity;)Lcom/keephealth/android/util/image/ClipImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/image/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
