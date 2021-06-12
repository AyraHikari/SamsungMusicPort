.class Lcom/facebook/share/ShareApi$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$ValueMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .locals 1

    .line 529
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$200(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_0

    .line 531
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$300(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_0

    .line 535
    :cond_1
    instance-of v0, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/facebook/share/ShareApi$7;->this$0:Lcom/facebook/share/ShareApi;

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-static {v0, p1, p2}, Lcom/facebook/share/ShareApi;->access$400(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_0

    .line 538
    :cond_2
    invoke-interface {p2, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
