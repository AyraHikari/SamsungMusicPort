.class public final Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenControlExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# static fields
.field private static final a:Ljava/lang/String; = "LockScreenControlExecutor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAUNCH_PLAYER"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenControlExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
