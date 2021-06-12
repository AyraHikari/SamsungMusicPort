.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$doOnOffsetChanged$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->a(Landroid/support/design/widget/AppBarLayout;Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function4;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function4;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$doOnOffsetChanged$1;->a:Lkotlin/jvm/functions/Function4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 4

    .line 278
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const-string v1, "appBarLayout"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f969696

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x0

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 281
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$doOnOffsetChanged$1;->a:Lkotlin/jvm/functions/Function4;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, p1, p2, v3, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
