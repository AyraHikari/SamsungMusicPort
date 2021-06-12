.class public Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;
.super Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;Ljava/lang/String;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a(Ljava/lang/String;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;)V
    .locals 6

    if-eqz p2, :cond_7

    .line 72
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;->getSearchList()Lcom/samsung/android/app/music/model/milksearch/SearchList;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milksearch/SearchList;->getLyricsList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;

    const/4 v1, 0x0

    .line 83
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getPartialLyrics()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 87
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 88
    new-instance v2, Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->getPartialLyrics()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 92
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-eq v1, v3, :cond_6

    add-int/lit8 v3, v1, -0x1

    :goto_2
    if-ltz v3, :cond_4

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v5, v4, :cond_4

    const/16 v5, 0xa

    if-ne v5, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 118
    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/16 v4, 0x64

    if-ge v3, v4, :cond_5

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v4, v3, v1

    :cond_5
    add-int/2addr v4, v1

    .line 123
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_6
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/milksearch/SearchLyrics;->setPartialLyrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->v_()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchDataRetriever"

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStoreDataRequested with text : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a(ILjava/lang/Object;)V

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->b()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->v_()Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/SearchTransport;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    .line 46
    invoke-interface {v3}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->c()Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->value:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    .line 47
    invoke-interface {v4}, Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/samsung/android/app/music/network/transport/SearchTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    .line 48
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/SearchDataRetriever;ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
