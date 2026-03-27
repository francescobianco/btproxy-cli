.class public Lcom/keephealth/android/views/wheel/NewWheelView2;
.super Landroid/view/View;
.source "NewWheelView2.java"


# static fields
.field private static final ADDITIONAL_ITEMS_SPACE:I = 0xa

.field private static final ADDITIONAL_ITEM_HEIGHT:I = 0x50

.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static ITEMS_TEXT_COLOR:I = 0x4cffffff

.field private static final ITEM_OFFSET:I

.field private static final LABEL_OFFSET:I = 0x8

.field private static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final PADDING:I = 0xa

.field private static final SCROLLING_DURATION:I = 0x4

.field private static final SHADOWS_COLORS:[I

.field private static TEXT_SIZE:I = 0x0

.field private static VALUE_TEXT_COLOR:I = -0x1


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

.field private animationHandler:Landroid/os/Handler;

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isAddZero:Z

.field isCyclic:Z

.field private isLeftCenterRight:I

.field private isScrollingPerformed:Z

.field public isSex:Z

.field public isTouch:Z

.field public itemHeight:I

.field private itemsLayout:Landroid/text/StaticLayout;

.field private itemsPaint:Landroid/text/TextPaint;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field private labelLayout:Landroid/text/StaticLayout;

.field private labelWidth:I

.field private lastScrollY:I

.field private scroller:Landroid/widget/Scroller;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/wheel/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private type:Ljava/lang/String;

.field private valueLayout:Landroid/text/StaticLayout;

.field private valuePaint:Landroid/text/TextPaint;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, -0xeeeeef

    const v1, 0xaaaaaa

    .line 66
    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->SHADOWS_COLORS:[I

    const/16 v0, 0x12

    .line 77
    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->TEXT_SIZE:I

    .line 82
    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->ITEM_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 192
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    .line 109
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    .line 110
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    const/4 v1, 0x5

    .line 113
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    .line 116
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemHeight:I

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    .line 146
    const-string v2, "public"

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->type:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isAddZero:Z

    .line 153
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isLeftCenterRight:I

    .line 160
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->changingListeners:Ljava/util/List;

    .line 161
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingListeners:Ljava/util/List;

    .line 905
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isTouch:Z

    .line 979
    new-instance v2, Lcom/keephealth/android/views/wheel/NewWheelView2$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2$1;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 1006
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->MESSAGE_SCROLL:I

    .line 1007
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->MESSAGE_JUSTIFY:I

    .line 1028
    new-instance v0, Lcom/keephealth/android/views/wheel/NewWheelView2$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2$2;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->animationHandler:Landroid/os/Handler;

    .line 193
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    .line 109
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    .line 110
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    const/4 v1, 0x5

    .line 113
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    .line 116
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemHeight:I

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    .line 146
    const-string v2, "public"

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->type:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isAddZero:Z

    .line 153
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isLeftCenterRight:I

    .line 160
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->changingListeners:Ljava/util/List;

    .line 161
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingListeners:Ljava/util/List;

    .line 905
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isTouch:Z

    .line 979
    new-instance v2, Lcom/keephealth/android/views/wheel/NewWheelView2$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2$1;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 1006
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->MESSAGE_SCROLL:I

    .line 1007
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->MESSAGE_JUSTIFY:I

    .line 1028
    new-instance v2, Lcom/keephealth/android/views/wheel/NewWheelView2$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2$2;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->animationHandler:Landroid/os/Handler;

    .line 176
    sget-object v2, Lcom/keephealth/android/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 177
    sget v2, Lcom/keephealth/android/views/wheel/NewWheelView2;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->TEXT_SIZE:I

    const/16 v0, 0x9

    const/4 v2, -0x1

    .line 178
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->VALUE_TEXT_COLOR:I

    const/4 v0, 0x7

    .line 179
    sget v2, Lcom/keephealth/android/views/wheel/NewWheelView2;->ITEMS_TEXT_COLOR:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->ITEMS_TEXT_COLOR:I

    const/4 v0, 0x6

    .line 180
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isAddZero:Z

    const/4 v0, 0x4

    .line 181
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isLeftCenterRight:I

    .line 182
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 105
    iput-object p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 p2, 0x0

    .line 106
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    .line 109
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    .line 110
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    const/4 p3, 0x5

    .line 113
    iput p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    .line 116
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemHeight:I

    const/4 p3, 0x1

    .line 145
    iput-boolean p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    .line 146
    const-string v0, "public"

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->type:Ljava/lang/String;

    .line 152
    iput-boolean p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isAddZero:Z

    .line 153
    iput p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isLeftCenterRight:I

    .line 160
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->changingListeners:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingListeners:Ljava/util/List;

    .line 905
    iput-boolean p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isTouch:Z

    .line 979
    new-instance v0, Lcom/keephealth/android/views/wheel/NewWheelView2$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2$1;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 1006
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->MESSAGE_SCROLL:I

    .line 1007
    iput p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->MESSAGE_JUSTIFY:I

    .line 1028
    new-instance p2, Lcom/keephealth/android/views/wheel/NewWheelView2$2;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView2$2;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView2;)V

    iput-object p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->animationHandler:Landroid/os/Handler;

    .line 168
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/wheel/NewWheelView2;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/wheel/NewWheelView2;)Landroid/widget/Scroller;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/views/wheel/NewWheelView2;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/views/wheel/NewWheelView2;)Landroid/os/Handler;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->animationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->justify()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->clearMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/wheel/NewWheelView2;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->startScrolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/wheel/NewWheelView2;I)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->doScroll(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/wheel/NewWheelView2;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->lastScrollY:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/views/wheel/NewWheelView2;I)I
    .registers 2

    .line 41
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->lastScrollY:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/wheel/NewWheelView2;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/views/wheel/NewWheelView2;)I
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/views/wheel/NewWheelView2;)I
    .registers 1

    .line 41
    iget p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/views/wheel/NewWheelView2;)Lcom/keephealth/android/views/wheel/WheelAdapter;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    return-object p0
.end method

.method private buildText(Z)Ljava/lang/String;
    .registers 9

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 565
    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    sub-int/2addr v3, v1

    :goto_e
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    add-int v5, v4, v1

    if-gt v3, v5, :cond_6a

    if-nez p1, :cond_18

    if-eq v3, v4, :cond_5d

    .line 567
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 569
    iget-object v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->type:Ljava/lang/String;

    const-string v5, "public"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 570
    invoke-direct {p0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getTextItem(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3f

    .line 581
    :cond_3b
    invoke-direct {p0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getTextItem(I)Ljava/lang/String;

    move-result-object v4

    :goto_3f
    if-eqz v4, :cond_5d

    .line 586
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_5a

    iget-boolean v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isAddZero:Z

    if-eqz v5, :cond_5a

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 589
    :cond_5a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_5d
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_67

    .line 594
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 598
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private calculateLayoutWidth(II)I
    .registers 9

    .line 669
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->initResourcesIfNecessary()V

    .line 672
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getMaxTextLength()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    .line 674
    const-string v2, "00"

    iget-object v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 675
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    goto :goto_20

    .line 677
    :cond_1e
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    .line 679
    :goto_20
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    .line 681
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    .line 682
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->label:Ljava/lang/String;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    .line 683
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    invoke-static {v0, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    :cond_42
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne p2, v0, :cond_48

    goto :goto_64

    .line 691
    :cond_48
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v4, v0, 0x14

    if-lez v3, :cond_53

    add-int/lit8 v4, v0, 0x1c

    .line 697
    :cond_53
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_62

    if-ge p1, v0, :cond_62

    goto :goto_64

    :cond_62
    move p1, v0

    move v2, v1

    :goto_64
    if-eqz v2, :cond_85

    add-int/lit8 p2, p1, -0x1c

    if-gtz p2, :cond_6e

    .line 709
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    .line 711
    :cond_6e
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    if-lez v0, :cond_81

    .line 712
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    int-to-double v2, v1

    int-to-double v4, p2

    mul-double/2addr v2, v4

    add-int/2addr v1, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    double-to-int v0, v2

    .line 713
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    sub-int/2addr p2, v0

    .line 714
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    goto :goto_85

    :cond_81
    add-int/lit8 p2, p1, -0x14

    .line 716
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    .line 720
    :cond_85
    :goto_85
    iget p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    if-lez p2, :cond_8e

    .line 721
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    invoke-direct {p0, p2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->createLayouts(II)V

    :cond_8e
    return p1
.end method

.method private clearMessages()V
    .registers 3

    .line 1023
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private createLayouts(II)V
    .registers 13

    .line 734
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_b

    goto :goto_11

    .line 737
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_2f

    .line 735
    :cond_11
    :goto_11
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    invoke-direct {p0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->buildText(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsPaint:Landroid/text/TextPaint;

    if-lez p2, :cond_20

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_22

    :cond_20
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_22
    move-object v5, v1

    const/high16 v7, 0x42a00000    # 80.0f

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    .line 740
    :goto_2f
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_a4

    .line 742
    :cond_3e
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->type:Ljava/lang/String;

    const-string v2, "public"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 743
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 755
    :cond_59
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    :cond_69
    :goto_69
    if-eqz v1, :cond_b0

    .line 759
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_85

    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isAddZero:Z

    if-eqz v0, :cond_85

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    :cond_85
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v1, :cond_8a

    goto :goto_8c

    :cond_8a
    const-string v1, ""

    :goto_8c
    move-object v3, v1

    iget-object v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    if-lez p2, :cond_94

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_96

    :cond_94
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_96
    move-object v6, v1

    const/high16 v8, 0x42a00000    # 80.0f

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v0

    move v5, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_b0

    .line 765
    :cond_a4
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    if-eqz v0, :cond_ab

    .line 766
    iput-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_b0

    .line 768
    :cond_ab
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    :cond_b0
    :goto_b0
    if-lez p2, :cond_d7

    .line 772
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p1

    if-le p1, p2, :cond_bd

    goto :goto_c3

    .line 775
    :cond_bd
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_d7

    .line 773
    :cond_c3
    :goto_c3
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x42a00000    # 80.0f

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelLayout:Landroid/text/StaticLayout;

    :cond_d7
    :goto_d7
    return-void
.end method

.method private doScroll(I)V
    .registers 6

    .line 927
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    .line 930
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_18

    .line 931
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    const/16 v0, -0xc8

    if-ge p1, v0, :cond_23

    return-void

    .line 934
    :cond_18
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    if-nez p1, :cond_23

    .line 935
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    const/16 v0, 0xc8

    if-le p1, v0, :cond_23

    return-void

    .line 941
    :cond_23
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I

    move-result v0

    div-int/2addr p1, v0

    .line 942
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    sub-int/2addr v0, p1

    .line 943
    iget-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_4c

    :goto_3a
    if-gez v0, :cond_44

    .line 946
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3a

    .line 948
    :cond_44
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_82

    .line 949
    :cond_4c
    iget-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    if-eqz v1, :cond_72

    if-gez v0, :cond_56

    .line 952
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    move v0, v2

    goto :goto_82

    .line 954
    :cond_56
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lt v0, v1, :cond_82

    .line 955
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 956
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_82

    .line 960
    :cond_72
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 961
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 964
    :cond_82
    :goto_82
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    .line 965
    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    if-eq v0, v3, :cond_8c

    .line 966
    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(IZ)V

    goto :goto_8f

    .line 968
    :cond_8c
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    .line 972
    :goto_8f
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I

    move-result v0

    mul-int/2addr p1, v0

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    .line 973
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result p1

    if-le v1, p1, :cond_ab

    .line 974
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    :cond_ab
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .registers 8

    .line 894
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 895
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 896
    iget v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isLeftCenterRight:I

    const/4 v3, 0x0

    if-nez v2, :cond_22

    .line 897
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getWidth()I

    move-result v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_46

    :cond_22
    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    .line 899
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getWidth()I

    move-result v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_46

    .line 901
    :cond_36
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getWidth()I

    move-result v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 903
    :goto_46
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .registers 4

    .line 876
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 878
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    neg-int v0, v0

    .line 879
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 881
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsPaint:Landroid/text/TextPaint;

    sget v1, Lcom/keephealth/android/views/wheel/NewWheelView2;->ITEMS_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 882
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 883
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 885
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .registers 7

    .line 834
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    div-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 835
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 837
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    div-int/2addr v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 838
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .registers 5

    .line 847
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    sget v1, Lcom/keephealth/android/views/wheel/NewWheelView2;->VALUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 848
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 850
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 851
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 854
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3b

    .line 855
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 856
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 857
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 858
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 862
    :cond_3b
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_54

    .line 863
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 864
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 865
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_54
    return-void
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 524
    :cond_4
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I

    move-result p1

    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    mul-int/2addr p1, v0

    sget v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->ITEM_OFFSET:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x50

    .line 527
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemHeight()I
    .registers 4

    .line 635
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemHeight:I

    if-eqz v0, :cond_5

    return v0

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_21

    .line 638
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemHeight:I

    return v0

    .line 641
    :cond_21
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getMaxTextLength()I
    .registers 8

    .line 607
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 612
    :cond_8
    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getMaximumLength()I

    move-result v2

    if-lez v2, :cond_f

    return v2

    .line 618
    :cond_f
    iget v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    .line 619
    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    iget v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_40

    .line 620
    invoke-interface {v0, v2}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    if-eqz v3, :cond_3c

    .line 621
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3d

    :cond_3c
    move-object v3, v4

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_40
    if-eqz v3, :cond_46

    .line 626
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_46
    return v1
.end method

.method private getTextItem(I)Ljava/lang/String;
    .registers 5

    .line 539
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_27

    .line 542
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_16

    if-lt p1, v0, :cond_1b

    .line 543
    :cond_16
    iget-boolean v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    if-nez v2, :cond_1b

    return-object v1

    :cond_1b
    :goto_1b
    if-gez p1, :cond_1f

    add-int/2addr p1, v0

    goto :goto_1b

    .line 551
    :cond_1f
    rem-int/2addr p1, v0

    .line 552
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    :goto_27
    return-object v1
.end method

.method private initData(Landroid/content/Context;)V
    .registers 5

    .line 202
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 204
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    if-nez v0, :cond_20

    .line 478
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsPaint:Landroid/text/TextPaint;

    .line 479
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/text/TextPaint;->density:F

    .line 480
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsPaint:Landroid/text/TextPaint;

    sget v2, Lcom/keephealth/android/views/wheel/NewWheelView2;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 483
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_54

    .line 484
    new-instance v0, Landroid/text/TextPaint;

    const/16 v2, 0x85

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    .line 485
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/text/TextPaint;->density:F

    .line 486
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    sget v2, Lcom/keephealth/android/views/wheel/NewWheelView2;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 487
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 488
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valuePaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const v3, -0x3f3f40

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 491
    :cond_54
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_87

    .line 492
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isLeftCenterRight:I

    if-nez v0, :cond_6a

    .line 493
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08015e

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_87

    :cond_6a
    if-ne v0, v1, :cond_7a

    .line 495
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080160

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_87

    .line 497
    :cond_7a
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08015f

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 502
    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_96

    .line 503
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/keephealth/android/views/wheel/NewWheelView2;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 506
    :cond_96
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_a5

    .line 507
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/keephealth/android/views/wheel/NewWheelView2;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_a5
    return-void
.end method

.method private invalidateLayouts()V
    .registers 2

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    .line 469
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->valueLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    .line 470
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    return-void
.end method

.method private justify()V
    .registers 11

    .line 1058
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1062
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->lastScrollY:I

    .line 1063
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    .line 1064
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I

    move-result v2

    const/4 v3, 0x1

    .line 1065
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    if-lez v1, :cond_1c

    iget-object v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v5}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v5

    if-ge v4, v5, :cond_1f

    goto :goto_1e

    :cond_1c
    if-lez v4, :cond_1f

    :goto_1e
    move v0, v3

    .line 1066
    :cond_1f
    iget-boolean v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    if-nez v4, :cond_25

    if-eqz v0, :cond_39

    :cond_25
    int-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_39

    if-gez v1, :cond_37

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_39

    :cond_37
    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    :cond_39
    :goto_39
    move v8, v1

    .line 1072
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_4d

    .line 1073
    iget-object v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1074
    invoke-direct {p0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setNextMessage(I)V

    goto :goto_50

    .line 1076
    :cond_4d
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->finishScrolling()V

    :goto_50
    return-void
.end method

.method private setNextMessage(I)V
    .registers 3

    .line 1015
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->clearMessages()V

    .line 1016
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startScrolling()V
    .registers 2

    .line 1084
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    .line 1086
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->notifyScrollingListenersAboutStart()V

    :cond_a
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;)V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/keephealth/android/views/wheel/OnWheelScrollListener;)V
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method finishScrolling()V
    .registers 2

    .line 1094
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    if-eqz v0, :cond_a

    .line 1095
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->notifyScrollingListenersAboutEnd()V

    const/4 v0, 0x0

    .line 1096
    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isScrollingPerformed:Z

    .line 1098
    :cond_a
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidateLayouts()V

    .line 1099
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    return-void
.end method

.method public getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    .line 350
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleItems()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .registers 2

    .line 449
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;

    .line 304
    invoke-interface {v1, p0, p1, p2}, Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener2;->onChanged(Lcom/keephealth/android/views/wheel/NewWheelView2;II)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/OnWheelScrollListener;

    goto :goto_6

    :cond_13
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/OnWheelScrollListener;

    goto :goto_6

    :cond_13
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 805
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 807
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1a

    .line 808
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    if-nez v0, :cond_15

    .line 809
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->calculateLayoutWidth(II)I

    goto :goto_1a

    .line 811
    :cond_15
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->createLayouts(II)V

    .line 814
    :cond_1a
    :goto_1a
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 815
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsWidth:I

    if-lez v0, :cond_36

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 818
    sget v0, Lcom/keephealth/android/views/wheel/NewWheelView2;->ITEM_OFFSET:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 819
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->drawItems(Landroid/graphics/Canvas;)V

    .line 820
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->drawValue(Landroid/graphics/Canvas;)V

    .line 821
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_36
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 782
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 783
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 784
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 785
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 787
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_19

    goto :goto_29

    .line 793
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->itemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_28

    .line 796
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_29

    :cond_28
    move p2, v0

    .line 800
    :goto_29
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 908
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 912
    :cond_8
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isTouch:Z

    if-nez v0, :cond_d

    return v1

    .line 915
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1e

    .line 916
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->justify()V

    :cond_1e
    return v1
.end method

.method public removeChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/keephealth/android/views/wheel/OnWheelScrollListener;)V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .registers 9

    .line 1108
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1109
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scrollingOffset:I

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->lastScrollY:I

    .line 1110
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getItemHeight()I

    move-result v0

    mul-int/2addr p1, v0

    .line 1111
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->lastScrollY:I

    const/4 v3, 0x0

    sub-int v4, p1, v2

    const/4 v1, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x0

    .line 1112
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setNextMessage(I)V

    .line 1113
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->startScrolling()V

    return-void
.end method

.method public setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    .line 223
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidateLayouts()V

    .line 224
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    return-void
.end method

.method public setAddZero(Z)V
    .registers 2

    .line 149
    iput-boolean p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isAddZero:Z

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_43

    :cond_b
    if-ltz p1, :cond_15

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_2a

    .line 364
    :cond_15
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    if-eqz v0, :cond_43

    :goto_19
    if-gez p1, :cond_23

    .line 366
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_19

    .line 368
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 373
    :cond_2a
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    if-eq p1, v0, :cond_43

    if-eqz p2, :cond_36

    sub-int/2addr p1, v0

    const/4 p2, 0x4

    .line 375
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroll(II)V

    goto :goto_43

    .line 377
    :cond_36
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidateLayouts()V

    .line 378
    iget p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    .line 379
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    .line 380
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->notifyChangingListeners(II)V

    .line 381
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    :cond_43
    :goto_43
    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->setCurrentItem(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;Z)V
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-eqz v0, :cond_56

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_56

    .line 397
    :cond_b
    check-cast p1, Ljava/lang/String;

    .line 398
    invoke-static {p1}, Lcom/keephealth/android/util/NumUtil;->getIsNumIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 399
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/NumUtil;->isEmptyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_28

    .line 401
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_3d

    .line 402
    :cond_28
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    if-eqz v0, :cond_56

    :goto_2c
    if-gez p1, :cond_36

    .line 404
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2c

    .line 406
    :cond_36
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 411
    :cond_3d
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    if-eq p1, v0, :cond_56

    if-eqz p2, :cond_49

    sub-int/2addr p1, v0

    const/4 p2, 0x4

    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroll(II)V

    goto :goto_56

    .line 415
    :cond_49
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidateLayouts()V

    .line 416
    iget p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    .line 417
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->currentItem:I

    .line 418
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/wheel/NewWheelView2;->notifyChangingListeners(II)V

    .line 419
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    :cond_56
    :goto_56
    return-void
.end method

.method public setCyclic(Z)V
    .registers 2

    .line 458
    iput-boolean p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->isCyclic:Z

    .line 460
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    .line 461
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidateLayouts()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 234
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    .line 271
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->label:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 272
    :cond_a
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->label:Ljava/lang/String;

    const/4 p1, 0x0

    .line 273
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->labelLayout:Landroid/text/StaticLayout;

    .line 274
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    :cond_12
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->type:Ljava/lang/String;

    return-void
.end method

.method public setVisibleItems(I)V
    .registers 2

    .line 252
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView2;->visibleItems:I

    .line 253
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView2;->invalidate()V

    return-void
.end method
