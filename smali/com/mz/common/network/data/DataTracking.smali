.class public Lcom/mz/common/network/data/DataTracking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/data/IData;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/mz/common/network/data/DataTracking;->a:Ljava/lang/String;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/mz/common/network/data/DataTracking;->b:Ljava/lang/String;

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/mz/common/network/data/DataTracking;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mz/common/network/data/DataTracking;->d:Z

    .line 11
    iput-boolean v0, p0, Lcom/mz/common/network/data/DataTracking;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mz/common/network/data/DataTracking;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mz/common/network/data/DataTracking;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/mz/common/network/data/DataTracking;->d:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mz/common/network/data/DataTracking;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mz/common/network/data/DataTracking;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/mz/common/network/data/DataTracking;->e:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mz/common/network/data/DataTracking;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/mz/common/network/data/DataTracking;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/mz/common/network/data/DataTracking;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/mz/common/network/data/DataTracking;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataTracking {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataTracking;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "offset : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataTracking;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_traking : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataTracking;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSend : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mz/common/network/data/DataTracking;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isCheck : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mz/common/network/data/DataTracking;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
