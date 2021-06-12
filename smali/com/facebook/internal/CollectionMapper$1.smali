.class final Lcom/facebook/internal/CollectionMapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$didReturnError:Lcom/facebook/internal/Mutable;

.field final synthetic val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

.field final synthetic val$pendingJobCount:Lcom/facebook/internal/Mutable;


# direct methods
.method constructor <init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iput-object p2, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iput-object p3, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iget-object v1, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iget-object v1, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    :cond_1
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method
