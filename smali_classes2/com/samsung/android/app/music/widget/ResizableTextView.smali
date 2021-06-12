.class public Lcom/samsung/android/app/music/widget/ResizableTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/EasyModeUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/R$styleable;->ResizableTextView:[I

    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 30
    :try_start_0
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ResizableTextView;->getTextSize()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/app/music/widget/ResizableTextView;->setTextSize(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
