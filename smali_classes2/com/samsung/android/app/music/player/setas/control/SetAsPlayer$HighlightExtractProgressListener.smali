.class final Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnHighlightExtractProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
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
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 182
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x7f0b0302

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;->b:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsPlayer$HighlightExtractProgressListener;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method
