.class public Lcom/samsung/android/app/music/browse/util/EllipsizeController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/text/TextUtils$TruncateAt;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->e:I

    .line 91
    new-instance v0, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController$1;-><init>(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)Landroid/widget/TextView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 33
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$TruncateAt;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "EllipsizeController"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTextView. TopText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", BottomText:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/widget/TextView;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 124
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 125
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v3

    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 130
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    .line 131
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string v6, "EllipsizeController"

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEllipsis. width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", max: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ellipsize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    if-lez v1, :cond_3

    if-ne v2, v3, :cond_3

    int-to-float p0, v1

    cmpl-float p0, v4, p0

    if-gtz p0, :cond_2

    if-lez v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/util/EllipsizeController;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/util/EllipsizeController;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/util/EllipsizeController;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->f:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x2L
        .end annotation
    .end param

    .line 71
    iput p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->e:I

    return-void
.end method

.method public a(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->f:Z

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const-string v0, "EllipsizeController"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText. ellipsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->b:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Landroid/widget/TextView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
