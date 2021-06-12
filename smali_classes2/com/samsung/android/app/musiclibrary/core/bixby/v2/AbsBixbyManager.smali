.class public abstract Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsBixbyManager"

.field protected static final THROW_EXCEPTION:Z


# instance fields
.field private mCommandExecutors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->THROW_EXCEPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->mCommandExecutors:Ljava/util/Map;

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->setEnabled(Z)V

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbsBixbyManager() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->mCommandExecutors:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->assignCommandExecutors(Ljava/util/Map;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->a(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;)V

    .line 36
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->a()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->c()V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->getActionIds()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 39
    invoke-virtual {v0, v4, p1}, Lcom/samsung/android/sdk/bixby2/Sbixby;->a(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->b()Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a(Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->mCommandExecutors:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method protected abstract assignCommandExecutors(Ljava/util/Map;)V
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract convertToCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;"
        }
    .end annotation
.end method

.method protected abstract getActionIds()[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
