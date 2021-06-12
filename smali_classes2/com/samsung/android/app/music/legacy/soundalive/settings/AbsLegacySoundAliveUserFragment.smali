.class public abstract Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment$SeekBarBubbleUpdateListener;
    }
.end annotation


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method protected final b(Landroid/view/View;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;
    .locals 2

    const v0, 0x7f1302e9

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;

    const v0, 0x7f02021f

    .line 67
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(I)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    const/4 v0, 0x4

    .line 70
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    return-object p1
.end method

.method public abstract b()[I
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method protected final e()[I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->a:[I

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "saved_instance_state_value"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->a:[I

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->b()[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->a:[I

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->a()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "saved_instance_state_value"

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->a:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->a(Landroid/view/View;)V

    return-void
.end method
