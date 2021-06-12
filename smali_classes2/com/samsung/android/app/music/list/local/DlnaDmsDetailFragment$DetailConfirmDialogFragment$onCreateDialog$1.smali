.class final Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;

.field final synthetic b:I

.field final synthetic c:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;

    iput p2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;->b:I

    iput-wide p3, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 363
    iget p2, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;->b:I

    invoke-static {p2}, Lcom/samsung/android/app/music/provider/MusicContents;->a(I)Landroid/net/Uri;

    move-result-object p2

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;->c:J

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 364
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ContentUris\n            \u2026              .toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;->b:I

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a(Ljava/lang/String;I)Landroid/support/v4/app/DialogFragment;

    move-result-object p2

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment$onCreateDialog$1;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$DetailConfirmDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/dialog/DlnaDmsMediaInfoDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 367
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
