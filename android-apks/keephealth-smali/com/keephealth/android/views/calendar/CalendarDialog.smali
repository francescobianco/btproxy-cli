.class public Lcom/keephealth/android/views/calendar/CalendarDialog;
.super Landroid/app/Dialog;
.source "CalendarDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field calendarAdapter:Lcom/ldf/calendar/component/CalendarViewAdapter;

.field calendar_view:Lcom/ldf/calendar/view/MonthPager;

.field private isCanMoreThanToday:Z

.field layout_left:Landroid/view/View;

.field layout_right:Landroid/view/View;

.field public mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

.field selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

.field tvDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f110314

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->isCanMoreThanToday:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/calendar/CalendarDialog;)Z
    .registers 1

    .line 33
    iget-boolean p0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->isCanMoreThanToday:Z

    return p0
.end method

.method private initCalendarView()V
    .registers 6

    .line 107
    invoke-direct {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->initListener()V

    .line 108
    new-instance v0, Lcom/keephealth/android/views/calendar/CustomDayView;

    invoke-virtual {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00b8

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/calendar/CustomDayView;-><init>(Landroid/content/Context;I)V

    .line 109
    new-instance v1, Lcom/ldf/calendar/component/CalendarViewAdapter;

    .line 110
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    sget-object v4, Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;->Sunday:Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ldf/calendar/component/CalendarViewAdapter;-><init>(Landroid/content/Context;Lcom/ldf/calendar/interf/OnSelectDateListener;Lcom/ldf/calendar/component/CalendarAttr$WeekArrayType;Lcom/ldf/calendar/interf/IDayRenderer;)V

    iput-object v1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendarAdapter:Lcom/ldf/calendar/component/CalendarViewAdapter;

    .line 114
    new-instance v0, Lcom/keephealth/android/views/calendar/CalendarDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/views/calendar/CalendarDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->setOnCalendarTypeChangedListener(Lcom/ldf/calendar/component/CalendarViewAdapter$OnCalendarTypeChanged;)V

    .line 117
    invoke-direct {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->initMonthPager()V

    return-void
.end method

.method private initListener()V
    .registers 2

    .line 120
    new-instance v0, Lcom/keephealth/android/views/calendar/CalendarDialog$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog$1;-><init>(Lcom/keephealth/android/views/calendar/CalendarDialog;)V

    iput-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->onSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    return-void
.end method

.method private initMonthPager()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    iget-object v1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendarAdapter:Lcom/ldf/calendar/component/CalendarViewAdapter;

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/MonthPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    sget v1, Lcom/ldf/calendar/view/MonthPager;->CURRENT_DAY_INDEX:I

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/MonthPager;->setCurrentItem(I)V

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    new-instance v1, Lcom/keephealth/android/views/calendar/CalendarDialog$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog$2;-><init>(Lcom/keephealth/android/views/calendar/CalendarDialog;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/ldf/calendar/view/MonthPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    new-instance v1, Lcom/keephealth/android/views/calendar/CalendarDialog$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/views/calendar/CalendarDialog$3;-><init>(Lcom/keephealth/android/views/calendar/CalendarDialog;)V

    invoke-virtual {v0, v1}, Lcom/ldf/calendar/view/MonthPager;->addOnPageChangeListener(Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;)V

    return-void
.end method

.method static synthetic lambda$initCalendarView$0(Lcom/ldf/calendar/component/CalendarAttr$CalendarType;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090324

    if-eq p1, v0, :cond_16

    const v0, 0x7f090328

    if-eq p1, v0, :cond_f

    goto :goto_1c

    .line 202
    :cond_f
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ldf/calendar/view/MonthPager;->selectOtherMonth(I)V

    goto :goto_1c

    .line 199
    :cond_16
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ldf/calendar/view/MonthPager;->selectOtherMonth(I)V

    :goto_1c
    return-void
.end method

.method public showDialog()V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    if-nez v0, :cond_22

    .line 49
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v0

    .line 50
    new-instance v1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {v1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x0

    .line 51
    aget v2, v0, v2

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    .line 52
    iget-object v1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    .line 53
    iget-object v1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    const/4 v2, 0x2

    aget v0, v0, v2

    iput v0, v1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    .line 55
    :cond_22
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->showDialog(Lcom/ldf/calendar/model/CalendarDate;)V

    return-void
.end method

.method public showDialog(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    const v0, 0x7f0c0026

    .line 58
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->setContentView(I)V

    const v0, 0x7f0900d0

    .line 59
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ldf/calendar/view/MonthPager;

    iput-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    const v0, 0x7f090324

    .line 60
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->layout_left:Landroid/view/View;

    .line 61
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090640

    .line 62
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->tvDate:Landroid/widget/TextView;

    const v0, 0x7f090328

    .line 63
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->layout_right:Landroid/view/View;

    .line 64
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-direct {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->initCalendarView()V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendarAdapter:Lcom/ldf/calendar/component/CalendarViewAdapter;

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/component/CalendarViewAdapter;->notifyDataChanged(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->tvDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getMonth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->show()V

    .line 69
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 72
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 73
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x30

    .line 74
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x3e4ccccd    # 0.2f

    .line 75
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showDialog(Lcom/ldf/calendar/model/CalendarDate;ZI)V
    .registers 6

    .line 80
    iput-boolean p2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->isCanMoreThanToday:Z

    const p2, 0x7f0c0026

    .line 81
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendar/CalendarDialog;->setContentView(I)V

    const p2, 0x7f0900d0

    .line 82
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ldf/calendar/view/MonthPager;

    iput-object p2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    const p2, 0x7f090324

    .line 83
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->layout_left:Landroid/view/View;

    .line 84
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090640

    .line 85
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->tvDate:Landroid/widget/TextView;

    const p2, 0x7f090328

    .line 86
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/calendar/CalendarDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->layout_right:Landroid/view/View;

    .line 87
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->initCalendarView()V

    .line 89
    iget-object p2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendarAdapter:Lcom/ldf/calendar/component/CalendarViewAdapter;

    invoke-virtual {p2, p1}, Lcom/ldf/calendar/component/CalendarViewAdapter;->notifyDataChanged(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 90
    iget-object p2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog;->tvDate:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getMonth()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->show()V

    .line 92
    invoke-virtual {p0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    .line 95
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 96
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x30

    .line 97
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 98
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const p3, 0x3e4ccccd    # 0.2f

    .line 99
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
