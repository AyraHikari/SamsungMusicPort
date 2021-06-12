.class final Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnSearchListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->c:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "StoreSearchResultResponseExecutor"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchFinished() - searchResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    .line 80
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    .line 79
    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;->b:I

    if-lez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
