.class public Lcom/mz/common/network/data/DataAD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/data/IData;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\^"

    .line 15
    iput-object v0, p0, Lcom/mz/common/network/data/DataAD;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/mz/common/network/data/DataAD;->i:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/mz/common/network/data/DataAD;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/mz/common/network/data/DataAD;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/mz/common/network/data/DataAD;->i:Z

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/mz/common/network/data/DataAD;->d:[Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mz/common/network/data/DataAD;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/mz/common/network/data/DataAD;->b:Ljava/lang/String;

    return-void
.end method

.method public b([Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/mz/common/network/data/DataAD;->g:[Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mz/common/network/data/DataAD;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/mz/common/network/data/DataAD;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mz/common/network/data/DataAD;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mz/common/network/data/DataAD;->a([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mz/common/network/data/DataAD;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/mz/common/network/data/DataAD;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mz/common/network/data/DataAD;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 95
    iput-object p1, p0, Lcom/mz/common/network/data/DataAD;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mz/common/network/data/DataAD;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mz/common/network/data/DataAD;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/mz/common/network/data/DataAD;->i:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataAD{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_group_no : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataAD;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_target : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataAD;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_target_list : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataAD;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_filter : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataAD;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pkg_filter_list : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataAD;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "and_yn : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mz/common/network/data/DataAD;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
