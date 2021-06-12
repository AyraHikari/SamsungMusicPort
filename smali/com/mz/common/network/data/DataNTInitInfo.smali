.class public Lcom/mz/common/network/data/DataNTInitInfo;
.super Ljava/lang/Object;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, ""

    .line 32
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->a(Ljava/lang/String;)V

    const-string v0, ""

    .line 33
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->b(Ljava/lang/String;)V

    const-string v0, ""

    .line 34
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->c(Ljava/lang/String;)V

    const-string v0, ""

    .line 35
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 36
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->e(Ljava/lang/String;)V

    const-string v0, ""

    .line 37
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTInitInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTInitInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTInitInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTInitInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTInitInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTInitInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTInitInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTInitInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTInitInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTInitInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTInitInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTInitInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTInitInfo\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTInitInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_target_use : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTInitInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_target_info_ver : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTInitInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_target_period : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTInitInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "conf_period : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTInitInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ab_interval : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTInitInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
