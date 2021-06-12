.class public final Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "PlayerPauseExecutor"


# instance fields
.field private b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

.field private c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field private final d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

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

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    .line 32
    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->d:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->b:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
