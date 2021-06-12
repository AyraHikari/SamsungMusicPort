.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListModel:Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SimpleScrollInterpolator"


# instance fields
.field private mDistanceX:F

.field private mDistanceY:F

.field private mDownAdapterIndex:I

.field private mLeftAdapterIndex:I

.field private mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<",
            "T",
            "ListModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRightAdapterIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<",
            "T",
            "ListModel;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    return-void
.end method

.method private limitTo(FF)F
    .locals 3

    .line 78
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 80
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 81
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    neg-float p2, p2

    .line 84
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterWrap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v0

    .line 88
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/2addr v1, v0

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 89
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    goto :goto_1

    :cond_1
    move p2, p1

    :cond_2
    :goto_1
    cmpl-float v0, p2, p1

    if-eqz v0, :cond_3

    .line 93
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_3

    const-string v0, "SMUSIC-SimpleScrollInterpolator"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limited because of singleScroll from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mLeftAdapterIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mRightAdapterIndex: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p2
.end method


# virtual methods
.method public finished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDx()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    return v0
.end method

.method public getDy()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    return v0
.end method

.method public setDownAdapterIndex(I)V
    .locals 3

    .line 118
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-SimpleScrollInterpolator"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDownAdapterIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSingleScroll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDownAdapterIndex:I

    .line 123
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDownAdapterIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 124
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDownAdapterIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterWrap()Z

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getAdapterSize()I

    move-result v0

    if-eqz p1, :cond_1

    .line 128
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/2addr p1, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 129
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    goto :goto_0

    .line 132
    :cond_1
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 133
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 134
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 136
    :cond_2
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_3

    .line 137
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    .line 138
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    .line 141
    :cond_3
    :goto_0
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_4

    const-string p1, "SMUSIC-SimpleScrollInterpolator"

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLeftAdapterIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRightAdapterIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public setParams(FF)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    .line 50
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public update()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getSingleScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mRightAdapterIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mLeftAdapterIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->getChildDelta(I)F

    move-result v0

    .line 70
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->limitTo(FF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceX:F

    .line 71
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->limitTo(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/SimpleScrollInterpolator;->mDistanceY:F

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
