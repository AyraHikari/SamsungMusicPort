.class public Lcom/mz/common/network/data/DataNTPkgAgList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/data/IData;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/mz/common/network/data/DataListSection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, ""

    .line 29
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTPkgAgList;->c(Ljava/lang/String;)V

    const-string v0, ""

    .line 30
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTPkgAgList;->d(Ljava/lang/String;)V

    const-string v0, ""

    .line 31
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTPkgAgList;->a(Ljava/lang/String;)V

    const-string v0, ""

    .line 32
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTPkgAgList;->b(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTPkgAgList;->c()Lcom/mz/common/network/data/DataListSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataListSection;->a()V

    return-void
.end method

.method public a(Lcom/mz/common/network/data/DataListSection;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->e:Lcom/mz/common/network/data/DataListSection;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/mz/common/network/data/DataListSection;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->e:Lcom/mz/common/network/data/DataListSection;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTPkgAgList {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error_code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package_info : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "section_count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->e:Lcom/mz/common/network/data/DataListSection;

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "listSection : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTPkgAgList;->e:Lcom/mz/common/network/data/DataListSection;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataListSection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}\n"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
