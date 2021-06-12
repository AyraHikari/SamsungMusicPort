.class Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;

.field final synthetic val$listener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;->this$0:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;->val$listener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;->val$listener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;->onError()V

    return-void
.end method
