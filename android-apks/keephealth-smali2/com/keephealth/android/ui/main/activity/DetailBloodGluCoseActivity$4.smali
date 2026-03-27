.class Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$4;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "DetailBloodGluCoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;->updateByDate(Lcom/keephealth/android/model/bean/HeartRateDetailVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

.field final synthetic val$stXaxis:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;Ljava/util/List;)V
    .registers 3

    .line 548
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$4;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$4;->val$stXaxis:Ljava/util/List;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$4;->val$stXaxis:Ljava/util/List;

    float-to-int p1, p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodGluCoseActivity$4;->val$stXaxis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
