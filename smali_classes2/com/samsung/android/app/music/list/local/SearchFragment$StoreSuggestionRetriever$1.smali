.class Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->a(I)V
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

.field final synthetic b:Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;I)V
    .locals 0

    .line 1312
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;->b:Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;

    iput p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;->a:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;->b:Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1315
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;->b:Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;

    iget v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1312
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;->a(Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-void
.end method
