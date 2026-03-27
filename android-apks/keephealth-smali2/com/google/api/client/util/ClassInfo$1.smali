.class Lcom/google/api/client/util/ClassInfo$1;
.super Ljava/lang/Object;
.source "ClassInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/util/ClassInfo;-><init>(Ljava/lang/Class;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/util/ClassInfo;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/ClassInfo;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/google/api/client/util/ClassInfo$1;->this$0:Lcom/google/api/client/util/ClassInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 165
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/util/ClassInfo$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    goto :goto_10

    :cond_4
    if-nez p1, :cond_8

    const/4 p1, -0x1

    goto :goto_10

    :cond_8
    if-nez p2, :cond_c

    const/4 p1, 0x1

    goto :goto_10

    .line 167
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    :goto_10
    return p1
.end method
