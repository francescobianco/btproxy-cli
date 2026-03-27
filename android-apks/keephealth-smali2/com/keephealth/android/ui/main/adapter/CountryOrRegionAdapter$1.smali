.class Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;
.super Ljava/lang/Object;
.source "CountryOrRegionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    iput p2, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 128
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mOnItemClick:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->access$000(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 129
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4b

    .line 130
    iget-object p1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->mOnItemClick:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->access$000(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;
    invoke-static {v1}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->this$0:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    # getter for: Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->list:Ljava/util/List;
    invoke-static {v2}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;->access$100(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/CountryOrRegion;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;->onItemClick(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method
