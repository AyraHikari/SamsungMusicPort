.class Lcom/facebook/share/ShareApi$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/CollectionMapper$Collection<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/facebook/share/ShareApi$8;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 549
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/share/ShareApi$8;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .locals 0

    .line 549
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/share/ShareApi$8;->set(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/facebook/share/ShareApi$8;->val$parameters:Landroid/os/Bundle;

    invoke-static {v0, p1, p2}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 565
    new-instance p1, Lcom/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-interface {p3, p1}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    :cond_0
    return-void
.end method
