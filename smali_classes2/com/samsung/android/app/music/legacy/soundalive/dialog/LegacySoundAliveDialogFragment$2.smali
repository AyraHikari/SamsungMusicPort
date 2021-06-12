.class Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;
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

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$2;->a:Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a(Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c(I)V

    return-void
.end method
