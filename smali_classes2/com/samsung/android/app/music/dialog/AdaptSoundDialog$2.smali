.class Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 66
    iget-object p2, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-static {p2}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAlreadyDiagnosed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Z)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;)V

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 74
    invoke-virtual {p1, v1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Z)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    iget-object p2, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Landroid/content/Context;)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;->b:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Z)V

    :goto_0
    return-void
.end method
