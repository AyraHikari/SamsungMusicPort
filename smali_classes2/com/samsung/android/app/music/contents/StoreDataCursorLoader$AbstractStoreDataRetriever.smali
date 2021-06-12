.class public abstract Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/contents/StoreDataCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractStoreDataRetriever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->b:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;

    return-object v0
.end method

.method public abstract a(I)V
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->a:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->a:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->b:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;->a(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->a:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->b:Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;

    return-void
.end method
