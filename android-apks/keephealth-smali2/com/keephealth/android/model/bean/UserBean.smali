.class public Lcom/keephealth/android/model/bean/UserBean;
.super Ljava/lang/Object;
.source "UserBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private account:Ljava/lang/String;

.field private age:I

.field private birthday:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private coverImage:Ljava/lang/String;

.field private day:I

.field private device:Lcom/keephealth/android/model/bean/BLEDevice;

.field private email:Ljava/lang/String;

.field private emailVerified:Z

.field private familyUserType:I

.field private firstLogin:Z

.field private gender:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sex"
    .end annotation
.end field

.field private headerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation
.end field

.field private height:I

.field private heightLb:F

.field private hourMode12:I

.field private language:I

.field private lastUploadTime:Ljava/lang/String;

.field private medals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/MedalResult;",
            ">;"
        }
    .end annotation
.end field

.field private mobileCountryCode:Ljava/lang/String;

.field private month:I

.field private openId:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneVerified:Z

.field private pwd:Ljava/lang/String;

.field private registerTime:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private sos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SosInfo;",
            ">;"
        }
    .end annotation
.end field

.field private stepDistance:I

.field private temperatureUnit:I

.field private token:Ljava/lang/String;

.field private unit:I

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mid"
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private waterUnit:I

.field private wearHabit:I

.field private weight:F

.field private weightLb:F

.field private weightSt:I

.field private weightTarger:F

.field private weightTargerLb:F

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/keephealth/android/model/bean/UserBean;->month:I

    .line 31
    iput v0, p0, Lcom/keephealth/android/model/bean/UserBean;->day:I

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/keephealth/android/model/bean/UserBean;->gender:I

    const/16 v2, 0xaf

    .line 34
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->height:I

    const/16 v2, 0x14

    .line 35
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->age:I

    .line 36
    iput v1, p0, Lcom/keephealth/android/model/bean/UserBean;->unit:I

    const/high16 v2, 0x42d80000    # 108.0f

    .line 43
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->heightLb:F

    const/high16 v2, 0x42700000    # 60.0f

    .line 46
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->weight:F

    const/high16 v2, 0x430f0000    # 143.0f

    .line 50
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->weightLb:F

    const/16 v2, 0x46

    .line 72
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    const/4 v2, -0x1

    .line 84
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->language:I

    .line 86
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->hourMode12:I

    const/4 v2, 0x0

    .line 88
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->weightTarger:F

    .line 90
    iput v2, p0, Lcom/keephealth/android/model/bean/UserBean;->weightTargerLb:F

    .line 91
    iput v1, p0, Lcom/keephealth/android/model/bean/UserBean;->waterUnit:I

    .line 100
    const-string v2, ""

    iput-object v2, p0, Lcom/keephealth/android/model/bean/UserBean;->phone:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/keephealth/android/model/bean/UserBean;->mobileCountryCode:Ljava/lang/String;

    .line 102
    iput-boolean v1, p0, Lcom/keephealth/android/model/bean/UserBean;->phoneVerified:Z

    .line 103
    iput v0, p0, Lcom/keephealth/android/model/bean/UserBean;->wearHabit:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 266
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 213
    :cond_12
    check-cast p1, Lcom/keephealth/android/model/bean/UserBean;

    .line 214
    iget v2, p0, Lcom/keephealth/android/model/bean/UserBean;->year:I

    iget v3, p1, Lcom/keephealth/android/model/bean/UserBean;->year:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Lcom/keephealth/android/model/bean/UserBean;->month:I

    iget v3, p1, Lcom/keephealth/android/model/bean/UserBean;->month:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Lcom/keephealth/android/model/bean/UserBean;->day:I

    iget v3, p1, Lcom/keephealth/android/model/bean/UserBean;->day:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Lcom/keephealth/android/model/bean/UserBean;->gender:I

    iget v3, p1, Lcom/keephealth/android/model/bean/UserBean;->gender:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Lcom/keephealth/android/model/bean/UserBean;->height:I

    iget v3, p1, Lcom/keephealth/android/model/bean/UserBean;->height:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Lcom/keephealth/android/model/bean/UserBean;->weight:F

    iget v3, p1, Lcom/keephealth/android/model/bean/UserBean;->weight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_45

    iget-object v2, p0, Lcom/keephealth/android/model/bean/UserBean;->userName:Ljava/lang/String;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/UserBean;->userName:Ljava/lang/String;

    .line 220
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    :goto_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .registers 2

    .line 374
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->age:I

    return v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .registers 2

    .line 346
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->day:I

    return v0
.end method

.method public getDevice()Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->device:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyUserType()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->familyUserType:I

    return v0
.end method

.method public getGender()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->gender:I

    return v0
.end method

.method public getHeaderUrl()Ljava/lang/String;
    .registers 2

    .line 454
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->headerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 364
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->height:I

    return v0
.end method

.method public getHeightLb()F
    .registers 2

    .line 398
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->heightLb:F

    return v0
.end method

.method public getHourMode12()I
    .registers 2

    .line 170
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->hourMode12:I

    return v0
.end method

.method public getLanguage()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->language:I

    return v0
.end method

.method public getLastUploadTime()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->lastUploadTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMedals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/MedalResult;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->medals:Ljava/util/List;

    return-object v0
.end method

.method public getMobileCountryCode()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->mobileCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .line 338
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->month:I

    return v0
.end method

.method public getOpenId()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterTime()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->registerTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SosInfo;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->sos:Ljava/util/List;

    return-object v0
.end method

.method public getStepDistance()I
    .registers 2

    .line 462
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    return v0
.end method

.method public getTemperatureUnit()I
    .registers 2

    .line 256
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->temperatureUnit:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()I
    .registers 2

    .line 382
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->unit:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/keephealth/android/model/bean/UserBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getWaterUnit()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->waterUnit:I

    return v0
.end method

.method public getWearHabit()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->wearHabit:I

    return v0
.end method

.method public getWeight()F
    .registers 2

    .line 406
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->weight:F

    return v0
.end method

.method public getWeightLb()F
    .registers 2

    .line 414
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->weightLb:F

    return v0
.end method

.method public getWeightSt()I
    .registers 2

    .line 422
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->weightSt:I

    return v0
.end method

.method public getWeightTarger()F
    .registers 2

    .line 146
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->weightTarger:F

    return v0
.end method

.method public getWeightTargerLb()F
    .registers 2

    .line 154
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->weightTargerLb:F

    return v0
.end method

.method public getYear()I
    .registers 2

    .line 330
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->year:I

    return v0
.end method

.method public isEmailVerified()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/UserBean;->emailVerified:Z

    return v0
.end method

.method public isFirstLogin()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/UserBean;->firstLogin:Z

    return v0
.end method

.method public isPhoneVerified()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/UserBean;->phoneVerified:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->account:Ljava/lang/String;

    return-void
.end method

.method public setAge(I)V
    .registers 2

    .line 378
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->age:I

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->birthday:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->coverImage:Ljava/lang/String;

    return-void
.end method

.method public setDay(I)V
    .registers 2

    .line 350
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->day:I

    return-void
.end method

.method public setDevice(Lcom/keephealth/android/model/bean/BLEDevice;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->device:Lcom/keephealth/android/model/bean/BLEDevice;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailVerified(Z)V
    .registers 2

    .line 206
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/UserBean;->emailVerified:Z

    return-void
.end method

.method public setFamilyUserType(I)V
    .registers 2

    .line 182
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->familyUserType:I

    return-void
.end method

.method public setFirstLogin(Z)V
    .registers 2

    .line 302
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/UserBean;->firstLogin:Z

    return-void
.end method

.method public setGender(I)V
    .registers 6

    .line 358
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->gender:I

    .line 359
    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->height:I

    int-to-double v0, v0

    if-nez p1, :cond_d

    const-wide v2, 0x3fda9fbe76c8b439L    # 0.416

    goto :goto_12

    :cond_d
    const-wide v2, 0x3fda7ef9db22d0e5L    # 0.414

    :goto_12
    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u7f6e\u6b65\u957f\u6027\u522b:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF4325"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHeaderUrl(Ljava/lang/String;)V
    .registers 2

    .line 458
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->headerUrl:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .registers 6

    .line 368
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->height:I

    int-to-double v0, p1

    .line 369
    iget p1, p0, Lcom/keephealth/android/model/bean/UserBean;->gender:I

    if-nez p1, :cond_d

    const-wide v2, 0x3fda9fbe76c8b439L    # 0.416

    goto :goto_12

    :cond_d
    const-wide v2, 0x3fda7ef9db22d0e5L    # 0.414

    :goto_12
    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u7f6e\u6b65\u957f\u5347\u9ad8:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF4325"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHeightLb(F)V
    .registers 2

    .line 402
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->heightLb:F

    return-void
.end method

.method public setHourMode12(I)V
    .registers 2

    .line 174
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->hourMode12:I

    return-void
.end method

.method public setLanguage(I)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->language:I

    return-void
.end method

.method public setLastUploadTime(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->lastUploadTime:Ljava/lang/String;

    return-void
.end method

.method public setMedals(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/MedalResult;",
            ">;)V"
        }
    .end annotation

    .line 474
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->medals:Ljava/util/List;

    return-void
.end method

.method public setMobileCountryCode(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->mobileCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setMonth(I)V
    .registers 2

    .line 342
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->month:I

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .registers 2

    .line 450
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->openId:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPhoneVerified(Z)V
    .registers 2

    .line 134
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/UserBean;->phoneVerified:Z

    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->pwd:Ljava/lang/String;

    return-void
.end method

.method public setRegisterTime(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->registerTime:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2

    .line 394
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setSos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SosInfo;",
            ">;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->sos:Ljava/util/List;

    return-void
.end method

.method public setStepDistance(I)V
    .registers 2

    .line 466
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    return-void
.end method

.method public setTemperatureUnit(I)V
    .registers 2

    .line 260
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->temperatureUnit:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 318
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->token:Ljava/lang/String;

    return-void
.end method

.method public setUnit(I)V
    .registers 2

    .line 386
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->unit:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/keephealth/android/model/bean/UserBean;->userName:Ljava/lang/String;

    return-void
.end method

.method public setWaterUnit(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->waterUnit:I

    return-void
.end method

.method public setWearHabit(I)V
    .registers 2

    .line 110
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->wearHabit:I

    return-void
.end method

.method public setWeight(F)V
    .registers 2

    .line 410
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->weight:F

    return-void
.end method

.method public setWeightLb(F)V
    .registers 2

    .line 418
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->weightLb:F

    return-void
.end method

.method public setWeightSt(I)V
    .registers 2

    .line 426
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->weightSt:I

    return-void
.end method

.method public setWeightTarger(F)V
    .registers 2

    .line 150
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->weightTarger:F

    return-void
.end method

.method public setWeightTargerLb(F)V
    .registers 2

    .line 158
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->weightTargerLb:F

    return-void
.end method

.method public setYear(I)V
    .registers 2

    .line 334
    iput p1, p0, Lcom/keephealth/android/model/bean/UserBean;->year:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserBean{userName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/model/bean/UserBean;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/UserBean;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/UserBean;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/UserBean;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/UserBean;->gender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/UserBean;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/UserBean;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/UserBean;->weight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/UserBean;->headerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stepDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/UserBean;->stepDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
