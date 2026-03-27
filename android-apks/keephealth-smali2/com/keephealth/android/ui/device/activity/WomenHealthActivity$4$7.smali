.class Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;
.super Ljava/lang/Object;
.source "WomenHealthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->onMultiChoose(Landroid/view/View;Lcom/keephealth/android/views/calendarview/bean/DateBean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

.field final synthetic val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;Lcom/keephealth/android/views/calendarview/bean/DateBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 532
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v1

    const/4 v2, 0x1

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->setData(II)V
    invoke-static {v0, v2, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->access$1100(Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;II)V

    .line 533
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    .line 534
    invoke-virtual {v5}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->val$date:Lcom/keephealth/android/views/calendarview/bean/DateBean;

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/DateBean;->getSolarDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v2

    .line 533
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    if-eqz v0, :cond_70

    .line 535
    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v2, :cond_70

    .line 536
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7b

    .line 538
    :cond_70
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4$7;->this$1:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity$4;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7b
    return-void
.end method
