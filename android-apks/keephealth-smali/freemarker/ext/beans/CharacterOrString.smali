.class final Lfreemarker/ext/beans/CharacterOrString;
.super Ljava/lang/Object;
.source "CharacterOrString.java"


# instance fields
.field private final stringValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfreemarker/ext/beans/CharacterOrString;->stringValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAsChar()C
    .registers 3

    .line 42
    iget-object v0, p0, Lfreemarker/ext/beans/CharacterOrString;->stringValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method getAsString()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lfreemarker/ext/beans/CharacterOrString;->stringValue:Ljava/lang/String;

    return-object v0
.end method
