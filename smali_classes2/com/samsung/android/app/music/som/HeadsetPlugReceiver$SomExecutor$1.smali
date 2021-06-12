.class Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicUtils;->canStartService(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const-class v0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setPackageDoNotKill(Ljava/lang/Class;Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
