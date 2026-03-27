.class Lcom/keephealth/android/util/LocationUtil$2;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/LocationUtil;->getAddress(Landroid/content/Context;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$geocoder:Landroid/location/Geocoder;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Landroid/location/Geocoder;DD)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$geocoder:Landroid/location/Geocoder;

    iput-wide p2, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$latitude:D

    iput-wide p4, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$longitude:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$geocoder:Landroid/location/Geocoder;

    if-nez v0, :cond_5

    return-void

    .line 150
    :cond_5
    iget-wide v1, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$latitude:D

    iget-wide v3, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_60

    .line 160
    new-instance v1, Lcom/keephealth/android/model/bean/LocationBean;

    invoke-direct {v1}, Lcom/keephealth/android/model/bean/LocationBean;-><init>()V

    .line 161
    iget-wide v2, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$longitude:D

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/model/bean/LocationBean;->setLongitude(D)V

    .line 162
    iget-wide v2, p0, Lcom/keephealth/android/util/LocationUtil$2;->val$latitude:D

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/model/bean/LocationBean;->setLatitude(D)V

    const/4 v2, 0x0

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/keephealth/android/model/bean/LocationBean;->setCity(Ljava/lang/String;)V

    .line 164
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keephealth/android/model/bean/LocationBean;->setCountry(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/app/AppApplication;->setaMapLocation(Lcom/keephealth/android/model/bean/LocationBean;)V

    .line 166
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "LOCATION_INFO"

    invoke-static {v1}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v0, "ghfgr4"

    const-string v1, "\u5b9a\u4f4d\u6210\u529f_\u4fdd\u5b58\u5b9a\u4f4d\u4fe1\u606f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    :goto_60
    return-void
.end method
