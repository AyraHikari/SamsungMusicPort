.class final Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroid/support/design/widget/AppBarLayout;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $customTitleView:Landroid/widget/TextView;

.field final synthetic $view$inlined:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;->$customTitleView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;->$view$inlined:Landroid/view/View;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;->invoke(Landroid/support/design/widget/AppBarLayout;IFF)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/support/design/widget/AppBarLayout;IFF)V
    .locals 0

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$InfoViewHolder;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$onViewCreated$$inlined$run$lambda$1;->$customTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method
