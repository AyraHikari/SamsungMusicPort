.class Lcom/samsung/android/app/music/widget/ButtonEditTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 225
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$1;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x0

    packed-switch p2, :pswitch_data_0

    return p3

    .line 230
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$1;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    return p1

    .line 233
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$1;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$1;->a:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
