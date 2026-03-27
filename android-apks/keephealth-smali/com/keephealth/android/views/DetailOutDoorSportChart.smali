.class public Lcom/keephealth/android/views/DetailOutDoorSportChart;
.super Landroid/view/View;
.source "DetailOutDoorSportChart.java"


# instance fields
.field private final ANIM2PROGRESS_MAX:I

.field private MAX_VALUE:F

.field private MIDDLE_VALUE:F

.field private MID_VALUE_2:F

.field private MIN_VALUE:F

.field private anim1:Landroid/animation/ObjectAnimator;

.field private anim1Progress:I

.field private anim2:Landroid/animation/ObjectAnimator;

.field private anim2Progress:I

.field private anim3:Landroid/animation/ObjectAnimator;

.field private animing1:Z

.field private animing2:Z

.field private animing3:Z

.field private barColor:I

.field private barNum:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWid:F

.field private barWidth:F

.field private bitmapH:I

.field private bitmapW:I

.field private bottomH:F

.field private centerH:F

.field chartWidthSpan:F

.field private dataPaint:Landroid/graphics/Paint;

.field detailType:Lcom/keephealth/android/model/bean/DetailType;

.field private exelColor:I

.field exelPaint:Landroid/graphics/Paint;

.field private finishAfterBitmap:Landroid/graphics/Bitmap;

.field private finishBeforeBitmap:Landroid/graphics/Bitmap;

.field private healthSportItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSportItem;",
            ">;"
        }
    .end annotation
.end field

.field private initDraw:Z

.field isAddAvgText:Z

.field private isDouble:Z

.field private isDrawTAB:Z

.field private isToday:Z

.field private lineHeight:[F

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mWidth:I

.field private middleIndex:I

.field paddingTop:F

.field private popup:Landroid/graphics/drawable/NinePatchDrawable;

.field private popupCenter:Landroid/graphics/drawable/NinePatchDrawable;

.field private popupLeft:Landroid/graphics/drawable/NinePatchDrawable;

.field private popupRight:Landroid/graphics/drawable/NinePatchDrawable;

.field private radTopPadding:F

.field private selectRect:Landroid/graphics/RectF;

.field private sportBitmap:Landroid/graphics/Bitmap;

.field private sportToOneLineH:F

.field private tempSteps:I

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:F

.field private topDrawable:Landroid/graphics/drawable/Drawable;

.field private topH:F

.field private touchBg:Landroid/graphics/Bitmap;

.field touchBgPaint:Landroid/graphics/Paint;

.field private touchPaint:Landroid/graphics/Paint;

.field private touchPaint2:Landroid/graphics/Paint;

.field private touchX:D

.field private touchX2:D

.field private touchY:D

.field private unitPaint:Landroid/graphics/Paint;

.field private xLables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xOffSet:F

.field private xWidth:F

.field private yAxisLength:F

.field private yHeight:[F

.field private yScale:F

.field private yVelocitys:[I

.field private yZero:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1e

    .line 44
    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->ANIM2PROGRESS_MAX:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->tempSteps:I

    const/4 v1, 0x4

    .line 55
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yHeight:[F

    const/4 v2, 0x3

    .line 56
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    const/16 v3, 0x60

    .line 61
    iput v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barNum:I

    const/4 v3, 0x1

    .line 87
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->animing1:Z

    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xLables:Ljava/util/List;

    .line 114
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    const v4, 0x3bffffff

    .line 117
    iput v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->exelColor:I

    .line 119
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->exelPaint:Landroid/graphics/Paint;

    .line 548
    iput-boolean v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->isAddAvgText:Z

    .line 130
    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    .line 131
    sget-object v0, Lcom/keephealth/android/R$styleable;->SportBarChart:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x6

    const/high16 v0, 0x41e00000    # 28.0f

    .line 136
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textSize:F

    const/4 p2, -0x1

    .line 137
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textColor:I

    const/4 p2, 0x2

    const v0, -0x10abc0

    .line 138
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barColor:I

    .line 139
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->initPaint()V

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0261

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->sportBitmap:Landroid/graphics/Bitmap;

    .line 146
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0234

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->popupLeft:Landroid/graphics/drawable/NinePatchDrawable;

    .line 147
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0235

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->popupRight:Landroid/graphics/drawable/NinePatchDrawable;

    .line 148
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0233

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->popupCenter:Landroid/graphics/drawable/NinePatchDrawable;

    .line 149
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800d9

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchBg:Landroid/graphics/Bitmap;

    .line 151
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005b

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    .line 152
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005a

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->finishAfterBitmap:Landroid/graphics/Bitmap;

    .line 154
    iget-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_e2

    iget-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    goto :goto_e8

    :cond_e2
    iget-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_e8
    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->radTopPadding:F

    return-void
.end method

.method private calculate()V
    .registers 11

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->sportBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->bitmapH:I

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->sportBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->bitmapW:I

    .line 227
    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->bitmapH:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->topH:F

    .line 228
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->dataPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->bottomH:F

    const/4 v1, 0x0

    .line 230
    iput v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    .line 232
    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mHeight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->topH:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v0

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->centerH:F

    .line 235
    div-int/lit8 v0, v2, 0x1e

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->sportToOneLineH:F

    .line 238
    iget-object v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yHeight:[F

    const/4 v5, 0x0

    aput v0, v1, v5

    add-float/2addr v0, v4

    const/4 v6, 0x1

    .line 239
    aput v0, v1, v6

    add-float/2addr v4, v3

    const/4 v0, 0x2

    .line 240
    aput v4, v1, v0

    .line 241
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 244
    iget-object v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->topH:F

    iget v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->sportToOneLineH:F

    add-float v7, v2, v3

    add-float/2addr v7, v3

    aput v7, v1, v5

    .line 245
    iget v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->centerH:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v5, v8

    add-float/2addr v7, v9

    sub-float/2addr v7, v3

    aput v7, v1, v6

    sub-float/2addr v5, v3

    add-float/2addr v2, v5

    sub-float/2addr v2, v3

    .line 246
    aput v2, v1, v0

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    .line 257
    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v4

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barNum:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barWidth:F

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mWidth= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",xOffSet= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",(mWidth - 2 * xOffSet)= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",barWidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",barWid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barWid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private drawTouchText(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 288
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float/2addr v2, v4

    const/4 v5, 0x0

    .line 289
    :goto_d
    iget-object v6, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_35b

    .line 290
    iget v6, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->chartWidthSpan:F

    int-to-float v7, v5

    mul-float/2addr v6, v7

    iget v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barWid:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3fc00000    # 1.5f

    iget v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    .line 298
    sget-object v7, Lcom/keephealth/android/views/DetailOutDoorSportChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x3

    const/4 v9, 0x1

    const-string v10, " "

    const-string v11, ""

    if-eq v7, v9, :cond_e2

    if-eq v7, v3, :cond_b0

    if-eq v7, v8, :cond_3c

    move-object v10, v11

    const/4 v7, 0x0

    goto/16 :goto_112

    .line 308
    :cond_3c
    iget-object v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v7

    float-to-int v7, v7

    .line 309
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v12

    const/high16 v13, 0x447a0000    # 1000.0f

    if-eqz v12, :cond_81

    .line 310
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v14, v7

    div-float/2addr v14, v13

    invoke-static {v14, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100771

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_112

    .line 312
    :cond_81
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v14, v7

    div-float/2addr v14, v13

    invoke-static {v14}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v13

    invoke-static {v13, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100774

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_112

    .line 304
    :cond_b0
    iget-object v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v7

    float-to-int v7, v7

    .line 305
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100769

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_112

    .line 300
    :cond_e2
    iget-object v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v7}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v7

    .line 301
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100387

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 318
    :goto_112
    iget v12, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    int-to-float v13, v7

    mul-float/2addr v12, v13

    sub-float v12, v2, v12

    .line 321
    iget-wide v13, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchX:D

    float-to-double v3, v6

    cmpl-double v3, v13, v3

    if-lez v3, :cond_34f

    iget v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->chartWidthSpan:F

    add-float/2addr v3, v6

    float-to-double v3, v3

    cmpg-double v3, v13, v3

    if-gez v3, :cond_34f

    if-lez v7, :cond_34f

    .line 324
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f06015c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0701b6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 326
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0701b7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 327
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f060113

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v3}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v3

    .line 332
    iget-object v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v4, v3}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 333
    iget-object v13, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v13, v3}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v13

    float-to-int v13, v13

    .line 335
    iget-object v14, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v14, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v14

    float-to-int v14, v14

    .line 336
    iget-object v15, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v15, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v15

    float-to-int v15, v15

    .line 337
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v13, v15

    const/high16 v9, 0x41a00000    # 20.0f

    move/from16 v16, v2

    .line 341
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    .line 344
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    .line 345
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    .line 347
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v17, v11

    iget-object v11, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 348
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f06004b

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41200000    # 10.0f

    .line 351
    iget-object v9, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    .line 354
    iget-object v9, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    div-int/lit8 v11, v7, 0x2

    move/from16 v18, v5

    int-to-float v5, v11

    sub-float v5, v6, v5

    float-to-int v5, v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    iput v5, v9, Landroid/graphics/RectF;->left:F

    .line 355
    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    float-to-int v9, v12

    sub-int/2addr v9, v11

    int-to-float v9, v9

    iput v9, v5, Landroid/graphics/RectF;->top:F

    .line 359
    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/RectF;->top:F

    const/4 v11, 0x0

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v5, Landroid/graphics/RectF;->top:F

    .line 360
    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/RectF;->left:F

    int-to-float v7, v7

    add-float/2addr v9, v7

    mul-int/lit8 v12, v2, 0x2

    int-to-float v12, v12

    add-float/2addr v9, v12

    iput v9, v5, Landroid/graphics/RectF;->right:F

    .line 361
    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v9, v5, Landroid/graphics/RectF;->top:F

    int-to-float v8, v8

    add-float/2addr v9, v8

    const/high16 v8, 0x41700000    # 15.0f

    iget-object v11, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v9, v8

    int-to-float v8, v2

    add-float/2addr v9, v8

    iput v9, v5, Landroid/graphics/RectF;->bottom:F

    .line 364
    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    sub-float v5, v6, v5

    .line 366
    div-int/lit8 v9, v14, 0x2

    int-to-float v9, v9

    sub-float/2addr v6, v9

    .line 369
    iget-object v9, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getWidth()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_268

    .line 371
    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    int-to-float v2, v6

    iput v2, v5, Landroid/graphics/RectF;->right:F

    .line 373
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v7

    sub-float/2addr v5, v12

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 375
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v4, v4

    sub-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    add-float/2addr v5, v2

    .line 376
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    :goto_263
    int-to-float v7, v14

    sub-float/2addr v6, v7

    div-float/2addr v6, v4

    add-float/2addr v6, v2

    goto :goto_298

    .line 377
    :cond_268
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v9, 0x0

    cmpg-float v2, v2, v9

    if-gtz v2, :cond_298

    .line 378
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iput v8, v2, Landroid/graphics/RectF;->left:F

    .line 379
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    add-float/2addr v5, v12

    iput v5, v2, Landroid/graphics/RectF;->right:F

    .line 381
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v4, v4

    sub-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    add-float/2addr v5, v2

    .line 382
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    goto :goto_263

    .line 387
    :cond_298
    :goto_298
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f060061

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 390
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    iget-object v11, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v7, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 392
    sget-object v2, Lcom/keephealth/android/views/DetailOutDoorSportChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v7

    aget v2, v2, v7

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2e8

    const/4 v7, 0x2

    if-eq v2, v7, :cond_2e5

    const/4 v11, 0x3

    if-eq v2, v11, :cond_2e2

    move-object/from16 v11, v17

    goto :goto_2eb

    .line 400
    :cond_2e2
    const-string v11, "#21C2FC"

    goto :goto_2eb

    .line 398
    :cond_2e5
    const-string v11, "#FC6620"

    goto :goto_2eb

    :cond_2e8
    const/4 v7, 0x2

    .line 395
    const-string v11, "#FDEC36"

    .line 403
    :goto_2eb
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 405
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v11, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 406
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    iget-object v11, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 411
    iget-object v2, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v8

    .line 413
    iget-object v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f060113

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v13

    add-float/2addr v2, v4

    .line 415
    iget-object v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v3, v15

    add-float/2addr v2, v3

    .line 416
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v9, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v6, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_354

    :cond_34f
    move/from16 v16, v2

    move/from16 v18, v5

    const/4 v7, 0x2

    :goto_354
    add-int/lit8 v5, v18, 0x1

    move v3, v7

    move/from16 v2, v16

    goto/16 :goto_d

    :cond_35b
    return-void
.end method

.method private drawX(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    .line 445
    iget v1, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v4, v1, v2

    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    const/4 v9, 0x2

    aget v3, v3, v9

    iget v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float v6, v3, v5

    iget v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v1, v2

    sub-float v1, v7, v1

    add-float v7, v3, v5

    iget-object v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v6

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 447
    iget v1, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xWidth:F

    .line 448
    iget-object v1, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xLables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 449
    iget v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xWidth:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 450
    iget-object v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v4

    .line 452
    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 453
    iget-object v5, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_57
    if-ge v6, v1, :cond_79

    int-to-float v7, v6

    mul-float/2addr v7, v3

    .line 455
    iget v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 463
    iget-object v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xLables:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v10, v10, v9

    add-float/2addr v10, v4

    iget v11, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float/2addr v10, v11

    iget-object v11, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v8, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_79
    move-object/from16 v15, p1

    .line 468
    iget-object v1, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v1, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    if-eqz v1, :cond_222

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    goto/16 :goto_222

    .line 472
    :cond_9b
    iget v1, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xWidth:F

    const/high16 v3, 0x41200000    # 10.0f

    iget-object v4, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 473
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x40a00000    # 5.0f

    iget-object v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    iget-object v3, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v3, v3, v9

    iget v6, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float/2addr v3, v6

    move v6, v5

    .line 477
    :goto_c9
    iget-object v7, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_222

    int-to-float v7, v6

    mul-float/2addr v7, v1

    .line 478
    iget v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barWid:F

    add-float/2addr v7, v8

    iget v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 487
    sget-object v8, Lcom/keephealth/android/views/DetailOutDoorSportChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v10, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    const-string v10, " "

    const-string v11, ""

    if-eq v8, v4, :cond_1b3

    if-eq v8, v9, :cond_176

    const/4 v12, 0x3

    if-eq v8, v12, :cond_f6

    move v13, v5

    move/from16 v21, v13

    move/from16 v22, v21

    goto/16 :goto_1f2

    .line 501
    :cond_f6
    const-string v8, "#28E7FD"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 502
    const-string v12, "#21C2FC"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 503
    iget-object v13, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v13

    float-to-int v13, v13

    .line 504
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v14

    const/high16 v16, 0x447a0000    # 1000.0f

    if-eqz v14, :cond_147

    .line 505
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v11, v13

    div-float v11, v11, v16

    invoke-static {v11, v9}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f100771

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1ee

    .line 507
    :cond_147
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v11, v13

    div-float v11, v11, v16

    invoke-static {v11}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v11

    invoke-static {v11, v9}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f100774

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1ee

    .line 495
    :cond_176
    const-string v8, "#F9E434"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 496
    const-string v12, "#FC6620"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 497
    iget-object v13, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v13

    float-to-int v13, v13

    .line 498
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f100769

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1ee

    .line 489
    :cond_1b3
    const-string v8, "#EDFC4F"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 490
    const-string v12, "#FDEC36"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    .line 491
    iget-object v13, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v13

    .line 492
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f100387

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1ee
    move/from16 v21, v8

    move/from16 v22, v12

    .line 511
    :goto_1f2
    iget v8, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    int-to-float v10, v13

    mul-float/2addr v8, v10

    sub-float v8, v3, v8

    .line 512
    new-instance v10, Landroid/graphics/LinearGradient;

    sget-object v23, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v10

    move/from16 v17, v7

    move/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v8

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 513
    iget-object v11, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 514
    iget-object v10, v0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v7

    move v14, v3

    move v15, v7

    move/from16 v16, v8

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v15, p1

    goto/16 :goto_c9

    :cond_222
    :goto_222
    return-void
.end method

.method private drawXLine(Landroid/graphics/Canvas;)V
    .registers 12

    .line 428
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 429
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 430
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    const/4 v8, 0x2

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    mul-float v6, v4, v5

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 432
    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIDDLE_VALUE:F

    mul-float v6, v4, v5

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 433
    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MID_VALUE_2:F

    mul-float v6, v4, v5

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 434
    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIN_VALUE:F

    mul-float v6, v4, v5

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 435
    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->paddingTop:F

    add-float v5, v2, v4

    iget v6, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v0, v1

    sub-float v0, v6, v0

    add-float v6, v2, v4

    iget-object v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawY(Landroid/graphics/Canvas;)V
    .registers 13

    .line 525
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textSize:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 527
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 528
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 529
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 531
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 533
    iget-object v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    const-string v3, "0"

    const-string v4, ""

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x2

    if-eq v1, v2, :cond_fb

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v7, v7, v6

    iget v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIDDLE_VALUE:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v7, v7, v6

    iget v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIDDLE_VALUE:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MID_VALUE_2:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v7, v7, v6

    iget v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MID_VALUE_2:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIN_VALUE:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v4, v4, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIN_VALUE:F

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    sub-float/2addr v4, v0

    iget-object v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 538
    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v2, v2, v6

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1b6

    .line 540
    :cond_fb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v2, v7

    invoke-static {v2, v6}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v8, v8, v6

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v10, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIDDLE_VALUE:F

    div-float/2addr v2, v7

    invoke-static {v2, v6}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v8, v8, v6

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v10, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIDDLE_VALUE:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MID_VALUE_2:F

    div-float/2addr v2, v7

    invoke-static {v2, v6}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v8, v8, v6

    iget v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v10, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MID_VALUE_2:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIN_VALUE:F

    div-float/2addr v2, v7

    invoke-static {v2, v6}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v4, v4, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    iget v8, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIN_VALUE:F

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    sub-float/2addr v4, v0

    iget-object v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 544
    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xOffSet:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    aget v2, v2, v6

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1b6
    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    .line 163
    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchBgPaint:Landroid/graphics/Paint;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint2:Landroid/graphics/Paint;

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textPaint:Landroid/graphics/Paint;

    .line 173
    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->dataPaint:Landroid/graphics/Paint;

    .line 178
    iget v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->dataPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->dataPaint:Landroid/graphics/Paint;

    const v2, 0x3fe66666    # 1.8f

    iget v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textSize:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->unitPaint:Landroid/graphics/Paint;

    .line 183
    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->unitPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->unitPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private initYscale()V
    .registers 5

    .line 617
    iget v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 618
    iget-object v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->lineHeight:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->yScale:F

    :cond_13
    return-void
.end method


# virtual methods
.method public initDatas(Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/model/bean/DetailType;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSportItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/keephealth/android/model/bean/DetailType;",
            ")V"
        }
    .end annotation

    .line 561
    iput-object p3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 562
    iget-boolean v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->isToday:Z

    iput-boolean v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->isToday:Z

    .line 563
    iput-object p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 564
    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    .line 565
    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xWidth:F

    const/high16 v2, 0x41200000    # 10.0f

    iget-object v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->chartWidthSpan:F

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_a1

    .line 566
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a1

    move v4, v1

    .line 567
    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a1

    .line 568
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 569
    sget-object v6, Lcom/keephealth/android/views/DetailOutDoorSportChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v3, :cond_8c

    if-eq v6, v2, :cond_7b

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4a

    goto :goto_9e

    .line 581
    :cond_4a
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9e

    .line 582
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 583
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6, v2}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    goto :goto_9e

    .line 585
    :cond_6b
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/UnitUtil;->getKm2mile(F)D

    move-result-wide v5

    invoke-static {v5, v6, v2}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    goto :goto_9e

    .line 576
    :cond_7b
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9e

    .line 577
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v5

    iput v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    goto :goto_9e

    .line 571
    :cond_8c
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9e

    .line 572
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    :cond_9e
    :goto_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 594
    :cond_a1
    iget p3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_bb

    .line 595
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->isDrawTAB:Z

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v0, v4

    .line 596
    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIDDLE_VALUE:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p3, v0

    .line 597
    iput v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIN_VALUE:F

    div-float/2addr p3, v4

    .line 598
    iput p3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MID_VALUE_2:F

    goto :goto_cd

    .line 600
    :cond_bb
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->isDrawTAB:Z

    const/high16 p3, 0x43c80000    # 400.0f

    .line 601
    iput p3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MAX_VALUE:F

    const/high16 p3, 0x43960000    # 300.0f

    .line 602
    iput p3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIDDLE_VALUE:F

    const/high16 p3, 0x43480000    # 200.0f

    .line 603
    iput p3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MID_VALUE_2:F

    const/high16 p3, 0x42c80000    # 100.0f

    .line 604
    iput p3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->MIN_VALUE:F

    .line 606
    :goto_cd
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barNum:I

    .line 607
    iput-object p2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->xLables:Ljava/util/List;

    .line 608
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_da

    goto :goto_db

    :cond_da
    move v3, v1

    :goto_db
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->isDouble:Z

    .line 609
    div-int/2addr p1, v2

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->middleIndex:I

    .line 610
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->initYscale()V

    .line 611
    iput-boolean v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->initDraw:Z

    .line 612
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->invalidate()V

    return-void
.end method

.method public isAddAvgText(Z)V
    .registers 2

    .line 550
    iput-boolean p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->isAddAvgText:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 270
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->exelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->exelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 273
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->exelPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->drawXLine(Landroid/graphics/Canvas;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->drawY(Landroid/graphics/Canvas;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->drawX(Landroid/graphics/Canvas;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->drawTouchText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 192
    iput p1, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mWidth:I

    .line 193
    iput p2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->mHeight:I

    .line 194
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->calculate()V

    .line 195
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->initYscale()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 200
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_24

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    goto :goto_32

    .line 203
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchX:D

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-double v2, p1

    iput-wide v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchY:D

    goto :goto_32

    .line 208
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-double v2, p1

    iput-wide v2, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchX2:D

    .line 209
    iget-wide v4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->touchX:D

    sub-double/2addr v2, v4

    .line 210
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 216
    :goto_32
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->invalidate()V

    return v1
.end method

.method public setData(Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/model/bean/DetailType;Lcom/keephealth/android/model/bean/BarChartProperties;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/HealthSportItem;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/keephealth/android/model/bean/DetailType;",
            "Lcom/keephealth/android/model/bean/BarChartProperties;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 554
    iget v1, p4, Lcom/keephealth/android/model/bean/BarChartProperties;->barColor:I

    if-eq v0, v1, :cond_8

    iget p4, p4, Lcom/keephealth/android/model/bean/BarChartProperties;->barColor:I

    goto :goto_a

    :cond_8
    iget p4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barColor:I

    :goto_a
    iput p4, p0, Lcom/keephealth/android/views/DetailOutDoorSportChart;->barColor:I

    .line 556
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->initPaint()V

    .line 557
    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/views/DetailOutDoorSportChart;->initDatas(Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/model/bean/DetailType;)V

    return-void
.end method
