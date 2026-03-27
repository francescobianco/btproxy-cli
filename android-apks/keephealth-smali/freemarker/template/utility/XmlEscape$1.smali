.class Lfreemarker/template/utility/XmlEscape$1;
.super Ljava/io/Writer;
.source "XmlEscape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/template/utility/XmlEscape;->getWriter(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfreemarker/template/utility/XmlEscape;

.field final synthetic val$out:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lfreemarker/template/utility/XmlEscape;Ljava/io/Writer;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lfreemarker/template/utility/XmlEscape$1;->this$0:Lfreemarker/template/utility/XmlEscape;

    iput-object p2, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq p1, v0, :cond_46

    const/16 v0, 0x3c

    const/4 v3, 0x4

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_32

    const/16 v0, 0x26

    if-eq p1, v0, :cond_27

    const/16 v0, 0x27

    if-eq p1, v0, :cond_1d

    .line 56
    iget-object v0, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_4f

    .line 55
    :cond_1d
    iget-object p1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->APOS:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$400()[C

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_4f

    .line 53
    :cond_27
    iget-object p1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->AMP:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$200()[C

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_4f

    .line 52
    :cond_32
    iget-object p1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->GT:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$100()[C

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_4f

    .line 51
    :cond_3c
    iget-object p1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->LT:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$000()[C

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_4f

    .line 54
    :cond_46
    iget-object p1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->QUOT:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$300()[C

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    :goto_4f
    return-void
.end method

.method public write([CII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/2addr p3, p2

    move v0, p2

    :goto_2
    if-ge p2, p3, :cond_78

    .line 66
    aget-char v1, p1, p2

    const/16 v2, 0x22

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq v1, v2, :cond_63

    const/16 v2, 0x3c

    const/4 v5, 0x4

    if-eq v1, v2, :cond_52

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_41

    const/16 v2, 0x26

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1e

    goto :goto_75

    .line 72
    :cond_1e
    iget-object v1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->APOS:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$400()[C

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_73

    .line 70
    :cond_2f
    iget-object v1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->AMP:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$200()[C

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_73

    .line 69
    :cond_41
    iget-object v1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->GT:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$100()[C

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_73

    .line 68
    :cond_52
    iget-object v1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->LT:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$000()[C

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/Writer;->write([CII)V

    goto :goto_73

    .line 71
    :cond_63
    iget-object v1, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    sub-int v2, p2, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    # getter for: Lfreemarker/template/utility/XmlEscape;->QUOT:[C
    invoke-static {}, Lfreemarker/template/utility/XmlEscape;->access$300()[C

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/Writer;->write([CII)V

    :goto_73
    add-int/lit8 v0, p2, 0x1

    :goto_75
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_78
    sub-int/2addr p3, v0

    if-lez p3, :cond_80

    .line 77
    iget-object p2, p0, Lfreemarker/template/utility/XmlEscape$1;->val$out:Ljava/io/Writer;

    invoke-virtual {p2, p1, v0, p3}, Ljava/io/Writer;->write([CII)V

    :cond_80
    return-void
.end method
