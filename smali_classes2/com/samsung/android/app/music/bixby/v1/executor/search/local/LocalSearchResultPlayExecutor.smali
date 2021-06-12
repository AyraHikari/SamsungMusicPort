.class public final Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LocalSearchResultPlayExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/samsung/android/app/music/list/common/SearchPlayable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;Lcom/samsung/android/app/music/list/common/SearchPlayable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/music/list/common/SearchPlayable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->c:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    .line 47
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->e:Lcom/samsung/android/app/music/list/common/SearchPlayable;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PlayAllLocalSongs"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x110001

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PlayAllLocalAlbums"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const v1, 0x10002

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v0, 0x10002

    if-eq p1, v0, :cond_1

    const v0, 0x110001

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "SearchLocalSongs"

    return-object p1

    :cond_1
    const-string p1, "SearchLocalAlbums"

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;I)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;)Lcom/samsung/android/app/music/list/common/SearchPlayable;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->e:Lcom/samsung/android/app/music/list/common/SearchPlayable;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LOCAL_SEARCH_RESULT_PLAY"

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->a:Ljava/lang/String;

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

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->a(Ljava/lang/String;)I

    move-result p1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;->d:Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/local/LocalSearchResultPlayExecutor;I)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/bixby/v1/search/BixbySearchable;->a(ILcom/samsung/android/app/music/bixby/v1/search/BixbySearchable$OnSearchListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
