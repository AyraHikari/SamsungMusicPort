.class public Lcom/samsung/android/app/music/widget/ButtonEditTextView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/design/widget/TextInputLayout;

.field private final b:Landroid/widget/EditText;

.field private final c:Landroid/widget/ImageButton;

.field private final d:Landroid/widget/TextView;

.field private e:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g:I

    const/16 v1, 0x64

    .line 73
    iput v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    const v2, 0x7f040044

    const/4 v3, 0x0

    .line 91
    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 94
    iput-boolean v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    const v4, 0x7f1301ca

    .line 96
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TextInputLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    const v4, 0x7f1301cc

    .line 97
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    const v4, 0x7f1301c9

    .line 98
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    .line 99
    iget-object v4, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03df

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const v4, 0x7f1301cb

    .line 100
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    const-string v4, "inputType=PredictionOff;disableEmoticonInput=true;disableSticker=true;disableGifKeyboard=true"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 106
    sget-object v2, Lcom/samsung/android/app/music/R$styleable;->ButtonEditTextView:[I

    .line 107
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x6

    .line 110
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 113
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setEditTextId(I)V

    .line 117
    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setHint(Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 121
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    .line 124
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setNextImeFocusView(I)V

    :cond_1
    const/4 p2, 0x4

    const/4 p3, 0x1

    .line 129
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 130
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setInputType(I)V

    const/4 p2, 0x5

    .line 132
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 134
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setMaxLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a()V

    return-void

    :catchall_0
    move-exception p2

    .line 136
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g:I

    return p1
.end method

.method private a()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$1;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$2;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;

    iget v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$3;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$4;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c()V

    return-void
.end method

.method private a(Landroid/widget/EditText;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 363
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

.method static synthetic a(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Landroid/widget/EditText;)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a(Landroid/widget/EditText;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Lcom/samsung/android/app/music/widget/ButtonEditTextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->e:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    .line 325
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    const v1, 0x7f020225

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    const v1, 0x7f020224

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->c:Landroid/widget/ImageButton;

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 341
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setHintLabel(Z)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/widget/EditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->g:I

    return p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    return p0
.end method

.method private setEditTextId(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setId(I)V

    return-void
.end method

.method private setHint(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setHintLabel(Z)V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x7f1005da

    goto :goto_1

    :cond_1
    const p1, 0x7f1005d9

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    .line 350
    invoke-virtual {v1}, Landroid/support/design/widget/TextInputLayout;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    .line 351
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getPaddingRight()I

    move-result v3

    .line 350
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/support/design/widget/TextInputLayout;->setPadding(IIII)V

    return-void
.end method

.method private setInputType(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method private setMaxLength(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->h:I

    return-void
.end method

.method private setNextImeFocusView(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 203
    check-cast p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->setNextImeFocusView(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V

    :cond_0
    return-void
.end method

.method private setNextImeFocusView(Lcom/samsung/android/app/music/widget/ButtonEditTextView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->e:Lcom/samsung/android/app/music/widget/ButtonEditTextView;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 378
    check-cast p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;

    .line 379
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 380
    iget v0, p1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b()V

    .line 382
    new-instance v0, Lcom/samsung/android/app/music/widget/ButtonEditTextView$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$5;-><init>(Lcom/samsung/android/app/music/widget/ButtonEditTextView;Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 368
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 370
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    iput v0, v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;->a:I

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->a:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/samsung/android/app/music/widget/ButtonEditTextView$SavedState;->b:Ljava/lang/String;

    return-object v1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->f:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/ButtonEditTextView;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method
