.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playbackStateChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playbackStateChangedListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 1

    const-string v0, "playbackState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playbackStateChangedListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$notifyPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    return-void
.end method
