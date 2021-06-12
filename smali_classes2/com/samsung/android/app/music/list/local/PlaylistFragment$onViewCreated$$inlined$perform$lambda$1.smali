.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->d:Z

    .line 361
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 363
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->F()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 364
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)V

    .line 365
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->safeNotifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->F()Z

    move-result p1

    if-nez p1, :cond_0

    .line 371
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)V

    .line 372
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->safeNotifyDataSetChanged()V

    :cond_0
    return-void
.end method
