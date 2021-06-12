.class public Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LaunchPurchasedTrackResponseExecutor"


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->c:Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "PurchasedSongs"

    const-string v1, "Exist"

    .line 55
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "yes"

    goto :goto_0

    :cond_0
    const-string p1, "no"

    .line 57
    :goto_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v3, "PurchasedSongs"

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v2, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->c:Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;->a(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 72
    sget-object p1, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->a:Ljava/lang/String;

    const-string v0, "execute() - loadFinished"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "LAUNCH_PURCHASED_TRACK"

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->a:Ljava/lang/String;

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

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->c:Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;->a(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
