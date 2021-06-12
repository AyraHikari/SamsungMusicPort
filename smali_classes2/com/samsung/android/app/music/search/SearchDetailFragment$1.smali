.class Lcom/samsung/android/app/music/search/SearchDetailFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field final synthetic b:Lcom/samsung/android/app/music/search/SearchDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$1;->b:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment$1;->b:Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->K()V

    :cond_0
    return-void
.end method
