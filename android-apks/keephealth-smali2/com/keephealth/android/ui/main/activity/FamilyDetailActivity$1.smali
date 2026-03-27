.class Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;
.super Ljava/lang/Object;
.source "FamilyDetailActivity.java"

# interfaces
.implements Lcom/ldf/calendar/interf/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selectData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDate(Lcom/ldf/calendar/model/CalendarDate;)V
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->selecetCalendarDate:Lcom/ldf/calendar/model/CalendarDate;

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    iget v1, p1, Lcom/ldf/calendar/model/CalendarDate;->year:I

    iget v2, p1, Lcom/ldf/calendar/model/CalendarDate;->month:I

    iget p1, p1, Lcom/ldf/calendar/model/CalendarDate;->day:I

    invoke-static {v1, v2, p1}, Lcom/keephealth/android/util/ProDbUtils;->getDate(III)Ljava/util/Date;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->access$002(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;Ljava/util/Date;)Ljava/util/Date;

    .line 163
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mPresenter:Lcom/keephealth/android/base/BasePersenter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->access$200(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)Lcom/keephealth/android/base/BasePersenter;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->familyBean:Lcom/keephealth/android/model/bean/FamilyBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->access$100(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)Lcom/keephealth/android/model/bean/FamilyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/FamilyBean;->getMid()I

    move-result v0

    sget-object v1, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->access$000(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->getFamilyDetail(ILjava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->tvDate:Landroid/widget/TextView;

    sget-object v0, Lcom/keephealth/android/util/DateUtil;->formatYMD:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->mSearchDate:Ljava/util/Date;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;->access$000(Lcom/keephealth/android/ui/main/activity/FamilyDetailActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/DateUtil;->format(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSelectOtherMonth(I)V
    .registers 2

    return-void
.end method
