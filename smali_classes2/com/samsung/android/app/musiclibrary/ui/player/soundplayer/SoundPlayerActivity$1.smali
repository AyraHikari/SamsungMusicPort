.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnMultiWindowModeChangedListener onMultiWindowModeChanged() isInMultiWindowMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPaused : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .line 123
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Z)Z

    return-void
.end method
