.class public Lcom/keephealth/android/views/WeekDayCheckAlarm;
.super Landroid/widget/LinearLayout;
.source "WeekDayCheckAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;
    }
.end annotation


# instance fields
.field private onChange:Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;

.field private repetitions:[Z

.field private tempRepetitions:[Z

.field private toggle:Landroid/view/View$OnClickListener;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keephealth/android/views/ValueStateTextView;",
            ">;"
        }
    .end annotation
.end field

.field private weekDay1:Lcom/keephealth/android/views/ValueStateTextView;

.field private weekDay2:Lcom/keephealth/android/views/ValueStateTextView;

.field private weekDay3:Lcom/keephealth/android/views/ValueStateTextView;

.field private weekDay4:Lcom/keephealth/android/views/ValueStateTextView;

.field private weekDay5:Lcom/keephealth/android/views/ValueStateTextView;

.field private weekDay6:Lcom/keephealth/android/views/ValueStateTextView;

.field private weekDay7:Lcom/keephealth/android/views/ValueStateTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    const/4 p2, 0x7

    .line 50
    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->tempRepetitions:[Z

    .line 65
    new-instance p2, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/WeekDayCheckAlarm$1;-><init>(Lcom/keephealth/android/views/WeekDayCheckAlarm;)V

    iput-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->toggle:Landroid/view/View$OnClickListener;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01b0

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0907da

    .line 33
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay1:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907db

    .line 34
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay2:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907dc

    .line 35
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay3:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907dd

    .line 36
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay4:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907de

    .line 37
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay5:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907df

    .line 38
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay6:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907e0

    .line 39
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay7:Lcom/keephealth/android/views/ValueStateTextView;

    .line 41
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay1:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay2:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay3:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay4:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay5:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay6:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->weekDay7:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/WeekDayCheckAlarm;)[Z
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->repetitions:[Z

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/WeekDayCheckAlarm;)Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->onChange:Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;

    return-object p0
.end method


# virtual methods
.method public getRepetition()[Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->repetitions:[Z

    return-object v0
.end method

.method public initAndSetDefault([Z)V
    .registers 5

    .line 53
    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->repetitions:[Z

    .line 54
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->setWeekDayCheck()V

    const/4 v0, 0x0

    .line 55
    :goto_6
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 56
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ValueStateTextView;

    .line 57
    aget-boolean v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 58
    iget-object v2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->toggle:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method public setOnChangeLinstener(Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->onChange:Lcom/keephealth/android/views/WeekDayCheckAlarm$OnWeekCheckedChange;

    return-void
.end method

.method public setWeekDayCheck()V
    .registers 5

    .line 93
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheckAlarm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WEEK_START_INDEX"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/WeekUtil;->getWeeksByWeekStartDay(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 95
    iget-object v2, p0, Lcom/keephealth/android/views/WeekDayCheckAlarm;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/views/ValueStateTextView;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/keephealth/android/views/ValueStateTextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    return-void
.end method
