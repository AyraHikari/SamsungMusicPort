.class public final Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "PlayerShuffleExecutor"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private d:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private e:Z

.field private final f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->b:Landroid/content/Context;

    const-string v0, "viv.samsungMusicApp.SettingOn"

    .line 42
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getActionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->e:Z

    .line 43
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->d:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 44
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->f:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerShuffleExecutor;->c:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
