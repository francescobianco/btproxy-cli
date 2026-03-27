.class public interface abstract Lcom/keephealth/android/persenter/main/WeightDetailContract$View;
.super Ljava/lang/Object;
.source "WeightDetailContract.java"

# interfaces
.implements Lcom/keephealth/android/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/persenter/main/WeightDetailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract returnRecordInfos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightRecordShowList;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract returnWeightList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/WeightData;",
            ">;)V"
        }
    .end annotation
.end method
