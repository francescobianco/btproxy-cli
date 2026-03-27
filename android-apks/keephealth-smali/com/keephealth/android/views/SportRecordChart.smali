.class public Lcom/keephealth/android/views/SportRecordChart;
.super Landroid/view/View;
.source "SportRecordChart.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final ANIM2PROGRESS_MAX:I

.field private MAX_VALUE:F

.field private MIDDLE_VALUE:F

.field private MIN_VALUE:F

.field Xvalue_distance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field Xvalue_kll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field Xvalue_step:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

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

.field dateDistanceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dateKllList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dateStepList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field detailType:Lcom/keephealth/android/model/bean/DetailType;

.field distanceValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field downX:F

.field downY:F

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

.field private isDouble:Z

.field private isDrawTAB:Z

.field private isToday:Z

.field is_down:Z

.field kllValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lineHeight:[F

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private mCanvas:Landroid/graphics/Canvas;

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

.field stepValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagPaint:Landroid/graphics/Paint;

.field private tagTextPaint:Landroid/graphics/Paint;

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

.field private yLineColor:I

.field private yScale:F

.field private yVelocitys:[I

.field private yZero:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 159
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1e

    .line 46
    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->ANIM2PROGRESS_MAX:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->tempSteps:I

    const/4 v1, 0x4

    .line 57
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->yHeight:[F

    const/4 v1, 0x3

    .line 58
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    const/16 v2, 0x60

    .line 63
    iput v2, p0, Lcom/keephealth/android/views/SportRecordChart;->barNum:I

    const/4 v2, 0x1

    .line 89
    iput-boolean v2, p0, Lcom/keephealth/android/views/SportRecordChart;->animing1:Z

    const v3, -0x161617

    .line 103
    iput v3, p0, Lcom/keephealth/android/views/SportRecordChart;->yLineColor:I

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->xLables:Ljava/util/List;

    .line 117
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->selectRect:Landroid/graphics/RectF;

    const/4 v3, -0x1

    .line 120
    iput v3, p0, Lcom/keephealth/android/views/SportRecordChart;->exelColor:I

    .line 122
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->exelPaint:Landroid/graphics/Paint;

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    .line 131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->dateStepList:Ljava/util/List;

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->dateDistanceList:Ljava/util/List;

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->dateKllList:Ljava/util/List;

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->stepValueList:Ljava/util/List;

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->distanceValueList:Ljava/util/List;

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->kllValueList:Ljava/util/List;

    .line 140
    iput-boolean v0, p0, Lcom/keephealth/android/views/SportRecordChart;->is_down:Z

    const/4 v4, 0x0

    .line 141
    iput v4, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    .line 142
    iput v4, p0, Lcom/keephealth/android/views/SportRecordChart;->downY:F

    const/4 v4, 0x0

    .line 147
    iput-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->linearGradient:Landroid/graphics/LinearGradient;

    .line 160
    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    .line 161
    sget-object v4, Lcom/keephealth/android/R$styleable;->SportBarChart:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, 0x41e00000    # 28.0f

    .line 163
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/SportRecordChart;->textSize:F

    .line 164
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/SportRecordChart;->textColor:I

    const/4 p2, 0x2

    const v0, -0x10abc0

    .line 165
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/views/SportRecordChart;->barColor:I

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/SportRecordChart;->topDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    invoke-direct {p0}, Lcom/keephealth/android/views/SportRecordChart;->initPaint()V

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0261

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->sportBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0234

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->popupLeft:Landroid/graphics/drawable/NinePatchDrawable;

    .line 174
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0235

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->popupRight:Landroid/graphics/drawable/NinePatchDrawable;

    .line 175
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0233

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->popupCenter:Landroid/graphics/drawable/NinePatchDrawable;

    .line 176
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800d9

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->touchBg:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005b

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    .line 179
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d005a

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->finishAfterBitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/keephealth/android/views/SportRecordChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_12a

    iget-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    goto :goto_130

    :cond_12a
    iget-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->finishBeforeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    :goto_130
    int-to-float p1, p1

    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->radTopPadding:F

    return-void
.end method

.method private calculate()V
    .registers 10

    .line 264
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->sportBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->bitmapH:I

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->sportBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->bitmapW:I

    .line 269
    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->bitmapH:I

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->topH:F

    .line 270
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->dataPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->bottomH:F

    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->paddingTop:F

    .line 274
    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->mHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/keephealth/android/views/SportRecordChart;->topH:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/keephealth/android/views/SportRecordChart;->bottomH:F

    sub-float/2addr v2, v4

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/views/SportRecordChart;->centerH:F

    .line 277
    div-int/lit8 v0, v1, 0x1e

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->sportToOneLineH:F

    .line 280
    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->yHeight:[F

    const/4 v5, 0x0

    aput v0, v4, v5

    add-float/2addr v0, v3

    const/4 v6, 0x1

    .line 281
    aput v0, v4, v6

    add-float/2addr v3, v2

    const/4 v0, 0x2

    .line 282
    aput v3, v4, v0

    .line 283
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3, v2}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v4, v2

    .line 286
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->topH:F

    iget v3, p0, Lcom/keephealth/android/views/SportRecordChart;->sportToOneLineH:F

    add-float v4, v2, v3

    add-float/2addr v4, v3

    aput v4, v1, v5

    .line 287
    iget v5, p0, Lcom/keephealth/android/views/SportRecordChart;->centerH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v5, v7

    add-float/2addr v4, v8

    sub-float/2addr v4, v3

    aput v4, v1, v6

    sub-float/2addr v5, v3

    add-float/2addr v2, v5

    sub-float/2addr v2, v3

    .line 288
    aput v2, v1, v0

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ViewUtil;->getTextRectWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 298
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mWidth= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",xOffSet= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",(mWidth - 2 * xOffSet)= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",barWidth= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->barWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",barWid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized drawDataTag(Landroid/graphics/Canvas;)V
    .registers 14

    monitor-enter p0

    .line 336
    :try_start_1
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->STEP:Lcom/keephealth/android/model/bean/DetailType;

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x41700000    # 15.0f

    if-ne v0, v1, :cond_1ee

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    if-eqz v0, :cond_1ee

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1ee

    move v0, v4

    .line 338
    :goto_1b
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1ee

    .line 339
    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1ea

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x2"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v1, v1, v7

    if-gez v1, :cond_1ea

    .line 349
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->stepValueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 351
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->dateStepList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v1, v7, :cond_10b

    .line 355
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 356
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->stepValueList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->stepValueList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 357
    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "x2"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v7, "x1"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v4, v3

    .line 358
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 359
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 360
    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    .line 361
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    .line 362
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    :goto_106
    add-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v10, v8

    goto/16 :goto_1a2

    .line 365
    :cond_10b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 366
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->dateStepList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->dateStepList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 367
    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "x2"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v7, "x1"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v4, v3

    .line 368
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 369
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 370
    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    .line 371
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    .line 372
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    goto/16 :goto_106

    .line 376
    :goto_1a2
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 377
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->tagPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v7, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 380
    iget-object v5, p0, Lcom/keephealth/android/views/SportRecordChart;->stepValueList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 382
    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->dateStepList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1e8
    .catchall {:try_start_1 .. :try_end_1e8} :catchall_5b8

    .line 387
    monitor-exit p0

    return-void

    :cond_1ea
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b

    .line 393
    :cond_1ee
    :try_start_1ee
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->CAL:Lcom/keephealth/android/model/bean/DetailType;

    if-ne v0, v1, :cond_3d2

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    if-eqz v0, :cond_3d2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3d2

    move v0, v4

    .line 395
    :goto_1ff
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d2

    .line 396
    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v1, v1, v7

    if-lez v1, :cond_3ce

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x2"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v1, v1, v7

    if-gez v1, :cond_3ce

    .line 406
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->kllValueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 408
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->dateKllList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v1, v7, :cond_2ef

    .line 412
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 413
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->kllValueList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->kllValueList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 414
    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "x2"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v7, "x1"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v4, v3

    .line 415
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 416
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 417
    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    .line 418
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    .line 419
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    :goto_2ea
    add-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v10, v8

    goto/16 :goto_386

    .line 422
    :cond_2ef
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 423
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->dateKllList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->dateKllList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 424
    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "x2"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v7, "x1"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v4, v3

    .line 425
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 426
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 427
    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    .line 428
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    .line 429
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    goto/16 :goto_2ea

    .line 433
    :goto_386
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 434
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->tagPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v7, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 437
    iget-object v5, p0, Lcom/keephealth/android/views/SportRecordChart;->kllValueList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 439
    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->dateKllList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_3cc
    .catchall {:try_start_1ee .. :try_end_3cc} :catchall_5b8

    .line 444
    monitor-exit p0

    return-void

    :cond_3ce
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1ff

    .line 450
    :cond_3d2
    :try_start_3d2
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v1, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    if-ne v0, v1, :cond_5b6

    .line 451
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    if-eqz v0, :cond_5b6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5b6

    move v0, v4

    .line 452
    :goto_3e3
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b6

    .line 453
    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v1, v1, v7

    if-lez v1, :cond_5b2

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x2"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v1, v1, v7

    if-gez v1, :cond_5b2

    .line 463
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->distanceValueList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 465
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->dateDistanceList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v1, v7, :cond_4d3

    .line 469
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 470
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->distanceValueList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->distanceValueList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 471
    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "x2"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v7, "x1"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v4, v3

    .line 472
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 473
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 474
    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    .line 475
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    .line 476
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    :goto_4ce
    add-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v10, v8

    goto/16 :goto_56a

    .line 479
    :cond_4d3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 480
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->dateDistanceList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->dateDistanceList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 481
    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v7, "x2"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "x1"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v4, v7

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v7, "x1"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v4, v3

    .line 482
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 483
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v4, v7

    .line 484
    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    .line 485
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v10, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v9, v4

    .line 486
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v11

    goto/16 :goto_4ce

    .line 490
    :goto_56a
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 491
    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->tagPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v7, v5, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 494
    iget-object v5, p0, Lcom/keephealth/android/views/SportRecordChart;->distanceValueList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 496
    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->dateDistanceList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_5b0
    .catchall {:try_start_3d2 .. :try_end_5b0} :catchall_5b8

    .line 501
    monitor-exit p0

    return-void

    :cond_5b2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e3

    .line 506
    :cond_5b6
    monitor-exit p0

    return-void

    :catchall_5b8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private drawNoData(Landroid/graphics/Canvas;)V
    .registers 6

    .line 516
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->textSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 517
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 518
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTouch(Landroid/graphics/Canvas;)V
    .registers 4

    .line 509
    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->touchX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->touchY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    goto :goto_12

    .line 512
    :cond_f
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportRecordChart;->drawDataTag(Landroid/graphics/Canvas;)V

    :cond_12
    :goto_12
    return-void
.end method

.method private drawX(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    .line 542
    iget v1, v0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v4, v1, v2

    iget-object v3, v0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    const/4 v9, 0x2

    aget v3, v3, v9

    iget v5, v0, Lcom/keephealth/android/views/SportRecordChart;->paddingTop:F

    add-float v6, v3, v5

    iget v7, v0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    int-to-float v7, v7

    mul-float/2addr v1, v2

    sub-float v1, v7, v1

    add-float v7, v3, v5

    iget-object v8, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v6

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 545
    iget v1, v0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    int-to-float v1, v1

    const/high16 v3, 0x40400000    # 3.0f

    iget v4, v0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/keephealth/android/views/SportRecordChart;->xWidth:F

    .line 546
    iget-object v1, v0, Lcom/keephealth/android/views/SportRecordChart;->xLables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 547
    iget v3, v0, Lcom/keephealth/android/views/SportRecordChart;->xWidth:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 548
    iget-object v5, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/keephealth/android/util/ViewUtil;->getTextHeight(Landroid/graphics/Paint;)F

    move-result v5

    .line 550
    iget-object v6, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600b7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x0

    :goto_50
    if-ge v7, v1, :cond_8d

    int-to-float v8, v7

    mul-float/2addr v8, v3

    .line 552
    iget v10, v0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v10, v2

    add-float/2addr v8, v10

    if-nez v7, :cond_62

    .line 554
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_73

    :cond_62
    if-ne v7, v4, :cond_6c

    .line 556
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_73

    .line 558
    :cond_6c
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 560
    :goto_73
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->xLables:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v11, v11, v9

    add-float/2addr v11, v5

    iget v12, v0, Lcom/keephealth/android/views/SportRecordChart;->paddingTop:F

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v10, v8, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_8d
    move-object/from16 v15, p1

    .line 563
    iget-object v1, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 565
    iget-object v1, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    iget v1, v0, Lcom/keephealth/android/views/SportRecordChart;->xWidth:F

    const/high16 v3, 0x41200000    # 10.0f

    iget-object v4, v0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 573
    iget-object v3, v0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v3, v3, v9

    iget v5, v0, Lcom/keephealth/android/views/SportRecordChart;->paddingTop:F

    add-float/2addr v3, v5

    .line 579
    iget-object v5, v0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 580
    iget-object v5, v0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 581
    iget-object v5, v0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 582
    iget-object v5, v0, Lcom/keephealth/android/views/SportRecordChart;->dateStepList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 583
    iget-object v5, v0, Lcom/keephealth/android/views/SportRecordChart;->dateDistanceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 584
    iget-object v5, v0, Lcom/keephealth/android/views/SportRecordChart;->dateKllList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    .line 588
    :goto_e2
    iget-object v7, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2f3

    int-to-float v7, v5

    mul-float/2addr v7, v1

    .line 589
    iget v8, v0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    add-float/2addr v7, v8

    iget v8, v0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    .line 595
    sget-object v8, Lcom/keephealth/android/views/SportRecordChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    invoke-virtual {v10}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    const-string v10, "x2"

    const-string v11, "x1"

    if-eq v8, v4, :cond_1ef

    if-eq v8, v9, :cond_18d

    const/4 v12, 0x3

    if-eq v8, v12, :cond_10b

    const/4 v8, 0x0

    goto/16 :goto_2a5

    .line 628
    :cond_10b
    iget-object v8, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v8}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v8

    float-to-int v8, v8

    .line 629
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v14, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v14}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v14

    const/high16 v16, 0x447a0000    # 1000.0f

    div-float v14, v14, v16

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const-string v2, "%.2f"

    invoke-static {v13, v2, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100771

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    iget-object v12, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v12

    .line 632
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 633
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget v11, v0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    add-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v13, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v8, :cond_2a5

    .line 636
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_distance:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->distanceValueList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v2, v0, Lcom/keephealth/android/views/SportRecordChart;->dateDistanceList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a5

    .line 613
    :cond_18d
    iget-object v2, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v2

    float-to-int v8, v2

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100769

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    iget-object v12, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v12

    .line 617
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 618
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget v11, v0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    add-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v13, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v8, :cond_2a5

    .line 621
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_kll:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->kllValueList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v2, v0, Lcom/keephealth/android/views/SportRecordChart;->dateKllList:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a5

    .line 597
    :cond_1ef
    iget-object v2, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v8

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v13, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v13}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v13

    div-int/lit16 v13, v13, 0xe10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%02d"

    invoke-static {v12, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ":"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v6, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v6

    rem-int/lit16 v6, v6, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v13, v14, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v12, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v12}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getItemCount()I

    move-result v12

    rem-int/lit8 v12, v12, 0x3c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v6, v14, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    iget-object v6, v0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    invoke-virtual {v6}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getRemark()Ljava/lang/String;

    move-result-object v6

    .line 602
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 603
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget v11, v0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    add-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v8, :cond_2a5

    .line 607
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->Xvalue_step:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    iget-object v10, v0, Lcom/keephealth/android/views/SportRecordChart;->stepValueList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v2, v0, Lcom/keephealth/android/views/SportRecordChart;->dateStepList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_2a5
    :goto_2a5
    iget v2, v0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    int-to-float v6, v8

    mul-float/2addr v2, v6

    sub-float v2, v3, v2

    .line 710
    iget-object v6, v0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/keephealth/android/views/SportRecordChart;->barColor:I

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 715
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 716
    iget v8, v0, Lcom/keephealth/android/views/SportRecordChart;->barWid:F

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 717
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v10, -0x1

    iget v11, v0, Lcom/keephealth/android/views/SportRecordChart;->barColor:I

    filled-new-array {v10, v11}, [I

    move-result-object v21

    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v8

    move/from16 v17, v7

    move/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v2

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, v0, Lcom/keephealth/android/views/SportRecordChart;->linearGradient:Landroid/graphics/LinearGradient;

    .line 720
    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v13, p1

    move v14, v7

    move v15, v3

    move/from16 v16, v7

    move/from16 v17, v2

    move-object/from16 v18, v6

    .line 721
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v15, p1

    const/high16 v2, 0x3fc00000    # 1.5f

    goto/16 :goto_e2

    :cond_2f3
    return-void
.end method

.method private drawXLine(Landroid/graphics/Canvas;)V
    .registers 12

    .line 528
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 529
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->yLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 530
    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    const/4 v8, 0x2

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    mul-float v6, v4, v5

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 531
    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MIDDLE_VALUE:F

    mul-float v6, v4, v5

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v9, p0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    int-to-float v9, v9

    mul-float/2addr v0, v1

    sub-float v0, v9, v0

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float/2addr v7, v2

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v7

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 532
    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float v3, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v2, v2, v8

    iget v4, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MIN_VALUE:F

    mul-float v6, v4, v5

    sub-float v6, v2, v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->paddingTop:F

    add-float/2addr v6, v7

    iget v8, p0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    int-to-float v8, v8

    mul-float/2addr v0, v1

    sub-float v0, v8, v0

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    add-float v1, v2, v7

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    move v5, v0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawY(Landroid/graphics/Canvas;)V
    .registers 13

    .line 733
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 734
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->textSize:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 735
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 736
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 737
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 739
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    sget-object v2, Lcom/keephealth/android/model/bean/DetailType;->DISTANCE:Lcom/keephealth/android/model/bean/DetailType;

    const-string v3, "0"

    const-string v4, ""

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x2

    if-eq v1, v2, :cond_c7

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v7, v7, v6

    iget v8, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v9, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->MIDDLE_VALUE:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v7, v7, v6

    iget v8, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v9, p0, Lcom/keephealth/android/views/SportRecordChart;->MIDDLE_VALUE:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->MIN_VALUE:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v4, v4, v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v8, p0, Lcom/keephealth/android/views/SportRecordChart;->MIN_VALUE:F

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    sub-float/2addr v4, v0

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 743
    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v2, v2, v6

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_157

    .line 745
    :cond_c7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

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

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v8, v8, v6

    iget v9, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v10, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->MIDDLE_VALUE:F

    div-float/2addr v2, v7

    invoke-static {v2, v6}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v8, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v8, v8, v6

    iget v9, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v10, p0, Lcom/keephealth/android/views/SportRecordChart;->MIDDLE_VALUE:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sub-float/2addr v8, v0

    iget-object v9, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->MIN_VALUE:F

    div-float/2addr v2, v7

    invoke-static {v2, v6}, Lcom/keephealth/android/util/NumUtil;->float2String(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v2, v5

    iget-object v4, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v4, v4, v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

    iget v8, p0, Lcom/keephealth/android/views/SportRecordChart;->MIN_VALUE:F

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    sub-float/2addr v4, v0

    iget-object v7, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 748
    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->xOffSet:F

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    aget v2, v2, v6

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_157
    return-void
.end method

.method private initPaint()V
    .registers 5

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barPaint:Landroid/graphics/Paint;

    .line 190
    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->barColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->touchPaint:Landroid/graphics/Paint;

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->touchBgPaint:Landroid/graphics/Paint;

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->touchPaint2:Landroid/graphics/Paint;

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->textPaint:Landroid/graphics/Paint;

    .line 198
    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 202
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->dataPaint:Landroid/graphics/Paint;

    .line 203
    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->dataPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->dataPaint:Landroid/graphics/Paint;

    const v2, 0x3fe66666    # 1.8f

    iget v3, p0, Lcom/keephealth/android/views/SportRecordChart;->textSize:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 207
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->unitPaint:Landroid/graphics/Paint;

    .line 208
    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->unitPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/keephealth/android/views/SportRecordChart;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->unitPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->tagPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    .line 214
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->tagPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 218
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    iget-object v3, p0, Lcom/keephealth/android/views/SportRecordChart;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->tagTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initYscale()V
    .registers 5

    .line 822
    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    .line 823
    iget-object v1, p0, Lcom/keephealth/android/views/SportRecordChart;->lineHeight:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Lcom/keephealth/android/views/SportRecordChart;->yScale:F

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

    .line 767
    iput-object p3, p0, Lcom/keephealth/android/views/SportRecordChart;->detailType:Lcom/keephealth/android/model/bean/DetailType;

    .line 768
    iget-boolean v0, p0, Lcom/keephealth/android/views/SportRecordChart;->isToday:Z

    iput-boolean v0, p0, Lcom/keephealth/android/views/SportRecordChart;->isToday:Z

    .line 769
    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->healthSportItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 770
    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_8a

    .line 771
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8a

    move v4, v1

    .line 772
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8c

    .line 773
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/greendao/bean/HealthSportItem;

    .line 774
    sget-object v6, Lcom/keephealth/android/views/SportRecordChart$1;->$SwitchMap$com$keephealth$android$model$bean$DetailType:[I

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/DetailType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v3, :cond_75

    if-eq v6, v2, :cond_64

    const/4 v7, 0x3

    if-eq v6, v7, :cond_33

    goto :goto_87

    .line 786
    :cond_33
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_87

    .line 787
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->isDistUnitKm()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 788
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6, v2}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    goto :goto_87

    .line 790
    :cond_54
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getDistance()F

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/UnitUtil;->getKm2mile(F)D

    move-result-wide v5

    invoke-static {v5, v6, v2}, Lcom/keephealth/android/util/NumUtil;->formatPoint(DI)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    goto :goto_87

    .line 781
    :cond_64
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_87

    .line 782
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getCalory()F

    move-result v5

    iput v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    goto :goto_87

    .line 776
    :cond_75
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_87

    .line 777
    invoke-virtual {v5}, Lcom/keephealth/android/greendao/bean/HealthSportItem;->getStepCount()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    :cond_87
    :goto_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 799
    :cond_8a
    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    .line 801
    :cond_8c
    iget p3, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    cmpl-float v0, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40400000    # 3.0f

    if-eqz v0, :cond_a0

    .line 802
    iput-boolean v3, p0, Lcom/keephealth/android/views/SportRecordChart;->isDrawTAB:Z

    mul-float/2addr v4, p3

    div-float/2addr v4, v5

    .line 803
    iput v4, p0, Lcom/keephealth/android/views/SportRecordChart;->MIDDLE_VALUE:F

    div-float/2addr p3, v5

    .line 804
    iput p3, p0, Lcom/keephealth/android/views/SportRecordChart;->MIN_VALUE:F

    goto :goto_aa

    .line 806
    :cond_a0
    iput-boolean v3, p0, Lcom/keephealth/android/views/SportRecordChart;->isDrawTAB:Z

    .line 807
    iput v5, p0, Lcom/keephealth/android/views/SportRecordChart;->MAX_VALUE:F

    .line 808
    iput v4, p0, Lcom/keephealth/android/views/SportRecordChart;->MIDDLE_VALUE:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 809
    iput p3, p0, Lcom/keephealth/android/views/SportRecordChart;->MIN_VALUE:F

    .line 811
    :goto_aa
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->barNum:I

    .line 812
    iput-object p2, p0, Lcom/keephealth/android/views/SportRecordChart;->xLables:Ljava/util/List;

    .line 813
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_b7

    goto :goto_b8

    :cond_b7
    move v3, v1

    :goto_b8
    iput-boolean v3, p0, Lcom/keephealth/android/views/SportRecordChart;->isDouble:Z

    .line 814
    div-int/2addr p1, v2

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->middleIndex:I

    .line 815
    invoke-direct {p0}, Lcom/keephealth/android/views/SportRecordChart;->initYscale()V

    .line 816
    iput-boolean v1, p0, Lcom/keephealth/android/views/SportRecordChart;->initDraw:Z

    .line 817
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    iput-object p1, p0, Lcom/keephealth/android/views/SportRecordChart;->mCanvas:Landroid/graphics/Canvas;

    .line 315
    iget-object v0, p0, Lcom/keephealth/android/views/SportRecordChart;->exelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/keephealth/android/views/SportRecordChart;->exelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 316
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/keephealth/android/views/SportRecordChart;->exelPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportRecordChart;->drawY(Landroid/graphics/Canvas;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportRecordChart;->drawXLine(Landroid/graphics/Canvas;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportRecordChart;->drawX(Landroid/graphics/Canvas;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/SportRecordChart;->drawDataTag(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 230
    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->mWidth:I

    .line 231
    iput p2, p0, Lcom/keephealth/android/views/SportRecordChart;->mHeight:I

    .line 233
    invoke-direct {p0}, Lcom/keephealth/android/views/SportRecordChart;->calculate()V

    .line 235
    invoke-direct {p0}, Lcom/keephealth/android/views/SportRecordChart;->initYscale()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    goto :goto_2b

    .line 250
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->touchX:F

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->touchY:F

    goto :goto_2b

    .line 246
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->downX:F

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/keephealth/android/views/SportRecordChart;->downY:F

    .line 256
    :goto_2b
    invoke-virtual {p0}, Lcom/keephealth/android/views/SportRecordChart;->invalidate()V

    return v0
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

    .line 760
    iget v0, p4, Lcom/keephealth/android/model/bean/BarChartProperties;->barColor:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_8

    iget v0, p4, Lcom/keephealth/android/model/bean/BarChartProperties;->barColor:I

    goto :goto_a

    :cond_8
    iget v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barColor:I

    :goto_a
    iput v0, p0, Lcom/keephealth/android/views/SportRecordChart;->barColor:I

    .line 761
    iget v0, p4, Lcom/keephealth/android/model/bean/BarChartProperties;->yLineColor:I

    if-eq v1, v0, :cond_13

    iget p4, p4, Lcom/keephealth/android/model/bean/BarChartProperties;->yLineColor:I

    goto :goto_15

    :cond_13
    iget p4, p0, Lcom/keephealth/android/views/SportRecordChart;->yLineColor:I

    :goto_15
    iput p4, p0, Lcom/keephealth/android/views/SportRecordChart;->yLineColor:I

    .line 762
    invoke-direct {p0}, Lcom/keephealth/android/views/SportRecordChart;->initPaint()V

    .line 763
    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/views/SportRecordChart;->initDatas(Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/model/bean/DetailType;)V

    return-void
.end method
