.class public Lcom/samsung/android/app/music/widget/ScrollTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/ScrollTextView$OnScrollText;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/widget/ScrollTextView$OnScrollText;

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->b:Z

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->c:I

    .line 26
    iput v0, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->d:I

    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/ScrollTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->b:Z

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->c:I

    .line 26
    iput p2, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->d:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/ScrollTextView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->b:Z

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->c:I

    .line 26
    iput p2, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->d:I

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/ScrollTextView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/ScrollTextView;->setSingleLine(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/ScrollTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 47
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/widget/ScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/ScrollTextView;->setHorizontallyScrolling(Z)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/ScrollTextView;->setSelected(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->d:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->a:Lcom/samsung/android/app/music/widget/ScrollTextView$OnScrollText;

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "mMarquee"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mStatus"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result p1

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->b:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/ScrollTextView;->setSelected(Z)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->a:Lcom/samsung/android/app/music/widget/ScrollTextView$OnScrollText;

    invoke-interface {p1}, Lcom/samsung/android/app/music/widget/ScrollTextView$OnScrollText;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ScrollTextView"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw. e - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/app/music/widget/ScrollTextView$OnScrollText;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->a:Lcom/samsung/android/app/music/widget/ScrollTextView$OnScrollText;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->b:Z

    .line 90
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 114
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/ScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 119
    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/widget/ScrollTextView;->c:I

    return-void
.end method
