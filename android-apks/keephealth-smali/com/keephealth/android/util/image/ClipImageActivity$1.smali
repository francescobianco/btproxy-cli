.class Lcom/keephealth/android/util/image/ClipImageActivity$1;
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

    .line 103
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$200(Lcom/keephealth/android/util/image/ClipImageActivity;)Lcom/keephealth/android/util/image/ClipImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mMaxWidth:I
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$100(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageView;->setMaxOutputWidth(I)V

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$400(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->readPictureDegree(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$302(Lcom/keephealth/android/util/image/ClipImageActivity;I)I

    .line 110
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_35

    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

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

    .line 112
    :goto_36
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 114
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$400(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    # setter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceWidth:I
    invoke-static {v3, v4}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$502(Lcom/keephealth/android/util/image/ClipImageActivity;I)I

    .line 117
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    # setter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mSourceHeight:I
    invoke-static {v3, v4}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$602(Lcom/keephealth/android/util/image/ClipImageActivity;I)I

    if-eqz v0, :cond_59

    .line 120
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_5b

    :cond_59
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 123
    :goto_5b
    iget-object v3, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

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

    .line 125
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mSampleSize:I
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$700(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 127
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 128
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mInput:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$400(Lcom/keephealth/android/util/image/ClipImageActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v1

    const-string v9, "ClipImage"

    if-nez v1, :cond_93

    goto :goto_d6

    .line 136
    :cond_93
    :try_start_93
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mDegree:I
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$300(Lcom/keephealth/android/util/image/ClipImageActivity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 138
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

    if-eq v1, v0, :cond_bd

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_bd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_93 .. :try_end_bd} :catch_bf

    :cond_bd
    move-object v0, v1

    goto :goto_d6

    :catch_bf
    move-exception v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65cb\u8f6c\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d6
    if-nez v0, :cond_de

    .line 148
    const-string v0, "\u5904\u7406\u540e\u7684 target \u4e3a null\uff0c\u8df3\u8fc7\u538b\u7f29"

    invoke-static {v9, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_de
    invoke-static {v0}, Lcom/keephealth/android/util/image/ClipImageActivity;->compressImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 159
    iget-object v1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$1;->this$0:Lcom/keephealth/android/util/image/ClipImageActivity;

    # getter for: Lcom/keephealth/android/util/image/ClipImageActivity;->mClipImageView:Lcom/keephealth/android/util/image/ClipImageView;
    invoke-static {v1}, Lcom/keephealth/android/util/image/ClipImageActivity;->access$200(Lcom/keephealth/android/util/image/ClipImageActivity;)Lcom/keephealth/android/util/image/ClipImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keephealth/android/util/image/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
