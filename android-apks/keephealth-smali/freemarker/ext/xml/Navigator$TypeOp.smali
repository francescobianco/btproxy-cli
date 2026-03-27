.class Lfreemarker/ext/xml/Navigator$TypeOp;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Lfreemarker/ext/xml/NodeOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/xml/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeOp"
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/ext/xml/Navigator;


# direct methods
.method private constructor <init>(Lfreemarker/ext/xml/Navigator;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lfreemarker/ext/xml/Navigator$TypeOp;->this$0:Lfreemarker/ext/xml/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/ext/xml/Navigator;Lfreemarker/ext/xml/Navigator$1;)V
    .registers 3

    .line 271
    invoke-direct {p0, p1}, Lfreemarker/ext/xml/Navigator$TypeOp;-><init>(Lfreemarker/ext/xml/Navigator;)V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 273
    iget-object p2, p0, Lfreemarker/ext/xml/Navigator$TypeOp;->this$0:Lfreemarker/ext/xml/Navigator;

    invoke-virtual {p2, p1}, Lfreemarker/ext/xml/Navigator;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
