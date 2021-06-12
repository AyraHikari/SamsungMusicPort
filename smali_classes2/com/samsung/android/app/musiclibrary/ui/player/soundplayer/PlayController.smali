.class final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;
.super Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->a:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 28
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->c:Landroid/view/View;

    .line 29
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->c:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget p3, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_icon:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->d:Landroid/widget/ImageView;

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->c:Landroid/view/View;

    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_pause:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->a(Z)V

    return-void
.end method
