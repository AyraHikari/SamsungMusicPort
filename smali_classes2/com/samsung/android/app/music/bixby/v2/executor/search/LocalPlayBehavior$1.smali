.class Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string p1, "MusicSearch"

    const-string p2, "local play - onServiceMetaReceived()"

    .line 156
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MusicSearch"

    const-string v0, "failed to play!"

    .line 160
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->b(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->c(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/search/ISearchBehavior$OnBehaviorStateListener;->a(Lcom/samsung/android/app/music/bixby/v2/result/PlayResult;)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;->d(Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalPlayBehavior;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
