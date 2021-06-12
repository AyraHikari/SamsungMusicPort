.class public Lcom/mz/common/network/data/DataNTCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTCommon;->a:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/mz/common/network/data/DataNTCommon;->b:Ljava/lang/String;

    return-void
.end method

.method public k()V
    .locals 1

    const-string v0, ""

    .line 14
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTCommon;->i(Ljava/lang/String;)V

    const-string v0, ""

    .line 15
    invoke-virtual {p0, v0}, Lcom/mz/common/network/data/DataNTCommon;->j(Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mz/common/network/data/DataNTCommon;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTCommon;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " error_code : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mz/common/network/data/DataNTCommon;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
