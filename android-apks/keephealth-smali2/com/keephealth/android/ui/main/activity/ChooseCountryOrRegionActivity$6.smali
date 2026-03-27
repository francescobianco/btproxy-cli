.class Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;
.super Ljava/lang/Object;
.source "ChooseCountryOrRegionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 321
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method synthetic lambda$onTextChanged$0$com-keephealth-android-ui-main-activity-ChooseCountryOrRegionActivity$6()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$200(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->setSearch(Ljava/util/List;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 329
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 330
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 332
    :cond_11
    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6c

    iget-object p2, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p2}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6c

    const/4 p2, 0x0

    .line 333
    :goto_26
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p3}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_6c

    .line 334
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p3}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_69

    .line 335
    iget-object p3, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;
    invoke-static {p3}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/CountryOrRegion;

    .line 336
    iget-object p4, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p4}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    .line 341
    :cond_6c
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    .line 342
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9a

    .line 343
    new-instance p1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_9a
    return-void
.end method
