.class public Lcom/mz/common/network/data/DataNTMovie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/data/IData;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataMovieAD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mz/common/network/data/DataNTMovie;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTMovie;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/mz/common/network/data/DataMovieAD;)I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTMovie;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result p1

    return p1
.end method

.method public a(I)Lcom/mz/common/network/data/DataMovieAD;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTMovie;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataMovieAD;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTMovie;->a:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, ""

    .line 57
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTMovie;->a(Ljava/lang/String;)V

    const-string v0, ""

    .line 58
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTMovie;->b(Ljava/lang/String;)V

    const-string v0, ""

    .line 59
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTMovie;->c(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTMovie;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTMovie;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataMovieAD;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTMovie;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTMovie;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTMovie;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTMovie;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTMovie {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTMovie;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "use_ssp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTMovie;->b:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTMovie;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/mz/common/network/data/DataNTMovie;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mz/common/network/data/DataNTMovie;->a(I)Lcom/mz/common/network/data/DataMovieAD;

    move-result-object v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMovieAD;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "}\n"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
