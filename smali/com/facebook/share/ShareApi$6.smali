.class Lcom/facebook/share/ShareApi$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$stagedObject:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lorg/json/JSONArray;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/facebook/share/ShareApi$6;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$6;->val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$6;->val$stagedObject:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/facebook/share/ShareApi$6;->val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iget-object v1, p0, Lcom/facebook/share/ShareApi$6;->val$stagedObject:Lorg/json/JSONArray;

    invoke-interface {v0, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/facebook/share/ShareApi$6;->val$onArrayListStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method
