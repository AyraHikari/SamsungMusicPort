.class public Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;
.super Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoreSuggestionRetriever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1298
    invoke-direct {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;-><init>()V

    .line 1299
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->a:Landroid/content/Context;

    .line 1300
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "StoreSuggestionRetriever"

    .line 1305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStoreDataRequested with text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1307
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->a(ILjava/lang/Object;)V

    return-void

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1311
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever$1;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionRetriever;I)V

    .line 1312
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
