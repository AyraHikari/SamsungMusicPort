.class Lcom/samsung/android/app/music/list/local/SearchFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

.field final synthetic c:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Ljava/lang/String;Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->c:Lcom/samsung/android/app/music/list/local/SearchFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->b:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->c:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->v_()Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->b:Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;->a()Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "SearchFragment"

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip store suggestion for text : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", because current text is : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
