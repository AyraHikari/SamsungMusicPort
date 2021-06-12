.class Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 134
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    .line 136
    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->f(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;)V

    .line 135
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/local/PlayMyMusicExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a()V

    return-void
.end method
