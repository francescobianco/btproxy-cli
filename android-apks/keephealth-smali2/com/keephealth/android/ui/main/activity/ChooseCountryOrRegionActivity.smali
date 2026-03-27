.class public Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "ChooseCountryOrRegionActivity.java"

# interfaces
.implements Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter$OnItemClick;


# static fields
.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field public static final REQUEST_CODE:I = 0x64

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ChooseCountryOrRegionActivity"


# instance fields
.field private adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

.field private btn_search:Landroid/widget/Button;

.field buffer:Ljava/lang/StringBuffer;

.field private courtryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;"
        }
    .end annotation
.end field

.field dialog:Landroid/widget/TextView;

.field private et_search:Landroid/widget/EditText;

.field private mSourceDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;"
        }
    .end annotation
.end field

.field sideBar:Lcom/keephealth/android/views/SideBar;

.field sortListView:Landroid/widget/ListView;

.field private sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Ljava/util/List;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->mSourceDateList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;)Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)Lcom/keephealth/android/util/strategy/ISortStrategy;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->closeDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->filledData(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->dealSideBarItemSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;Lcom/keephealth/android/model/bean/CountryOrRegion;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->dealItemClick(Lcom/keephealth/android/model/bean/CountryOrRegion;)V

    return-void
.end method

.method private closeDialog()V
    .registers 1

    return-void
.end method

.method private dealItemClick(Lcom/keephealth/android/model/bean/CountryOrRegion;)V
    .registers 2

    return-void
.end method

.method private dealSideBarItemSelected(Ljava/lang/String;)V
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->adapter:Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;

    invoke-interface {v0, v1, p1}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getSideBarSortSectionFirstShowPosition(Lcom/keephealth/android/ui/main/adapter/CountryOrRegionAdapter;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_10

    .line 377
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    return-void
.end method

.method private filledData(Ljava/util/List;)Ljava/util/List;
    .registers 7
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

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    .line 403
    :goto_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 404
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/CountryOrRegion;

    .line 406
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/CountryOrRegion;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/keephealth/android/util/AreaCodeUtils;->getCountryNameByCountryCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_45

    .line 410
    :cond_24
    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/CountryOrRegion;->setName(Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    invoke-interface {v4, v3, p0}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getStrokeCount(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/CountryOrRegion;->setStrokeCount(I)V

    .line 416
    iget-object v3, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    invoke-interface {v3, v2}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getPinyinOrEnglish(Lcom/keephealth/android/model/bean/CountryOrRegion;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/CountryOrRegion;->setPinyinName(Ljava/lang/String;)V

    .line 419
    iget-object v4, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    invoke-interface {v4, v3}, Lcom/keephealth/android/util/strategy/ISortStrategy;->getSortLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/CountryOrRegion;->setSortLetters(Ljava/lang/String;)V

    .line 422
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_48
    return-object v0
.end method

.method private handleReponse(Ljava/lang/String;)V
    .registers 7

    .line 183
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/keephealth/android/model/bean/CountryOrRegion;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v1, v2}, Lcom/keephealth/android/util/JSONUtil;->toCollection(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_27

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 186
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initAndShowList(Ljava/util/List;)V

    .line 187
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->closeDialog()V

    .line 189
    :cond_27
    :goto_27
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v4, p1, :cond_4b

    .line 190
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_33

    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :catch_33
    move-exception p1

    .line 193
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF3226"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return-void
.end method

.method private initAndShowList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/CountryOrRegion;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initSortStrategy()Lcom/keephealth/android/util/strategy/ISortStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortStrategy:Lcom/keephealth/android/util/strategy/ISortStrategy;

    .line 246
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$3;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    .line 247
    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 259
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    .line 260
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$2;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    .line 261
    invoke-virtual {p1, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method private initData()V
    .registers 4

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "countryCodes.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->readCountryData(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-direct {p0, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->handleReponse(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_2a

    :catch_12
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "e1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF3226"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private initSortStrategy()Lcom/keephealth/android/util/strategy/ISortStrategy;
    .registers 5

    .line 224
    invoke-static {p0}, Lcom/keephealth/android/util/SystemLanguageUtil;->getLocalLanguageAndCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "name3dr"

    if-eqz v1, :cond_19

    .line 227
    const-string v0, "\u4f7f\u7528\u7b14\u753b\u6392\u5e8f"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v0, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;

    invoke-direct {v0}, Lcom/keephealth/android/util/strategy/impl/StrokeSortStrategy;-><init>()V

    return-object v0

    .line 229
    :cond_19
    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "ja-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_42

    .line 235
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u4f7f\u7528\u82f1\u6587\u6392\u5e8f_localLanguageAndCountry:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v0, Lcom/keephealth/android/util/strategy/impl/EnglishSortStrategy;

    invoke-direct {v0}, Lcom/keephealth/android/util/strategy/impl/EnglishSortStrategy;-><init>()V

    return-object v0

    .line 231
    :cond_42
    :goto_42
    const-string v0, "\u4f7f\u7528\u62fc\u97f3\u6392\u5e8f"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;

    invoke-direct {v0}, Lcom/keephealth/android/util/strategy/impl/PinyinSortStrategy;-><init>()V

    return-object v0
.end method

.method private readCountryData(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    .line 202
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "GB2312"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 203
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 204
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->buffer:Ljava/lang/StringBuffer;

    .line 206
    :goto_15
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 207
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_15

    :catch_28
    move-exception p1

    .line 211
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e3:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF3226"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_40
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .registers 3

    .line 128
    :try_start_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 132
    sget-object v0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0029

    return v0
.end method

.method public initView()V
    .registers 3

    .line 102
    invoke-static {}, Lcom/github/promeg/pinyinhelper/Pinyin;->newConfig()Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$1;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initViews()V

    .line 113
    invoke-direct {p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->initData()V

    return-void
.end method

.method public initViews()V
    .registers 3

    const v0, 0x7f0900fd

    .line 296
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortListView:Landroid/widget/ListView;

    const v0, 0x7f09056f

    .line 297
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/views/SideBar;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sideBar:Lcom/keephealth/android/views/SideBar;

    const v0, 0x7f090134

    .line 298
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->dialog:Landroid/widget/TextView;

    const v0, 0x7f090177

    .line 299
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->et_search:Landroid/widget/EditText;

    const v0, 0x7f0900c7

    .line 300
    invoke-virtual {p0, v0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->btn_search:Landroid/widget/Button;

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sideBar:Lcom/keephealth/android/views/SideBar;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->dialog:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 304
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sideBar:Lcom/keephealth/android/views/SideBar;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$4;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/SideBar;->setOnTouchingLetterChangedListener(Lcom/keephealth/android/views/SideBar$OnTouchingLetterChangedListener;)V

    .line 312
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->sortListView:Landroid/widget/ListView;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$5;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$5;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->courtryList:Ljava/util/List;

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$6;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->btn_search:Landroid/widget/Button;

    new-instance v1, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity$7;-><init>(Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 142
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 429
    invoke-static {}, Lcom/keephealth/android/util/ButtonUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_49

    .line 430
    new-instance v0, Lcom/keephealth/android/model/bean/CountryBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/CountryBean;-><init>()V

    .line 431
    invoke-virtual {v0, p1}, Lcom/keephealth/android/model/bean/CountryBean;->setPosition(I)V

    .line 432
    invoke-virtual {v0, p2}, Lcom/keephealth/android/model/bean/CountryBean;->setNumber(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p3}, Lcom/keephealth/android/model/bean/CountryBean;->setName(Ljava/lang/String;)V

    .line 434
    new-instance p1, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 p3, 0x3f8

    invoke-direct {p1, p3, v0}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 435
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 436
    invoke-static {p3}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    const/4 p1, 0x1

    .line 437
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isChooseCountryBack:Z

    .line 438
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 439
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0xcb

    .line 440
    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->setResult(ILandroid/content/Intent;)V

    .line 441
    invoke-virtual {p0}, Lcom/keephealth/android/ui/main/activity/ChooseCountryOrRegionActivity;->finish()V

    :cond_49
    return-void
.end method
