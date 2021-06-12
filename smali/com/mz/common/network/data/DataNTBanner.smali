.class public Lcom/mz/common/network/data/DataNTBanner;
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

.field private i:Lcom/mz/common/network/data/DataListBannerAD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mz/common/network/data/DataNTCommon;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/mz/common/network/data/DataNTCommon;->k()V

    const-string v0, ""

    .line 45
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->a(Ljava/lang/String;)V

    const-string v0, ""

    .line 46
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->b(Ljava/lang/String;)V

    const-string v0, ""

    .line 47
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->c(Ljava/lang/String;)V

    const-string v0, ""

    .line 48
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->h(Ljava/lang/String;)V

    const-string v0, ""

    .line 49
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 50
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->e(Ljava/lang/String;)V

    const-string v0, ""

    .line 51
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->f(Ljava/lang/String;)V

    const-string v0, ""

    .line 52
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTBanner;->g(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListBannerAD;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mz/common/network/data/DataListBannerAD;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->i:Lcom/mz/common/network/data/DataListBannerAD;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->f:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->g:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->h:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTBanner;->d:Ljava/lang/String;

    return-void
.end method

.method public i()Lcom/mz/common/network/data/DataListBannerAD;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->i:Lcom/mz/common/network/data/DataListBannerAD;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTBanner;->d:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTBanner {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
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

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rotatetime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request_id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use_ssp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_attr : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataListBannerAD;->toString()Ljava/lang/String;

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

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
