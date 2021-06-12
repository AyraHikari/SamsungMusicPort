.class final Lcom/samsung/android/app/music/list/local/AlbumFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/AlbumFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f13013a

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "thumbnail"

    .line 70
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 71
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    .line 72
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 73
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const p1, 0x7f130011

    .line 77
    sget-object v2, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v2, p3, p4, p2, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/Fragment;

    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
