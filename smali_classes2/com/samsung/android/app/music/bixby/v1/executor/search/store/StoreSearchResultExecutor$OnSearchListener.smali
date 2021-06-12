.class final Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnSearchListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->c:Landroid/os/Handler;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->b(I)V

    return-void
.end method

.method private b(I)V
    .locals 5

    .line 87
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchFinished() - searchResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result v1

    .line 90
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "2"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 98
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-static {v4}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;

    move-result-object v4

    invoke-interface {v4, v2, p1}, Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchable;->a(Ljava/lang/String;I)V

    if-eqz v1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    .line 101
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->b(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_1

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_1

    .line 94
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    .line 95
    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
