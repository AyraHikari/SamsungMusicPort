.class Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->d:Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->a:I

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 2

    const-string v0, "7"

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->d:Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;Ljava/lang/String;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->d:Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->d:Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-void
.end method
