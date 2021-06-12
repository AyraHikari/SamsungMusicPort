.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HighlightExtractProgressListener"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 307
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->processing:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method public b()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$HighlightExtractProgressListener;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method
