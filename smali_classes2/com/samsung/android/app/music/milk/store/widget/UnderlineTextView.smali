.class public Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/R$styleable;->MilkUnderlineTextView:[I

    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;->getPaintFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/UnderlineTextView;->setPaintFlags(I)V

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method
