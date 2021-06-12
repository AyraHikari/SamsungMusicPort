.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

.field final synthetic val$isPlaying:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$2;->val$isPlaying:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$2;->val$isPlaying:Z

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$400(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)V

    return-void
.end method
