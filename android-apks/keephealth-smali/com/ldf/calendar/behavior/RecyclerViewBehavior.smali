.class public Lcom/ldf/calendar/behavior/RecyclerViewBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "RecyclerViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field hidingTop:Z

.field private initOffset:I

.field private initiated:Z

.field private minOffset:I

.field showingTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 19
    iput p2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initOffset:I

    .line 20
    iput p2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->minOffset:I

    const/4 p2, 0x0

    .line 22
    iput-boolean p2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initiated:Z

    .line 23
    iput-boolean p2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->hidingTop:Z

    .line 24
    iput-boolean p2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->showingTop:Z

    .line 28
    iput-object p1, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->context:Landroid/content/Context;

    return-void
.end method

.method private getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;
    .registers 3

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ldf/calendar/view/MonthPager;

    return-object p1
.end method

.method private initMinOffsetAndInitOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/ldf/calendar/view/MonthPager;)V
    .registers 6

    .line 42
    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getBottom()I

    move-result v0

    if-lez v0, :cond_14

    iget v0, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 43
    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getViewHeight()I

    move-result v0

    iput v0, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initOffset:I

    .line 44
    invoke-direct {p0, v0}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->saveTop(I)V

    .line 46
    :cond_14
    iget-boolean v0, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initiated:Z

    if-nez v0, :cond_24

    .line 47
    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getViewHeight()I

    move-result p3

    iput p3, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initOffset:I

    .line 48
    invoke-direct {p0, p3}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->saveTop(I)V

    const/4 p3, 0x1

    .line 49
    iput-boolean p3, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initiated:Z

    .line 51
    :cond_24
    invoke-static {}, Lcom/ldf/calendar/Utils;->loadTop()I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->offsetTopAndBottom(I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ldf/calendar/view/MonthPager;->getCellHeight()I

    move-result p1

    iput p1, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->minOffset:I

    return-void
.end method

.method private saveTop(I)V
    .registers 3

    .line 138
    invoke-static {p1}, Lcom/ldf/calendar/Utils;->saveTop(I)V

    .line 139
    invoke-static {}, Lcom/ldf/calendar/Utils;->loadTop()I

    move-result p1

    iget v0, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initOffset:I

    if-ne p1, v0, :cond_10

    const/4 p1, 0x0

    .line 140
    invoke-static {p1}, Lcom/ldf/calendar/Utils;->setScrollToBottom(Z)V

    goto :goto_1c

    .line 141
    :cond_10
    invoke-static {}, Lcom/ldf/calendar/Utils;->loadTop()I

    move-result p1

    iget v0, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->minOffset:I

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x1

    .line 142
    invoke-static {p1}, Lcom/ldf/calendar/Utils;->setScrollToBottom(Z)V

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 18
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 4

    .line 33
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p3

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initMinOffsetAndInitOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/ldf/calendar/view/MonthPager;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .registers 7

    .line 18
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p6}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFZ)Z
    .registers 9

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNestedFling: velocityY: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ldf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .registers 6

    .line 18
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p5}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FF)Z
    .registers 6

    .line 126
    iget-boolean p1, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->hidingTop:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->showingTop:Z

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .registers 7

    .line 18
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p6}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;II[I)V
    .registers 10

    .line 70
    const-string v0, "onNestedPreScroll"

    const-string v1, "ldf"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    const/4 p4, 0x1

    .line 72
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ldf/calendar/view/MonthPager;

    .line 75
    invoke-virtual {v2}, Lcom/ldf/calendar/view/MonthPager;->getPageScrollState()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 76
    aput p5, p6, p4

    .line 77
    const-string p1, "onNestedPreScroll: MonthPager dragging"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->context:Landroid/content/Context;

    const-string p2, "loading month data"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2e
    if-lez p5, :cond_48

    .line 83
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v1

    iget v2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initOffset:I

    if-gt v1, v2, :cond_48

    .line 84
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ldf/calendar/view/MonthPager;->getCellHeight()I

    move-result v2

    if-le v1, v2, :cond_48

    move v1, p4

    goto :goto_49

    :cond_48
    move v1, v0

    :goto_49
    iput-boolean v1, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->hidingTop:Z

    if-gez p5, :cond_55

    const/4 v1, -0x1

    .line 86
    invoke-static {p3, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p3

    if-nez p3, :cond_55

    move v0, p4

    :cond_55
    iput-boolean v0, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->showingTop:Z

    .line 88
    iget-boolean p3, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->hidingTop:Z

    if-nez p3, :cond_5d

    if-eqz v0, :cond_7a

    .line 90
    :cond_5d
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getCellHeight()I

    move-result p3

    .line 91
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ldf/calendar/view/MonthPager;->getViewHeight()I

    move-result p1

    .line 89
    invoke-static {p2, p5, p3, p1}, Lcom/ldf/calendar/Utils;->scroll(Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p4

    .line 92
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getTop()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->saveTop(I)V

    :cond_7a
    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    .line 18
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p5}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    .line 58
    const-string p2, "ldf"

    const-string p3, "onStartNestedScroll"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ldf/calendar/view/MonthPager;

    .line 61
    invoke-virtual {p1, p2}, Lcom/ldf/calendar/view/MonthPager;->setScrollable(Z)V

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_16

    const/4 p2, 0x1

    :cond_16
    return p2
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 18
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .registers 7

    .line 98
    const-string v0, "ldf"

    const-string v1, "onStopNestedScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    const/4 p3, 0x0

    .line 100
    invoke-virtual {p1, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/ldf/calendar/view/MonthPager;

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p3, v0}, Lcom/ldf/calendar/view/MonthPager;->setScrollable(Z)V

    .line 102
    invoke-static {}, Lcom/ldf/calendar/Utils;->isScrollToBottom()Z

    move-result p3

    const/16 v0, 0x1f4

    const/16 v1, 0x96

    if-nez p3, :cond_4a

    .line 103
    iget p3, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->initOffset:I

    invoke-static {}, Lcom/ldf/calendar/Utils;->loadTop()I

    move-result v2

    sub-int/2addr p3, v2

    iget-object v2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/ldf/calendar/Utils;->getTouchSlop(Landroid/content/Context;)I

    move-result v2

    if-le p3, v2, :cond_3e

    iget-boolean p3, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->hidingTop:Z

    if-eqz p3, :cond_3e

    .line 104
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getCellHeight()I

    move-result p3

    invoke-static {p1, p2, p3, v0}, Lcom/ldf/calendar/Utils;->scrollTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_74

    .line 106
    :cond_3e
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getViewHeight()I

    move-result p3

    invoke-static {p1, p2, p3, v1}, Lcom/ldf/calendar/Utils;->scrollTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_74

    .line 109
    :cond_4a
    invoke-static {}, Lcom/ldf/calendar/Utils;->loadTop()I

    move-result p3

    iget v2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->minOffset:I

    sub-int/2addr p3, v2

    iget-object v2, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/ldf/calendar/Utils;->getTouchSlop(Landroid/content/Context;)I

    move-result v2

    if-le p3, v2, :cond_69

    iget-boolean p3, p0, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->showingTop:Z

    if-eqz p3, :cond_69

    .line 110
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getViewHeight()I

    move-result p3

    invoke-static {p1, p2, p3, v0}, Lcom/ldf/calendar/Utils;->scrollTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_74

    .line 112
    :cond_69
    invoke-direct {p0, p1}, Lcom/ldf/calendar/behavior/RecyclerViewBehavior;->getMonthPager(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Lcom/ldf/calendar/view/MonthPager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ldf/calendar/view/MonthPager;->getCellHeight()I

    move-result p3

    invoke-static {p1, p2, p3, v1}, Lcom/ldf/calendar/Utils;->scrollTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/recyclerview/widget/RecyclerView;II)V

    :goto_74
    return-void
.end method
