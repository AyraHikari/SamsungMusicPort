.class Lorg/simpleframework/xml/core/TreeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/TreeModel$OrderList;
    }
.end annotation


# instance fields
.field private a:Lorg/simpleframework/xml/core/LabelMap;

.field private b:Lorg/simpleframework/xml/core/LabelMap;

.field private c:Lorg/simpleframework/xml/core/ModelMap;

.field private d:Lorg/simpleframework/xml/core/TreeModel$OrderList;

.field private e:Ljava/lang/String;

.field private f:Lorg/simpleframework/xml/core/Label;

.field private g:I


# virtual methods
.method public a()Z
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->f:Lorg/simpleframework/xml/core/Label;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->b:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 628
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->a:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 631
    :cond_2
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    .line 692
    iget v0, p0, Lorg/simpleframework/xml/core/TreeModel;->g:I

    return v0
.end method

.method public c()Z
    .locals 4

    .line 601
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->c:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    .line 602
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/ModelList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Model;

    if-eqz v3, :cond_1

    .line 604
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Model;->a()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 610
    :cond_2
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->c:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->d:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/TreeModel$OrderList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 342
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "model \'%s[%s]\'"

    const/4 v1, 0x2

    .line 703
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lorg/simpleframework/xml/core/TreeModel;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
