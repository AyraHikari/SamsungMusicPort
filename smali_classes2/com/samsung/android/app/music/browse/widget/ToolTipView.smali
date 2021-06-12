.class public Lcom/samsung/android/app/music/browse/widget/ToolTipView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Z

.field private g:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c()V

    return-void
.end method

.method private a(III)Z
    .locals 1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    add-int/2addr p1, p2

    if-le p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/widget/ToolTipView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/widget/ToolTipView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/widget/ToolTipView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/widget/ToolTipView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    return p1
.end method

.method private c()V
    .locals 3

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040030

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f13018b

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b:Landroid/view/View;

    const v0, 0x7f13018c

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 63
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->setVisibility(I)V

    return-void
.end method

.method private d()V
    .locals 12

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ToolTipView"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyToolTipPosition. this view not measured yet. isLaidOut - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->isLaidOut()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-boolean v1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    return-void

    :cond_1
    const/4 v0, 0x2

    .line 180
    new-array v2, v0, [I

    .line 181
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v3, "ToolTipView"

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyToolTipPosition. anchor pos x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", y : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", anchor width - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    .line 186
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    .line 187
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isLaidOut - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isLaidOut()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v3}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->e(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->e(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 194
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->f(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v6}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->f(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 198
    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 199
    iget-object v7, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v7, "ToolTipView"

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyToolTipPosition. display frame - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-array v7, v0, [I

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 205
    iget-object v8, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 206
    iget-object v9, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 208
    aget v10, v2, v5

    aget v11, v7, v5

    sub-int/2addr v10, v11

    .line 209
    aget v2, v2, v1

    aget v7, v7, v1

    sub-int/2addr v2, v7

    .line 210
    div-int/2addr v8, v0

    add-int/2addr v10, v8

    add-int/2addr v2, v9

    add-int/2addr v2, v4

    .line 212
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 215
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v10, v4

    .line 216
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v6

    sub-int/2addr v7, v3

    const-string v3, "ToolTipView"

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyToolTipPosition. toolTipViewX : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", width : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", screen right - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", anchor centerX - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_4

    .line 222
    iput-boolean v1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    const-string v0, "ToolTipView"

    const-string v1, "applyToolTipPosition. anchorViewCenterX is zero. it seems like some problem is there."

    .line 223
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_4
    invoke-direct {p0, v4, v2, v7}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a(III)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "ToolTipView"

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyToolTipPosition. over screen case. toolTipViewX : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", width : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screen right - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", anchor centerX - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b()V

    return-void

    .line 237
    :cond_5
    iput-boolean v5, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    .line 239
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b:Landroid/view/View;

    int-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 240
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 242
    iput-boolean v1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    return-void

    :cond_6
    :goto_2
    const-string v0, "ToolTipView"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyToolTipPosition. anchor view not measured yet. anchor - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-boolean v1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    return-void
.end method

.method private setToolTip(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)V
    .locals 3

    const-string v0, "ToolTipView"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToolTip. tooltip - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    .line 149
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->a(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    .line 151
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->b(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->b(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->c(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->c(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->d(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->d(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)V
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->setToolTip(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/app/music/browse/widget/ToolTipView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$1;-><init>(Lcom/samsung/android/app/music/browse/widget/ToolTipView;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->g:Landroid/view/View$OnLayoutChangeListener;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 120
    new-instance p1, Lcom/samsung/android/app/music/browse/widget/ToolTipView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$2;-><init>(Lcom/samsung/android/app/music/browse/widget/ToolTipView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->g:Landroid/view/View$OnLayoutChangeListener;

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->g:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    const-string p1, "ToolTipView"

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showToolTip. applied - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    const-string v0, "ToolTipView"

    const-string v1, "hideToolTip."

    .line 138
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 139
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->g:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->g:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->g:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolTipView"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent. anchor rect. x - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->b()V

    .line 90
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    if-nez v0, :cond_0

    const-string p1, "ToolTipView"

    const-string v0, "onClick. tooltip is null"

    .line 255
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->g(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->c:Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;->g(Lcom/samsung/android/app/music/browse/widget/ToolTipView$ToolTip;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const-string p1, "ToolTipView"

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMeasure. applied - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", should update tooltip pos - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->f:Z

    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 97
    iget-boolean p1, p0, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->e:Z

    if-nez p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/widget/ToolTipView;->d()V

    :cond_0
    return-void
.end method
