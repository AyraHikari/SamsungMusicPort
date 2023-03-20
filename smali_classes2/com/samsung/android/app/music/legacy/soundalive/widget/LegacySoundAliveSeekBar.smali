.class public Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;
.super Landroid/widget/SeekBar;
.source "LegacySoundAliveSeekBar.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->onSaveInstanceState()Landroid/os/Parcelable;

    const/4 v0, 0x0

    return-object v0
.end method

.method public setBaseValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->a:I

    return-void
.end method
