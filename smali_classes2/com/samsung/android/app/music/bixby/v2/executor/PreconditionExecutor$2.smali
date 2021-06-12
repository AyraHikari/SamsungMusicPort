.class Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 124
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->releaseDormancyMode()Z

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;

    const-string p2, "Music_0_0"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/PreconditionExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Z)V

    return-void
.end method
