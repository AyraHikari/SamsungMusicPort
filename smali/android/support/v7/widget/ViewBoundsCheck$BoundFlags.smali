.class Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .locals 1

    .line 151
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method boundsMatch()Z
    .locals 4

    .line 169
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/2addr v2, v1

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_1

    .line 176
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    return v1

    .line 181
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x700

    if-eqz v0, :cond_2

    .line 182
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    return v1

    .line 187
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_3

    .line 188
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method compare(II)I
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x4

    return p1
.end method

.method resetFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method setBounds(IIII)V
    .locals 0

    .line 140
    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 141
    iput p2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 142
    iput p3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 143
    iput p4, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    return-void
.end method

.method setFlags(II)V
    .locals 2

    .line 147
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method
