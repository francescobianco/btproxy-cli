.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 226
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->oneEightyDaysBefore:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->ninetyDaysAfter:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/WomenHealthUtil;->createAllWomenHealth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 230
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

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

    if-eqz v0, :cond_32

    .line 231
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_32

    goto :goto_4f

    .line 234
    :cond_32
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualCycle()I

    move-result v1

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->preMenstrual:Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$000(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;)Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/PreMenstrual;->getMenstrualDuration()I

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/keephealth/android/util/WomenHealthUtil;->firstMeasuData(ILcom/keephealth/android/views/calendarview/bean/PreMenstrual;II)V

    .line 236
    :goto_4f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    const/16 v1, 0x9

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->sendWomenHealthData(I)V
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;I)V

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    new-instance v1, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2$1;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
