.class Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MRUCacheWorkItem"
.end annotation


# static fields
.field private static mruCachedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheItem:Ljava/lang/String;

.field private shouldTrim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1741
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    .line 1742
    iput-boolean p2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->shouldTrim:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1747
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1748
    sget-object v0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1749
    sget-object v0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1751
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->shouldTrim:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    const/16 v0, 0x40

    .line 1753
    :goto_0
    sget-object v1, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1754
    sget-object v1, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1757
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
