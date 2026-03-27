.class public Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;
.super Lcom/keephealth/android/base/BaseMvvmNewActivity;
.source "WomenHealthNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseMvvmNewActivity<",
        "Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private final REQUET_MAKELOVE:I

.field private final REQUET_SET:I

.field private final REQUET_SYMPTOM:I

.field private binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

.field calendarNew:Ljava/util/Calendar;

.field private dayNow:I

.field private dayPeriod:I

.field private dura:I

.field private isLessOrEqual:Z

.field private monthNow:I

.field private monthPeriod:I

.field private perimeter:I

.field private periodDate:Ljava/lang/Long;

.field private typeFrom:I

.field private viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

.field womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

.field womenHealthBeanNewMonth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;",
            ">;"
        }
    .end annotation
.end field

.field private womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

.field private yearNow:I

.field private yearPeriod:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    .line 63
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    const/16 v1, 0x64

    .line 71
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->REQUET_SYMPTOM:I

    const/16 v1, 0xc8

    .line 72
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->REQUET_MAKELOVE:I

    const/16 v1, 0x12c

    .line 73
    iput v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->REQUET_SET:I

    .line 74
    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->typeFrom:I

    .line 75
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/DaoSession;->getWomenHealthBeanDao()Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    return p0
.end method

.method static synthetic access$1002(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    return p1
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->addPeriodBefore()V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Landroid/view/View;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->moodOnClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setWomenHealthDate()V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearPeriod:I

    return p0
.end method

.method static synthetic access$1900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthPeriod:I

    return p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayPeriod:I

    return p0
.end method

.method static synthetic access$2100(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initViewData()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;III)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initDateBean(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setPeriodData()V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/Long;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$702(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$800(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    return p0
.end method

.method static synthetic access$902(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;I)I
    .registers 2

    .line 52
    iput p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    return p1
.end method

.method private addPeriodBefore()V
    .registers 4

    .line 518
    new-instance v0, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100685

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$11;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$11;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    const v2, 0x7f100193

    .line 520
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$10;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    const v2, 0x7f100257

    .line 526
    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog$Builder;->create()Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/dialog/WomenChangeMutralDialog;->show()V

    return-void
.end method

.method private initCalendar()V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setShowClick(Z)V

    .line 168
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearNow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthNow:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setInitDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearNow:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthNow:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayNow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setSingleDate(Ljava/lang/String;)Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->init()V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->titleDate:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearNow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthNow:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v3, v2}, Lcom/keephealth/android/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setOnMultiChooseListener(Lcom/keephealth/android/views/calendarview/listener/OnMultiChooseListener;)V

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$2;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->setOnPagerChangeListener(Lcom/keephealth/android/views/calendarview/listener/OnPagerChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->today()V

    .line 206
    iget v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearNow:I

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthNow:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayNow:I

    invoke-direct {p0, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->notifyMonthView(III)V

    return-void
.end method

.method private initDateBean(III)V
    .registers 7

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    .line 125
    invoke-virtual {v0, p1, v1, p3}, Ljava/util/Calendar;->set(III)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 130
    new-instance v1, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-direct {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;-><init>()V

    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 131
    invoke-virtual {v1, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setYear(I)V

    .line 132
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMonth(I)V

    .line 133
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDay(I)V

    .line 134
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setIsSystem(I)V

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    mul-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSolarDate(J)V

    .line 136
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u751f\u6210\u65e5\u671f\u5bf9\u8c61 initDateBean: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initViewData()V
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getMonthList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNewMonth:Ljava/util/List;

    .line 141
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getDataOnMonth(Ljava/util/List;I)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u751f\u6210\u65e5\u671f\u5bf9\u8c61 2 : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-nez v0, :cond_5f

    .line 145
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initDateBean(III)V

    .line 147
    :cond_5f
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setPeriodData()V

    return-void
.end method

.method private isStartTime()V
    .registers 5

    .line 561
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 562
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "period_date"

    invoke-static {p0, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1f
    return-void
.end method

.method private moodOnClick(Landroid/view/View;)V
    .registers 4

    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 568
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 569
    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setMood(IZ)V

    goto :goto_38

    .line 571
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method private notifyMonthView(III)V
    .registers 13

    .line 268
    invoke-static {p1, p2}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v0

    .line 269
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 270
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 271
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x1

    move v5, v4

    :goto_15
    if-gt v5, v0, :cond_21

    .line 273
    filled-new-array {p2, v5}, [I

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 275
    :cond_21
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getNextMonth(III)[I

    move-result-object v0

    const/4 v5, 0x0

    .line 276
    aget v6, v0, v5

    aget v7, v0, v4

    invoke-static {v6, v7}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result v6

    move v7, v4

    :goto_2f
    if-gt v7, v6, :cond_3d

    .line 279
    aget v8, v0, v4

    filled-new-array {v8, v7}, [I

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 282
    :cond_3d
    invoke-static {p1, p2, p3}, Lcom/keephealth/android/views/calendarview/utils/CalendarUtil;->getPreMonth(III)[I

    move-result-object p1

    .line 283
    aget p2, p1, v5

    aget p3, p1, v4

    invoke-static {p2, p3}, Lcom/keephealth/android/views/calendarview/utils/SolarUtil;->getMonthDays(II)I

    move-result p2

    move p3, v4

    :goto_4a
    if-gt p3, p2, :cond_58

    .line 285
    aget v0, p1, v4

    filled-new-array {v0, p3}, [I

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_4a

    .line 288
    :cond_58
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1, v1, v2, v3}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)V

    return-void
.end method

.method private sendWomenHealthData()V
    .registers 2

    .line 554
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 555
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealthProtocol()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 556
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->sendData()V

    :cond_13
    return-void
.end method

.method private setDysmenorrhea(I)V
    .registers 4

    .line 641
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_6c

    .line 642
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setDysmenorrhea(I)V

    .line 643
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->saveDataNow(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_24

    .line 645
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_24
    const/4 v0, 0x2

    if-ne p1, v0, :cond_36

    .line 647
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_36
    const/4 v0, 0x3

    if-ne p1, v0, :cond_48

    .line 649
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_48
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5a

    .line 651
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_5a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8d

    .line 653
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    .line 656
    :cond_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private setFlow(I)V
    .registers 4

    .line 621
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_6c

    .line 622
    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setFlow(I)V

    .line 623
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->saveDataNow(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_24

    .line 625
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_24
    const/4 v0, 0x2

    if-ne p1, v0, :cond_36

    .line 627
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007ba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_36
    const/4 v0, 0x3

    if-ne p1, v0, :cond_48

    .line 629
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_48
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5a

    .line 631
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    :cond_5a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_8d

    .line 633
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1007bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_8d

    .line 636
    :cond_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private setMakeLove()V
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    .line 739
    const-string v0, ""

    goto :goto_43

    .line 736
    :cond_14
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 733
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 730
    :cond_2c
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 727
    :cond_38
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1007c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_43
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    invoke-virtual {v1, v0}, Lcom/keephealth/android/views/ItemLableValue;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setMood(IZ)V
    .registers 12

    .line 575
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMood(I)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-ltz p1, :cond_b

    if-le p1, v0, :cond_c

    :cond_b
    move p1, v1

    :cond_c
    const/4 v2, 0x6

    .line 581
    new-array v3, v2, [I

    fill-array-data v3, :array_6a

    .line 589
    new-array v4, v2, [I

    fill-array-data v4, :array_7a

    .line 599
    new-array v5, v2, [Landroid/widget/ImageView;

    const/4 v6, 0x0

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood1:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood2:Landroid/widget/ImageView;

    const/4 v7, 0x2

    aput-object v1, v5, v7

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood3:Landroid/widget/ImageView;

    const/4 v7, 0x3

    aput-object v1, v5, v7

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood4:Landroid/widget/ImageView;

    const/4 v7, 0x4

    aput-object v1, v5, v7

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood5:Landroid/widget/ImageView;

    aput-object v1, v5, v0

    move v1, v6

    :goto_3f
    if-gt v1, v0, :cond_50

    .line 603
    aget-object v7, v5, v1

    if-ne v1, p1, :cond_48

    aget v8, v4, v1

    goto :goto_4a

    :cond_48
    aget v8, v3, v1

    :goto_4a
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_50
    if-eqz p2, :cond_68

    if-lt p1, v6, :cond_68

    if-gt p1, v0, :cond_68

    .line 608
    new-array p2, v2, [I

    fill-array-data p2, :array_8a

    .line 616
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget p1, p2, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    :cond_68
    return-void

    nop

    :array_6a
    .array-data 4
        0x0
        0x7f0d00e3
        0x7f0d00e4
        0x7f0d00e5
        0x7f0d00e6
        0x7f0d00e7
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x7f0d00e8
        0x7f0d00e9
        0x7f0d00ea
        0x7f0d00eb
        0x7f0d00ec
    .end array-data

    :array_8a
    .array-data 4
        0x0
        0x7f1007c6
        0x7f1007c7
        0x7f1007c8
        0x7f1007c9
        0x7f1007ca
    .end array-data
.end method

.method private setPeriodData()V
    .registers 11

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    const/16 v1, 0x8

    if-nez v0, :cond_e

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 215
    :cond_e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setPeriodData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "period_date"

    invoke-static {p0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    const v2, 0x7f100686

    const v3, 0x7f100687

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_c3

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v0

    if-ne v0, v4, :cond_5d

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_64

    .line 220
    :cond_5d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    :goto_64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-ne v0, v4, :cond_80

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_125

    .line 225
    :cond_80
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v4, :cond_9c

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v4}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto/16 :goto_125

    .line 229
    :cond_9c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsSystem()I

    move-result v0

    if-nez v0, :cond_b7

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_125

    .line 233
    :cond_b7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_125

    .line 237
    :cond_c3
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodEnd(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    if-eqz v0, :cond_10c

    .line 238
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v6

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getPeriodEnd(J)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v8, 0x1ee62800

    cmp-long v0, v6, v8

    if-gez v0, :cond_100

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_117

    .line 241
    :cond_100
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    goto :goto_117

    .line 244
    :cond_10c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {p0, v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setTitleText(Ljava/lang/String;)V

    .line 246
    :goto_117
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v5}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 247
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    :goto_125
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMood()I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setMood(IZ)V

    .line 252
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setMakeLove()V

    .line 253
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setSymptom()V

    .line 254
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    if-eqz v0, :cond_16a

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->linOutWomenDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->viewOutWomenDate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->showDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_17f

    .line 259
    :cond_16a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->linOutWomenDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->viewOutWomenDate:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->showDate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_17f
    return-void
.end method

.method private setSymptom()V
    .registers 9

    .line 711
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 712
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_2b
    if-ge v6, v4, :cond_3f

    aget-object v7, v1, v6

    .line 716
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v7, v0, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 718
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->tvSymptom:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 720
    :cond_55
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->tvSymptom:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5e
    return-void
.end method

.method private setWomenHealthDate()V
    .registers 10

    .line 152
    const-string v0, "dura"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    .line 153
    const-string v0, "perimeter"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    .line 154
    const-string v0, "period_date"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    return-void

    .line 158
    :cond_27
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/TimeUtil;->getYearFromTimestamp(J)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearPeriod:I

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/TimeUtil;->getMonthFromTimestamp(J)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthPeriod:I

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/keephealth/android/util/TimeUtil;->getDayFromTimestamp(J)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayPeriod:I

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getDataListIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearPeriod:I

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthPeriod:I

    iget v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayPeriod:I

    iget v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    iget v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->generateCycles(IIIIIII)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->setWomenHealthData(Ljava/util/List;)V

    :cond_69
    return-void
.end method


# virtual methods
.method protected createObserver()V
    .registers 1

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .registers 2

    .line 52
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getViewBinding()Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinding()Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;
    .registers 2

    .line 58
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    return-object v0
.end method

.method public initListener()V
    .registers 3

    .line 302
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initListener()V

    .line 303
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$3;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOnToggleListener(Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;)V

    .line 450
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/StarBar;->setOnStarChangeListener(Lcom/keephealth/android/views/StarBar$OnStarChangeListener;)V

    .line 453
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/StarBar;->setIntegerMark(Z)V

    .line 454
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/StarBar;->setOnStarChangeListener(Lcom/keephealth/android/views/StarBar$OnStarChangeListener;)V

    .line 457
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood1:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$4;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood2:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$5;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood3:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$6;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood4:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$7;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->imgMood5:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$8;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$8;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->ilMakeLove:Lcom/keephealth/android/views/ItemLableValue;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemLableValue;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->itSymptom:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$$ExternalSyntheticLambda3;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$9;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$9;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 7

    .line 78
    invoke-super {p0}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->initView()V

    .line 79
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->toBack()V

    .line 80
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const v1, 0x7f0d0336

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->rightImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    const v2, 0x7f10074c

    invoke-virtual {p0, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->titleView:Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/BaseMvvmTitleBinding;->baseTitleName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->typeFrom:I

    .line 87
    const-string v0, "period_date"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    .line 88
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getDaoSession()Lcom/keephealth/android/greendao/gen/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/DaoSession;->getPreMenstrualDao()Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    .line 91
    const-string v3, "dura"

    invoke-static {p0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    .line 92
    const-string v4, "perimeter"

    invoke-static {p0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    .line 94
    iget v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    if-nez v5, :cond_91

    if-eqz v2, :cond_91

    .line 95
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v5

    iput v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dura:I

    .line 96
    invoke-static {p0, v3, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    :cond_91
    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    if-nez v3, :cond_a0

    if-eqz v2, :cond_a0

    .line 99
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v3

    iput v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->perimeter:I

    .line 100
    invoke-static {p0, v4, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_a0
    if-eqz v2, :cond_cc

    .line 103
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_cc

    .line 104
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getDataListChange()V

    .line 105
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->getIsPeriodTimeStart180()Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v2

    if-eqz v2, :cond_cc

    .line 107
    invoke-virtual {v2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSolarDate()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->periodDate:Ljava/lang/Long;

    .line 108
    invoke-static {p0, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    :cond_cc
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/16 v2, 0xb

    .line 112
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 113
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->yearNow:I

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->monthNow:I

    .line 118
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->calendarNew:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->dayNow:I

    .line 119
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setWomenHealthDate()V

    .line 120
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initViewData()V

    .line 121
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->initCalendar()V

    return-void
.end method

.method synthetic lambda$initListener$0$com-keephealth-android-ui-device-activity-WomenHealthNewActivity(F)V
    .registers 2

    .line 0
    float-to-int p1, p1

    .line 451
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setDysmenorrhea(I)V

    return-void
.end method

.method synthetic lambda$initListener$1$com-keephealth-android-ui-device-activity-WomenHealthNewActivity(F)V
    .registers 2

    .line 0
    float-to-int p1, p1

    .line 455
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setFlow(I)V

    return-void
.end method

.method synthetic lambda$initListener$2$com-keephealth-android-ui-device-activity-WomenHealthNewActivity(Landroid/view/View;)V
    .registers 4

    .line 488
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    if-eqz p1, :cond_1c

    .line 489
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 490
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMakeLove()I

    move-result v0

    const-string v1, "MakeLove"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 491
    const-class v0, Lcom/keephealth/android/ui/device/activity/LoveSelectActivity;

    const/16 v1, 0xc8

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_3d

    .line 493
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method synthetic lambda$initListener$3$com-keephealth-android-ui-device-activity-WomenHealthNewActivity(Landroid/view/View;)V
    .registers 4

    .line 497
    iget-boolean p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->isLessOrEqual:Z

    if-eqz p1, :cond_1c

    .line 498
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 499
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getSymptom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Symptom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-class v0, Lcom/keephealth/android/ui/device/activity/SymptomSelectActivity;

    const/16 v1, 0x64

    invoke-static {p0, v0, p1, v1}, Lcom/keephealth/android/util/IntentUtil;->goToActivityForResult(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_3d

    .line 502
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10071a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public lastMonth(Landroid/view/View;)V
    .registers 2

    .line 293
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->lastMonth()V

    return-void
.end method

.method public nextMonth(Landroid/view/View;)V
    .registers 2

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    invoke-virtual {p1}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->nextMonth()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 666
    invoke-super {p0, p1, p2, p3}, Lcom/keephealth/android/base/BaseMvvmNewActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_6

    return-void

    :cond_6
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_7e

    const/16 p2, 0x64

    if-eq p1, p2, :cond_5f

    if-eq p1, v0, :cond_1e

    const/16 p2, 0x12c

    if-eq p1, p2, :cond_15

    goto :goto_7e

    .line 684
    :cond_15
    new-instance p1, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity$12;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;)V

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7e

    .line 676
    :cond_1e
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "backMakeLove"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setMakeLove(I)V

    .line 677
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->saveDataNow(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 678
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 679
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result p2

    iget-object p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result p3

    filled-new-array {p2, p3}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;

    iget-object p2, p2, Lcom/keephealth/android/databinding/ActivityWomenHealthNewBinding;->calendar:Lcom/keephealth/android/views/calendarview/weiget/CalendarView;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/keephealth/android/views/calendarview/weiget/CalendarView;->refreshMonthView(Ljava/util/HashSet;Ljava/util/HashSet;Z)V

    .line 681
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setMakeLove()V

    goto :goto_7e

    .line 671
    :cond_5f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    const-string p3, "backSymptom"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->setSymptom(Ljava/lang/String;)V

    .line 672
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->viewModel:Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;

    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->womenHealthBeanNow:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/ui/device/viewmodel/WomenHealthNewViewModel;->saveDataNow(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)V

    .line 673
    invoke-direct {p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthNewActivity;->setSymptom()V

    :cond_7e
    :goto_7e
    return-void
.end method
