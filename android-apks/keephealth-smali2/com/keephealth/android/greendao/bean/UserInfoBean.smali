.class public Lcom/keephealth/android/greendao/bean/UserInfoBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "UserInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;,
        Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;,
        Lcom/keephealth/android/greendao/bean/UserInfoBean$Medals;,
        Lcom/keephealth/android/greendao/bean/UserInfoBean$Sos;
    }
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private age:I

.field private appType:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private appleHealth:Z

.field private appleId:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;"
        }
    .end annotation
.end field

.field private country:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private coverImage:Ljava/lang/String;

.field private createTime:Ljava/lang/String;

.field private customId:I

.field private device:Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

.field private email:Ljava/lang/String;

.field private emailVerified:Z

.field private facebookId:Ljava/lang/String;

.field private finishBaseInfo:Z

.field private firstLogin:Ljava/lang/String;

.field private height:I

.field private hourMode12:I

.field private id:Ljava/lang/String;

.field private language:Ljava/lang/Object;

.field private lastUploadTime:Ljava/lang/String;

.field private lat:Ljava/lang/Object;

.field private loginTime:Ljava/lang/String;

.field private loginType:I

.field private lon:Ljava/lang/Object;

.field private medalJsonStr:Ljava/lang/String;

.field private medals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$Medals;",
            ">;"
        }
    .end annotation
.end field

.field private mid:I

.field private mobileCountryCode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneModel:Ljava/lang/String;

.field private phoneSystemVersion:Ljava/lang/String;

.field private phoneVerified:Z

.field private registerTime:Ljava/lang/String;

.field private sex:I

.field private sos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$Sos;",
            ">;"
        }
    .end annotation
.end field

.field private sosJsonStr:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private stepSize:I

.field private subAccount:Ljava/lang/String;

.field private temperatureUnit:I

.field private token:Ljava/lang/String;

.field private unit:I

.field private updateTime:Ljava/lang/String;

.field private useDays:I

.field private verifyCode:Ljava/lang/String;

.field private wearHabit:I

.field private weight:I

.field private wxOpenid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phone:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->mobileCountryCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneVerified:Z

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->wearHabit:I

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->age:I

    return v0
.end method

.method public getAppType()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    .line 469
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppleId()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appleId:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomId()I
    .registers 2

    .line 437
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->customId:I

    return v0
.end method

.method public getDevice()Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->device:Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 493
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->facebookId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstLogin()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->firstLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 453
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->height:I

    return v0
.end method

.method public getHourMode12()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->hourMode12:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/Object;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->language:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastUploadTime()Ljava/lang/String;
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lastUploadTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/Object;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lat:Ljava/lang/Object;

    return-object v0
.end method

.method public getLoginTime()Ljava/lang/String;
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->loginTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()I
    .registers 2

    .line 517
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->loginType:I

    return v0
.end method

.method public getLon()Ljava/lang/Object;
    .registers 2

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lon:Ljava/lang/Object;

    return-object v0
.end method

.method public getMedalJsonStr()Ljava/lang/String;
    .registers 2

    .line 501
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->medalJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMedals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$Medals;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->medals:Ljava/util/List;

    return-object v0
.end method

.method public getMid()I
    .registers 2

    .line 381
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->mid:I

    return v0
.end method

.method public getMobileCountryCode()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->mobileCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 373
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneSystemVersion()Ljava/lang/String;
    .registers 2

    .line 285
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneSystemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterTime()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->registerTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .registers 2

    .line 277
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sex:I

    return v0
.end method

.method public getSos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$Sos;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sos:Ljava/util/List;

    return-object v0
.end method

.method public getSosJsonStr()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sosJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStepSize()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->stepSize:I

    return v0
.end method

.method public getSubAccount()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->subAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperatureUnit()I
    .registers 2

    .line 405
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->temperatureUnit:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->unit:I

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUseDays()I
    .registers 2

    .line 509
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->useDays:I

    return v0
.end method

.method public getVerifyCode()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->verifyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getWearHabit()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->wearHabit:I

    return v0
.end method

.method public getWeight()I
    .registers 2

    .line 301
    iget v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->weight:I

    return v0
.end method

.method public getWxOpenid()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->wxOpenid:Ljava/lang/String;

    return-object v0
.end method

.method public isAppleHealth()Z
    .registers 2

    .line 237
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appleHealth:Z

    return v0
.end method

.method public isEmailVerified()Z
    .registers 2

    .line 293
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->emailVerified:Z

    return v0
.end method

.method public isFinishBaseInfo()Z
    .registers 2

    .line 325
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->finishBaseInfo:Z

    return v0
.end method

.method public isPhoneVerified()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneVerified:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setAge(I)V
    .registers 2

    .line 129
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->age:I

    return-void
.end method

.method public setAppType(Ljava/lang/String;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appType:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setAppleHealth(Z)V
    .registers 2

    .line 241
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appleHealth:Z

    return-void
.end method

.method public setAppleId(Ljava/lang/String;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appleId:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2

    .line 401
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->contacts:Ljava/util/List;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->coverImage:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setCustomId(I)V
    .registers 2

    .line 441
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->customId:I

    return-void
.end method

.method public setDevice(Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;)V
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->device:Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailVerified(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->emailVerified:Z

    return-void
.end method

.method public setFacebookId(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->facebookId:Ljava/lang/String;

    return-void
.end method

.method public setFinishBaseInfo(Z)V
    .registers 2

    .line 329
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->finishBaseInfo:Z

    return-void
.end method

.method public setFirstLogin(Ljava/lang/String;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->firstLogin:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    .line 457
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->height:I

    return-void
.end method

.method public setHourMode12(I)V
    .registers 2

    .line 217
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->hourMode12:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/Object;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->language:Ljava/lang/Object;

    return-void
.end method

.method public setLastUploadTime(Ljava/lang/String;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lastUploadTime:Ljava/lang/String;

    return-void
.end method

.method public setLat(Ljava/lang/Object;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lat:Ljava/lang/Object;

    return-void
.end method

.method public setLoginTime(Ljava/lang/String;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->loginTime:Ljava/lang/String;

    return-void
.end method

.method public setLoginType(I)V
    .registers 2

    .line 521
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->loginType:I

    return-void
.end method

.method public setLon(Ljava/lang/Object;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lon:Ljava/lang/Object;

    return-void
.end method

.method public setMedalJsonStr(Ljava/lang/String;)V
    .registers 2

    .line 505
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->medalJsonStr:Ljava/lang/String;

    return-void
.end method

.method public setMedals(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$Medals;",
            ">;)V"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->medals:Ljava/util/List;

    return-void
.end method

.method public setMid(I)V
    .registers 2

    .line 385
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->mid:I

    return-void
.end method

.method public setMobileCountryCode(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->mobileCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 377
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPhoneModel(Ljava/lang/String;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneModel:Ljava/lang/String;

    return-void
.end method

.method public setPhoneSystemVersion(Ljava/lang/String;)V
    .registers 2

    .line 289
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneSystemVersion:Ljava/lang/String;

    return-void
.end method

.method public setPhoneVerified(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneVerified:Z

    return-void
.end method

.method public setRegisterTime(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->registerTime:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .registers 2

    .line 281
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sex:I

    return-void
.end method

.method public setSos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$Sos;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sos:Ljava/util/List;

    return-void
.end method

.method public setSosJsonStr(Ljava/lang/String;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sosJsonStr:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setStepSize(I)V
    .registers 2

    .line 145
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->stepSize:I

    return-void
.end method

.method public setSubAccount(Ljava/lang/String;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->subAccount:Ljava/lang/String;

    return-void
.end method

.method public setTemperatureUnit(I)V
    .registers 2

    .line 409
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->temperatureUnit:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUnit(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->unit:I

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public setUseDays(I)V
    .registers 2

    .line 513
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->useDays:I

    return-void
.end method

.method public setVerifyCode(Ljava/lang/String;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->verifyCode:Ljava/lang/String;

    return-void
.end method

.method public setWearHabit(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->wearHabit:I

    return-void
.end method

.method public setWeight(I)V
    .registers 2

    .line 305
    iput p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->weight:I

    return-void
.end method

.method public setWxOpenid(Ljava/lang/String;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->wxOpenid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInfoBean{registerTime=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->registerTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->unit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stepSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->stepSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', facebookId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->facebookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->language:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->coverImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', createTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->createTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lat:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verifyCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->verifyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', hourMode12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->hourMode12:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appleHealth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appleHealth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subAccount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->subAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', phoneModel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', wxOpenid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->wxOpenid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneSystemVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneSystemVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', emailVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->emailVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->weight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", medals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->medals:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', finishBaseInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->finishBaseInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sosJsonStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->sosJsonStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', firstLogin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->firstLogin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->mid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthday=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', city=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', temperatureUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->temperatureUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUploadTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lastUploadTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->lon:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', customId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->customId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->updateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->loginTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->device:Lcom/keephealth/android/greendao/bean/UserInfoBean$Device;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', email=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', medalJsonStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->medalJsonStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', useDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->useDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loginType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->loginType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mobileCountryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', phoneVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->phoneVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/greendao/bean/UserInfoBean;->contacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
