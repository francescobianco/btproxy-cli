.class public Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
.super Landroidx/viewpager/widget/ViewPager;
.source "CalendarView.java"


# instance fields
.field private calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

.field private calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

.field private chooseDate:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "[I>;>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentPosition:I

.field private endDate:[I

.field private initDate:[I

.field private item_layout:I

.field private lastClickDate:[I

.field private mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

.field private multiChooseListener:Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;

.field private pagerChangeListener:Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;

.field private positions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private singleChooseListener:Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;

.field private startDate:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    .line 58
    new-instance v0, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;I)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;I)I
    .registers 2

    .line 30
    iput p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->pagerChangeListener:Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)[I
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)[I
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    return-object p0
.end method

.method private initAttr(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 63
    sget-object v0, Lcom/keephealth/android/R$styleable;->CalendarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 64
    :goto_8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-ge v1, v2, :cond_ec

    .line 65
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/4 v5, 0x7

    if-ne v2, v5, :cond_23

    .line 67
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setShowLastNext(Z)V

    goto/16 :goto_e8

    :cond_23
    const/16 v5, 0x8

    if-ne v2, v5, :cond_32

    .line 69
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setShowLunar(Z)V

    goto/16 :goto_e8

    :cond_32
    const/4 v5, 0x6

    if-ne v2, v5, :cond_40

    .line 71
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setShowHoliday(Z)V

    goto/16 :goto_e8

    :cond_40
    const/16 v5, 0x9

    if-ne v2, v5, :cond_4f

    .line 73
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setShowTerm(Z)V

    goto/16 :goto_e8

    :cond_4f
    if-ne v2, v3, :cond_5c

    .line 75
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setSwitchChoose(Z)V

    goto/16 :goto_e8

    :cond_5c
    const/16 v3, 0xa

    if-ne v2, v3, :cond_6f

    .line 77
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorSolar()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setColorSolar(I)V

    goto/16 :goto_e8

    :cond_6f
    const/16 v3, 0xb

    if-ne v2, v3, :cond_85

    .line 79
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSizeSolar()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {p1, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getTextSize(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setSizeSolar(I)V

    goto :goto_e8

    :cond_85
    const/4 v3, 0x4

    if-ne v2, v3, :cond_96

    .line 81
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorLunar()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setColorLunar(I)V

    goto :goto_e8

    :cond_96
    const/4 v3, 0x5

    if-ne v2, v3, :cond_ab

    .line 83
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSizeLunar()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {p1, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getTextSize(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setSizeLunar(I)V

    goto :goto_e8

    :cond_ab
    const/4 v3, 0x3

    if-ne v2, v3, :cond_bc

    .line 85
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorHoliday()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setColorHoliday(I)V

    goto :goto_e8

    :cond_bc
    if-nez v2, :cond_cc

    .line 87
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getColorChoose()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setColorChoose(I)V

    goto :goto_e8

    :cond_cc
    const/4 v3, 0x2

    if-ne v2, v3, :cond_dd

    .line 89
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDayBg()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setDayBg(I)V

    goto :goto_e8

    :cond_dd
    if-ne v2, v4, :cond_e8

    .line 91
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setChooseType(I)V

    :cond_e8
    :goto_e8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 95
    :cond_ec
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x76c

    .line 97
    filled-new-array {p1, v4}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    const/16 p2, 0x801

    .line 98
    filled-new-array {p2, v3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    .line 99
    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2, p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setStartDate([I)V

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setEndDate([I)V

    return-void
.end method

.method private isIllegal([I)Z
    .registers 8

    const/4 v0, 0x1

    .line 280
    aget v1, p1, v0

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-gt v1, v2, :cond_72

    if-ge v1, v0, :cond_b

    goto :goto_72

    .line 284
    :cond_b
    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v1

    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    invoke-static {v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-gez v1, :cond_1a

    return v3

    .line 288
    :cond_1a
    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v1

    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    invoke-static {v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-lez v1, :cond_29

    return v3

    :cond_29
    const/4 v1, 0x2

    .line 292
    aget v2, p1, v1

    aget v4, p1, v3

    aget v5, p1, v0

    invoke-static {v4, v5}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v4

    if-gt v2, v4, :cond_72

    aget v1, p1, v1

    if-ge v1, v0, :cond_3b

    goto :goto_72

    .line 297
    :cond_3b
    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableStartDate()[I

    move-result-object v1

    if-eqz v1, :cond_56

    .line 298
    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v1

    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableStartDate()[I

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-gez v1, :cond_56

    return v3

    .line 303
    :cond_56
    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableEndDate()[I

    move-result-object v1

    if-eqz v1, :cond_71

    .line 304
    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v1

    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getDisableEndDate()[I

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToMillis([I)J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-lez p1, :cond_71

    return v3

    :cond_71
    return v0

    :cond_72
    :goto_72
    return v3
.end method

.method private refreshMonthView(I)V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->getViews()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    .line 186
    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getChooseType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    if-eqz v0, :cond_3e

    .line 189
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget p1, p1, v2

    invoke-virtual {v0, v2, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->refreshClick(II)V

    goto :goto_3e

    .line 193
    :cond_1f
    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isSwitchChoose()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget v1, v1, v3

    if-eq v1, p1, :cond_36

    :cond_2e
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    .line 194
    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isSwitchChoose()Z

    move-result p1

    if-eqz p1, :cond_37

    :cond_36
    move v3, v2

    .line 195
    :cond_37
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget p1, p1, v2

    invoke-virtual {v0, p1, v3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->refresh(IZ)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private toDestDate(III)V
    .registers 8

    .line 389
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {p1, p2, v2, v0}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToPosition(IIII)I

    move-result p1

    .line 390
    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->isSwitchChoose()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p3, :cond_1a

    .line 391
    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aput p1, p2, v1

    .line 393
    :cond_1a
    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    if-eqz p3, :cond_1f

    goto :goto_21

    :cond_1f
    aget p3, p2, v3

    :goto_21
    aput p3, p2, v3

    .line 394
    iget p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    if-ne p1, p2, :cond_2b

    .line 396
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(I)V

    goto :goto_2e

    .line 398
    :cond_2b
    invoke-virtual {p0, p1, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setCurrentItem(IZ)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_1d

    .line 586
    :cond_d
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1d

    .line 582
    :cond_16
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 589
    :goto_1d
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getMultiChooseListener()Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->multiChooseListener:Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;

    return-object v0
.end method

.method public getMultiDate()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/DateBean;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    iget-object v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->positions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 567
    iget-object v3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->chooseDate:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 568
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 569
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-static {v2, v6, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->positionToDate(III)[I

    move-result-object v2

    .line 570
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 571
    aget v6, v2, v5

    aget v8, v2, v7

    aget v4, v4, v5

    invoke-static {v6, v8, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getDateBean(III)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_57
    return-object v0
.end method

.method public getSingleChooseListener()Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;
    .registers 2

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->singleChooseListener:Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;

    return-object v0
.end method

.method public getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;
    .registers 6

    .line 556
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v0, v3, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->positionToDate(III)[I

    move-result-object v0

    .line 557
    aget v1, v0, v1

    aget v0, v0, v4

    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget v2, v2, v4

    invoke-static {v1, v0, v2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getDateBean(III)Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 10

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getSingleDate()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_23

    .line 106
    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget v5, v0, v2

    aget v6, v0, v3

    iget-object v7, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    aget v8, v7, v2

    aget v7, v7, v3

    invoke-static {v5, v6, v8, v7}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToPosition(IIII)I

    move-result v5

    aput v5, v4, v2

    .line 107
    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget v0, v0, v1

    aput v0, v4, v3

    .line 111
    :cond_23
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    aget v4, v0, v2

    iget-object v5, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    aget v6, v5, v2

    sub-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0xc

    aget v0, v0, v3

    add-int/2addr v4, v0

    aget v0, v5, v3

    sub-int/2addr v4, v0

    add-int/2addr v4, v3

    iput v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->count:I

    .line 112
    new-instance v0, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    iget v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->count:I

    invoke-direct {v0, v4}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    .line 113
    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->setAttrsBean(Lcom/keephealth/android/views/calendarview/bean/AttrsBean;)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getSingleDate()Lcom/keephealth/android/views/calendarview/bean/DateBean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->setLatClick(Lcom/keephealth/android/views/calendarview/bean/DateBean;)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    iget v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->item_layout:I

    iget-object v5, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

    invoke-virtual {v0, v4, v5}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->setOnCalendarViewAdapter(ILcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->initDate:[I

    aget v4, v0, v2

    aget v0, v0, v3

    iget-object v5, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    aget v6, v5, v2

    aget v5, v5, v3

    invoke-static {v4, v0, v6, v5}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToPosition(IIII)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getChooseType()I

    move-result v0

    if-ne v0, v3, :cond_c7

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->positions:Ljava/util/Set;

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->chooseDate:Landroid/util/SparseArray;

    .line 133
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getMultiDates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->getMultiDates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_96
    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 135
    invoke-direct {p0, v4}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->isIllegal([I)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 136
    aget v5, v4, v2

    aget v6, v4, v3

    iget-object v7, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    aget v8, v7, v2

    aget v7, v7, v3

    invoke-static {v5, v6, v8, v7}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToPosition(IIII)I

    move-result v5

    .line 137
    iget-object v6, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->positions:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    aget v6, v4, v3

    aget v4, v4, v1

    invoke-virtual {p0, v6, v4, v3, v5}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setChooseDate(IIZI)V

    goto :goto_96

    .line 144
    :cond_c7
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    invoke-virtual {p0, v0, v2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setCurrentItem(IZ)V

    .line 146
    new-instance v0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView$1;-><init>(Lcom/keephealth/android/views/calendarview/weiget/CalendarView;)V

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public lastMonth()V
    .registers 3

    .line 415
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    if-lez v0, :cond_c

    add-int/lit8 v0, v0, -0x1

    .line 416
    iput v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setCurrentItem(IZ)V

    :cond_c
    return-void
.end method

.method public lastYear()V
    .registers 3

    .line 423
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    add-int/lit8 v1, v0, -0xc

    if-ltz v1, :cond_e

    add-int/lit8 v0, v0, -0xc

    .line 424
    iput v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setCurrentItem(IZ)V

    :cond_e
    return-void
.end method

.method public nextMonth()V
    .registers 3

    .line 407
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    iget v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->count:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 408
    iput v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setCurrentItem(IZ)V

    :cond_10
    return-void
.end method

.method public nextYear()V
    .registers 4

    .line 432
    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    add-int/lit8 v1, v0, 0xc

    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->count:I

    if-gt v1, v2, :cond_10

    add-int/lit8 v0, v0, 0xc

    .line 433
    iput v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setCurrentItem(IZ)V

    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 168
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 170
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    if-eqz p2, :cond_1f

    const/4 p2, 0x0

    .line 171
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    if-eqz p2, :cond_1f

    .line 173
    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 174
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setMeasuredDimension(II)V

    :cond_1f
    return-void
.end method

.method public refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "[I>;",
            "Ljava/util/HashSet<",
            "[I>;",
            "Ljava/util/HashSet<",
            "[I>;)V"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->getViews()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    if-eqz v0, :cond_5c

    const/4 v1, 0x1

    if-eqz p1, :cond_24

    .line 220
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 221
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->multiChooseRefresh(Ljava/util/HashSet;)V

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget p1, p1, v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->refreshClick(II)V

    :cond_24
    if-eqz p2, :cond_40

    .line 224
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_40

    .line 226
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->getViews()Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    if-eqz p1, :cond_40

    .line 228
    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->multiChooseRefresh(Ljava/util/HashSet;)V

    :cond_40
    if-eqz p3, :cond_5c

    .line 231
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->getViews()Landroid/util/SparseArray;

    move-result-object p1

    iget p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    if-eqz p1, :cond_5c

    .line 235
    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->multiChooseRefresh(Ljava/util/HashSet;)V

    :cond_5c
    return-void
.end method

.method public refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "[I>;",
            "Ljava/util/HashSet<",
            "[I>;Z)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->getViews()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    if-eqz v0, :cond_50

    const/4 v1, 0x1

    if-eqz p1, :cond_24

    .line 202
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 203
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->multiChooseRefresh(Ljava/util/HashSet;)V

    .line 204
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aget p1, p1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->refreshClick(II)V

    :cond_24
    if-eqz p2, :cond_50

    .line 206
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_50

    if-eqz p3, :cond_3e

    .line 209
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->getViews()Landroid/util/SparseArray;

    move-result-object p1

    iget p3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    goto :goto_4d

    .line 211
    :cond_3e
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarPagerAdapter:Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarPagerAdapter;->getViews()Landroid/util/SparseArray;

    move-result-object p1

    iget p3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    sub-int/2addr p3, v1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/calendarview/weiget/MonthView;

    .line 213
    :goto_4d
    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/weiget/MonthView;->multiChooseRefresh(Ljava/util/HashSet;)V

    :cond_50
    return-void
.end method

.method public setChooseDate(IIZI)V
    .registers 6

    const/4 v0, -0x1

    if-ne p4, v0, :cond_5

    .line 259
    iget p4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    .line 261
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->chooseDate:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz p3, :cond_2b

    if-nez v0, :cond_1b

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 265
    iget-object p3, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->chooseDate:Landroid/util/SparseArray;

    invoke-virtual {p3, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    :cond_1b
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->positions:Ljava/util/Set;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-void
.end method

.method public setDisableStartEndDate(Ljava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 4

    .line 545
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setDisableStartDate([I)V

    .line 546
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-static {p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setDisableEndDate([I)V

    return-object p0
.end method

.method public setInitDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 2

    .line 466
    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->initDate:[I

    return-object p0
.end method

.method public setLastClickDay(I)V
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 247
    aput p1, v0, v1

    return-void
.end method

.method public setMultiDate(Ljava/util/List;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/keephealth/android/views/calendarview/weiget/CalendarView;"
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    invoke-static {v1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 501
    invoke-direct {p0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->isIllegal([I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 502
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 505
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setMultiDates(Ljava/util/List;)V

    return-object p0
.end method

.method public setMultiDate2(Ljava/util/List;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/keephealth/android/views/calendarview/weiget/CalendarView;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 512
    invoke-static {v1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 513
    invoke-direct {p0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->isIllegal([I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 514
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 517
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setMultiDates2(Ljava/util/List;)V

    return-object p0
.end method

.method public setOnCalendarViewAdapter(ILcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 3

    .line 354
    iput p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->item_layout:I

    .line 355
    iput-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->calendarViewAdapter:Lcom/keephealth/android/views/calendarview/listener/CalendarViewAdapter;

    return-object p0
.end method

.method public setOnMultiChooseListener(Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->multiChooseListener:Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;

    return-void
.end method

.method public setOnPagerChangeListener(Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->pagerChangeListener:Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;

    return-void
.end method

.method public setOnSingleChooseListener(Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->singleChooseListener:Lcom/keephealth/android/views/calendarview/listener/OnSingleChooseListener;

    return-void
.end method

.method public setShowClick(Z)V
    .registers 3

    .line 612
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setShowClick(Z)V

    return-void
.end method

.method public setSingleDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 3

    .line 529
    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 530
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->isIllegal([I)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    .line 533
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setSingleDate([I)V

    return-object p0
.end method

.method public setSpecifyMap(Ljava/util/HashMap;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/keephealth/android/views/calendarview/weiget/CalendarView;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setSpecifyMap(Ljava/util/Map;)V

    return-object p0
.end method

.method public setStartEndDate(Ljava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;
    .registers 4

    .line 478
    invoke-static {p1}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    if-nez p1, :cond_11

    const/16 p1, 0x76c

    const/4 v0, 0x1

    .line 480
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    .line 482
    :cond_11
    invoke-static {p2}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->strToArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    if-nez p2, :cond_23

    const/16 p1, 0x801

    const/16 p2, 0xc

    .line 484
    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    .line 486
    :cond_23
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setStartDate([I)V

    .line 487
    iget-object p1, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->mAttrsBean:Lcom/keephealth/android/views/calendarview/bean/AttrsBean;

    iget-object p2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/AttrsBean;->setEndDate([I)V

    return-object p0
.end method

.method public toEnd()V
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->endDate:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->toDestDate(III)V

    return-void
.end method

.method public toSpecifyDate(III)Z
    .registers 5

    .line 381
    filled-new-array {p1, p2, p3}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->isIllegal([I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 384
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->toDestDate(III)V

    const/4 p1, 0x1

    return p1
.end method

.method public toStart()V
    .registers 5

    .line 441
    iget-object v0, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {p0, v2, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->toDestDate(III)V

    return-void
.end method

.method public today()V
    .registers 7

    .line 363
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getCurrentDate()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getCurrentDate()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v4, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->startDate:[I

    aget v5, v4, v1

    aget v4, v4, v3

    invoke-static {v0, v2, v5, v4}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->dateToPosition(IIII)I

    move-result v0

    .line 364
    iget-object v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastClickDate:[I

    aput v0, v2, v1

    .line 365
    invoke-static {}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getCurrentDate()[I

    move-result-object v4

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    .line 366
    iget v2, p0, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->currentPosition:I

    if-ne v0, v2, :cond_2d

    .line 367
    invoke-direct {p0, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(I)V

    goto :goto_30

    .line 369
    :cond_2d
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setCurrentItem(IZ)V

    :goto_30
    return-void
.end method
