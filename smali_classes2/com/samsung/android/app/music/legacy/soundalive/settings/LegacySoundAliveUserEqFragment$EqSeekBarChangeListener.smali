.class Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;
.super Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EqSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;

    .line 97
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;)V

    return-void
.end method

.method private a()[I
    .locals 4

    const/4 v0, 0x7

    .line 107
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 109
    iget-object v3, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment;)[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

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

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserEqFragment$EqSeekBarChangeListener;->a()[I

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a([I[I)V

    return-void
.end method
