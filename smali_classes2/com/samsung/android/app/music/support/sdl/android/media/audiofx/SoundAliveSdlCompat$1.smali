.class Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/audiofx/SoundAlive$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->access$000(Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;)Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;->onError()V

    return-void
.end method
