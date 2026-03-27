.class Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$1;
.super Lcom/github/promeg/pinyinhelper/PinyinMapDict;
.source "ChooseCountryOrRegionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initView()V
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

    .line 103
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;

    invoke-direct {p0}, Lcom/github/promeg/pinyinhelper/PinyinMapDict;-><init>()V

    return-void
.end method


# virtual methods
.method public mapping()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    .line 107
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "BI"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "LU"

    aput-object v3, v1, v2

    const-string v2, "\u79d8\u9c81"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
