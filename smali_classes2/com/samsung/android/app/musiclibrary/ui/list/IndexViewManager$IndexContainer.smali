.class final Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndexContainer"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 270
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->a:I

    .line 271
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 292
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->b:I

    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->getMeasureAllChildren()Z

    move-result v0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->setMeasureAllChildren(Z)V

    .line 295
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->a:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->b:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->measure(II)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->setMeasureAllChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->a:I

    .line 280
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewManager$IndexContainer;->b:I

    .line 281
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
