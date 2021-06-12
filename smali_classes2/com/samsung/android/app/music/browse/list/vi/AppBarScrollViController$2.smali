.class Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/support/design/widget/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$2;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$2;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$2;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;)Landroid/support/design/widget/AppBarLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->c(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;I)I

    return-void
.end method
