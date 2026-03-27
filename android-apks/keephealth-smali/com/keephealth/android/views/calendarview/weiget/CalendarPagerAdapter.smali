.class public Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CalendarPagerAdapter.java"


# instance fields
.field private cache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/keephealth/android/views/calendarview/weiget/MonthView;",
            ">;"
        }
    .end annotation
.end field

.field private calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

.field private count:I

.field private item_layout:I

.field private lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

.field private mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/keephealth/android/views/calendarview/weiget/MonthView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 30
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->cache:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mViews:Landroid/util/SparseArray;

    .line 31
    iput p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->count:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 67
    check-cast p3, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->cache:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mViews:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->count:I

    return v0
.end method

.method public getViews()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/keephealth/android/views/calendarview/weiget/MonthView;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->cache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->cache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    goto :goto_1a

    .line 51
    :cond_11
    new-instance v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;-><init>(Landroid/content/Context;)V

    .line 54
    :goto_1a
    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getStartDate()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getStartDate()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {p2, v1, v3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->positionToDate(III)[I

    move-result-object v1

    .line 55
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setAttrsBean(Lcom/keephealth/android/views/calendarview/bean/AttrsBean;)V

    .line 56
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setLatClickDate(Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 57
    iget v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->item_layout:I

    iget-object v5, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

    invoke-virtual {v0, v3, v5}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setOnCalendarViewAdapter(ILcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;)V

    .line 58
    aget v3, v1, v2

    aget v5, v1, v4

    iget-object v6, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSpecifyMap()Ljava/util/Map;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getMonthDate(IILjava/util/Map;)Ljava/util/List;

    move-result-object v3

    aget v2, v1, v2

    aget v5, v1, v4

    invoke-static {v2, v5}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v2

    aget v1, v1, v4

    invoke-virtual {v0, v3, v2, v1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setDateList(Ljava/util/List;II)V

    .line 59
    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->setId(I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public setAttrsBean(Lcom/keephealth/android/views/calendarview/bean/AttrsBean;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    return-void
.end method

.method public setLatClick(Lcom/keephealth/android/views/calendarview/bean/DateBean;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->lastClickDate:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    return-void
.end method

.method public setOnCalendarViewAdapter(ILcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;)V
    .registers 3

    .line 92
    iput p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->item_layout:I

    .line 93
    iput-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

    return-void
.end method
