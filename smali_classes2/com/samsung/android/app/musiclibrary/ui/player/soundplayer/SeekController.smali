.class final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
.super Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;,
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

.field private final b:Landroid/widget/SeekBar;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;)V
    .locals 7

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->seek_bar:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    .line 51
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->current_time:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->c:Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->total_time:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->d:Landroid/widget/TextView;

    .line 54
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->d:Landroid/widget/TextView;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;-><init>(Landroid/app/Activity;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 57
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    invoke-virtual {p2, p4}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 58
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    new-instance p4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-direct {p4, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$TalkBackAccessibilityDelegate;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    invoke-virtual {p2, p4}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 59
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    new-instance p4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-direct {p4, v1, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    invoke-virtual {p2, p4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 67
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 70
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->b:Landroid/widget/SeekBar;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/widget/SeekBar;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a(J)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b(J)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a()V

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b(J)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    :goto_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->q()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a(Z)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->m()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a(J)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b(J)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    :goto_0
    return-void
.end method

.method public c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b(J)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->a()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->c()V

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->b()V

    return-void
.end method
