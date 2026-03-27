.class Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;
.super Ljava/lang/Object;
.source "ChooseCountryOrRegionActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initAndShowList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/model/bean/CountryOrRegion;",
        ">;",
        "Ljava/util/List<",
        "Lcom/keephealth/android/model/bean/CountryOrRegion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 247
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;->call(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->filledData(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$500(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$102(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Ljava/util/List;)Ljava/util/List;

    .line 253
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 254
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$300(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/util/strategy/ISortStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getSortedCountryOrRegionList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    # setter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$102(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Ljava/util/List;)Ljava/util/List;

    .line 256
    :cond_24
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
