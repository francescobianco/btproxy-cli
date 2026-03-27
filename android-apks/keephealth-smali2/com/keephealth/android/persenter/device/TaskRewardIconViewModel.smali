.class public Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TaskRewardIconViewModel.java"


# instance fields
.field private listFamily:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/TaskRewardIconViewModel;->listFamily:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public setElectronicData()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x12c

    .line 105
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 106
    const-string v2, "20"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x12d

    .line 109
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 110
    const-string v2, "21"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x12e

    .line 113
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 114
    const-string v2, "22"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x12f

    .line 117
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 118
    const-string v2, "23"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x130

    .line 121
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 122
    const-string v2, "24"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x131

    .line 125
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 126
    const-string v2, "25"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setFamlifyData()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x64

    .line 17
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 18
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x65

    .line 21
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 22
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x66

    .line 25
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 26
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x67

    .line 29
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 30
    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x68

    .line 33
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 34
    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 35
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x69

    .line 37
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 38
    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x6a

    .line 41
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 42
    const-string v2, "6"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setMoneyData()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x190

    .line 133
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 134
    const-string v2, "26"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setOutDoorData()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xc8

    .line 49
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 50
    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xc9

    .line 53
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 54
    const-string v2, "8"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xca

    .line 57
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 58
    const-string v2, "9"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xcb

    .line 61
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 62
    const-string v2, "10"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xcc

    .line 65
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 66
    const-string v2, "11"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xcd

    .line 69
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 70
    const-string v2, "12"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xce

    .line 73
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 74
    const-string v2, "13"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xcf

    .line 77
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 78
    const-string v2, "14"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xd0

    .line 81
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 82
    const-string v2, "15"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xd1

    .line 85
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 86
    const-string v2, "16"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xd2

    .line 89
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 90
    const-string v2, "17"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xd3

    .line 93
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 94
    const-string v2, "18"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0xd4

    .line 97
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 98
    const-string v2, "19"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setRestaurantData()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TaskIconBean;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x1f4

    .line 141
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 142
    const-string v2, "27"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x1f5

    .line 145
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 146
    const-string v2, "28"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x1f6

    .line 149
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 150
    const-string v2, "29"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x1f7

    .line 153
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 154
    const-string v2, "30"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x1f8

    .line 157
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 158
    const-string v2, "31"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x1f9

    .line 161
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 162
    const-string v2, "32"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/keephealth/android/ui/device/bean/TaskIconBean;

    invoke-direct {v1}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;-><init>()V

    const/16 v2, 0x1fa

    .line 165
    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setId(I)V

    .line 166
    const-string v2, "33"

    invoke-virtual {v1, v2}, Lcom/keephealth/android/ui/device/bean/TaskIconBean;->setNumber(Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
