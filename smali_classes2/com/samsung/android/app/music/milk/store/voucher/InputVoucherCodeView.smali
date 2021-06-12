.class public Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Landroid/widget/EditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->setEnableButton(Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->d:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b:Landroid/content/Context;

    return-object p0
.end method

.method private getEditTextFilterEmoji()Landroid/text/InputFilter;
    .locals 1

    .line 209
    new-instance v0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$7;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)V

    return-object v0
.end method

.method private setEnableButton(Z)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string p1, "InputVoucherCodeView"

    const-string v0, "setEnableButton mButton is null"

    .line 196
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b:Landroid/content/Context;

    const-string v1, "input_method"

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const-string v1, "InputVoucherCodeView"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showKeypad how : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 171
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$6;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$6;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f13017b

    .line 62
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$1;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b025d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0209

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f1301cc

    .line 76
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    const-string v1, "disableEmoticonInput=true"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x32

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f0b0253

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$2;

    invoke-direct {v1, p0, v4, v0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$2;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;ILandroid/widget/Toast;)V

    const/4 v0, 0x2

    .line 94
    new-array v0, v0, [Landroid/text/InputFilter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->getEditTextFilterEmoji()Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v0, v6

    aput-object v1, v0, v2

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$3;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$4;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$5;-><init>(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    const v1, 0x81090

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    const-string v1, "defaultInputmode=english;"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 160
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->setEnableButton(Z)V

    return-void
.end method

.method public setInputVoucherListener(Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->d:Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView$OnInputVoucherListener;

    return-void
.end method

.method public setVoucherCode(Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/voucher/InputVoucherCodeView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
