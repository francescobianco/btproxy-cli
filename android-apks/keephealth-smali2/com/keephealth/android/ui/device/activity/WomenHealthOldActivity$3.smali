.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

.field final synthetic val$calendar2:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Ljava/util/Calendar;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->val$calendar2:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 354
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsMenstrual:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 355
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_e9

    .line 358
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->val$calendar2:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->val$calendar2:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->val$calendar2:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v0, v1, v3, v5}, Lcom/keephealth/android/util/WomenHealthUtil;->clearNowDayAfterMuntral(Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;III)V

    .line 361
    invoke-static {}, Lcom/keephealth/android/util/WomenHealthUtil;->getLastMuntralStartDate()Ljava/util/Calendar;

    move-result-object v14

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6700\u540e\u4e00\u4e2a\u7ecf\u671f\u7684\u5f00\u59cb\u65e5:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frfr5r"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v0

    invoke-virtual {v14, v6, v0}, Ljava/util/Calendar;->add(II)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u4f20\u5165\u7684\u7ecf\u671f\u5f00\u59cb\u65e5:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/keephealth/android/util/DateUtil;->timestampToDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v7, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-virtual {v14, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/4 v8, 0x0

    const/4 v9, 0x4

    const-string v10, "open"

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->measuDataAfter(ZILjava/lang/String;IIILjava/util/Calendar;)V
    invoke-static/range {v7 .. v14}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$300(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;ZILjava/lang/String;IIILjava/util/Calendar;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u95f4\u9694:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->sendWomenHealthData(I)V
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$400(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)V

    :cond_e9
    return-void
.end method
