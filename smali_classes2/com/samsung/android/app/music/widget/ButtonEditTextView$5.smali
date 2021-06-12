.class Lcom/samsung/android/app/music/widget/ButtonEditTextView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/ButtonEditTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;

.field final synthetic b:Lcom/samsung/android/app/music/widget/ButtonEditTextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$5;->b:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$5;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$5;->b:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$5;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;

    iget-object v1, v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
