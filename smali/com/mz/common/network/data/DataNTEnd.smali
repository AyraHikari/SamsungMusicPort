.class public Lcom/mz/common/network/data/DataNTEnd;
.super Lcom/mz/common/network/data/DataNTCommon;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/data/IData;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/mz/common/network/data/DataListEndAD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mz/common/network/data/DataNTCommon;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/mz/common/network/data/DataNTCommon;->k()V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->a:Ljava/lang/String;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->b:Ljava/lang/String;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->c:Ljava/lang/String;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->d:Ljava/lang/String;

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->e:Ljava/lang/String;

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->f:Ljava/lang/String;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->g:Ljava/lang/String;

    const-string v0, ""

    .line 60
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTEnd;->h(Ljava/lang/String;)V

    const-string v0, ""

    .line 61
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTEnd;->k(Ljava/lang/String;)V

    const-string v0, ""

    .line 62
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTEnd;->l(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->k:Lcom/mz/common/network/data/DataListEndAD;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->k:Lcom/mz/common/network/data/DataListEndAD;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListEndAD;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mz/common/network/data/DataListEndAD;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->k:Lcom/mz/common/network/data/DataListEndAD;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Lcom/mz/common/network/data/DataListEndAD;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->k:Lcom/mz/common/network/data/DataListEndAD;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->g:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTEnd;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->h:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->i:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTEnd;->j:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTEnd {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/mz/common/network/data/DataNTCommon;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request_id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use_ssp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_attr : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close_location : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTEnd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logo_location : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTEnd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response_time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTEnd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/mz/common/network/data/DataNTEnd;->k:Lcom/mz/common/network/data/DataListEndAD;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/mz/common/network/data/DataNTEnd;->k:Lcom/mz/common/network/data/DataListEndAD;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataListEndAD;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTEnd;->k:Lcom/mz/common/network/data/DataListEndAD;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataListEndAD;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}\n"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
