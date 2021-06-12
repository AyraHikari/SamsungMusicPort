.class public Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekBarBubbleUpdateListener"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->b:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    return-void
.end method

.method private a()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    return-void
.end method

.method private a(Landroid/widget/SeekBar;)V
    .locals 5

    .line 113
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbCentralX(Landroid/widget/AbsSeekBar;)I

    move-result v0

    .line 114
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbCentralY(Landroid/widget/AbsSeekBar;)I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 117
    iget-object v3, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    .line 118
    invoke-virtual {v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getBubbleHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 121
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbHeight(Landroid/widget/AbsSeekBar;)I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->getThumbHeight(Landroid/widget/AbsSeekBar;)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p1, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 128
    instance-of v0, p1, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    if-eqz v0, :cond_1

    .line 129
    check-cast p1, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getValue()I

    move-result p1

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->showBubble()V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a(Landroid/widget/SeekBar;)V

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->a(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
