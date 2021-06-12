.class Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;
.super Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExtSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    .line 165
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    return-void
.end method

.method private a()[I
    .locals 4

    const/4 v0, 0x5

    .line 188
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 190
    iget-object v3, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->a()[I

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a([I[I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$ExtSeekBarChangeListener;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    const v1, 0x7f0b017e

    .line 174
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 178
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method
