.class public Lcom/keephealth/android/views/WeekDayCheck;
.super Landroid/widget/LinearLayout;
.source "WeekDayCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    }
.end annotation


# instance fields
.field private onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

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

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    const/4 p2, 0x7

    .line 48
    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z

    .line 106
    new-instance p2, Lcom/keephealth/android/views/WeekDayCheck$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/WeekDayCheck$1;-><init>(Lcom/keephealth/android/views/WeekDayCheck;)V

    iput-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->toggle:Landroid/view/View$OnClickListener;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01b0

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0907da

    .line 31
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheck;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay1:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907db

    .line 32
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheck;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay2:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907dc

    .line 33
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheck;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay3:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907dd

    .line 34
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheck;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay4:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907de

    .line 35
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheck;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay5:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907df

    .line 36
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheck;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay6:Lcom/keephealth/android/views/ValueStateTextView;

    const p1, 0x7f0907e0

    .line 37
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/WeekDayCheck;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay7:Lcom/keephealth/android/views/ValueStateTextView;

    .line 39
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay1:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay2:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay3:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay4:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay5:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay6:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->weekDay7:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/WeekDayCheck;)[Z
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/WeekDayCheck;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/WeekDayCheck;)[Z
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/views/WeekDayCheck;[Z)[Z
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->tempRepetitions:[Z

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/views/WeekDayCheck;)Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    return-object p0
.end method


# virtual methods
.method public getRepetition()[Z
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z

    return-object v0
.end method

.method public initAndSetDefault([Z)V
    .registers 3

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/views/WeekDayCheck;->initAndSetDefault([ZZ)V

    return-void
.end method

.method public initAndSetDefault([ZZ)V
    .registers 7

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->repetitions:[Z

    .line 51
    invoke-virtual {p0, p2}, Lcom/keephealth/android/views/WeekDayCheck;->setWeekDayCheck(Z)V

    .line 52
    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/ValueStateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_73

    .line 53
    const-string p2, "\u95f9\u949f\u4fe1\u606f:\u8d77\u59cb\u661f\u671f\u5929"

    invoke-static {p2}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 54
    :goto_2d
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_12a

    if-nez v0, :cond_57

    .line 56
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    .line 57
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    aget-boolean v2, p1, v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 58
    iget-object v2, p0, Lcom/keephealth/android/views/WeekDayCheck;->toggle:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setTag(Ljava/lang/Object;)V

    goto :goto_70

    .line 61
    :cond_57
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    add-int/lit8 v2, v0, -0x1

    .line 62
    aget-boolean v3, p1, v2

    invoke-virtual {p2, v3}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 63
    iget-object v3, p0, Lcom/keephealth/android/views/WeekDayCheck;->toggle:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Lcom/keephealth/android/views/ValueStateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setTag(Ljava/lang/Object;)V

    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 68
    :cond_73
    iget-object p2, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/ValueStateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_105

    .line 69
    const-string p2, "\u95f9\u949f\u4fe1\u606f:\u8d77\u59cb\u661f\u671f\u516d"

    invoke-static {p2}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 70
    :goto_99
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_12a

    if-nez v0, :cond_c5

    .line 72
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    .line 73
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    aget-boolean v2, p1, v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 74
    iget-object v2, p0, Lcom/keephealth/android/views/WeekDayCheck;->toggle:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setTag(Ljava/lang/Object;)V

    goto :goto_102

    :cond_c5
    if-ne v0, v1, :cond_e9

    .line 77
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    aget-boolean v2, p1, v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 79
    iget-object v2, p0, Lcom/keephealth/android/views/WeekDayCheck;->toggle:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setTag(Ljava/lang/Object;)V

    goto :goto_102

    .line 82
    :cond_e9
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    add-int/lit8 v2, v0, -0x2

    .line 83
    aget-boolean v3, p1, v2

    invoke-virtual {p2, v3}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 84
    iget-object v3, p0, Lcom/keephealth/android/views/WeekDayCheck;->toggle:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Lcom/keephealth/android/views/ValueStateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setTag(Ljava/lang/Object;)V

    :goto_102
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 93
    :cond_105
    const-string p2, "\u95f9\u949f\u4fe1\u606f:\u8d77\u59cb\u661f\u671f\u4e00"

    invoke-static {p2}, Lcom/keephealth/android/util/log/DebugLog;->i(Ljava/lang/String;)V

    .line 94
    :goto_10a
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_12a

    .line 95
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/WeekDayCheck;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/keephealth/android/views/ValueStateTextView;

    .line 96
    aget-boolean v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    .line 97
    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck;->toggle:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Lcom/keephealth/android/views/ValueStateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/keephealth/android/views/ValueStateTextView;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10a

    :cond_12a
    return-void
.end method

.method public setOnChangeLinstener(Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/keephealth/android/views/WeekDayCheck;->onChange:Lcom/keephealth/android/views/WeekDayCheck$OnWeekCheckedChange;

    return-void
.end method

.method public setWeekDayCheck()V
    .registers 5

    .line 165
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WEEK_START_INDEX"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/WeekUtil;->getWeeksByWeekStartDay(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    :goto_10
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 167
    iget-object v2, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

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

.method public setWeekDayCheck(Z)V
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    .line 174
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "WEEK_START_INDEX"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getWeekStartIndex(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/WeekUtil;->getWeeksByWeekStartDay(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    .line 176
    :cond_12
    invoke-virtual {p0}, Lcom/keephealth/android/views/WeekDayCheck;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/WeekUtil;->getWeeksByWeekStartDay(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p1

    :goto_1a
    const/4 v0, 0x0

    .line 178
    :goto_1b
    array-length v1, p1

    if-ge v0, v1, :cond_2e

    .line 179
    iget-object v1, p0, Lcom/keephealth/android/views/WeekDayCheck;->values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/views/ValueStateTextView;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/ValueStateTextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2e
    return-void
.end method
