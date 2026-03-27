.class Lcom/keephealth/android/views/calendar/CalendarDialog$1;
.super Ljava/lang/Object;
.source "CalendarDialog.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/calendar/CalendarDialog;->initListener()V
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

    .line 120
    iput-object p1, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$1;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 8

    .line 124
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v0

    .line 125
    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget v3, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    .line 126
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-static {v2, v3, v0}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$1;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    # getter for: Lcom/keephealth/android/views/calendar/CalendarDialog;->isCanMoreThanToday:Z
    invoke-static {v2}, Lcom/keephealth/android/views/calendar/CalendarDialog;->access$000(Lcom/keephealth/android/views/calendar/CalendarDialog;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_31

    .line 129
    :cond_24
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_31

    return-void

    .line 133
    :cond_31
    :goto_31
    new-instance v0, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 v2, 0x67

    invoke-direct {v0, v2}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(I)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/BaseMessage;->setData(Ljava/lang/Object;)V

    .line 135
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 136
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

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$1;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendar/CalendarDialog;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$1;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, v0, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    if-eqz v0, :cond_7c

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$1;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, v0, Lcom/keephealth/android/views/calendar/CalendarDialog;->mOnSelectDateListener:Lcom/ldf/calendar/interf/OnSelectDateListener;

    invoke-interface {v0, p1}, Lcom/ldf/calendar/interf/OnSelectDateListener;->onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V

    :cond_7c
    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/views/calendar/CalendarDialog$1;->this$0:Lcom/keephealth/android/views/calendar/CalendarDialog;

    iget-object v0, v0, Lcom/keephealth/android/views/calendar/CalendarDialog;->calendar_view:Lcom/ldf/calendar/view/MonthPager;

    invoke-virtual {v0, p1}, Lcom/ldf/calendar/view/MonthPager;->selectOtherMonth(I)V

    return-void
.end method
