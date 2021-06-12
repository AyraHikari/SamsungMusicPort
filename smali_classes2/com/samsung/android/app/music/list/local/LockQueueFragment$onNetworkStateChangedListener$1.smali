.class final Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/LockQueueFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a(Lcom/samsung/android/app/music/list/local/LockQueueFragment;Z)V

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onNetworkStateChangedListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->a(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->a(Z)V

    :cond_0
    return-void
.end method
