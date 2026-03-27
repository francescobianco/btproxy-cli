.class Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;
.super Ljava/lang/Object;
.source "DetailBloodPressActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->reBackDayData(Ljava/util/List;Lcom/keephealth/android/greendao/bean/HealthBlood;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

.field final synthetic val$infos:Ljava/util/List;

.field final synthetic val$values1:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->val$infos:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->val$values1:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 626
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->barLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->healthBloodItemInput:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->val$infos:Ljava/util/List;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    move v0, v1

    .line 628
    :goto_19
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->val$infos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 629
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->val$infos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    .line 630
    invoke-virtual {v2}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v2

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget-object v4, v4, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->healthBloodItemInput:Lcom/keephealth/android/greendao/bean/HealthBloodItem;

    invoke-virtual {v4}, Lcom/keephealth/android/greendao/bean/HealthBloodItem;->getDate()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_42

    .line 631
    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget-object v2, v2, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    int-to-float v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValue(FI)V

    return-void

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 636
    :cond_45
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->val$values1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_56

    .line 637
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValue(FI)V

    goto :goto_66

    .line 639
    :cond_56
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2;->bloodDayChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodPressActivity2$11;->val$values1:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValue(FI)V

    :goto_66
    return-void
.end method
