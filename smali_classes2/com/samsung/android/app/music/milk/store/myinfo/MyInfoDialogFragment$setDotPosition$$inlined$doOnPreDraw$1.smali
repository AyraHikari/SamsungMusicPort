.class public final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment;->a(Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewTreeObserver;

.field final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->c:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100636

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 177
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    div-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 177
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    const-string v1, "vto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDialogFragment$setDotPosition$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
