.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    return-void
.end method
