.class public Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;
.super Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever$SpotifySearchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever<",
        "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/contents/StoreDataCursorLoader$AbstractStoreDataRetriever;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;->a:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;->b:Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;I)V

    .line 44
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever$SpotifySearchListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever$SpotifySearchListener;-><init>(Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(Lcom/samsung/android/app/music/contents/OnStoreDataReceiveListener;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchDataRetriever;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/search/SpotifySearchAutoCompleteRetriever;->a(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
