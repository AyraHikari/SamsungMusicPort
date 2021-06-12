.class Lcom/samsung/android/app/music/list/local/SearchFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;->deleteItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->K()V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->b(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->c(Lcom/samsung/android/app/music/list/local/SearchFragment;)Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
