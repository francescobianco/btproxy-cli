.class public Lfreemarker/core/Environment$Namespace;
.super Lfreemarker/template/SimpleHash;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Namespace"
.end annotation


# instance fields
.field private template:Lfreemarker/template/Template;

.field final synthetic this$0:Lfreemarker/core/Environment;


# direct methods
.method constructor <init>(Lfreemarker/core/Environment;)V
    .registers 2

    .line 3028
    iput-object p1, p0, Lfreemarker/core/Environment$Namespace;->this$0:Lfreemarker/core/Environment;

    invoke-direct {p0}, Lfreemarker/template/SimpleHash;-><init>()V

    .line 3029
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Environment$Namespace;->template:Lfreemarker/template/Template;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V
    .registers 3

    .line 3032
    iput-object p1, p0, Lfreemarker/core/Environment$Namespace;->this$0:Lfreemarker/core/Environment;

    invoke-direct {p0}, Lfreemarker/template/SimpleHash;-><init>()V

    .line 3033
    iput-object p2, p0, Lfreemarker/core/Environment$Namespace;->template:Lfreemarker/template/Template;

    return-void
.end method


# virtual methods
.method public getTemplate()Lfreemarker/template/Template;
    .registers 2

    .line 3040
    iget-object v0, p0, Lfreemarker/core/Environment$Namespace;->template:Lfreemarker/template/Template;

    if-nez v0, :cond_a

    iget-object v0, p0, Lfreemarker/core/Environment$Namespace;->this$0:Lfreemarker/core/Environment;

    invoke-virtual {v0}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method setTemplate(Lfreemarker/template/Template;)V
    .registers 2

    .line 3044
    iput-object p1, p0, Lfreemarker/core/Environment$Namespace;->template:Lfreemarker/template/Template;

    return-void
.end method
