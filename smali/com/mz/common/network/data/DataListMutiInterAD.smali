.class public Lcom/mz/common/network/data/DataListMutiInterAD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/data/IDataList;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mz/common/network/data/DataMutiInterAD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/mz/common/network/data/IData;)I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    check-cast p1, Lcom/mz/common/network/data/DataMutiInterAD;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataListMutiInterAD;->b()I

    move-result p1

    return p1
.end method

.method public a(I)Lcom/mz/common/network/data/IData;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/IData;

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataListInterAD {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/mz/common/network/data/DataListMutiInterAD;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/mz/common/network/data/DataListMutiInterAD;->b()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mz/common/network/data/DataListMutiInterAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v2

    check-cast v2, Lcom/mz/common/network/data/DataMutiInterAD;

    .line 55
    invoke-virtual {v2}, Lcom/mz/common/network/data/DataMutiInterAD;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "}\n"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
