.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$12;
.super Ljava/lang/Object;
.source "TaskFragment.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/TaskFragment;->showDateChose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V
    .registers 2

    .line 550
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$12;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$12;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    # setter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;
    invoke-static {v0, p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$502(Lcom/keephealth/android/childmodule/fragment/TaskFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 554
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$12;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->mSearchDate:Ljava/util/Date;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$500(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->timestamp:J

    .line 555
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$12;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # invokes: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->setNextData()V
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$000(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
