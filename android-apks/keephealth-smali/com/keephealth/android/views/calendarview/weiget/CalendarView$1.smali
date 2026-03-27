.class Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 6

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    # invokes: Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(I)V
    invoke-static {v0, p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->access$000(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;I)V

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    # setter for: Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I
    invoke-static {v0, p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->access$102(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;I)I

    .line 151
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    # getter for: Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->pagerChangeListener:Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;
    invoke-static {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->access$200(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 152
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    # getter for: Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I
    invoke-static {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->access$300(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    # getter for: Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I
    invoke-static {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->access$300(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {p1, v0, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->positionToDate(III)[I

    move-result-object p1

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    # getter for: Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->pagerChangeListener:Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;
    invoke-static {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->access$200(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;

    move-result-object v0

    aget v1, p1, v1

    aget p1, p1, v3

    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    # getter for: Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I
    invoke-static {v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->access$400(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)[I

    move-result-object v2

    aget v2, v2, v3

    filled-new-array {v1, p1, v2}, [I

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;->onPagerChanged([I)V

    .line 155
    :cond_41
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;->this$0:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->requestLayout()V

    return-void
.end method
