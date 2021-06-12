.class Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 241
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 245
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->e(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->e(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    :cond_1
    :goto_0
    return-void
.end method
