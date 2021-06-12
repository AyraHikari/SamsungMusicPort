.class Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;Landroid/widget/ListView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;->b:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;

    iput-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;->b:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;

    iget-object v1, v1, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->d(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
