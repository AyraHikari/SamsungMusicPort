.class Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$1;
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
.field final synthetic a:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$1;->a:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$1;->a:Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;)V

    return-void
.end method
