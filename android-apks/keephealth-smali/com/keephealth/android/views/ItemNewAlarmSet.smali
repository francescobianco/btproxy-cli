.class public Lcom/keephealth/android/views/ItemNewAlarmSet;
.super Landroid/widget/RelativeLayout;
.source "ItemNewAlarmSet.java"


# instance fields
.field private mAlarmSetTitleTv:Landroid/widget/TextView;

.field private mAlarmSetTypeTv:Landroid/widget/TextView;

.field private mValueState:Lcom/keephealth/android/views/ValueStateTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c012a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f090057

    .line 26
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTitleTv:Landroid/widget/TextView;

    const v0, 0x7f090058

    .line 27
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTypeTv:Landroid/widget/TextView;

    const v0, 0x7f0907b1

    .line 28
    invoke-virtual {p0, v0}, Lcom/keephealth/android/views/ItemNewAlarmSet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/ValueStateTextView;

    iput-object v0, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mValueState:Lcom/keephealth/android/views/ValueStateTextView;

    .line 31
    sget-object v0, Lcom/keephealth/android/R$styleable;->ItemLableValue:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x9

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    iget-object p1, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private str2str(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_17

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_17
    return-object p1
.end method


# virtual methods
.method public setAlartRemind(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 54
    iget-object v0, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTypeTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 56
    :cond_8
    iget-object p1, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTypeTv:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    return-void
.end method

.method public setAlartRepeat([Z[Ljava/lang/String;)V
    .registers 7

    .line 69
    const-string v0, ""

    if-eqz p1, :cond_3b

    array-length v1, p1

    if-lez v1, :cond_3b

    if-eqz p2, :cond_3b

    array-length v1, p2

    if-lez v1, :cond_3b

    const/4 v1, 0x0

    move-object v2, v0

    .line 70
    :goto_e
    array-length v3, p1

    if-ge v1, v3, :cond_3a

    .line 71
    aget-boolean v3, p1, v1

    if-eqz v3, :cond_37

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 73
    aget-object v2, p2, v1

    goto :goto_37

    .line 75
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_3a
    move-object v0, v2

    .line 81
    :cond_3b
    iget-object p1, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTypeTv:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAlartTime(IILandroid/app/Activity;)V
    .registers 7

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AM"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PM"

    aput-object v2, v0, v1

    .line 92
    iget-object v1, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTypeTv:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/keephealth/android/util/TimeUtil;->is24Hour(Landroid/content/Context;)Z

    move-result p3

    invoke-static {p1, p2, p3, v0}, Lcom/keephealth/android/util/TimeUtil;->timeFormatter(IIZ[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAlartTime(IILjava/lang/String;)V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mAlarmSetTypeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/ItemNewAlarmSet;->str2str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/keephealth/android/views/ItemNewAlarmSet;->str2str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValueState(Z)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/views/ItemNewAlarmSet;->mValueState:Lcom/keephealth/android/views/ValueStateTextView;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/ValueStateTextView;->setOpen(Z)V

    return-void
.end method
