.class public Lcom/keephealth/android/views/InnerGuideView$Builder;
.super Ljava/lang/Object;
.source "InnerGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/InnerGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private borderType:I

.field private color:I

.field private context:Landroid/content/Context;

.field private isDash:Z

.field private mBubbleOrientation:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

.field private padding:I

.field private roundRadius:I

.field private tipTextColor:I

.field private viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    const/4 v1, 0x0

    .line 362
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->color:I

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->viewMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 365
    iput v0, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->tipTextColor:I

    .line 366
    iput v1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->borderType:I

    const/16 v0, 0xa

    .line 367
    iput v0, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->roundRadius:I

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->isDash:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/keephealth/android/views/InnerGuideView;
    .registers 14

    .line 421
    new-instance v12, Lcom/keephealth/android/views/InnerGuideView;

    iget-object v1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->color:I

    iget-object v3, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->viewMap:Ljava/util/Map;

    iget v4, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->borderType:I

    iget v5, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->tipTextColor:I

    iget v6, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->roundRadius:I

    iget-boolean v7, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->isDash:Z

    iget-object v8, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->mBubbleOrientation:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    iget v9, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->padding:I

    iget-object v10, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->bitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/keephealth/android/views/InnerGuideView;-><init>(Landroid/content/Context;ILjava/util/Map;IIIZLcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;ILandroid/graphics/Bitmap;Lcom/keephealth/android/views/InnerGuideView$1;)V

    return-object v12
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setBorderType(I)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 379
    iput p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->borderType:I

    return-object p0
.end method

.method public setColor(I)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 393
    iput p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->color:I

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setDash(Z)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 412
    iput-boolean p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->isDash:Z

    return-object p0
.end method

.method public setOrientation(Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->mBubbleOrientation:Lcom/keephealth/android/views/InnerGuideView$BubbleLegOrientation;

    return-object p0
.end method

.method public setPadding(I)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 388
    iput p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->padding:I

    return-object p0
.end method

.method public setRoundRadius(I)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 407
    iput p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->roundRadius:I

    return-object p0
.end method

.method public setTipTextColor(I)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 374
    iput p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->tipTextColor:I

    return-object p0
.end method

.method public setViewsMap(Ljava/util/Map;)Lcom/keephealth/android/views/InnerGuideView$Builder;
    .registers 2

    .line 384
    iput-object p1, p0, Lcom/keephealth/android/views/InnerGuideView$Builder;->viewMap:Ljava/util/Map;

    return-object p0
.end method
