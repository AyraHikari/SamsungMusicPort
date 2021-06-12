.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;
.super Lcom/samsung/android/app/music/list/ListShareableImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistShareable"
.end annotation


# instance fields
.field final synthetic c:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;->c:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected b([J)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 760
    array-length v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 769
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;->b([J)V

    goto :goto_3

    .line 761
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;->c:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a()I

    move-result p1

    if-le p1, v0, :cond_3

    const p1, 0x7f0b00d7

    goto :goto_2

    :cond_3
    const p1, 0x7f0b00d6

    .line 766
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;->c:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    .line 767
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;->c:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->K()V

    :goto_3
    return-void
.end method
