.class Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
