.class public final Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "MoveLocalTabExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/ui/TabControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->c:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->d:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Playlists"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x10004

    goto :goto_0

    :cond_0
    const-string v0, "MyFavourites"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x10030

    goto :goto_0

    :cond_1
    const-string v0, "Albums"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x10002

    goto :goto_0

    :cond_2
    const-string v0, "Artists"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x10003

    goto :goto_0

    :cond_3
    const-string v0, "Genres"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x10006

    goto :goto_0

    :cond_4
    const-string v0, "Folders"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x10007

    goto :goto_0

    :cond_5
    const-string v0, "Composers"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x10008

    goto :goto_0

    :cond_6
    const p1, 0x110001

    :goto_0
    return p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const-string p1, "HeartsTab"

    goto :goto_0

    :sswitch_1
    const-string p1, "ComposersTab"

    goto :goto_0

    :sswitch_2
    const-string p1, "FoldersTab"

    goto :goto_0

    :sswitch_3
    const-string p1, "GenresTab"

    goto :goto_0

    :sswitch_4
    const-string p1, "ArtistsTab"

    goto :goto_0

    :sswitch_5
    const-string p1, "AlbumsTab"

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_5
        0x10003 -> :sswitch_4
        0x10006 -> :sswitch_3
        0x10007 -> :sswitch_2
        0x10008 -> :sswitch_1
        0x10030 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "MOVE_LOCAL_TAB"

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 43
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->a(Ljava/lang/String;)I

    move-result v2

    .line 47
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->c:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 49
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute() - Disabled this tab. - listType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Visible"

    const-string v3, "no"

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->d:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    invoke-interface {v1, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v2}, Lcom/samsung/android/app/music/util/TabUtils;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Visible"

    const-string v2, "yes"

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v1, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/MoveLocalTabExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return v4

    :cond_3
    return v1
.end method
