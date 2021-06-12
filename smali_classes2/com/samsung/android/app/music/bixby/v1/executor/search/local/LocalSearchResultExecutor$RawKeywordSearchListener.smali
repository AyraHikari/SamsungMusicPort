.class final Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawKeywordSearchListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 113
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Before refine] onSearchFinished() - beginPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", endPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 117
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_0

    .line 118
    new-instance p1, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$KeywordRefineListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner;->a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor$RawKeywordSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    :goto_0
    return-void
.end method
