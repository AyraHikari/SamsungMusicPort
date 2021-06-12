.class final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;
.super Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;-><init>()V

    .line 22
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->a:Landroid/widget/TextView;

    .line 24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    .line 25
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/MarqueeAccessibilityDelegate;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->o()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->a(Z)V

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;->a(Z)V

    return-void
.end method
