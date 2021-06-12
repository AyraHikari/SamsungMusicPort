.class Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemeTagLayoutManager;
.super Landroid/support/v7/widget/StaggeredGridLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThemeTagLayoutManager"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 349
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    const-string p1, "ThemeTagLayoutManager"

    const-string p2, "onLayoutChildren."

    .line 350
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .locals 2

    const-string v0, "ThemeTagLayoutManager"

    const-string v1, "requestSimpleAnimationsInNextLayout. ignored"

    .line 344
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
