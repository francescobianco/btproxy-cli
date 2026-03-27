.class Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;
.super Ljava/lang/Object;
.source "ChooseCountryOrRegionActivity.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1<",
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

    .line 261
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .line 261
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;)V"
        }
    .end annotation

    .line 265
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 266
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 268
    :cond_11
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_49

    move p1, v0

    .line 269
    :goto_27
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_49

    .line 270
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    .line 274
    :cond_49
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    new-instance v1, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;
    invoke-static {v4}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$300(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/util/strategy/ISortStrategy;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/keephealth/android/util/strategy/ISortStrategy;)V

    # setter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$202(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    .line 275
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$200(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$200(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->setOnItemClickListing(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;)V

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sideBar:Lcom/keephealth/android/views/SideBar;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$300(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/util/strategy/ISortStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-interface {v1, v2, v3}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getSideBarSortShowItemArray(Ljava/util/List;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/SideBar;->setB([Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sideBar:Lcom/keephealth/android/views/SideBar;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/SideBar;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->closeDialog()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$400(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    return-void
.end method
