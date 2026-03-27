.class Lcom/keephealth/android/views/calendar/CalendarDialog$3;
.super Ljava/lang/Object;
.source "CalendarDialog.java"

# interfaces
.implements Lcom/ldf/calendar/view/MonthPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/calendar/CalendarDialog;->initMonthPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/calendar/CalendarDialog;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$3;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$3;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, v0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendarAdapter:Lcom/ldf/calendar/component/CalendarViewAdapter;

    invoke-virtual {v0}, Lcom/ldf/calendar/component/CalendarViewAdapter;->getPagers()Ljava/util/ArrayList;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ldf/calendar/view/Calendar;

    invoke-virtual {p1}, Lcom/ldf/calendar/view/Calendar;->getSeedDate()Lcom/ldf/calendar/model/CalendarDate;

    move-result-object p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ldf/calendar/model/CalendarDate;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$3;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iput-object p1, v0, Lcom/keephealth/android/views/calendar/CalendarDialog;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$3;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, v0, Lcom/keephealth/android/views/calendar/CalendarDialog;->tvDate:Landroid/widget/TextView;

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

    :cond_75
    return-void
.end method
