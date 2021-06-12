.class Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->b(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 151
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->b(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->c(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->d(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 156
    new-instance p2, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;Landroid/widget/ListView;)V

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
