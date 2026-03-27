.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;
.super Ljava/lang/Object;
.source "WomenHealthOldActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

.field final synthetic val$day:I

.field final synthetic val$womenHealthBeanList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2773
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$womenHealthBeanList:Ljava/util/List;

    iput p3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2776
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$womenHealthBeanList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b6

    .line 2777
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$womenHealthBeanList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2779
    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v3, v1

    .line 2780
    :goto_1a
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$womenHealthBeanList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_46

    .line 2781
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$womenHealthBeanList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v2, :cond_43

    .line 2782
    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$womenHealthBeanList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2785
    :cond_46
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v3

    if-ne v3, v2, :cond_6e

    .line 2786
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v2, :cond_66

    .line 2787
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_b6

    .line 2789
    :cond_66
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_b6

    .line 2792
    :cond_6e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_af

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v3

    if-nez v3, :cond_af

    iget v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->val$day:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_af

    .line 2793
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v2, :cond_a7

    .line 2794
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_b6

    .line 2796
    :cond_a7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_b6

    .line 2799
    :cond_af
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 2804
    :cond_b6
    :goto_b6
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    if-eqz v0, :cond_1ec

    .line 2805
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsStartData()I

    move-result v0

    if-eq v0, v2, :cond_f9

    .line 2806
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsEndMenstrualDate()I

    move-result v0

    if-ne v0, v2, :cond_f2

    .line 2807
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v2, :cond_ea

    .line 2808
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v2}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_f9

    .line 2810
    :cond_ea
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    goto :goto_f9

    .line 2813
    :cond_f2
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->itMen:Lcom/keephealth/android/views/ItemToggleLayout;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/ItemToggleLayout;->setOpen(Z)V

    .line 2816
    :cond_f9
    :goto_f9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v0

    if-ne v0, v2, :cond_10d

    .line 2817
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_116

    .line 2819
    :cond_10d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->llMenstrual:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2821
    :goto_116
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->womenHealthBeanDao:Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    .line 2822
    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMonth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v5, Lcom/keephealth/android/greendao/gen/WomenHealthBeanDao$Properties;->Day:Lorg/greenrobot/greendao/Property;

    iget-object v6, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2821
    invoke-virtual {v0, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2822
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    .line 2823
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "womenHealthBean.getDysmenorrhea()  13:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6t6ty5rg"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getDysmenorrhea()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2825
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarDysm:Lcom/keephealth/android/views/StarBar;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v2, :cond_1a5

    move v4, v2

    goto :goto_1a6

    :cond_1a5
    move v4, v1

    :goto_1a6
    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/StarBar;->setEnableSelectRating(Z)V

    .line 2826
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getFlow()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/views/StarBar;->setStarMark(F)V

    .line 2827
    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->starBarFlow:Lcom/keephealth/android/views/StarBar;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getIsMenstrual()I

    move-result v4

    if-ne v4, v2, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    move v2, v1

    :goto_1c7
    invoke-virtual {v3, v2}, Lcom/keephealth/android/views/StarBar;->setEnableSelectRating(Z)V

    if-eqz v0, :cond_1d5

    .line 2829
    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMood()I

    move-result v0

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setMood(IZ)V
    invoke-static {v2, v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$1900(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;IZ)V

    .line 2831
    :cond_1d5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentDate:Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/views/calendarview/bean/WomenHealthBean;->getMood()I

    move-result v1

    # setter for: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->currentMood:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$2002(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;I)I

    .line 2832
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setMakeLove()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$2100(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    .line 2833
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity$11;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    # invokes: Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->setSymptom()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->access$2200(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V

    :cond_1ec
    return-void
.end method
