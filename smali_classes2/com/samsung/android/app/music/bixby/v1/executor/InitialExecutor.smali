.class public final Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "InitialExecutor"


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 7
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LAUNCH_APP"

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;)Z

    move-result v0

    .line 35
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 36
    sget-object v4, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", lockScreenOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", coverClosed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object v4

    if-eqz v0, :cond_0

    .line 42
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 44
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "NLG_PRECONDITION"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungMusic"

    const-string v2, "InternalCheck "

    const-string v5, "yes"

    .line 45
    invoke-virtual {p1, v0, v2, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V

    .line 52
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;->b:Landroid/content/Context;

    const-class v1, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/InitialExecutor;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v3

    :cond_2
    return v1
.end method
