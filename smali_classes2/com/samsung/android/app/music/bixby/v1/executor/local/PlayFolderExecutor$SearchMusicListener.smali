.class final Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor$SearchMusicListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/search/AbsSearchMusicTask$SearchMusicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SearchMusicListener"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor$SearchMusicListener;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor$SearchMusicListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    return-void
.end method


# virtual methods
.method public onSearchFinished(ILjava/util/List;Ljava/util/List;)V
    .locals 4
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    .line 78
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p3, :cond_3

    .line 88
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchFinished() - ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", audioIds: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    .line 100
    new-array v0, p2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 102
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    const p3, 0x10007

    const/4 v1, 0x0

    .line 105
    invoke-static {p2, p3, v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IILjava/lang/String;[JI)V

    .line 107
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string p2, "Folders"

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p2, "Contents"

    const-string p3, "Exist"

    const-string v0, "yes"

    .line 108
    invoke-virtual {p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor$SearchMusicListener;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void

    .line 89
    :cond_3
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onSearchFinished() - This folder is empty."

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string p3, "Folders"

    invoke-direct {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p3, "Contents"

    const-string v0, "Exist"

    const-string v1, "no"

    .line 91
    invoke-virtual {p2, p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor$SearchMusicListener;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void

    .line 79
    :cond_4
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onSearchFinished() - There is a no matched folder."

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string p3, "Folders"

    invoke-direct {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string p3, "keyword"

    const-string v0, "Match"

    const-string v1, "no"

    .line 81
    invoke-virtual {p2, p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor$SearchMusicListener;->a:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method
