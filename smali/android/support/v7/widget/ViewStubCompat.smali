.class public final Landroid/support/v7/widget/ViewStubCompat;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    .line 58
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 61
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    .line 62
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    .line 64
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ViewStubCompat_android_id:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ViewStubCompat;->setId(I)V

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x8

    .line 67
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->setVisibility(I)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewStubCompat;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public getInflatedId()I
    .locals 1

    .line 82
    iget v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .locals 4

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 197
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 198
    iget v1, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    if-eqz v1, :cond_4

    .line 199
    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    iget-object v1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 206
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 209
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 210
    iget v2, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 213
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 214
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 223
    :goto_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    .line 225
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;->onInflate(Landroid/support/v7/widget/ViewStubCompat;Landroid/view/View;)V

    :cond_3
    return-object v1

    .line 231
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewStub must have a valid layoutResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p1, p1}, Landroid/support/v7/widget/ViewStubCompat;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInflatedId(I)V
    .locals 0

    .line 96
    iput p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedId:I

    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 128
    iput p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mLayoutResource:I

    return-void
.end method

.method public setOnInflateListener(Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;)V
    .locals 0

    .line 247
    iput-object p1, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflateListener:Landroid/support/v7/widget/ViewStubCompat$OnInflateListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setVisibility called on un-referenced view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 182
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    :cond_3
    :goto_0
    return-void
.end method
