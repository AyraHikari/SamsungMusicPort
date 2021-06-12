.class public final Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 13
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->z_:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b009e

    .line 15
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0b009c

    .line 16
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v0, 0x7f0b009d

    .line 18
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0b009b

    .line 19
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    :goto_0
    const v0, 0x7f0b02d3

    .line 21
    new-instance v1, Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog$onCreateDialog$1$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog$onCreateDialog$1$1;-><init>(Landroid/support/v7/app/AlertDialog$Builder;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0b00cd

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 25
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(cont\u2026 null)\n        }.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method
