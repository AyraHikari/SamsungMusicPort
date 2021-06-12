.class public final Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "PlayCardViewExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)I
    .locals 4
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayMostPlayedTracks"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "PlayRecentlyPlayedTracks"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const-string v1, "PlayFavouritesTracks"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const-string v0, "CARD_VIEW_POSITION"

    .line 83
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "first"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "second"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-string v0, "third"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;Ljava/lang/String;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PlayMostPlayedTracks"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PlayRecentlyPlayedTracks"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PlayFavouritesTracks"

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PLAY_CARD_VIEW"

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a:Ljava/lang/String;

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

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)I

    move-result p1

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
