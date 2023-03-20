.class public Lcom/samsung/android/app/music/widget/ButtonEditTextView;
.super Landroid/widget/FrameLayout;
.source "ButtonEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;,
        Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;

.field public final b:Landroid/widget/EditText;

.field public final c:Landroid/widget/ImageButton;

.field public final d:Landroid/widget/TextView;

.field public e:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

.field public f:Z

.field public g:I

.field public h:I

.field public o:Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g:I

    const/16 v1, 0x64

    .line 5
    iput v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->o:Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;

    const v3, 0x7f0e0043

    .line 7
    invoke-static {p1, v3, v2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 9
    iput-boolean v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    const v4, 0x7f0b055a

    .line 10
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const v4, 0x7f0b01a2

    .line 11
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    const v5, 0x7f0b005e

    .line 12
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f130437

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const v5, 0x7f0b0269

    .line 14
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    const-string v2, "disableEmoticonInput=true;disableSticker=true;disableGifKeyboard=true"

    .line 15
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 16
    sget-object v2, Lcom/samsung/android/app/music/m;->J:[I

    .line 17
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    :try_start_0
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 19
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setEditTextId(I)V

    :cond_0
    const/4 p2, 0x2

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setHint(Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    .line 23
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setNextImeFocusView(I)V

    :cond_1
    const/4 p2, 0x3

    const/4 p3, 0x1

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 25
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setInputType(I)V

    const/4 p2, 0x4

    .line 26
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 27
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setMaxLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->m()V

    return-void

    :catchall_0
    move-exception p2

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    throw p2
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->l()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/widget/ButtonEditTextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->e:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    return p0
.end method

.method public static synthetic e(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->o()V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Landroid/widget/EditText;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->n(Landroid/widget/EditText;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public static synthetic h(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g:I

    return p0
.end method

.method public static synthetic i(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g:I

    return p1
.end method

.method public static synthetic j(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    return p0
.end method

.method public static synthetic k(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->o:Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;

    return-object p0
.end method

.method private setEditTextId(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setId(I)V

    return-void
.end method

.method private setHint(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/q;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setHintLabel(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x7f070505

    goto :goto_1

    :cond_1
    const p1, 0x7f070504

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method private setInputType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method private setMaxLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    return-void
.end method

.method private setNextImeFocusView(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setNextImeFocusView(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    :cond_0
    return-void
.end method

.method private setNextImeFocusView(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->e:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$a;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$b;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$b;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/app/music/widget/ButtonEditTextView$c;

    iget v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$c;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$d;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$d;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$e;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$e;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final n(Landroid/widget/EditText;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    const-string v1, " "

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    const v2, 0x7f080111

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f130440

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    const v2, 0x7f080110

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f130437

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setHintLabel(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->o()V

    .line 5
    new-instance v0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$f;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$f;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    iput v0, v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;->a:I

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$h;->b:Ljava/lang/String;

    return-object v1
.end method

.method public setEditingListener(Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->o:Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->o:Lcom/samsung/android/app/music/widget/ButtonEditTextView$g;

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->o()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method
