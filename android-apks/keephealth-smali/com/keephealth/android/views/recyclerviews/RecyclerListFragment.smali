.class public Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;
.super Lcom/keephealth/android/base/BaseFragment;
.source "RecyclerListFragment.java"

# interfaces
.implements Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;


# static fields
.field private static mInstance:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;


# instance fields
.field private adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mWeight:I

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field userBean:Lcom/keephealth/android/model/bean/UserBean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    invoke-direct {v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;-><init>()V

    sput-object v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mInstance:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Ljava/util/List;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;Ljava/util/List;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->sendBleContacts(Ljava/util/List;)V

    return-void
.end method

.method private getData()V
    .registers 8

    .line 130
    const-string v0, "ggr33e"

    .line 0
    const-string v1, "jsonArray:"

    .line 130
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "USER_TOKEN"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 132
    new-instance v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;-><init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/UserHttp;->getUserInfo(Lcom/keephealth/android/model/net/ApiCallback;)V

    goto/16 :goto_e4

    .line 171
    :cond_20
    invoke-virtual {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "contactList"

    invoke-static {v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->readObject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contactList:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ggr33fe"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e4

    .line 178
    :try_start_52
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 180
    :goto_68
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a7

    .line 181
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonObject:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v5, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;-><init>()V

    .line 184
    const-string v6, "phone"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->setPhoneNum(Ljava/lang/String;)V

    .line 185
    const-string v6, "userName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->setPhonePerson(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 188
    :cond_a7
    iget-object v1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    if-eqz v1, :cond_c7

    .line 189
    iget-object v2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->setData(Ljava/util/List;)V
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_b0} :catch_b1

    goto :goto_c7

    :catch_b1
    move-exception v1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 195
    :cond_c7
    :goto_c7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    :goto_e4
    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;
    .registers 1

    .line 72
    sget-object v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mInstance:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    return-object v0
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 341
    :try_start_0
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_f

    .line 343
    :catch_9
    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 348
    :goto_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_42

    .line 350
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_2c

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_28

    goto :goto_2c

    .line 354
    :cond_28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 352
    :cond_2c
    :goto_2c
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "\\u%04x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 357
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendBleContacts(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 256
    :cond_3
    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->sendContacts(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "list1_size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF3212"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 258
    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list1.get(i):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$3;

    invoke-direct {v4, p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$3;-><init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)V

    invoke-virtual {v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_57
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .registers 2

    const v0, 0x7f0c010c

    return v0
.end method

.method protected handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V
    .registers 7

    .line 203
    invoke-super {p0, p1}, Lcom/keephealth/android/base/BaseFragment;->handleMessage(Lcom/keephealth/android/model/bean/BaseMessage;)V

    .line 204
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getType()I

    move-result v0

    const/16 v1, 0x2bd

    if-eq v0, v1, :cond_14e

    const/16 v1, 0x2be

    const/4 v2, 0x0

    if-eq v0, v1, :cond_141

    const/16 v1, 0x365

    if-eq v0, v1, :cond_16

    goto/16 :goto_156

    .line 206
    :cond_16
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/BaseMessage;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "list.size1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggr33e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x14

    const-string v4, ""

    if-ge v0, v3, :cond_128

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "list.size2:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8c

    .line 211
    :goto_62
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8c

    .line 212
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    return-void

    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 217
    :cond_8c
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    if-eqz p1, :cond_d8

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "list.size3:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  adapter:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->setData(Ljava/util/List;)V

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "list.size5:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_d8
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "USER_TOKEN"

    invoke-static {p1, v0, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ee

    .line 224
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->postData(Ljava/util/List;)V

    goto :goto_156

    .line 227
    :cond_ee
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "list:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggr33fe"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    if-eqz p1, :cond_156

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_156

    .line 229
    invoke-virtual {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "contactList"

    iget-object v1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->sendBleContacts(Ljava/util/List;)V

    goto :goto_156

    .line 235
    :cond_128
    invoke-virtual {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2."

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_156

    .line 244
    :cond_141
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    if-eqz p1, :cond_156

    .line 245
    invoke-virtual {p1, v2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->setEditData(Z)V

    .line 246
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->postData(Ljava/util/List;)V

    goto :goto_156

    .line 239
    :cond_14e
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    if-eqz p1, :cond_156

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->setEditData(Z)V

    :cond_156
    :goto_156
    return-void
.end method

.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 92
    invoke-super {p0, p1, p2}, Lcom/keephealth/android/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    iget-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    if-eqz p2, :cond_a

    .line 97
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 99
    :cond_a
    new-instance p2, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;

    invoke-direct {p2, p0, v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;-><init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;Ljava/util/List;)V

    iput-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    const p2, 0x7f0904a3

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    .line 101
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 102
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 105
    new-instance p1, Lcom/keephealth/android/views/recyclerviews/helper/SimpleItemTouchHelperCallback;

    iget-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    invoke-direct {p1, p2}, Lcom/keephealth/android/views/recyclerviews/helper/SimpleItemTouchHelperCallback;-><init>(Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;)V

    .line 106
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 107
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 109
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mWeight:I

    const/16 p2, 0x12d

    if-le p1, p2, :cond_80

    .line 111
    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mWeight:I

    .line 112
    iget-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 113
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_84

    :cond_80
    mul-int/lit8 p1, p1, 0xa

    .line 116
    iput p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mWeight:I

    .line 118
    :goto_84
    invoke-direct {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->getData()V

    .line 120
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    new-instance p2, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$1;-><init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)V

    invoke-virtual {p1, p2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->setOnDeleContactItemLising(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;)V

    return-void
.end method

.method public postData(Ljava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 276
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "USER_TOKEN"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_295

    .line 278
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 279
    iget-object v3, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getMedals()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    new-instance v5, Lcom/keephealth/android/greendao/bean/UserInfoBean$Sos;

    invoke-direct {v5}, Lcom/keephealth/android/greendao/bean/UserInfoBean$Sos;-><init>()V

    .line 282
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 285
    iget-object v5, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v6

    const-string v7, "}"

    const-string v8, ",\"temperatureUnit\":"

    const-string v9, ",\"countryCode\":"

    const-string v10, ",\"contacts\":"

    const-string v11, ",\"sos\":"

    const-string v12, "\",\"medals\":"

    const-string v13, "\",\"stepSize\":\""

    const-string v14, "\",\"weight\":\""

    const-string v15, "\",\"height\":\""

    const-string v1, "\",\"birthday\":\""

    move-object/from16 v16, v7

    const-string v7, "\",\"sex\":\""

    move-object/from16 v17, v8

    const-string v8, "{\"name\":\""

    move-object/from16 v18, v5

    const-string v5, "%02d"

    move-object/from16 v19, v9

    const-string v9, "-"

    if-eqz v6, :cond_18f

    .line 289
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v6

    move-object/from16 v20, v2

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 291
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v7, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v7, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mWeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 292
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"appleHealth\":\"false\",\"lat\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/LocationBean;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"lon\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/LocationBean;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"country\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/LocationBean;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"city\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/LocationBean;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"unit\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, v19

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_26c

    :cond_18f
    move-object/from16 v22, v16

    move-object/from16 v23, v17

    move-object/from16 v21, v18

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v8}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 297
    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v7, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v7, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->mWeight:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 298
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\",\"appleHealth\":\"false\",\"unit\":\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    .line 299
    invoke-virtual {v5}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->userBean:Lcom/keephealth/android/model/bean/UserBean;

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :goto_26c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsonStr:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FF321gh2"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 306
    new-instance v2, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$4;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$4;-><init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/keephealth/android/model/net/http/UserHttp;->setUserInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    goto :goto_2a2

    :cond_295
    move-object v3, v1

    .line 331
    invoke-direct/range {p0 .. p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->sendBleContacts(Ljava/util/List;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "contactList"

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2a2
    return-void
.end method
