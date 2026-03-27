.class public Lcom/ldf/calendar/component/CalendarViewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "CalendarViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;
    }
.end annotation


# static fields
.field private static date:Lcom/ldf/calendar/model/CalendarDate;


# instance fields
.field private calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

.field private calendars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ldf/calendar/view/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private currentPosition:I

.field private onCalendarTypeChangedListener:Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;

.field private rowCount:I

.field private seedDate:Lcom/ldf/calendar/model/CalendarDate;

.field private weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    sput-object v0, Lcom/ldf/calendar/component/CalendarViewAdapter;->date:Lcom/ldf/calendar/model/CalendarDate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ldf/calendar/interf/OnSelectDateListener;Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;Lcom/ldf/calendar/interf/IDayRenderer;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    .line 25
    sget v0, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    iput v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    .line 26
    sget-object v0, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    iput-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    .line 32
    sget-object v0, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Monday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    .line 39
    iput-object p3, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ldf/calendar/component/CalendarViewAdapter;->init(Landroid/content/Context;Lcom/ldf/calendar/interf/OnSelectDateListener;)V

    .line 41
    invoke-virtual {p0, p4}, Lcom/ldf/calendar/component/CalendarViewAdapter;->setCustomDayRenderer(Lcom/ldf/calendar/interf/IDayRenderer;)V

    return-void
.end method

.method private init(Landroid/content/Context;Lcom/ldf/calendar/interf/OnSelectDateListener;)V
    .registers 6

    .line 53
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    invoke-static {v0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->saveSelectedDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 55
    new-instance v0, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v0}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v0, 0x0

    :goto_10
    const/4 v1, 0x3

    if-ge v0, v1, :cond_37

    .line 57
    new-instance v1, Lcom/ldf/calendar/component/CalendarAttr;

    invoke-direct {v1}, Lcom/ldf/calendar/component/CalendarAttr;-><init>()V

    .line 58
    sget-object v2, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/component/CalendarAttr;->setCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 59
    iget-object v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/component/CalendarAttr;->setWeekArrayType(Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;)V

    .line 60
    new-instance v2, Lcom/ldf/calendar/view/Calendar;

    invoke-direct {v2, p1, p2, v1}, Lcom/ldf/calendar/view/Calendar;-><init>(Landroid/content/Context;Lcom/ldf/calendar/interf/OnSelectDateListener;Lcom/ldf/calendar/component/CalendarAttr;)V

    .line 61
    new-instance v1, Lcom/ldf/calendar/component/CalendarViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/ldf/calendar/component/CalendarViewAdapter$1;-><init>(Lcom/ldf/calendar/component/CalendarViewAdapter;)V

    invoke-virtual {v2, v1}, Lcom/ldf/calendar/view/Calendar;->setOnAdapterSelectListener(Lcom/ldf/calendar/interf/OnAdapterSelectListener;)V

    .line 72
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_37
    return-void
.end method

.method public static loadSelectedDate()Lcom/ldf/calendar/model/CalendarDate;
    .registers 1

    .line 49
    sget-object v0, Lcom/ldf/calendar/component/CalendarViewAdapter;->date:Lcom/ldf/calendar/model/CalendarDate;

    return-object v0
.end method

.method private refreshCalendar()V
    .registers 6

    .line 247
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_7d

    .line 248
    iget v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    sput v0, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    .line 249
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 250
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 251
    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    .line 253
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    sub-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 254
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->modifyWeek(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    sget-object v4, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    if-ne v2, v4, :cond_43

    .line 256
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSaturday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_4a

    .line 258
    :cond_43
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSunday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 260
    :goto_4a
    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    .line 262
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    add-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 263
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v1, v3}, Lcom/ldf/calendar/model/CalendarDate;->modifyWeek(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    sget-object v3, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    if-ne v2, v3, :cond_70

    .line 265
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSaturday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_77

    .line 267
    :cond_70
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSunday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 269
    :goto_77
    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    goto :goto_c4

    .line 271
    :cond_7d
    iget v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    sput v0, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    .line 273
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 274
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 276
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    sub-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 277
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->modifyMonth(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v3}, Lcom/ldf/calendar/model/CalendarDate;->setDay(I)V

    .line 279
    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 281
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    add-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 282
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v1, v3}, Lcom/ldf/calendar/model/CalendarDate;->modifyMonth(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v3}, Lcom/ldf/calendar/model/CalendarDate;->setDay(I)V

    .line 284
    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    :goto_c4
    return-void
.end method

.method public static saveSelectedDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 1

    .line 45
    sput-object p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->date:Lcom/ldf/calendar/model/CalendarDate;

    return-void
.end method


# virtual methods
.method public cancelOtherSelectState()V
    .registers 3

    const/4 v0, 0x0

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 143
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ldf/calendar/view/Calendar;

    .line 144
    invoke-virtual {v1}, Lcom/ldf/calendar/view/Calendar;->cancelSelectState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 126
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCalendarType()Lcom/ldf/calendar/component/CalendarAttr$CalendarType;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    const v0, 0x7fffffff

    return v0
.end method

.method public getFirstVisibleDate()Lcom/ldf/calendar/model/CalendarDate;
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    invoke-virtual {v0}, Lcom/ldf/calendar/view/Calendar;->getFirstDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x2

    return p1
.end method

.method public getLastVisibleDate()Lcom/ldf/calendar/model/CalendarDate;
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    invoke-virtual {v0}, Lcom/ldf/calendar/view/Calendar;->getLastDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public getPagers()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ldf/calendar/view/Calendar;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWeekArrayType()Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    .line 85
    const-string v0, "ldf"

    const-string v1, "instantiateItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ge p2, v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 90
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    sget-object v2, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    if-ne v1, v2, :cond_32

    .line 91
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    sget v2, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->modifyMonth(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->setDay(I)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_56

    .line 95
    :cond_32
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    sget v2, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->modifyWeek(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    sget-object v3, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    if-ne v2, v3, :cond_4a

    .line 97
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSaturday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_51

    .line 99
    :cond_4a
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSunday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 101
    :goto_51
    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    .line 103
    :goto_56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_6f

    .line 104
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    rem-int/lit8 v2, p2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    :cond_6f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_80

    const/4 p2, 0x0

    .line 107
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_85

    .line 109
    :cond_80
    rem-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_85
    return-object v0
.end method

.method public invalidateCurrentCalendar()V
    .registers 5

    const/4 v0, 0x0

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 150
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ldf/calendar/view/Calendar;

    .line 151
    invoke-virtual {v1}, Lcom/ldf/calendar/view/Calendar;->update()V

    .line 152
    invoke-virtual {v1}, Lcom/ldf/calendar/view/Calendar;->getCalendarType()Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    move-result-object v2

    sget-object v3, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    if-ne v2, v3, :cond_21

    .line 153
    iget v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    .line 121
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public notifyDataChanged()V
    .registers 1

    .line 243
    invoke-direct {p0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->refreshCalendar()V

    return-void
.end method

.method public notifyDataChanged(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 238
    invoke-static {p1}, Lcom/ldf/calendar/component/CalendarViewAdapter;->saveSelectedDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 239
    invoke-direct {p0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->refreshCalendar()V

    return-void
.end method

.method public notifyMonthDataChanged(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 2

    .line 232
    iput-object p1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 233
    invoke-direct {p0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->refreshCalendar()V

    return-void
.end method

.method public setCustomDayRenderer(Lcom/ldf/calendar/interf/IDayRenderer;)V
    .registers 4

    .line 298
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 299
    invoke-virtual {v0, p1}, Lcom/ldf/calendar/view/Calendar;->setDayRenderer(Lcom/ldf/calendar/interf/IDayRenderer;)V

    .line 301
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 302
    invoke-interface {p1}, Lcom/ldf/calendar/interf/IDayRenderer;->copy()Lcom/ldf/calendar/interf/IDayRenderer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->setDayRenderer(Lcom/ldf/calendar/interf/IDayRenderer;)V

    .line 304
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 305
    invoke-interface {p1}, Lcom/ldf/calendar/interf/IDayRenderer;->copy()Lcom/ldf/calendar/interf/IDayRenderer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/view/Calendar;->setDayRenderer(Lcom/ldf/calendar/interf/IDayRenderer;)V

    return-void
.end method

.method public setMarkData(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lcom/ldf/calendar/Utils;->setMarkData(Ljava/util/HashMap;)V

    .line 160
    invoke-virtual {p0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->notifyDataChanged()V

    return-void
.end method

.method public setOnCalendarTypeChangedListener(Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->onCalendarTypeChangedListener:Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6

    .line 78
    const-string v0, "ldf"

    const-string v1, "setPrimaryItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 80
    iput p2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    return-void
.end method

.method public switchToMonth()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    if-eqz v0, :cond_87

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_87

    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    if-eq v0, v1, :cond_87

    .line 165
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->onCalendarTypeChangedListener:Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;

    if-eqz v0, :cond_19

    .line 166
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-interface {v0, v1}, Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;->onCalendarTypeChanged(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 168
    :cond_19
    sget-object v0, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    iput-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    .line 169
    iget v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    sput v0, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    .line 170
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 171
    invoke-virtual {v0}, Lcom/ldf/calendar/view/Calendar;->getSeedDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v0

    iput-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 173
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 174
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->switchCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 175
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 177
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 178
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->switchCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 179
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/ldf/calendar/model/CalendarDate;->modifyMonth(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->setDay(I)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 183
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 184
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->MONTH:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->switchCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 185
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->modifyMonth(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->setDay(I)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    :cond_87
    return-void
.end method

.method public switchToWeek(I)V
    .registers 7

    .line 192
    iput p1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    .line 193
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b6

    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    if-eq v0, v1, :cond_b6

    .line 194
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->onCalendarTypeChangedListener:Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;

    if-eqz v0, :cond_1b

    .line 195
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-interface {v0, v1}, Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;->onCalendarTypeChanged(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 197
    :cond_1b
    sget-object v0, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    iput-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendarType:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    .line 198
    iget v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    sput v0, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    .line 199
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 200
    invoke-virtual {v0}, Lcom/ldf/calendar/view/Calendar;->getSeedDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    iput-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 202
    invoke-virtual {v0}, Lcom/ldf/calendar/view/Calendar;->getSelectedRowIndex()I

    move-result v0

    iput v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->rowCount:I

    .line 204
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 205
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->switchCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 206
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 207
    invoke-virtual {v0, p1}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    .line 209
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 210
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->switchCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 211
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/ldf/calendar/model/CalendarDate;->modifyWeek(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 212
    iget-object v3, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    sget-object v4, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    if-ne v3, v4, :cond_7c

    .line 213
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSaturday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_83

    .line 215
    :cond_7c
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSunday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 217
    :goto_83
    invoke-virtual {v0, p1}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    .line 219
    iget-object v0, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->calendars:Ljava/util/ArrayList;

    iget v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->currentPosition:I

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/Calendar;

    .line 220
    sget-object v1, Lcom/ldf/calendar/component/CalendarAttr$CalendarType;->WEEK:Lcom/ldf/calendar/component/CalendarAttr$CalendarType;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->switchCalendarType(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V

    .line 221
    iget-object v1, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->seedDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v1, v2}, Lcom/ldf/calendar/model/CalendarDate;->modifyWeek(I)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    .line 222
    iget-object v2, p0, Lcom/ldf/calendar/component/CalendarViewAdapter;->weekArrayType:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    sget-object v3, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    if-ne v2, v3, :cond_ac

    .line 223
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSaturday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    goto :goto_b3

    .line 225
    :cond_ac
    invoke-static {v1}, Lcom/ldf/calendar/Utils;->getSunday(Lcom/ldf/calendar/model/CalendarDate;)Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/Calendar;->showDate(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 227
    :goto_b3
    invoke-virtual {v0, p1}, Lcom/ldf/calendar/view/Calendar;->updateWeek(I)V

    :cond_b6
    return-void
.end method
