.class final Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog$onCreateDialog$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog$onCreateDialog$1$1;->a:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 22
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/BackgroundRestrictDialog$onCreateDialog$1$1;->a:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->d(Landroid/content/Context;)V

    return-void
.end method
