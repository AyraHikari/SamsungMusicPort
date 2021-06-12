.class public Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const p1, 0x7fffffff

    .line 18
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    const p1, 0x7fffffff

    .line 18
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7fffffff

    .line 18
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method private a()V
    .locals 1

    const v0, 0x7fffffff

    .line 35
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 3

    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 42
    invoke-super {p0}, Landroid/widget/Spinner;->getBaseline()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    const-string v0, "StoreSpinner"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseline. data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->b:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/widget/Spinner;->onAttachedToWindow()V

    const-string v0, "StoreSpinner"

    const-string v1, "onAttachedToWindow"

    .line 51
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;)V

    invoke-super {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 84
    invoke-super/range {p0 .. p5}, Landroid/widget/Spinner;->onLayout(ZIIII)V

    const-string p1, "StoreSpinner"

    const-string p2, "onLayout"

    .line 85
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->c:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 104
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->setAlpha(F)V

    return-void
.end method

.method public setHideSoftKeypad(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->c:Z

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreSpinner;->a:Landroid/widget/AdapterView$OnItemSelectedListener;

    const-string p1, "StoreSpinner"

    const-string v0, "setOnItemSelectedListener"

    .line 79
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
