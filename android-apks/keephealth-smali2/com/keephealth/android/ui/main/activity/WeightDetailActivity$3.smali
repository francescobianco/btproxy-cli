.class Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$3;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "WeightDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;->setLimit(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightDetailActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/WeightDetailActivity;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .registers 4

    .line 241
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.1f"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
