.class Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 309
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->e(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void
.end method
