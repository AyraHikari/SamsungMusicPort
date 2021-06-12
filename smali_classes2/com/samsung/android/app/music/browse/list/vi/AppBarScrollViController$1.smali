.class Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


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

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    if-gez p2, :cond_0

    mul-int/lit8 p2, p2, -0x1

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;I)I

    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController$1;->a:Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;I)F

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/AppBarScrollViController;F)V

    return-void
.end method
