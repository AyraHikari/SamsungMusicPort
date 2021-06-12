.class final Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

.field final synthetic b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;->b:Landroid/support/v4/app/FragmentActivity;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast p1, Landroid/content/Context;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/AbsShareableWithDialogKt;->a(Landroid/content/SharedPreferences;Z)V

    .line 229
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->dismiss()V

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    invoke-static {p1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->a(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog$onCreateDialog$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareLegalDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "args_ids"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p2

    const-string v0, "arguments!!.getLongArray(ARGS_IDS)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_2
    return-void
.end method
