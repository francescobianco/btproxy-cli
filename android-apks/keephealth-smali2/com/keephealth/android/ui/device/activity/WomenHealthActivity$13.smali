.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

.field final synthetic val$day:I

.field final synthetic val$dura:I

.field final synthetic val$month:I

.field final synthetic val$perimeter:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;IIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3004
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$perimeter:I

    iput p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$dura:I

    iput p4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$year:I

    iput p5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$month:I

    iput p6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 3007
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/WomenHealthUtil;->createAllWomenHealth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 3008
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->IsMenstrual:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 3009
    const-string v1, "drer4re"

    if-eqz v0, :cond_7c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7c

    .line 3010
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$perimeter:I

    iget v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->val$dura:I

    const/4 v3, 0x2

    invoke-static {v3, v0, v1, v2}, Lcom/keephealth/android/util/WomenHealthUtil;->firstMeasuData(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;II)V

    .line 3012
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->deleteAll()V

    .line 3013
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrualDao:Lcom/keephealth/android/greendao/gen/PreMenstrualDao;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/greendao/gen/PreMenstrualDao;->save(Ljava/lang/Object;)V

    .line 3014
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/4 v1, 0x7

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V

    .line 3015
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$13;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_81

    .line 3022
    :cond_7c
    const-string v0, "list == null"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_81
    return-void
.end method
