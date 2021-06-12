.class public final Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor$SearchMusicListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PlayPlaylistExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 8
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PLAY_PLAYLIST"

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "KEYWORD"

    .line 45
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v2, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", keyword: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 50
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - Empty keyword."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "Playlists"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "keyword"

    const-string v3, "Exist"

    const-string v4, "no"

    .line 52
    invoke-virtual {p1, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v3, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v2

    .line 58
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->c:Landroid/content/Context;

    const v4, 0x10004

    new-instance v5, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor$SearchMusicListener;

    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor$SearchMusicListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor$1;)V

    invoke-direct {p1, v3, v0, v4, v5}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;)V

    new-array v0, v1, [Ljava/lang/Void;

    .line 59
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/search/SearchMusicTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_1
    return v1
.end method
