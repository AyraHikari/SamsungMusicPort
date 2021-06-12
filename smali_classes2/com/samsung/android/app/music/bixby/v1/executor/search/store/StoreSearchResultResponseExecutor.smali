.class public final Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "STORE_SEARCH_RESULT"

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "StoreSearchResultResponseExecutor"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "2"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->b:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;

    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    invoke-interface {v1, v0, v3}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable;->a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreDetailSearchable$OnSearchListener;)V

    return v2

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
