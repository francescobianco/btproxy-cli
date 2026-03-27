.class public Lcom/keephealth/android/model/StravaBaseBean$Athlete;
.super Ljava/lang/Object;
.source "StravaBaseBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/model/StravaBaseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Athlete"
.end annotation


# instance fields
.field private badge_type_id:I

.field private bio:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private created_at:Ljava/lang/String;

.field private firstname:Ljava/lang/String;

.field private follower:Ljava/lang/String;

.field private friend:Ljava/lang/String;

.field private id:J

.field private lastname:Ljava/lang/String;

.field private premium:Z

.field private profile:Ljava/lang/String;

.field private profile_medium:Ljava/lang/String;

.field private resource_state:I

.field private sex:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private summit:Z

.field final synthetic this$0:Lcom/keephealth/android/model/StravaBaseBean;

.field private updated_at:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private weight:D


# direct methods
.method public constructor <init>(Lcom/keephealth/android/model/StravaBaseBean;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->this$0:Lcom/keephealth/android/model/StravaBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadge_type_id()I
    .registers 2

    .line 195
    iget v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->badge_type_id:I

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstname()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getFollower()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->follower:Ljava/lang/String;

    return-object v0
.end method

.method public getFriend()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->friend:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->id:J

    return-wide v0
.end method

.method public getLastname()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->lastname:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->profile:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_medium()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->profile_medium:Ljava/lang/String;

    return-object v0
.end method

.method public getResource_state()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->resource_state:I

    return v0
.end method

.method public getSex()Ljava/lang/String;
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->updated_at:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()D
    .registers 3

    .line 203
    iget-wide v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->weight:D

    return-wide v0
.end method

.method public isPremium()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->premium:Z

    return v0
.end method

.method public isSummit()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->summit:Z

    return v0
.end method

.method public setBadge_type_id(I)V
    .registers 2

    .line 199
    iput p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->badge_type_id:I

    return-void
.end method

.method public setBio(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->bio:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->country:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setFirstname(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->firstname:Ljava/lang/String;

    return-void
.end method

.method public setFollower(Ljava/lang/String;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->follower:Ljava/lang/String;

    return-void
.end method

.method public setFriend(Ljava/lang/String;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->friend:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 87
    iput-wide p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->id:J

    return-void
.end method

.method public setLastname(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->lastname:Ljava/lang/String;

    return-void
.end method

.method public setPremium(Z)V
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->premium:Z

    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->profile:Ljava/lang/String;

    return-void
.end method

.method public setProfile_medium(Ljava/lang/String;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->profile_medium:Ljava/lang/String;

    return-void
.end method

.method public setResource_state(I)V
    .registers 2

    .line 103
    iput p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->resource_state:I

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->sex:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->state:Ljava/lang/String;

    return-void
.end method

.method public setSummit(Z)V
    .registers 2

    .line 175
    iput-boolean p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->summit:Z

    return-void
.end method

.method public setUpdated_at(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->updated_at:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->username:Ljava/lang/String;

    return-void
.end method

.method public setWeight(D)V
    .registers 3

    .line 207
    iput-wide p1, p0, Lcom/keephealth/android/model/StravaBaseBean$Athlete;->weight:D

    return-void
.end method
