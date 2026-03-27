.class public Lcom/keephealth/android/views/wheel/NewWheelView;
.super Landroid/view/View;
.source "NewWheelView.java"


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
            "Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isAddZero:Z

.field isCyclic:Z

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

    .line 59
    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/views/wheel/NewWheelView;->SHADOWS_COLORS:[I

    const/16 v0, 0x18

    .line 70
    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView;->TEXT_SIZE:I

    .line 75
    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView;->ITEM_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 183
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    .line 102
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    .line 103
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    const/4 v1, 0x5

    .line 106
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    .line 109
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemHeight:I

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    .line 139
    const-string v2, "public"

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->type:Ljava/lang/String;

    .line 145
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isAddZero:Z

    .line 152
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->changingListeners:Ljava/util/List;

    .line 153
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingListeners:Ljava/util/List;

    .line 886
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isTouch:Z

    .line 960
    new-instance v2, Lcom/keephealth/android/views/wheel/NewWheelView$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView$1;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 987
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->MESSAGE_SCROLL:I

    .line 988
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->MESSAGE_JUSTIFY:I

    .line 1009
    new-instance v0, Lcom/keephealth/android/views/wheel/NewWheelView$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/wheel/NewWheelView$2;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;

    .line 184
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    .line 102
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    .line 103
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    const/4 v1, 0x5

    .line 106
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    .line 109
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemHeight:I

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    .line 139
    const-string v2, "public"

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->type:Ljava/lang/String;

    .line 145
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isAddZero:Z

    .line 152
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->changingListeners:Ljava/util/List;

    .line 153
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingListeners:Ljava/util/List;

    .line 886
    iput-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isTouch:Z

    .line 960
    new-instance v2, Lcom/keephealth/android/views/wheel/NewWheelView$1;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView$1;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 987
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->MESSAGE_SCROLL:I

    .line 988
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->MESSAGE_JUSTIFY:I

    .line 1009
    new-instance v2, Lcom/keephealth/android/views/wheel/NewWheelView$2;

    invoke-direct {v2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView$2;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    iput-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;

    .line 168
    sget-object v2, Lcom/keephealth/android/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 169
    sget v2, Lcom/keephealth/android/views/wheel/NewWheelView;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView;->TEXT_SIZE:I

    const/16 v0, 0x9

    const/4 v2, -0x1

    .line 170
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView;->VALUE_TEXT_COLOR:I

    const/4 v0, 0x7

    .line 171
    sget v2, Lcom/keephealth/android/views/wheel/NewWheelView;->ITEMS_TEXT_COLOR:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sput v0, Lcom/keephealth/android/views/wheel/NewWheelView;->ITEMS_TEXT_COLOR:I

    const/4 v0, 0x6

    .line 172
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isAddZero:Z

    .line 173
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 98
    iput-object p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 p2, 0x0

    .line 99
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    .line 102
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    .line 103
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    const/4 p3, 0x5

    .line 106
    iput p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    .line 109
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemHeight:I

    const/4 p3, 0x1

    .line 138
    iput-boolean p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    .line 139
    const-string v0, "public"

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->type:Ljava/lang/String;

    .line 145
    iput-boolean p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isAddZero:Z

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->changingListeners:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingListeners:Ljava/util/List;

    .line 886
    iput-boolean p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isTouch:Z

    .line 960
    new-instance v0, Lcom/keephealth/android/views/wheel/NewWheelView$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/wheel/NewWheelView$1;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 987
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->MESSAGE_SCROLL:I

    .line 988
    iput p3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->MESSAGE_JUSTIFY:I

    .line 1009
    new-instance p2, Lcom/keephealth/android/views/wheel/NewWheelView$2;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/wheel/NewWheelView$2;-><init>(Lcom/keephealth/android/views/wheel/NewWheelView;)V

    iput-object p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;

    .line 160
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/wheel/NewWheelView;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/widget/Scroller;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/views/wheel/NewWheelView;I)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/views/wheel/NewWheelView;)Landroid/os/Handler;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->justify()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->clearMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->startScrolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/wheel/NewWheelView;I)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/views/wheel/NewWheelView;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->lastScrollY:I

    return p0
.end method

.method static synthetic access$502(Lcom/keephealth/android/views/wheel/NewWheelView;I)I
    .registers 2

    .line 34
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->lastScrollY:I

    return p1
.end method

.method static synthetic access$600(Lcom/keephealth/android/views/wheel/NewWheelView;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/views/wheel/NewWheelView;)I
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getItemHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/views/wheel/NewWheelView;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/views/wheel/NewWheelView;)Lcom/keephealth/android/views/wheel/WheelAdapter;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    return-object p0
.end method

.method private buildText(Z)Ljava/lang/String;
    .registers 9

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 549
    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    sub-int/2addr v3, v1

    :goto_e
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    add-int v5, v4, v1

    if-gt v3, v5, :cond_6a

    if-nez p1, :cond_18

    if-eq v3, v4, :cond_5d

    .line 551
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    .line 553
    iget-object v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->type:Ljava/lang/String;

    const-string v5, "public"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 554
    invoke-direct {p0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->getTextItem(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3f

    .line 565
    :cond_3b
    invoke-direct {p0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->getTextItem(I)Ljava/lang/String;

    move-result-object v4

    :goto_3f
    if-eqz v4, :cond_5d

    .line 570
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_5a

    iget-boolean v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isAddZero:Z

    if-eqz v5, :cond_5a

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    :cond_5a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_5d
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_67

    .line 578
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 582
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private calculateLayoutWidth(II)I
    .registers 9

    .line 653
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->initResourcesIfNecessary()V

    .line 656
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getMaxTextLength()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    .line 658
    const-string v2, "00"

    iget-object v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 659
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    goto :goto_20

    .line 661
    :cond_1e
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    .line 663
    :goto_20
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    .line 665
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    .line 666
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    .line 667
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-static {v0, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    :cond_42
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-ne p2, v0, :cond_48

    goto :goto_64

    .line 675
    :cond_48
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v4, v0, 0x14

    if-lez v3, :cond_53

    add-int/lit8 v4, v0, 0x1c

    .line 681
    :cond_53
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getSuggestedMinimumWidth()I

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

    .line 693
    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    .line 695
    :cond_6e
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    if-lez v0, :cond_81

    .line 696
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    int-to-double v2, v1

    int-to-double v4, p2

    mul-double/2addr v2, v4

    add-int/2addr v1, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    double-to-int v0, v2

    .line 697
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    sub-int/2addr p2, v0

    .line 698
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    goto :goto_85

    :cond_81
    add-int/lit8 p2, p1, -0x14

    .line 700
    iput p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    .line 704
    :cond_85
    :goto_85
    iget p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    if-lez p2, :cond_8e

    .line 705
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    invoke-direct {p0, p2, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->createLayouts(II)V

    :cond_8e
    return p1
.end method

.method private clearMessages()V
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1005
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private createLayouts(II)V
    .registers 13

    .line 718
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_b

    goto :goto_11

    .line 721
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_2f

    .line 719
    :cond_11
    :goto_11
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    invoke-direct {p0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->buildText(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsPaint:Landroid/text/TextPaint;

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

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 724
    :goto_2f
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a4

    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_a4

    .line 726
    :cond_3e
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->type:Ljava/lang/String;

    const-string v2, "public"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 727
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    .line 739
    :cond_59
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    invoke-interface {v0, v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    :cond_69
    :goto_69
    if-eqz v1, :cond_b0

    .line 743
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_85

    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isAddZero:Z

    if-eqz v0, :cond_85

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    :cond_85
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v1, :cond_8a

    goto :goto_8c

    :cond_8a
    const-string v1, ""

    :goto_8c
    move-object v3, v1

    iget-object v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

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

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_b0

    .line 749
    :cond_a4
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_ab

    .line 750
    iput-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_b0

    .line 752
    :cond_ab
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    :cond_b0
    :goto_b0
    if-lez p2, :cond_d7

    .line 756
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getWidth()I

    move-result p1

    if-le p1, p2, :cond_bd

    goto :goto_c3

    .line 759
    :cond_bd
    iget-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_d7

    .line 757
    :cond_c3
    :goto_c3
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x42a00000    # 80.0f

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelLayout:Landroid/text/StaticLayout;

    :cond_d7
    :goto_d7
    return-void
.end method

.method private doScroll(I)V
    .registers 6

    .line 908
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    .line 911
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_18

    .line 912
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    const/16 v0, -0xc8

    if-ge p1, v0, :cond_23

    return-void

    .line 915
    :cond_18
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    if-nez p1, :cond_23

    .line 916
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    const/16 v0, 0xc8

    if-le p1, v0, :cond_23

    return-void

    .line 922
    :cond_23
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getItemHeight()I

    move-result v0

    div-int/2addr p1, v0

    .line 923
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    sub-int/2addr v0, p1

    .line 924
    iget-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lez v1, :cond_4c

    :goto_3a
    if-gez v0, :cond_44

    .line 927
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3a

    .line 929
    :cond_44
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    rem-int/2addr v0, v1

    goto :goto_82

    .line 930
    :cond_4c
    iget-boolean v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    if-eqz v1, :cond_72

    if-gez v0, :cond_56

    .line 933
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    move v0, v2

    goto :goto_82

    .line 935
    :cond_56
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lt v0, v1, :cond_82

    .line 936
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 937
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_82

    .line 941
    :cond_72
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 942
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 945
    :cond_82
    :goto_82
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    .line 946
    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    if-eq v0, v3, :cond_8c

    .line 947
    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(IZ)V

    goto :goto_8f

    .line 949
    :cond_8c
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    .line 953
    :goto_8f
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr p1, v0

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    .line 954
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result p1

    if-le v1, p1, :cond_ab

    .line 955
    iget p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    :cond_ab
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .registers 8

    .line 881
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 882
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 883
    iget-object v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x14

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getWidth()I

    move-result v4

    const/16 v5, 0x41

    sub-int/2addr v4, v5

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v2, v5, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 884
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .registers 4

    .line 860
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 862
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    neg-int v0, v0

    .line 863
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 865
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsPaint:Landroid/text/TextPaint;

    sget v1, Lcom/keephealth/android/views/wheel/NewWheelView;->ITEMS_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 866
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 867
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 869
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .registers 7

    .line 818
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    div-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 819
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 821
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    div-int/2addr v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 822
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .registers 5

    .line 831
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    sget v1, Lcom/keephealth/android/views/wheel/NewWheelView;->VALUE_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 832
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 834
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 835
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 838
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3b

    .line 839
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 840
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 841
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 842
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 846
    :cond_3b
    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_54

    .line 847
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 848
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 849
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 850
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_54
    return-void
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 508
    :cond_4
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getItemHeight()I

    move-result p1

    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    mul-int/2addr p1, v0

    sget v0, Lcom/keephealth/android/views/wheel/NewWheelView;->ITEM_OFFSET:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x50

    .line 511
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemHeight()I
    .registers 4

    .line 619
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemHeight:I

    if-eqz v0, :cond_5

    return v0

    .line 621
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_21

    .line 622
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemHeight:I

    return v0

    .line 625
    :cond_21
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getMaxTextLength()I
    .registers 8

    .line 591
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 596
    :cond_8
    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getMaximumLength()I

    move-result v2

    if-lez v2, :cond_f

    return v2

    .line 602
    :cond_f
    iget v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    .line 603
    iget v3, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    iget v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_40

    .line 604
    invoke-interface {v0, v2}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    if-eqz v3, :cond_3c

    .line 605
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

    .line 610
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_46
    return v1
.end method

.method private getTextItem(I)Ljava/lang/String;
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_27

    .line 526
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_16

    if-lt p1, v0, :cond_1b

    .line 527
    :cond_16
    iget-boolean v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    if-nez v2, :cond_1b

    return-object v1

    :cond_1b
    :goto_1b
    if-gez p1, :cond_1f

    add-int/2addr p1, v0

    goto :goto_1b

    .line 535
    :cond_1f
    rem-int/2addr p1, v0

    .line 536
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    :goto_27
    return-object v1
.end method

.method private initData(Landroid/content/Context;)V
    .registers 5

    .line 193
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 195
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .registers 5

    .line 468
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_20

    .line 469
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsPaint:Landroid/text/TextPaint;

    .line 470
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 471
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsPaint:Landroid/text/TextPaint;

    sget v1, Lcom/keephealth/android/views/wheel/NewWheelView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 474
    :cond_20
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_54

    .line 475
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x85

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    .line 476
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    sget v1, Lcom/keephealth/android/views/wheel/NewWheelView;->TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 478
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 479
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valuePaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const v2, -0x3f3f40

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 482
    :cond_54
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_65

    .line 483
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08015c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 486
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_74

    .line 487
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/keephealth/android/views/wheel/NewWheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 490
    :cond_74
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_83

    .line 491
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/keephealth/android/views/wheel/NewWheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_83
    return-void
.end method

.method private invalidateLayouts()V
    .registers 2

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 460
    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->valueLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    .line 461
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    return-void
.end method

.method private justify()V
    .registers 11

    .line 1039
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1043
    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->lastScrollY:I

    .line 1044
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    .line 1045
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getItemHeight()I

    move-result v2

    const/4 v3, 0x1

    .line 1046
    iget v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    if-lez v1, :cond_1c

    iget-object v5, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v5}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v5

    if-ge v4, v5, :cond_1f

    goto :goto_1e

    :cond_1c
    if-lez v4, :cond_1f

    :goto_1e
    move v0, v3

    .line 1047
    :cond_1f
    iget-boolean v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

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

    .line 1053
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_4d

    .line 1054
    iget-object v4, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1055
    invoke-direct {p0, v3}, Lcom/keephealth/android/views/wheel/NewWheelView;->setNextMessage(I)V

    goto :goto_50

    .line 1057
    :cond_4d
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->finishScrolling()V

    :goto_50
    return-void
.end method

.method private setNextMessage(I)V
    .registers 3

    .line 996
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->clearMessages()V

    .line 997
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startScrolling()V
    .registers 2

    .line 1065
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 1066
    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    .line 1067
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->notifyScrollingListenersAboutStart()V

    :cond_a
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/keephealth/android/views/wheel/OnWheelScrollListener;)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method finishScrolling()V
    .registers 2

    .line 1075
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_a

    .line 1076
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->notifyScrollingListenersAboutEnd()V

    const/4 v0, 0x0

    .line 1077
    iput-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isScrollingPerformed:Z

    .line 1079
    :cond_a
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidateLayouts()V

    .line 1080
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    return-void
.end method

.method public getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .registers 2

    .line 341
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleItems()I
    .registers 2

    .line 234
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .registers 2

    .line 440
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .registers 5

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;

    .line 295
    invoke-interface {v1, p0, p1, p2}, Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;->onChanged(Lcom/keephealth/android/views/wheel/NewWheelView;II)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingListeners:Ljava/util/List;

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

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingListeners:Ljava/util/List;

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

    .line 789
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 791
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1a

    .line 792
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    if-nez v0, :cond_15

    .line 793
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->calculateLayoutWidth(II)I

    goto :goto_1a

    .line 795
    :cond_15
    iget v1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/views/wheel/NewWheelView;->createLayouts(II)V

    .line 798
    :cond_1a
    :goto_1a
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 799
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsWidth:I

    if-lez v0, :cond_36

    .line 800
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 802
    sget v0, Lcom/keephealth/android/views/wheel/NewWheelView;->ITEM_OFFSET:I

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 803
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 804
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->drawValue(Landroid/graphics/Canvas;)V

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_36
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 766
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 767
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 768
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 769
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 771
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_19

    goto :goto_29

    .line 777
    :cond_19
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_28

    .line 780
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_29

    :cond_28
    move p2, v0

    .line 784
    :goto_29
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 889
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getAdapter()Lcom/keephealth/android/views/wheel/WheelAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 893
    :cond_8
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isTouch:Z

    if-nez v0, :cond_d

    return v1

    .line 896
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1e

    .line 897
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->justify()V

    :cond_1e
    return v1
.end method

.method public removeChangingListener(Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;)V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/keephealth/android/views/wheel/OnWheelScrollListener;)V
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .registers 9

    .line 1089
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1090
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scrollingOffset:I

    iput v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->lastScrollY:I

    .line 1091
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr p1, v0

    .line 1092
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->lastScrollY:I

    const/4 v3, 0x0

    sub-int v4, p1, v2

    const/4 v1, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x0

    .line 1093
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->setNextMessage(I)V

    .line 1094
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->startScrolling()V

    return-void
.end method

.method public setAdapter(Lcom/keephealth/android/views/wheel/WheelAdapter;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    .line 214
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidateLayouts()V

    .line 215
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    return-void
.end method

.method public setAddZero(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isAddZero:Z

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_43

    :cond_b
    if-ltz p1, :cond_15

    .line 354
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_2a

    .line 355
    :cond_15
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    if-eqz v0, :cond_43

    :goto_19
    if-gez p1, :cond_23

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_19

    .line 359
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 364
    :cond_2a
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    if-eq p1, v0, :cond_43

    if-eqz p2, :cond_36

    sub-int/2addr p1, v0

    const/4 p2, 0x4

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->scroll(II)V

    goto :goto_43

    .line 368
    :cond_36
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidateLayouts()V

    .line 369
    iget p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    .line 370
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    .line 371
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->notifyChangingListeners(II)V

    .line 372
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    :cond_43
    :goto_43
    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/wheel/NewWheelView;->setCurrentItem(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCurrentItem(Ljava/lang/Object;Z)V
    .registers 5

    .line 384
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    if-eqz v0, :cond_56

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_56

    .line 388
    :cond_b
    check-cast p1, Ljava/lang/String;

    .line 389
    invoke-static {p1}, Lcom/keephealth/android/util/NumUtil;->getIsNumIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 390
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/NumUtil;->isEmptyInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_28

    .line 392
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    if-lt p1, v0, :cond_3d

    .line 393
    :cond_28
    iget-boolean v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    if-eqz v0, :cond_56

    :goto_2c
    if-gez p1, :cond_36

    .line 395
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_2c

    .line 397
    :cond_36
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->adapter:Lcom/keephealth/android/views/wheel/WheelAdapter;

    invoke-interface {v0}, Lcom/keephealth/android/views/wheel/WheelAdapter;->getItemsCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 402
    :cond_3d
    iget v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    if-eq p1, v0, :cond_56

    if-eqz p2, :cond_49

    sub-int/2addr p1, v0

    const/4 p2, 0x4

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/wheel/NewWheelView;->scroll(II)V

    goto :goto_56

    .line 406
    :cond_49
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidateLayouts()V

    .line 407
    iget p2, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    .line 408
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->currentItem:I

    .line 409
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/views/wheel/NewWheelView;->notifyChangingListeners(II)V

    .line 410
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    :cond_56
    :goto_56
    return-void
.end method

.method public setCyclic(Z)V
    .registers 2

    .line 449
    iput-boolean p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->isCyclic:Z

    .line 451
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    .line 452
    invoke-direct {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidateLayouts()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 225
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 263
    :cond_a
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->label:Ljava/lang/String;

    const/4 p1, 0x0

    .line 264
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 265
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    :cond_12
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->type:Ljava/lang/String;

    return-void
.end method

.method public setVisibleItems(I)V
    .registers 2

    .line 243
    iput p1, p0, Lcom/keephealth/android/views/wheel/NewWheelView;->visibleItems:I

    .line 244
    invoke-virtual {p0}, Lcom/keephealth/android/views/wheel/NewWheelView;->invalidate()V

    return-void
.end method
