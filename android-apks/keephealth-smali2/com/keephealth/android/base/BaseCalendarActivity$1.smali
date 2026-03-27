.class Lcom/keephealth/android/base/BaseCalendarActivity$1;
.super Ljava/lang/Object;
.source "BaseCalendarActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/base/BaseCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/base/BaseCalendarActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/base/BaseCalendarActivity;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    iput-object p1, v0, Lcom/keephealth/android/base/BaseCalendarActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    iput-object p1, v0, Lcom/keephealth/android/base/BaseCalendarActivity;->selectedDate:Ljava/util/Date;

    .line 33
    iget-object p1, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    iget-object p1, p1, Lcom/keephealth/android/base/BaseCalendarActivity;->selectedDate:Ljava/util/Date;

    invoke-static {}, Lcom/keephealth/android/util/ProDbUtils;->getTodayDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ProDbUtils;->isOneDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 34
    iget-object p1, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/keephealth/android/base/BaseCalendarActivity;->isToday:Z

    goto :goto_2b

    .line 36
    :cond_26
    iget-object p1, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/base/BaseCalendarActivity;->isToday:Z

    .line 38
    :goto_2b
    iget-object p1, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    iget-object v0, p1, Lcom/keephealth/android/base/BaseCalendarActivity;->selectedDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/keephealth/android/base/BaseCalendarActivity$1;->this$0:Lcom/keephealth/android/base/BaseCalendarActivity;

    iget-object v1, v1, Lcom/keephealth/android/base/BaseCalendarActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/base/BaseCalendarActivity;->updateBySelected(Ljava/util/Date;Lcom/ldf/calendar/model/CalendarDate;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
