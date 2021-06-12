.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1033
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
