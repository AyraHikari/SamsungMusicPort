.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;->a:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;ILcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;->a:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever;ILcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteRetriever$1;->a(Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;)V

    return-void
.end method
