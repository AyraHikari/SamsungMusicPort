.class Lorg/simpleframework/xml/core/TreeModel;
.super Ljava/lang/Object;
.source "TreeModel.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/TreeModel$OrderList;
    }
.end annotation


# instance fields
.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private detail:Lorg/simpleframework/xml/core/Detail;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private expression:Lorg/simpleframework/xml/core/Expression;

.field private index:I

.field private list:Lorg/simpleframework/xml/core/Label;

.field private models:Lorg/simpleframework/xml/core/ModelMap;

.field private name:Ljava/lang/String;

.field private order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

.field private policy:Lorg/simpleframework/xml/core/Policy;

.field private prefix:Ljava/lang/String;

.field private text:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    .line 4
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 5
    new-instance v0, Lorg/simpleframework/xml/core/ModelMap;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    .line 6
    new-instance v0, Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/TreeModel$OrderList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    .line 7
    iput-object p2, p0, Lorg/simpleframework/xml/core/TreeModel;->detail:Lorg/simpleframework/xml/core/Detail;

    .line 8
    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->policy:Lorg/simpleframework/xml/core/Policy;

    .line 9
    iput-object p4, p0, Lorg/simpleframework/xml/core/TreeModel;->prefix:Ljava/lang/String;

    .line 10
    iput p5, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    .line 11
    iput-object p3, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    return-void
.end method

.method private create(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .locals 7

    .line 1
    new-instance v6, Lorg/simpleframework/xml/core/TreeModel;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->policy:Lorg/simpleframework/xml/core/Policy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->detail:Lorg/simpleframework/xml/core/Detail;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/simpleframework/xml/core/TreeModel;-><init>(Lorg/simpleframework/xml/core/Policy;Lorg/simpleframework/xml/core/Detail;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {p2, p1, v6}, Lorg/simpleframework/xml/core/ModelMap;->register(Ljava/lang/String;Lorg/simpleframework/xml/core/Model;)V

    .line 3
    iget-object p2, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v6
.end method

.method private validateAttributes(Ljava/lang/Class;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/AttributeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "Ordered attribute \'%s\' does not exist in %s"

    invoke-direct {v0, p1, v2}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void
.end method

.method private validateElements(Ljava/lang/Class;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/ModelList;

    .line 4
    iget-object v3, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Label;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object p1, v2, v4

    const-string p1, "Ordered element \'%s\' does not exist in %s"

    invoke-direct {v0, p1, v2}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v2}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object p1, v2, v4

    const-string p1, "Element \'%s\' is also a path name in %s"

    invoke-direct {v0, p1, v2}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-eqz v2, :cond_0

    .line 9
    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_5
    return-void
.end method

.method private validateExpression(Lorg/simpleframework/xml/core/Label;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PathException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v0, v2, p1

    const-string p1, "Path \'%s\' does not match \'%s\' in %s"

    invoke-direct {v1, p1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 7
    :cond_1
    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    :goto_0
    return-void
.end method

.method private validateExpressions(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz p1, :cond_4

    .line 6
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateExpression(Lorg/simpleframework/xml/core/Label;)V

    :cond_4
    return-void
.end method

.method private validateModels(Ljava/lang/Class;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/ModelList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Model;

    if-eqz v4, :cond_1

    .line 3
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Model;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Model;->getIndex()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    if-ne v6, v3, :cond_2

    .line 5
    invoke-interface {v4, p1}, Lorg/simpleframework/xml/core/Model;->validate(Ljava/lang/Class;)V

    move v3, v7

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Path section \'%s[%s]\' is out of sequence in %s"

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-void
.end method

.method private validateText(Ljava/lang/Class;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string p1, "Text annotation %s can not be used with paths in %s"

    invoke-direct {v0, p1, v3}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    const-string p1, "Text annotation %s used with elements in %s"

    invoke-direct {v0, p1, v3}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAttributes()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabels()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabels()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    return v0
.end method

.method public getModels()Lorg/simpleframework/xml/core/ModelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelMap;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->list:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method public isAttribute(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isComposite()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

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

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/Model;

    if-eqz v3, :cond_1

    .line 3
    invoke-interface {v3}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public isElement(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/TreeModel;->isComposite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isModel(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/ModelMap;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object p1

    return-object p1
.end method

.method public lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getFirst()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->getIndex()I

    move-result v1

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/simpleframework/xml/core/TreeModel;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Expression;->isPath()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-interface {p1, v1, v2}, Lorg/simpleframework/xml/core/Expression;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Model;->lookup(Lorg/simpleframework/xml/core/Expression;)Lorg/simpleframework/xml/core/Model;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->models:Lorg/simpleframework/xml/core/ModelMap;

    invoke-virtual {v0, p1, p3}, Lorg/simpleframework/xml/core/ModelMap;->lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/TreeModel;->create(Ljava/lang/String;Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public register(Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->registerAttribute(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->registerText(Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->registerElement(Lorg/simpleframework/xml/core/Label;)V

    :goto_0
    return-void
.end method

.method public registerAttribute(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerAttribute(Lorg/simpleframework/xml/core/Label;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/AttributeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Duplicate annotation of name \'%s\' on %s"

    invoke-direct {v1, p1, v2}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public registerElement(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerElement(Lorg/simpleframework/xml/core/Label;)V
    .locals 4

    .line 4
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->order:Lorg/simpleframework/xml/core/TreeModel$OrderList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->list:Lorg/simpleframework/xml/core/Label;

    .line 10
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_2
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Duplicate annotation of name \'%s\' on %s"

    invoke-direct {v1, p1, v2}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public registerText(Lorg/simpleframework/xml/core/Label;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/simpleframework/xml/core/TreeModel;->text:Lorg/simpleframework/xml/core/Label;

    return-void

    .line 3
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Duplicate text annotation on %s"

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/simpleframework/xml/core/TreeModel;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/simpleframework/xml/core/TreeModel;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "model \'%s[%s]\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateExpressions(Ljava/lang/Class;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateAttributes(Ljava/lang/Class;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateElements(Ljava/lang/Class;)V

    .line 4
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateModels(Ljava/lang/Class;)V

    .line 5
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/TreeModel;->validateText(Ljava/lang/Class;)V

    return-void
.end method
