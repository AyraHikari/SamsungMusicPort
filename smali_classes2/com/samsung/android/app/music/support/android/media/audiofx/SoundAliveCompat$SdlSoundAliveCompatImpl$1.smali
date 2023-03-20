.class Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;

.field public final synthetic val$listener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;->this$0:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;->val$listener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;->val$listener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;->onError()V

    return-void
.end method
