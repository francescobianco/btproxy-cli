.class Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$5;
.super Ljava/lang/Object;
.source "ChooseCountryOrRegionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 315
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$200(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    .line 316
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$5;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->dealItemClick(Lcom/keephealth/android/model/bean/CountryOrRegion;)V
    invoke-static {p2, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$700(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Lcom/keephealth/android/model/bean/CountryOrRegion;)V

    return-void
.end method
