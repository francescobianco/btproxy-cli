.class public Lcom/ldf/calendar/view/MonthPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "MonthPager.java"


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/ldf/calendar/behavior/MonthPagerBehavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;
    }
.end annotation


# static fields
.field public static CURRENT_DAY_INDEX:I = 0x3e8


# instance fields
.field private cellHeight:I

.field private currentPosition:I

.field private hasPageChangeListener:Z

.field private monthPageChangeListener:Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;

.field private pageChangeByGesture:Z

.field private pageScrollState:I

.field private rowIndex:I

.field private scrollable:Z

.field private viewHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/ldf/calendar/view/MonthPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget p1, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->currentPosition:I

    const/4 p1, 0x6

    .line 22
    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->rowIndex:I

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/ldf/calendar/view/MonthPager;->pageChangeByGesture:Z

    .line 26
    iput-boolean p1, p0, Lcom/ldf/calendar/view/MonthPager;->hasPageChangeListener:Z

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/ldf/calendar/view/MonthPager;->scrollable:Z

    .line 28
    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->pageScrollState:I

    .line 36
    invoke-direct {p0}, Lcom/ldf/calendar/view/MonthPager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/ldf/calendar/view/MonthPager;)Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ldf/calendar/view/MonthPager;->monthPageChangeListener:Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ldf/calendar/view/MonthPager;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/ldf/calendar/view/MonthPager;)Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/ldf/calendar/view/MonthPager;->pageChangeByGesture:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ldf/calendar/view/MonthPager;Z)Z
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/ldf/calendar/view/MonthPager;->pageChangeByGesture:Z

    return p1
.end method

.method static synthetic access$302(Lcom/ldf/calendar/view/MonthPager;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->pageScrollState:I

    return p1
.end method

.method private init()V
    .registers 2

    .line 40
    new-instance v0, Lcom/ldf/calendar/view/MonthPager$1;

    invoke-direct {v0, p0}, Lcom/ldf/calendar/view/MonthPager$1;-><init>(Lcom/ldf/calendar/view/MonthPager;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/ldf/calendar/view/MonthPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/ldf/calendar/view/MonthPager;->hasPageChangeListener:Z

    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lcom/ldf/calendar/view/MonthPager;->hasPageChangeListener:Z

    if-eqz v0, :cond_c

    .line 75
    const-string p1, "ldf"

    const-string v0, "MonthPager Just Can Use Own OnPageChangeListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 77
    :cond_c
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :goto_f
    return-void
.end method

.method public addOnPageChangeListener(Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/ldf/calendar/view/MonthPager;->monthPageChangeListener:Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;

    .line 83
    const-string p1, "ldf"

    const-string v0, "MonthPager Just Can Use Own OnPageChangeListener"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCellHeight()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/ldf/calendar/view/MonthPager;->cellHeight:I

    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/ldf/calendar/view/MonthPager;->currentPosition:I

    return v0
.end method

.method public getPageScrollState()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/ldf/calendar/view/MonthPager;->pageScrollState:I

    return v0
.end method

.method public getRowIndex()I
    .registers 3

    .line 156
    invoke-virtual {p0}, Lcom/ldf/calendar/view/MonthPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/component/CalendarViewAdapter;

    .line 157
    invoke-virtual {v0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->getPagers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/ldf/calendar/view/MonthPager;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    invoke-virtual {v0}, Lcom/ldf/calendar/view/Calendar;->getSelectedRowIndex()I

    move-result v0

    iput v0, p0, Lcom/ldf/calendar/view/MonthPager;->rowIndex:I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRowIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/ldf/calendar/view/MonthPager;->rowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ldf"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p0, Lcom/ldf/calendar/view/MonthPager;->rowIndex:I

    return v0
.end method

.method public getTopMovableDistance()I
    .registers 3

    .line 126
    invoke-virtual {p0}, Lcom/ldf/calendar/view/MonthPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/component/CalendarViewAdapter;

    if-nez v0, :cond_b

    .line 128
    iget v0, p0, Lcom/ldf/calendar/view/MonthPager;->cellHeight:I

    return v0

    .line 130
    :cond_b
    invoke-virtual {v0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->getPagers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/ldf/calendar/view/MonthPager;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    invoke-virtual {v0}, Lcom/ldf/calendar/view/Calendar;->getSelectedRowIndex()I

    move-result v0

    iput v0, p0, Lcom/ldf/calendar/view/MonthPager;->rowIndex:I

    .line 131
    iget v1, p0, Lcom/ldf/calendar/view/MonthPager;->cellHeight:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public getViewHeight()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/ldf/calendar/view/MonthPager;->viewHeight:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 100
    iget-boolean v0, p0, Lcom/ldf/calendar/view/MonthPager;->scrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 92
    iget-boolean v0, p0, Lcom/ldf/calendar/view/MonthPager;->scrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public selectOtherMonth(I)V
    .registers 3

    .line 107
    iget v0, p0, Lcom/ldf/calendar/view/MonthPager;->currentPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/ldf/calendar/view/MonthPager;->setCurrentItem(I)V

    .line 108
    invoke-virtual {p0}, Lcom/ldf/calendar/view/MonthPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/ldf/calendar/component/CalendarViewAdapter;

    .line 109
    invoke-static {}, Lcom/ldf/calendar/component/CalendarViewAdapter;->loadSelectedDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->notifyDataChanged(Lcom/ldf/calendar/model/CalendarDate;)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->currentPosition:I

    return-void
.end method

.method public setRowIndex(I)V
    .registers 2

    .line 163
    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->rowIndex:I

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/ldf/calendar/view/MonthPager;->scrollable:Z

    return-void
.end method

.method public setViewHeight(I)V
    .registers 3

    .line 139
    div-int/lit8 v0, p1, 0x6

    iput v0, p0, Lcom/ldf/calendar/view/MonthPager;->cellHeight:I

    .line 140
    iput p1, p0, Lcom/ldf/calendar/view/MonthPager;->viewHeight:I

    return-void
.end method
