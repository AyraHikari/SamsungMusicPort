.class final Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeywordRefineListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 0
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefineFinished() - before: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->e(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;)Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->a:Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/all/AllSearchLocalResultExecutor$KeywordRefineListener;)V

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;->a(ILcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)V

    :goto_0
    return-void
.end method
