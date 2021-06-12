.class public final Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$$special$$inlined$apply$lambda$2;->a:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
