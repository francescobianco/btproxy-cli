.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)V
    .registers 2

    .line 1025
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 22

    move-object/from16 v0, p0

    .line 1028
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/4 v2, 0x1

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->updateOpenNext(I)V
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2500(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V

    .line 1029
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v4, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v4

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    const/4 v6, 0x2

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v1, v6, v3, v4, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    .line 1030
    iget-object v7, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v7}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v10

    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v11

    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v12

    const/4 v8, 0x2

    const/4 v9, 0x0

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastMunalData(IZIII)V
    invoke-static/range {v7 .. v12}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2600(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IZIII)V

    .line 1031
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5f00\u2014\u2014-\u8fde\u63a5----6_nextMunalDayBetween:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "6t6tyg"

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v1

    const/4 v4, 0x6

    const/16 v5, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/4 v9, 0x5

    const/4 v10, 0x0

    if-nez v1, :cond_126

    .line 1034
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1035
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2700(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v11

    invoke-virtual {v1, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 1036
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2800(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v11

    sub-int/2addr v11, v2

    invoke-virtual {v1, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 1037
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2900(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v11

    invoke-virtual {v1, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 1038
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u6253\u5f00\u2014\u2014-\u8fde\u63a5----last6:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1040
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v15

    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v12}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v16

    iget-object v12, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v12}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v17

    const/4 v12, 0x0

    const/4 v13, 0x3

    const-string v14, "open"

    move-object/from16 v18, v1

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V
    invoke-static/range {v11 .. v18}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 1041
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 1043
    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 1044
    invoke-virtual {v1, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 1045
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1046
    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v1, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1047
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 1048
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "\u6253\u5f00\u2014\u2014-\u8fde\u63a5----6:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V
    invoke-static {v2, v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILjava/util/Calendar;)V

    .line 1051
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v1, v4, v2, v3, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    goto/16 :goto_286

    .line 1053
    :cond_126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "\u6253\u5f00\u2014\u2014-----162  WomenHealthUtil.isBackLastMunal(currentDate)\uff1a"

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v11

    invoke-static {v11}, Lcom/keephealth/android/util/WomenHealthUtil;->isBackLastMunal(Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;)Z

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1055
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v11

    invoke-virtual {v1, v2, v11}, Ljava/util/Calendar;->set(II)V

    .line 1056
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-virtual {v1, v6, v11}, Ljava/util/Calendar;->set(II)V

    .line 1057
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v11

    invoke-virtual {v1, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 1059
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->getLastCalendar()Ljava/util/Calendar;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/keephealth/android/util/DateUtil;->getDaysBetween(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v11

    invoke-virtual {v11}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v11

    add-int/2addr v11, v9

    if-ge v1, v11, :cond_23e

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "\u6253\u5f00\u2014\u2014-----16---\u540e\u9762\u53ea\u6709\u4e00\u4e2a\u7ecf\u671f:"

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->nextMunalDayBetween:I
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "    "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->getLastCalendar()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1063
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndYear:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2700(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1064
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2800(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1065
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->lastNextMunalEndDay:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$2900(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {v1, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 1066
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1067
    iget-object v11, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v11}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v15

    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v16

    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v17

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    const-string v14, "open"

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V
    invoke-static/range {v11 .. v18}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 1068
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1069
    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 1070
    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 1071
    invoke-virtual {v1, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 1072
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1073
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1074
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 1075
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1077
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V
    invoke-static {v2, v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILjava/util/Calendar;)V

    .line 1078
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v1, v4, v2, v3, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    goto :goto_286

    .line 1081
    :cond_23e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1082
    invoke-virtual {v1, v8, v10}, Ljava/util/Calendar;->set(II)V

    .line 1083
    invoke-virtual {v1, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 1084
    invoke-virtual {v1, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 1085
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1086
    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1087
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 1088
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->calPreAndNextLength()V

    .line 1090
    iget-object v2, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->reCalPrePregnancyData(ILjava/util/Calendar;)V
    invoke-static {v2, v8, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$3000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;ILjava/util/Calendar;)V

    .line 1091
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollYear:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v2

    iget-object v3, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollMonth:I
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1400(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v3

    iget-object v5, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->scrollDay:I
    invoke-static {v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1200(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)I

    move-result v5

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->notifyMonthView(IIII)V
    invoke-static {v1, v4, v2, v3, v5}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIII)V

    .line 1094
    :goto_286
    iget-object v1, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$6;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V
    invoke-static {v1, v9}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V

    return-void
.end method
