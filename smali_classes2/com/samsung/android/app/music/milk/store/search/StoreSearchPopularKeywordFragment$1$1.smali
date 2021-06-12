.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchPopularModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->a:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchPopularModel;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->a:I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksearch/SearchPopularModel;->getPopularList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail to get popular keywords from server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchPopularModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment$1$1;->a(Lcom/samsung/android/app/music/model/milksearch/SearchPopularModel;)V

    return-void
.end method
