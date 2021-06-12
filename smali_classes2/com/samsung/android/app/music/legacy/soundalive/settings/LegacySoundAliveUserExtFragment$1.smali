.class Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)[Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getMax()I

    move-result p1

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0b017e

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
