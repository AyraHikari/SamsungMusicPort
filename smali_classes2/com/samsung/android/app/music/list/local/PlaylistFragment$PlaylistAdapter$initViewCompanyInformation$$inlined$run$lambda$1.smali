.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$initViewCompanyInformation$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$initViewCompanyInformation$$inlined$run$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$initViewCompanyInformation$$inlined$run$lambda$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 715
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$initViewCompanyInformation$$inlined$run$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 716
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$initViewCompanyInformation$$inlined$run$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 715
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
