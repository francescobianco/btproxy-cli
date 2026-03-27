.class Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;
.super Ljava/lang/Object;
.source "ChooseCountryOrRegionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 357
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 360
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 361
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_45

    const/4 p1, 0x0

    .line 362
    :goto_27
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_36

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    .line 364
    :cond_36
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$200(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->setSearch(Ljava/util/List;)V

    :cond_45
    return-void
.end method
