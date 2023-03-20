.class Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl$1;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"

# interfaces
.implements Landroid/media/audiofx/SemSoundAlive$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->ensureSoundAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl$1;->this$0:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl$1;->this$0:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->access$000(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;)Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;->onError()V

    return-void
.end method
