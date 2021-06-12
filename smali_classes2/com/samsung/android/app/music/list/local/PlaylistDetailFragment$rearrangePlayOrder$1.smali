.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 854
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$rearrangePlayOrder$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method
