.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;


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

    .line 376
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->show_button_background:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->show_button_background_stub:I

    .line 383
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 384
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 390
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
