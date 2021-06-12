.class Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


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
.method constructor <init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 267
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "[\\d]+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/util/EmojiListUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 277
    :goto_1
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    or-int/lit8 v0, v0, 0x1

    .line 282
    :cond_3
    iget-object p3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-nez v0, :cond_4

    .line 284
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 285
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 286
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    const/4 p3, -0x1

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)I

    return-object p1

    :cond_4
    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_6

    .line 289
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 290
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    const p2, 0x7f0b016b

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1, v3}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)I

    .line 293
    :cond_5
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 295
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)I

    move-result p1

    if-eq p1, v2, :cond_7

    .line 296
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    const p4, 0x7f0b0196

    new-array p5, v2, [Ljava/lang/Object;

    iget-object p6, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    .line 297
    invoke-static {p6}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p5, v1

    invoke-virtual {p3, p4, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)I

    :cond_7
    return-object p2
.end method
