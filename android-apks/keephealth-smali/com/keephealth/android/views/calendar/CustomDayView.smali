.class public Lcom/keephealth/android/views/calendar/CustomDayView;
.super Lcom/ldf/calendar/view/DayView;
.source "CustomDayView.java"


# instance fields
.field private dateTv:Landroid/widget/TextView;

.field private marker:Landroid/widget/ImageView;

.field private selectedBackground:Landroid/view/View;

.field private final today:Lcom/ldf/calendar/model/CalendarDate;

.field private todayBackground:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ldf/calendar/view/DayView;-><init>(Landroid/content/Context;I)V

    .line 24
    new-instance p1, Lcom/ldf/calendar/model/CalendarDate;

    invoke-direct {p1}, Lcom/ldf/calendar/model/CalendarDate;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->today:Lcom/ldf/calendar/model/CalendarDate;

    const p1, 0x7f090119

    .line 34
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendar/CustomDayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    const p1, 0x7f0903e9

    .line 35
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendar/CustomDayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->marker:Landroid/widget/ImageView;

    const p1, 0x7f09055f

    .line 36
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendar/CustomDayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->selectedBackground:Landroid/view/View;

    const p1, 0x7f0905fc

    .line 37
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/calendar/CustomDayView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->todayBackground:Landroid/view/View;

    return-void
.end method

.method private renderMarker(Lcom/ldf/calendar/model/CalendarDate;Lcom/ldf/calendar/component/State;)V
    .registers 5

    .line 49
    invoke-static {}, Lcom/ldf/calendar/Utils;->loadMarkData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_54

    .line 50
    sget-object v0, Lcom/ldf/calendar/component/State;->SELECT:Lcom/ldf/calendar/component/State;

    if-eq p2, v0, :cond_4e

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->today:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {v0}, Lcom/ldf/calendar/model/CalendarDate;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_4e

    .line 53
    :cond_25
    iget-object p2, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->marker:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-static {}, Lcom/ldf/calendar/Utils;->loadMarkData()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->marker:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_59

    .line 57
    :cond_48
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->marker:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_59

    .line 51
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->marker:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_59

    .line 61
    :cond_54
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->marker:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_59
    return-void
.end method

.method private renderSelect(Lcom/ldf/calendar/component/State;)V
    .registers 5

    .line 66
    sget-object v0, Lcom/ldf/calendar/component/State;->SELECT:Lcom/ldf/calendar/component/State;

    const/4 v1, -0x1

    if-ne p1, v0, :cond_21

    .line 67
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->selectedBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keephealth/android/views/calendar/CustomDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_57

    .line 70
    :cond_21
    sget-object v0, Lcom/ldf/calendar/component/State;->NEXT_MONTH:Lcom/ldf/calendar/component/State;

    const/16 v2, 0x8

    if-eq p1, v0, :cond_42

    sget-object v0, Lcom/ldf/calendar/component/State;->PAST_MONTH:Lcom/ldf/calendar/component/State;

    if-ne p1, v0, :cond_2c

    goto :goto_42

    .line 75
    :cond_2c
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->selectedBackground:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    const-string v0, "#111111"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_57

    .line 71
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->selectedBackground:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    const-string v0, "#d5d5d5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_57
    return-void
.end method

.method private renderToday(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 4

    if-eqz p1, :cond_32

    .line 83
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->today:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0}, Lcom/ldf/calendar/model/CalendarDate;->equals(Lcom/ldf/calendar/model/CalendarDate;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->todayBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 86
    :cond_11
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->todayBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_18
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->dateTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public copy()Lcom/ldf/calendar/interf/IDayRenderer;
    .registers 4

    .line 94
    new-instance v0, Lcom/keephealth/android/views/calendar/CustomDayView;

    iget-object v1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->context:Landroid/content/Context;

    iget v2, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->layoutResource:I

    invoke-direct {v0, v1, v2}, Lcom/keephealth/android/views/calendar/CustomDayView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public refreshContent()V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->day:Lcom/ldf/calendar/view/Day;

    invoke-virtual {v0}, Lcom/ldf/calendar/view/Day;->getDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/calendar/CustomDayView;->renderToday(Lcom/ldf/calendar/model/CalendarDate;)V

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->day:Lcom/ldf/calendar/view/Day;

    invoke-virtual {v0}, Lcom/ldf/calendar/view/Day;->getState()Lcom/ldf/calendar/component/State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keephealth/android/views/calendar/CustomDayView;->renderSelect(Lcom/ldf/calendar/component/State;)V

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->day:Lcom/ldf/calendar/view/Day;

    invoke-virtual {v0}, Lcom/ldf/calendar/view/Day;->getDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/views/calendar/CustomDayView;->day:Lcom/ldf/calendar/view/Day;

    invoke-virtual {v1}, Lcom/ldf/calendar/view/Day;->getState()Lcom/ldf/calendar/component/State;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keephealth/android/views/calendar/CustomDayView;->renderMarker(Lcom/ldf/calendar/model/CalendarDate;Lcom/ldf/calendar/component/State;)V

    .line 45
    invoke-super {p0}, Lcom/ldf/calendar/view/DayView;->refreshContent()V

    return-void
.end method
