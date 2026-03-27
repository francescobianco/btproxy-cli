.class public Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
.super Ljava/lang/Object;
.source "ClipImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/image/ClipImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipOptions"
.end annotation


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private inputPath:Ljava/lang/String;

.field private isCircle:Z

.field private maxWidth:I

.field private outputPath:Ljava/lang/String;

.field private tip:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/image/ClipImageActivity$1;)V
    .registers 2

    .line 442
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;)Z
    .registers 1

    .line 442
    iget-boolean p0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle:Z

    return p0
.end method

.method private checkValues()V
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 533
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 534
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The output path could not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input path could not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFromBundle(Landroid/content/Intent;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 6

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createFromBundle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "aspectX"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "aspectY"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u56fe\u7247\u5927\u5c0f"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    invoke-direct {v0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;-><init>()V

    .line 541
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    .line 542
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    .line 543
    const-string v1, "maxWidth"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->maxWidth(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    const-string v1, "isCircle"

    .line 544
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    const-string v1, "tip"

    .line 545
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->tip(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    const-string v1, "inputPath"

    .line 546
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object v0

    const-string v1, "outputPath"

    .line 547
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public aspectX(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 454
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX:I

    return-object p0
.end method

.method public aspectY(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 459
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY:I

    return-object p0
.end method

.method public getAspectX()I
    .registers 2

    .line 489
    iget v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX:I

    return v0
.end method

.method public getAspectY()I
    .registers 2

    .line 493
    iget v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY:I

    return v0
.end method

.method public getInputPath()Ljava/lang/String;
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 497
    iget v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->maxWidth:I

    return v0
.end method

.method public getOutputPath()Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public inputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath:Ljava/lang/String;

    return-object p0
.end method

.method public isCircle(Z)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 484
    iput-boolean p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle:Z

    return-object p0
.end method

.method public isCircle()Z
    .registers 2

    .line 513
    iget-boolean v0, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle:Z

    return v0
.end method

.method public maxWidth(I)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 464
    iput p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->maxWidth:I

    return-object p0
.end method

.method public outputPath(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath:Ljava/lang/String;

    return-object p0
.end method

.method public startForResult(Landroid/app/Activity;I)V
    .registers 6

    .line 517
    invoke-direct {p0}, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->checkValues()V

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keephealth/android/util/image/ClipImageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    const-string v1, "aspectX"

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string v1, "aspectY"

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->aspectY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 521
    const-string v1, "maxWidth"

    iget v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v1, "tip"

    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->tip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v1, "isCircle"

    iget-boolean v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->isCircle:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    const-string v1, "inputPath"

    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->inputPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v1, "outputPath"

    iget-object v2, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->outputPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public tip(Ljava/lang/String;)Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/keephealth/android/util/image/ClipImageActivity$ClipOptions;->tip:Ljava/lang/String;

    return-object p0
.end method
