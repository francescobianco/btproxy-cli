.class public Lcom/keephealth/android/views/DetailSportChart;
.super Landroid/view/View;
.source "DetailSportChart.java"


# instance fields
.field private final ANIM2PROGRESS_MAX:I

.field private MAX_VALUE:I

.field private MIDDLE_VALUE:I

.field private MIN_VALUE:I

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

.field private touchX:F

.field private touchY:F

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
    .registers 7

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1e

    .line 38
    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->ANIM2PROGRESS_MAX:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->tempSteps:I

    const/4 v1, 0x4

    .line 49
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/keephealth/android/views/DetailSportChart;->yHeight:[F

    const/4 v1, 0x3

    .line 50
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    const/16 v2, 0x60

    .line 55
    iput v2, p0, Lcom/keephealth/android/views/DetailSportChart;->barNum:I

    const/4 v2, 0x1

    .line 81
    iput-boolean v2, p0, Lcom/keephealth/android/views/DetailSportChart;->animing1:Z

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/DetailSportChart;->xLables:Ljava/util/List;

    .line 108
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    const v3, 0x3bffffff

    .line 111
    iput v3, p0, Lcom/keephealth/android/views/DetailSportChart;->exelColor:I

    .line 113
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/keephealth/android/views/DetailSportChart;->exelPaint:Landroid/graphics/Paint;

    .line 493
    iput-boolean v0, p0, Lcom/keephealth/android/views/DetailSportChart;->isAddAvgText:Z

    .line 123
    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    .line 124
    sget-object v3, Lcom/keephealth/android/R$styleable;->SportBarChart:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, 0x41e00000    # 28.0f

    .line 126
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/DetailSportChart;->textSize:F

    const/4 p2, -0x1

    .line 127
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/DetailSportChart;->textColor:I

    const/4 p2, 0x2

    const v0, -0x10abc0

    .line 128
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/DetailSportChart;->barColor:I

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/DetailSportChart;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailSportChart;->initPaint()V

    .line 135
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0261

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->sportBitmap:Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0234

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->popupLeft:Landroid/graphics/drawable/NinePatchDrawable;

    .line 137
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0235

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->popupRight:Landroid/graphics/drawable/NinePatchDrawable;

    .line 138
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0233

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->popupCenter:Landroid/graphics/drawable/NinePatchDrawable;

    .line 139
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800d9

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->touchBg:Landroid/graphics/Bitmap;

    .line 141
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005b

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    .line 142
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005a

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->finishAfterBitmap:Landroid/graphics/Bitmap;

    .line 144
    iget-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/views/DetailSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_e1

    iget-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    goto :goto_e7

    :cond_e1
    iget-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_e7
    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/DetailSportChart;->radTopPadding:F

    return-void
.end method

.method private calculate()V
    .registers 11

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->sportBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->bitmapH:I

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->sportBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->bitmapW:I

    .line 216
    iget v0, p0, Lcom/keephealth/android/views/DetailSportChart;->bitmapH:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->topH:F

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->dataPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->bottomH:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 218
    iget-object v1, p0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    .line 221
    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->mHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/keephealth/android/views/DetailSportChart;->topH:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/keephealth/android/views/DetailSportChart;->bottomH:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/views/DetailSportChart;->centerH:F

    .line 224
    div-int/lit8 v0, v1, 0x1e

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->sportToOneLineH:F

    .line 227
    iget-object v4, p0, Lcom/keephealth/android/views/DetailSportChart;->yHeight:[F

    const/4 v5, 0x0

    aput v0, v4, v5

    add-float/2addr v0, v3

    const/4 v6, 0x1

    .line 228
    aput v0, v4, v6

    add-float/2addr v3, v2

    const/4 v0, 0x2

    .line 229
    aput v3, v4, v0

    .line 230
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v4, v2

    .line 233
    iget-object v1, p0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    iget v2, p0, Lcom/keephealth/android/views/DetailSportChart;->topH:F

    iget v4, p0, Lcom/keephealth/android/views/DetailSportChart;->sportToOneLineH:F

    add-float v7, v2, v4

    add-float/2addr v7, v4

    aput v7, v1, v5

    .line 234
    iget v5, p0, Lcom/keephealth/android/views/DetailSportChart;->centerH:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v5, v8

    add-float/2addr v7, v9

    sub-float/2addr v7, v4

    aput v7, v1, v6

    sub-float/2addr v5, v4

    add-float/2addr v2, v5

    sub-float/2addr v2, v4

    .line 235
    aput v2, v1, v0

    .line 238
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    .line 246
    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barNum:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/keephealth/android/views/DetailSportChart;->barWidth:F

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mWidth= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",xOffSet= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",(mWidth - 2 * xOffSet)= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float/2addr v2, v8

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",barWidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->barWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",barWid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->barWid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v4, v0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float/2addr v2, v4

    .line 275
    iget v4, v0, Lcom/keephealth/android/views/DetailSportChart;->xWidth:F

    iget-object v5, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v8, 0x0

    .line 276
    :goto_23
    iget-object v9, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_348

    int-to-float v9, v8

    mul-float/2addr v9, v4

    .line 277
    iget v10, v0, Lcom/keephealth/android/views/DetailSportChart;->barWid:F

    add-float/2addr v9, v10

    const/high16 v10, 0x3fc00000    # 1.5f

    iget v11, v0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float/2addr v11, v10

    add-float/2addr v9, v11

    .line 282
    sget-object v10, Lcom/keephealth/android/views/DetailSportChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v11, v0, Lcom/keephealth/android/views/DetailSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const-string v11, " "

    const-string v12, ""

    if-eq v10, v7, :cond_f4

    if-eq v10, v3, :cond_c2

    const/4 v13, 0x3

    if-eq v10, v13, :cond_4e

    const/4 v10, 0x0

    goto/16 :goto_124

    .line 292
    :cond_4e
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v10

    float-to-int v10, v10

    .line 293
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v13

    const/high16 v14, 0x447a0000    # 1000.0f

    if-eqz v13, :cond_93

    .line 294
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v12, v10

    div-float/2addr v12, v14

    invoke-static {v12, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100771

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_124

    .line 296
    :cond_93
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v12, v10

    div-float/2addr v12, v14

    invoke-static {v12}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v12

    invoke-static {v12, v3}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100774

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_124

    .line 288
    :cond_c2
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v10

    float-to-int v10, v10

    .line 289
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100769

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_124

    .line 284
    :cond_f4
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v10

    .line 285
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f10077a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 302
    :goto_124
    iget v11, v0, Lcom/keephealth/android/views/DetailSportChart;->yScale:F

    int-to-float v13, v10

    mul-float/2addr v11, v13

    sub-float v11, v2, v11

    .line 305
    iget v13, v0, Lcom/keephealth/android/views/DetailSportChart;->touchX:F

    cmpl-float v14, v13, v9

    if-lez v14, :cond_335

    add-float v14, v9, v4

    cmpg-float v13, v13, v14

    if-gez v13, :cond_335

    if-lez v10, :cond_335

    .line 308
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f06015c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0701b8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 312
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0701b9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 313
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060113

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v10

    .line 318
    iget-object v13, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v13, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v13

    float-to-int v13, v13

    .line 319
    iget-object v15, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-static {v15, v10}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v15

    float-to-int v15, v15

    .line 321
    iget-object v3, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v3, v12}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 322
    iget-object v5, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-static {v5, v12}, Lcom/keephealth/android/util/ViewUtil;->getTextRectHeight(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 323
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v7, v15, v5

    const/high16 v6, 0x41a00000    # 20.0f

    move/from16 v16, v2

    .line 327
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    .line 330
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    .line 331
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    .line 333
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v17, v4

    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06004b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    .line 339
    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    div-int/lit8 v4, v14, 0x2

    move/from16 v18, v8

    int-to-float v8, v4

    sub-float v8, v9, v8

    float-to-int v8, v8

    sub-int/2addr v8, v2

    int-to-float v8, v8

    iput v8, v6, Landroid/graphics/RectF;->left:F

    .line 340
    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    float-to-int v8, v11

    sub-int/2addr v8, v4

    sub-int/2addr v8, v5

    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    const/high16 v11, 0x41700000    # 15.0f

    invoke-static {v11, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    sub-int/2addr v8, v4

    int-to-float v4, v8

    iput v4, v6, Landroid/graphics/RectF;->top:F

    .line 341
    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    int-to-float v8, v14

    add-float/2addr v6, v8

    mul-int/lit8 v14, v2, 0x2

    int-to-float v14, v14

    add-float/2addr v6, v14

    iput v6, v4, Landroid/graphics/RectF;->right:F

    .line 342
    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->top:F

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v7, v2

    add-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    .line 345
    div-int/lit8 v4, v13, 0x2

    int-to-float v4, v4

    sub-float v4, v9, v4

    .line 347
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    sub-float/2addr v9, v6

    .line 350
    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getWidth()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v6, v6, v11

    if-lez v6, :cond_275

    .line 352
    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    int-to-float v2, v6

    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 354
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v8

    sub-float/2addr v4, v14

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 356
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v6, v13

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v2

    .line 357
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    :goto_26f
    int-to-float v3, v3

    sub-float/2addr v8, v3

    div-float/2addr v8, v6

    add-float v9, v2, v8

    goto :goto_2a5

    .line 358
    :cond_275
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x0

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_2a5

    .line 359
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iput v7, v2, Landroid/graphics/RectF;->left:F

    .line 360
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v8

    add-float/2addr v4, v14

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 362
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v6, v13

    sub-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v2

    .line 363
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    goto :goto_26f

    .line 367
    :cond_2a5
    :goto_2a5
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060061

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    const/high16 v11, 0x40a00000    # 5.0f

    invoke-static {v11, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v11, v13}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v1, v6, v8, v13, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 372
    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 373
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060139

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v11, v13}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v1, v6, v8, v13, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 380
    iget-object v2, v0, Lcom/keephealth/android/views/DetailSportChart;->selectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v7

    .line 382
    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060113

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v10, :cond_323

    int-to-float v6, v15

    add-float/2addr v6, v2

    .line 385
    iget-object v7, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_323
    int-to-float v4, v15

    add-float/2addr v2, v4

    int-to-float v4, v5

    add-float/2addr v2, v4

    .line 386
    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v9, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_33c

    :cond_335
    move/from16 v16, v2

    move/from16 v17, v4

    move v3, v7

    move/from16 v18, v8

    :goto_33c
    add-int/lit8 v8, v18, 0x1

    move v7, v3

    move/from16 v2, v16

    move/from16 v4, v17

    const/4 v3, 0x2

    const/high16 v6, 0x41200000    # 10.0f

    goto/16 :goto_23

    :cond_348
    return-void
.end method

.method private drawX(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    .line 414
    iget v1, v0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v4, v1, v2

    iget-object v3, v0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    const/4 v9, 0x2

    aget v3, v3, v9

    iget v5, v0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float v6, v3, v5

    iget v7, v0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v1, v2

    sub-float v1, v7, v1

    add-float v7, v3, v5

    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v6

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    iget-object v1, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 417
    iget v1, v0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, v0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/keephealth/android/views/DetailSportChart;->xWidth:F

    .line 418
    iget-object v1, v0, Lcom/keephealth/android/views/DetailSportChart;->xLables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 419
    iget v3, v0, Lcom/keephealth/android/views/DetailSportChart;->xWidth:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 420
    iget-object v4, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v4

    .line 422
    iget-object v5, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

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

    .line 424
    iget v8, v0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 432
    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->xLables:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    aget v10, v10, v9

    add-float/2addr v10, v4

    iget v11, v0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float/2addr v10, v11

    iget-object v11, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v8, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_79
    move-object/from16 v15, p1

    .line 437
    iget-object v1, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    iget-object v1, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    if-eqz v1, :cond_20f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    goto/16 :goto_20f

    .line 441
    :cond_9b
    iget v1, v0, Lcom/keephealth/android/views/DetailSportChart;->xWidth:F

    const/high16 v3, 0x41200000    # 10.0f

    iget-object v6, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 442
    iget-object v3, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x40a00000    # 5.0f

    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v1, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 445
    iget-object v3, v0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    aget v3, v3, v9

    iget v7, v0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float/2addr v3, v7

    move v7, v5

    .line 446
    :goto_c9
    iget-object v8, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_20f

    int-to-float v8, v7

    mul-float/2addr v8, v1

    .line 447
    iget v10, v0, Lcom/keephealth/android/views/DetailSportChart;->barWid:F

    add-float/2addr v8, v10

    iget v10, v0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float/2addr v10, v2

    add-float/2addr v8, v10

    .line 455
    sget-object v10, Lcom/keephealth/android/views/DetailSportChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v11, v0, Lcom/keephealth/android/views/DetailSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v11}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const-string v11, " "

    const-string v12, ""

    if-eq v10, v6, :cond_195

    if-eq v10, v9, :cond_164

    const/4 v13, 0x3

    if-eq v10, v13, :cond_f2

    move v10, v5

    goto/16 :goto_1c4

    .line 465
    :cond_f2
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v10

    float-to-int v10, v10

    .line 466
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v13

    const/high16 v14, 0x447a0000    # 1000.0f

    if-eqz v13, :cond_136

    .line 467
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v12, v10

    div-float/2addr v12, v14

    invoke-static {v12, v9}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100771

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1c4

    .line 469
    :cond_136
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v12, v10

    div-float/2addr v12, v14

    invoke-static {v12}, Lcom/keephealth/android/util/UnitUtil;->km2mile(F)F

    move-result v12

    invoke-static {v12, v9}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100774

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1c4

    .line 461
    :cond_164
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v10

    float-to-int v10, v10

    .line 462
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100769

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1c4

    .line 457
    :cond_195
    iget-object v10, v0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v10}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v10

    .line 458
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f10077a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    :goto_1c4
    iget v11, v0, Lcom/keephealth/android/views/DetailSportChart;->yScale:F

    int-to-float v10, v10

    mul-float/2addr v11, v10

    sub-float v10, v3, v11

    .line 475
    new-instance v11, Landroid/graphics/LinearGradient;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060139

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    sget-object v23, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v11

    move/from16 v17, v8

    move/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v10

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 476
    iget-object v12, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 477
    iget-object v11, v0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v13, v8

    move v14, v3

    move v15, v8

    move/from16 v16, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, p1

    goto/16 :goto_c9

    :cond_20f
    :goto_20f
    return-void
.end method

.method private drawXLine(Landroid/graphics/Canvas;)V
    .registers 12

    .line 398
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 399
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 400
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    iget v0, p0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    const/4 v8, 0x2

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailSportChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    int-to-float v6, v5

    mul-float/2addr v6, v4

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 402
    iget v0, p0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailSportChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/DetailSportChart;->MIDDLE_VALUE:I

    int-to-float v6, v5

    mul-float/2addr v6, v4

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 403
    iget v0, p0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailSportChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/DetailSportChart;->MIN_VALUE:I

    int-to-float v6, v5

    mul-float/2addr v6, v4

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 404
    iget v0, p0, Lcom/keephealth/android/views/DetailSportChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/DetailSportChart;->paddingTop:F

    add-float v5, v2, v4

    iget v6, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v0, v1

    sub-float v0, v6, v0

    add-float v6, v2, v4

    iget-object v7, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawY(Landroid/graphics/Canvas;)V
    .registers 4

    .line 488
    iget-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 489
    iget-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->textSize:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 490
    iget-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    .line 153
    iget v2, p0, Lcom/keephealth/android/views/DetailSportChart;->barColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->touchBgPaint:Landroid/graphics/Paint;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint2:Landroid/graphics/Paint;

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->touchPaint2:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->textPaint:Landroid/graphics/Paint;

    .line 163
    iget v2, p0, Lcom/keephealth/android/views/DetailSportChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/DetailSportChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->dataPaint:Landroid/graphics/Paint;

    .line 168
    iget v2, p0, Lcom/keephealth/android/views/DetailSportChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->dataPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->dataPaint:Landroid/graphics/Paint;

    const v2, 0x3fe66666    # 1.8f

    iget v3, p0, Lcom/keephealth/android/views/DetailSportChart;->textSize:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->unitPaint:Landroid/graphics/Paint;

    .line 173
    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->unitPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->unitPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private initYscale()V
    .registers 5

    .line 549
    iget v0, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    if-eqz v0, :cond_11

    .line 550
    iget-object v1, p0, Lcom/keephealth/android/views/DetailSportChart;->lineHeight:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/views/DetailSportChart;->yScale:F

    :cond_11
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

    .line 498
    iput-object p3, p0, Lcom/keephealth/android/views/DetailSportChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 499
    iget-boolean v0, p0, Lcom/keephealth/android/views/DetailSportChart;->isToday:Z

    iput-boolean v0, p0, Lcom/keephealth/android/views/DetailSportChart;->isToday:Z

    .line 500
    iput-object p1, p0, Lcom/keephealth/android/views/DetailSportChart;->healthSportItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 501
    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_69

    .line 502
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_69

    move v4, v0

    .line 503
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    .line 504
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 505
    sget-object v6, Lcom/keephealth/android/views/DetailSportChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v3, :cond_58

    if-eq v6, v2, :cond_45

    if-eq v6, v1, :cond_32

    goto :goto_66

    .line 517
    :cond_32
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_66

    .line 518
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    goto :goto_66

    .line 512
    :cond_45
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_66

    .line 513
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    goto :goto_66

    .line 507
    :cond_58
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    if-le v6, v7, :cond_66

    .line 508
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v5

    iput v5, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 526
    :cond_69
    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    .line 528
    :cond_6b
    iget p3, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    if-eqz p3, :cond_7a

    .line 529
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailSportChart;->isDrawTAB:Z

    mul-int/lit8 v4, p3, 0x2

    .line 530
    div-int/2addr v4, v1

    iput v4, p0, Lcom/keephealth/android/views/DetailSportChart;->MIDDLE_VALUE:I

    .line 531
    div-int/2addr p3, v1

    iput p3, p0, Lcom/keephealth/android/views/DetailSportChart;->MIN_VALUE:I

    goto :goto_88

    .line 533
    :cond_7a
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailSportChart;->isDrawTAB:Z

    const/16 p3, 0xbb8

    .line 534
    iput p3, p0, Lcom/keephealth/android/views/DetailSportChart;->MAX_VALUE:I

    const/16 p3, 0x7d0

    .line 535
    iput p3, p0, Lcom/keephealth/android/views/DetailSportChart;->MIDDLE_VALUE:I

    const/16 p3, 0x3e8

    .line 536
    iput p3, p0, Lcom/keephealth/android/views/DetailSportChart;->MIN_VALUE:I

    .line 538
    :goto_88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/DetailSportChart;->barNum:I

    .line 539
    iput-object p2, p0, Lcom/keephealth/android/views/DetailSportChart;->xLables:Ljava/util/List;

    .line 540
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_95

    goto :goto_96

    :cond_95
    move v3, v0

    :goto_96
    iput-boolean v3, p0, Lcom/keephealth/android/views/DetailSportChart;->isDouble:Z

    .line 541
    div-int/2addr p1, v2

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/keephealth/android/views/DetailSportChart;->middleIndex:I

    .line 542
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailSportChart;->initYscale()V

    .line 543
    iput-boolean v0, p0, Lcom/keephealth/android/views/DetailSportChart;->initDraw:Z

    .line 544
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->invalidate()V

    return-void
.end method

.method public isAddAvgText(Z)V
    .registers 2

    .line 495
    iput-boolean p1, p0, Lcom/keephealth/android/views/DetailSportChart;->isAddAvgText:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 258
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 259
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->exelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/DetailSportChart;->exelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/views/DetailSportChart;->barPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 261
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/DetailSportChart;->exelPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailSportChart;->drawXLine(Landroid/graphics/Canvas;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailSportChart;->drawY(Landroid/graphics/Canvas;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailSportChart;->drawX(Landroid/graphics/Canvas;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/DetailSportChart;->drawText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 183
    iput p1, p0, Lcom/keephealth/android/views/DetailSportChart;->mWidth:I

    .line 184
    iput p2, p0, Lcom/keephealth/android/views/DetailSportChart;->mHeight:I

    .line 186
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailSportChart;->calculate()V

    .line 188
    invoke-direct {p0}, Lcom/keephealth/android/views/DetailSportChart;->initYscale()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto :goto_14

    .line 197
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/DetailSportChart;->touchX:F

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/DetailSportChart;->touchY:F

    .line 204
    :goto_14
    invoke-virtual {p0}, Lcom/keephealth/android/views/DetailSportChart;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
